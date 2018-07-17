use <../../components/pj392/pj392.scad>

module 8stepFreqOut() {
  font = "Futura:style=Bold";

  letter_size = 4.0;
  letter_height = 0.5;
  edge_distance = 3.0; // how far the text is from the top/bottom edge

  difference() {
    pj392(25, 25, 3);
    
    translate([12.5, 25.0 - (letter_size / 2) - edge_distance, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("FREQ", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([12.5, (letter_size / 2) + edge_distance, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("OUT", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
  }
}

8stepFreqOut();
