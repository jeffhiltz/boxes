use <../../components/potentiometer/pot.scad>

module 8stepMasterFreq() {
  font = "Futura:style=Bold";

  letter_size = 4.0;
  letter_height = 0.5;

  difference() {
    pot(25, 25, 3, [90]);
    
    translate([12.5, 25.0 - (letter_size / 2) - 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("MASTER", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([12.5, (letter_size / 2) + 2.0, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("FREQ", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
  }
}

8stepMasterFreq();
