$fn = 64;

use <../../components/box/top.scad>

box_width = 220;
box_length = 90;
box_thickness = 3;

// width, length, x_offset, y_offset
cutoutsA = [
  [200, 10,  10, 10], // 8 sequencer step LEDs
  [200, 20,  10, 25], // 8 sequencer step pots
  [ 20, 20,  10, 65], // movement switch (on)-off-on
  [ 20, 20,  40, 65], // CV out
  [ 25, 30,  70, 55], // divider patch headers
  [ 25, 30, 100, 55], // multiplexer select patch headers
  [ 25, 20, 135, 65], // clock in/out
  [ 20, 20, 165, 65], // clock selector  (high/low/external?)
  [ 20, 20, 190, 65], // tempo pot
  [ 50, 10,  10, 50], // name plate
];

cutoutsB = [
  [200, 10,  10, 10], // 8 sequencer step LEDs
  [200, 20,  10, 25], // 8 sequencer step pots
  [ 25, 20,  10, 65], // movement switch (on)-off-on
  [ 75, 20,  55, 65], // CV out, clk in, clk out
  [ 25, 20, 160, 65], // clock selector  (high/low/external?)
  [ 25, 20, 185, 65], // tempo pot
//  [ 50, 10,  10, 50], // name plate
  // ** missing headers **
];

// this one has each of the components in the top row aligned
// with the pots/leds on the bottom
cutoutsC = [
  [200, 10,  10, 10], // 8 sequencer step LEDs
  [200, 20,  10, 25], // 8 sequencer step pots
  [ 25, 20,  10, 60], // movement switch (on)-off-on
  [ 25, 20,  35, 60], // CV out
  [ 20, 30,  65, 50], // divider patch headers
  [ 20, 30,  85, 50], // multiplexer select patch headers
  [ 50, 20, 110, 60], // clk in, clk out
  [ 25, 20, 160, 60], // clock selector  (high/low/external?)
  [ 25, 20, 185, 60], // tempo pot
//  [ 50, 10,  10, 50], // name plate
];

cutoutsD = [
  [200, 10,  10, 10], // 8 sequencer step LEDs
  [200, 20,  10, 25], // 8 sequencer step pots
  [ 25, 20,  10, 55], // movement switch (on)-off-on
  [ 25, 20, 110, 80], // CV out
//  [ 20, 30, 62.5, 55], // both headers
  [ 20, 30,  62.5, 55], // divider patch headers
  [ 20, 30,  85, 55], // multiplexer select patch headers
  [ 50, 20, 160, 80], // clk in, clk out
  [ 25, 20, 160, 55], // clock selector  (high/low/external?)
  [ 25, 20, 185, 55], // tempo pot
//  [ 50, 20,  22.5, 80], // name plate
];

// based on C.
cutoutsE = [
  [200, 10,  10, 10], // 8 sequencer step LEDs
  [200, 20,  10, 25], // 8 sequencer step pots
  [ 25, 25,  10, 55], // movement switch (on)-off-on
  [ 25, 25,  35, 55], // CV out
//  [ 20, 30,  65, 50], // divider patch headers
//  [ 20, 30,  85, 50], // multiplexer select patch headers
  [ 50, 25,  60, 55], // headers
  [ 50, 25, 110, 55], // clk in, clk out
  [ 25, 25, 160, 55], // clock selector  (high/low/external?)
  [ 25, 25, 185, 55], // tempo pot
//  [ 50, 10,  10, 50], // name plate
];



surface(box_width, box_length, box_thickness, cutoutsE);

// preview
use <./movement.scad>
translate([10, 55, 0]) 8stepMovement();
use <./freq_out.scad>
translate([60, 55, 0]) 8stepFreqOut();
use <./clock_in_out.scad>
translate([85, 55, 0]) 8stepClockInOut();
use <./clock_select_tempo.scad>
translate([135, 55, 0]) 8stepClockSelectTempo();
use <./master_freq.scad>
translate([185, 55, 0]) 8stepMasterFreq();
