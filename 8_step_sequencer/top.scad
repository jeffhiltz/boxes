$fn = 64;

use <../../components/box/top.scad>

box_width = 214;
box_length = 84;
box_thickness = 3;

// width, length, x_offset, y_offset
cutouts = [
  [200, 10,  7,  7], // 8 sequencer step LEDs
  [200, 20,  7, 22], // 8 sequencer step pots
  [200, 30,  7, 47], // other components
//  [ 25, 25,  10, 55], // move/step
//  [150, 25,  60, 55], // other components
];

surface(box_width, box_length, box_thickness, cutouts);


// preview
use <./movement.scad>
translate([7, 47, 0]) 8stepMovement();
use <./freq_out.scad>
translate([57, 47, 0]) 8stepFreqOut();
use <./clock_in_out.scad>
translate([82, 47, 0]) 8stepClockInOut();
use <./clock_select_tempo.scad>
translate([132, 47, 0]) 8stepClockSelectTempo();
use <./master_freq.scad>
translate([182, 47, 0]) 8stepMasterFreq();
