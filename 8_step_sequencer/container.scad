use <../../components/box/container.scad>
use <../../components/micro_usb/micro_usb.scad>

top_width = 214;
top_length = 84;
height = 50;
thickness = 3.0;
lip_width = 3.0;
lip_thickness = 3.0;

usb_base_thickness = 2.5;

difference() {
  container(top_width, top_length, height, thickness, lip_width, lip_thickness);
  cutout_width = 12.0;
  cutout_height = 8.0;
  translate([0, (top_length / 2) + thickness - (cutout_width / 2), thickness + usb_base_thickness])
    cube([thickness + 0.05, cutout_width, cutout_height]);
}

// 17.5 is the actual width of the micro_usb component
translate([thickness, (17.5 / 2) + (top_length / 2) + thickness, thickness])
  rotate([0, 0, 270])
    micro_usb(usb_base_thickness);
