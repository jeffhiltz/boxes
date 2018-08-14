use <../../components/potentiometer/pot.scad>

module 8stepMasterFreq() {
  font = "Futura:style=Bold";

  width = 25;
  length = 30;

  letter_size = 5.0;
  letter_height = 1.0;

  pot(width, length, 3, [90]);

  translate([width / 2, length - ((length - 8) / 4), 3]) {
    linear_extrude(height = letter_height) {
      text("FREQ", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
  translate([width / 2, (length - 8) / 4, 3]) {
    linear_extrude(height = letter_height) {
      text("OFFSET", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
}

8stepMasterFreq();
