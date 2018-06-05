$fn = 50;

use <../../components/box/top.scad>

box_width = 220;
box_length = 195;
box_thickness = 3;

// width, length, x_offset, y_offset
cutouts = [
  [200, 10, 10, 10], // 8 sequencer step LEDs
  [200, 20, 10, 25], // 8 sequencer step pots
  [], // 4 other pots (tempo, volume, low-pass freq, modulator freq)
];

surface(box_width, box_length, box_thickness, cutouts);
