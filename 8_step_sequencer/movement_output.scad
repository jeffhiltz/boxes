use <../../components/mts_switch/mts_switch.scad>
use <../../components/pj392/pj392.scad>

module 8stepMovementOutput() {
  font = "Futura:style=Bold";

  letter_size = 4.0;
  letter_height = 0.5;
  edge_distance = 3.0; // how far the text is from the top/bottom edge

  difference() {
    union() {
      mts(25, 25, 3);
      translate([25, 0, 0])
        pj392(25, 25, 3);
    }
    
    translate([12.5, 25.0 - (letter_size / 2) - edge_distance, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("MOVE", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([37.5, 25.0 - (letter_size / 2) - edge_distance, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("FREQ", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([12.5, (letter_size / 2) + edge_distance, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("STEP", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([37.5, (letter_size / 2) + edge_distance, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("OUT", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
  }
}

8stepMovementOutput();
