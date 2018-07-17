
module 8stepNamePlate() {
  font = "Futura:style=Bold";

  letter_size = 8.0;
  letter_height = 0.5;

  difference() {
    cube([50, 25, 3]);
    
//    translate([25, 12.5, 3 - letter_height]) {
//      linear_extrude(height = letter_height) {
//        text("SEQENCER", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
//      }
//    }
    translate([25, 12.5 + letter_size / 1.5, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("ROYAL", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
    translate([25, 12.5 - letter_size / 1.5, 3 - letter_height]) {
      linear_extrude(height = letter_height) {
        text("ARCTIC", size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
      }
    }
  }
}

8stepNamePlate();
