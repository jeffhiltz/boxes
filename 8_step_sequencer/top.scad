$fn = 50;

use <../../components/box/top.scad>

box_width = 220;
box_length = 95;
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
  [ 25, 20,  10, 65], // movement switch (on)-off-on
  [ 25, 20,  35, 65], // CV out
  [ 20, 30,  65, 55], // divider patch headers
  [ 20, 30,  85, 55], // multiplexer select patch headers
  [ 50, 20, 110, 65], // clk in, clk out
  [ 25, 20, 160, 65], // clock selector  (high/low/external?)
  [ 25, 20, 185, 65], // tempo pot
  [ 50, 10,  10, 50], // name plate
];

surface(box_width, box_length, box_thickness, cutoutsC);
