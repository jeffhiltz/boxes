# 8 Step 4040/4051 Sequencer

An 8 step sequencer with:
 * 40106 oscillators
  * one LFO for sequencer internal clock
 * CD4040 for controlling the sequencer
 * two 4051s
  * one reads pots to control carrier oscillator
  * one illuminates LEDs to indicate which pot is active

## Surface Components

 * 8 pots for setting CV
 * 8 LEDs for showing current step
 * (on)-off-on switch for running, stopping and advancing sequence
 * 3.5mm jack for CV out
 * 1 pot for controlling tempo
 * 3.5mm jack for clock out
 * 3.5mm jack  clock in
 * selector switch for internal/external clock
  * maybe a three-way switch for also setting internal clock high/low?
 * headers to expose multiple divider pins on 4040
  * 1,2,4,8,16,32,64,128
  * each once, twice, ...?
  * others?
 * headers to expose channel selection on 4051 multiplexers
  * 3 pins, each with X headers

