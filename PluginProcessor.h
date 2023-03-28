#pragma once

#include <juce_audio_basics/juce_audio_basics.h>
#include <juce_audio_processors/juce_audio_processors.h>

#include <choc_javascript.h>
#include <Runtime.h>


//==============================================================================
class EffectsPluginProcessor
    : public juce::AudioProcessor,
      public juce::AudioProcessorParameter::Listener,
      private juce::AsyncUpdater
{
public:
    //==============================================================================
    EffectsPluginProcessor();
    ~EffectsPluginProcessor() override;

    //==============================================================================
    juce::AudioProcessorEditor* createEditor() override;
    bool hasEditor() const override;

    //==============================================================================
    void prepareToPlay (double sampleRate, int samplesPerBlock) override;
    void releaseResources() override;

    bool isBusesLayoutSupported (const juce::AudioProcessor::BusesLayout& layouts) const override;

    void processBlock (juce::AudioBuffer<float>&, juce::MidiBuffer&) override;

    //==============================================================================
    const juce::String getName() const override;

    bool acceptsMidi() const override;
    bool producesMidi() const override;
    bool isMidiEffect() const override;
    double getTailLengthSeconds() const override;

    //==============================================================================
    int getNumPrograms() override;
    int getCurrentProgram() override;
    void setCurrentProgram (int index) override;
    const juce::String getProgramName (int index) override;
    void changeProgramName (int index, const juce::String& newName) override;

    //==============================================================================
    void getStateInformation (juce::MemoryBlock& destData) override;
    void setStateInformation (const void* data, int sizeInBytes) override;

    //==============================================================================
    /** Implement the AudioProcessorParameter::Listener interface. */
    void parameterValueChanged (int parameterIndex, float newValue) override;
    void parameterGestureChanged (int parameterIndex, bool gestureIsStarting) override;

    //==============================================================================
    /** Implement the AsyncUpdater interface. */
    void handleAsyncUpdate() override;

    //==============================================================================
    /** Internal helper for propagating processor state changes. */
    void dispatchStateChange();

private:
    //==============================================================================

    // A. THis is where we hld the state of or audio processor
    // Ableton line wants to know
    elem::js::Object state;
    // B. Embedded Javascript engine (from choc)
    choc::javascript::Context jsContext;

    juce::AudioBuffer<float> scratchBuffer;

    // C. This is where things get interesting.
    std::unique_ptr<elem::Runtime<float>> runtime;

    //==============================================================================
    // A simple "dirty list" abstraction here for propagating realtime parameter
    // value changes
    // D. Whenever the HOST get a parameter change, we get a callback to indicate things are changing
    struct ParameterReadout {
        float value = 0;
        bool dirty = false;
    };

    std::list<std::atomic<ParameterReadout>> paramReadouts;
    static_assert(std::atomic<ParameterReadout>::is_always_lock_free);

    //==============================================================================
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (EffectsPluginProcessor)
};
