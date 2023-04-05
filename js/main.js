import {Renderer, el} from '@elemaudio/core';


// This example is the "Hello, world!" of writing audio processes in Elementary, and is
// intended to be run by the simple cli tool provided in the repository.
//
// Because we know that our cli will open the audio device with a sample rate of 44.1kHz,
// we can simply create a generic Renderer straight away and ask it to render our basic
// example.
//
// The signal we're generating here is a simple sine tone via `el.cycle` at 440Hz in the left
// channel and 441Hz in the right, creating some interesting binaural beating. Each sine tone is
// then multiplied by 0.3 to apply some simple gain before going to the output. That's it!
let core = new Renderer(__getSampleRate__(), (batch) => {
  __postNativeMessage__(JSON.stringify(batch));
});


// A size 4 Hadamard matrix constructed using Numpy and Scipy.
//
// The Hadamard matrix satisfies the property H*H^T = nI, where n is the size
// of the matrix, I the identity, and H^T the transpose of H. Therefore, we have
// orthogonality and stability in the feedback path if we scale according to (1 / n)
// along the diagonal, which we do internally by multiplying each matrix element
// by Math.sqrt(1 / n), which yields the identity as above.
//
// @see https://docs.scipy.org/doc/scipy-0.14.0/reference/generated/scipy.linalg.hadamard.html
// @see https://nhigham.com/2020/04/10/what-is-a-hadamard-matrix/
const H4 = [[ 1,  1,  1,  1],
  [ 1, -1,  1, -1],
  [ 1,  1, -1, -1],
  [ 1, -1, -1,  1]];

// A diffusion step expecting exactly 4 input channels
function diffuse(size, ...ins) {
  const len = ins.length;
  const scale = Math.sqrt(1 / len);

  const dels = ins.map(function(input, i) {
    const lineSize = size * ((i + 1) / len);
    return el.sdelay({size: lineSize}, input);
  });

  return H4.map(function(row, i) {
    return el.add(...row.map(function(col, j) {
      return el.mul(col * scale, dels[j]);
    }));
  });
}

// A four channel feedback delay network with a one-pole lowpass filter in
// the feedback loop for damping the high frequencies faster than the low.
//
// @param {string} name for the tap structures
// @param {el.const} size in the range [0, 1]
// @param {el.const} decay in the range [0, 1]
// @param {el.const} modDepth in the range [0, 1]
// @param {...core.Node} ...ins input channels
function dampFDN(name, size, decay, modDepth, ...ins) {
  const len = ins.length;
  const scale = Math.sqrt(1 / len);
  const md = el.mul(modDepth, 0.02);

  // The unity-gain one pole lowpass here is tuned to taste along
  // the range [0.001, 0.5]. Towards the top of the range, we get into the region
  // of killing the decay time too quickly. Towards the bottom, not much damping.
  const dels = ins.map(function(input, i) {
    return el.add(
        input,
        el.mul(
            decay,
            el.smooth(
                0.105,
                el.tapIn({name: `${name}:fdn${i}`}),
            ),
        ),
    );
  });

  let mix = H4.map(function(row, i) {
    return el.add(...row.map(function(col, j) {
      return el.mul(col * scale, dels[j]);
    }));
  });

  return mix.map(function(mm, i) {
    const modulate = (x, rate, amt) => el.add(x, el.mul(amt, el.cycle(rate)));
    const ms2samps = (ms) => 44100.0 * (ms / 1000.0);

    // Each delay line here will be ((i + 1) * 17)ms long, multiplied by [1, 4]
    // depending on the size parameter. So at size = 0, delay lines are 17, 34, 51, ...,
    // and at size = 1 we have 68, 136, ..., all in ms here.
    const delaySize = el.mul(el.add(1.00, el.mul(3, size)), ms2samps((i + 1) * 17));

    // Then we modulate the read position for each tap to add some chorus in the
    // delay network.
    const readPos = modulate(delaySize, el.add(0.1, el.mul(i, md)), ms2samps(2.5));

    return el.tapOut(
        {name: `${name}:fdn${i}`},
        el.delay(
            {size: ms2samps(750)},
            readPos,
            0,
            mm
        ),
    );
  });
}

export function monoverb(props, xn) {
  const key = props.key;
  const size = el.sm(el.const({key: `${key}:size`, value: props.size}));
  const decay = el.sm(el.const({key: `${key}:decay`, value: props.decay}));
  const modDepth = el.sm(el.const({key: `${key}:modDepth`, value: props.mod}));
  const mix = el.sm(el.const({key: `${key}:mix`, value: props.mix}));

  // Upmix to four channels
  const inv = el.mul(-1, xn);
  const four = [xn, inv, el.smooth(0.105, xn), el.smooth(0.105, inv)];

  // Hacky, should fix this properly to take the sample rate from the engine
  const ms2samps = (ms) => 44100.0 * (ms / 1000.0);

  // Diffusion stage
  const d0 = diffuse(ms2samps(19), ...four);
  const d1 = diffuse(ms2samps(43), ...d0);
  const d2 = diffuse(ms2samps(97), ...d1);
  const d3 = diffuse(ms2samps(117), ...d2);

  // Reverb network
  const r0 = dampFDN(`${key}:r0`, size, decay, modDepth, ...d3);

  // Downmix and wet/dry
  return el.select(mix, el.mul(0.25, el.add(...r0)), xn);
}

// Reverb inputs
let props = {
  key: 'rvb',
  size: 0.6,
  decay: 0.6,
  mod: 0.4,
  mix: 0.8,
};

//Capture the input channel from the DAW
let left = {
  channel: 0
}
let right = {
  channel: 1
}

// I want the 0 channel input coming into the system
let ch0 = el.in(left)
let ch1 = el.in(right);

// LEft Channel + Right Channel
let wl = monoverb(props, ch0);
let wr = monoverb(props, ch1);

// main
core.render(wl,wr);
