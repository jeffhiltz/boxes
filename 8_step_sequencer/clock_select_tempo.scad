use <../../components/mts_switch/mts_switch.scad>
use <../../components/potentiometer/pot.scad>

module 8stepClockSelectTempo() {
  font = "Futura:style=Bold";

  width = 25;
  length = 30;

  letter_size = 5.0;
  letter_height = 1.0;

  module arrow() {
    // square part of arrow
    square_length = 2.5;
    square_height = letter_height;
    translate([0, square_length / -2, 0])
      cube([square_length, square_length, square_height]);

    // triangle part of arrow
    triangle_length = 5.0;
    triangle_width = 2.5;
    triangle_height = letter_height;
    translate([triangle_width * -1, (triangle_length) / -2, 0])
      polyhedron(
        points=[
          [0, triangle_length / 2, 0],
          [triangle_width, 0, 0],
          [triangle_width, triangle_length, 0],
          [0, triangle_length / 2, triangle_height],
          [triangle_width, 0, triangle_height],
          [triangle_width, triangle_length, triangle_height]
        ],
        faces=[[0,1,2], [0, 3, 4, 1], [1, 4, 5, 2], [2, 5, 3, 0], [3, 5, 4]]
      );
  }

  mts(width, length, 3, 90);
  translate([width, 0, 0])
    pot(width, length, 3, [90]);
  
  translate([(width - 10 - 8) / 2, length / 2, 3]) arrow();
  translate([width - ((width - 10 - 8) / 2), length / 2, 3]) mirror([1, 0, 0]) arrow();
//  translate([width / 6, length / 2, 3]) arrow();
//  translate([width - (width / 6), length / 2, 3]) mirror([1, 0, 0]) arrow();
  
  translate([width / 2, length - ((length - 8) / 4), 3]) {
    linear_extrude(height = letter_height) {
      text("CLK", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
  translate([width / 2, (length - 8) / 4, 3]) {
    linear_extrude(height = letter_height) {
      text("SELECT", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
  translate([width * 1.5, length - ((length - 8) / 4), 3]) {
    linear_extrude(height = letter_height) {
      text("CLK", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
  translate([width * 1.5, (length - 8) / 4, 3]) {
    linear_extrude(height = letter_height) {
      text("RATE", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
}

8stepClockSelectTempo();
