use <../../components/mts_switch/mts_switch.scad>
use <../../components/potentiometer/pot.scad>

module 8stepClockSelectTempo() {
  font = "Futura:style=Bold";

  letter_size = 4.0;
  letter_height = 0.5;

  difference() {
    union() {
      translate([0, 5, 0]) {
        mts(25, 15, 3);
        translate([25, 0, 0])
          pot(25, 15, 3, [90]);
      }

      cube([50, 5, 3]);
      translate([0, 20, 0])
        cube([50, 5, 3]);
    }
    
    translate([12.5, 25.0 - (letter_size / 2) - 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("CLK HI", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([37.5, 25.0 - (letter_size / 2) - 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("CLOCK", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([12.5, (letter_size / 2) + 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("CLK LO", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
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
