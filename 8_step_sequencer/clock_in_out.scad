use <../../components/pj392/pj392.scad>

module 8stepClockInOut() {
  font = "Futura:style=Bold";

  width = 25;
  length = 30;

  letter_size = 5.0;
  letter_height = 1.0;

  pj392(width, length, 3);
  translate([width, 0, 0])
    pj392(width, length, 3);
  
  translate([width / 2, length - ((length - 8) / 4), 3]) {
    linear_extrude(height = letter_height) {
      text("CLK", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
  translate([width / 2, (length - 8) / 4, 3]) {
    linear_extrude(height = letter_height) {
      text("OUT", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
  translate([width * 1.5, length - ((length - 8) / 4), 3]) {
    linear_extrude(height = letter_height) {
      text("CLK", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
  translate([width * 1.5, (length - 8) / 4, 3]) {
    linear_extrude(height = letter_height) {
      text("IN", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
  }
}

8stepClockInOut();
