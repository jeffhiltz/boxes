$fn = 64;

use <../../components/box/top.scad>

box_width = 220;
box_length = 90;
box_thickness = 3;

// width, length, x_offset, y_offset
cutouts = [
  [200, 10,  10, 10], // 8 sequencer step LEDs
  [200, 20,  10, 25], // 8 sequencer step pots
  [200, 25,  10, 55], // other components
//  [ 25, 25,  10, 55], // move/step
//  [150, 25,  60, 55], // other components
];

surface(box_width, box_length, box_thickness, cutouts);

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
