use <../../components/headers/headers.scad>

module 8stepHeaders() {
  font = "Futura:style=Bold";

  letter_size = 3.5;
  letter_height = 0.5;

  //length_pin_count = 8;
  //hole_length = (length_pin_count * 2.54) + 0.6; // = 20.92 for 8, 8.22 for 3.
  //length_per_hole = hole_length / 8;
  //length_per_hole = 2.615; // for 8 pins
  //length_per_hole = 2.74; // for 8 pins


  difference() {
    union() {
      translate([0, 0, 0]) {
        headers(15, 25, 3, 2, 8);
        translate([35, 0, 0])
          headers(15, 25, 3, 2, 3);
      }

      translate([15, 0, 0])
        cube([20, 25, 3]);
    }

    line_width = 3.0;
    line_length = 1.0; // (y-axis)

    // clock lines
    for (i = [0:7]) {
      translate([10.33, ((25 - 20.92) / 2) + (2.614 / 2) - (line_length / 2) + (i * 2.615),  3 - letter_height]) {
        if (i % 2 == 0) {
          cube([line_width, line_length, letter_height]);
          word = str("/", pow(2,i));
          translate([line_width, 0, 0]) {
            linear_extrude(height = letter_height) {
              text(word, size = letter_size, font = font, valign = "center", $fn = 64);
            }
          }
        } else {
          cube([line_width / 2, line_length, letter_height]);
        }
      }
    }
    
    // clock lines
    for (i = [0:2]) {
      if (i % 2 == 0) {
        translate([39.67 - line_width, ((25 - 8.22) / 2) + (2.74 / 2) - (line_length / 2) + (i * 2.74),  3 - letter_height]) {
          cube([line_width, line_length, letter_height]);
          word = i == 0 ? "LOW" : "HIGH";
          translate([0, 0, 0]) {
            linear_extrude(height = letter_height) {
              text(word, size = letter_size, font = font, halign = "right", valign = "center", $fn = 64);
            }
          }
        }
      } else {
        translate([39.67 - (line_width / 2), ((25 - 8.22) / 2) + (2.74 / 2) - (line_length / 2) + (i * 2.74),  3 - letter_height])
          cube([line_width / 2, line_length, letter_height]);
      }
    }
  }
}

8stepHeaders();
