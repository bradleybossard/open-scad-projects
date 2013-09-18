use <MCAD/regular_shapes.scad>

color ("LimeGreen")
linear_extrude(height=1)
union() {
  translate([0, 3, 0])
  triangle(5);
  circle(5);
}

