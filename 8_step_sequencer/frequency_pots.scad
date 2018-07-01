use <../../components/potentiometer/pot.scad>

rows = 1;
columns = 8;

pot_length = 20;
pot_width = 25;
panel_thickness = 3;

for (i = [0:columns - 1]) {
  for (j = [0:rows - 1]) {
    translate([pot_width * i, pot_length * j, 0])
      pot(pot_width, pot_length, panel_thickness, [270 + (90 * j)]);
  }
}
