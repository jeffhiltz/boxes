use <../../components/led/led.scad>

rows = 1;
columns = 8;

component_length = 10;
component_width = 25;
panel_thickness = 3;

for (i = [0:columns - 1]) {
  for (j = [0:rows - 1]) {
    translate([component_width * i, component_length * j, 0])
      led(component_width, component_length, panel_thickness);
  }
}
