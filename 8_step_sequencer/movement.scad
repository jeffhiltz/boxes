use <../../components/mts_switch/mts_switch.scad>

module 8stepMovement() {
  font = "Futura:style=Bold";

  width = 25;
  length = 30;

  letter_size = 5.0;
  letter_height = 1.0;

  mts(width, length, 3);
  
  translate([width / 2, length - ((length - 8) / 4), 3]) {
    linear_extrude(height = letter_height) {
      text("MOVE", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
  translate([width / 2, (length - 8) / 4, 3]) {
    linear_extrude(height = letter_height) {
      text("STEP", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
}

8stepMovement();
