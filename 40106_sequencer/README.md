# 40106 Sequencer

An 8 step sequencer with:
 * 40106 oscillators
  * one audio rate modulating another audio rate
  * one LFO for sequencer tempo
 * CD4040 for controlling the sequencer
 * two 4051s
  * one reads pots to control carrier oscillator
  * one illuminates LEDs to indicate which pot is active

## Controls

### Existing

 * 8 pots for setting frequency of carrier oscillator in sequence
 * 1 pot for controlling modulator
 * 1 pot for controlling tempo

### Planned

 * output volume pot
 * pot to control low pass filter


### Potential

 * capacitor selectors for each audio rate oscillator

 * switch to enable/disable low pass filter
 * other filter options?  high-pass, band-pass?

 * switch to select capacitor used by tempo LFO (high/low)

 * switch to enable/disable sequencer
 * button to advance sequencer

 * other modulating oscillators and toggles/pots?

 * moulating type selector
  * capacitor / diode / other value cap / other?


 * other mappings of 4040 divider output to 4051s?
  * maybe make a pin bus to enable patching with dupont cables
