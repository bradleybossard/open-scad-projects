use <MCAD/regular_shapes.scad>

module arm(transVec) {
  color ("Yellow")
  translate(transVec)
  cube([1, 1, 5], center = true);
}

module body() {
  color ("Yellow")
  translate([0, 0, 6])
  cube([4, 3, 10], center = true);
  arm([2.5, 0, 8]);
  arm([-2.5, 0, 8]);
}

module platform() {
  color ("LimeGreen")
    linear_extrude(height = 1)
    union() {
      translate([0, 3, 0])
        triangle(5);
      circle(5, $fn = 60);
    }
}

platform();
body();
