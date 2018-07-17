use <../../components/mts_switch/mts_switch.scad>
use <../../components/potentiometer/pot.scad>

module 8stepClockSelectTempo() {
  font = "Futura:style=Bold";

  letter_size = 4.0;
  letter_height = 0.5;

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

  difference() {
    union() {
      mts(25, 25, 3);
      translate([25, 0, 0])
        pot(25, 25, 3, [90]);
    }
    
    translate([5.0, 12.5, 3 - letter_height]) arrow();
    translate([20.0, 12.5, 3 - letter_height]) mirror([1, 0, 0]) arrow();

    translate([12.5, 25.0 - (letter_size / 2) - 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("CLOCK", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([37.5, 25.0 - (letter_size / 2) - 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("CLOCK", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([12.5, (letter_size / 2) + 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("SELECT", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([37.5, (letter_size / 2) + 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("RATE", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
  }
}

8stepClockSelectTempo();
