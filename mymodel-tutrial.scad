module cross(size=2) {
    cube([size, 1, 1], true);
    rotate([0, 0, 90]) {
        cube([size, 1, 1], true);
    }
}

cross();
translate([5, 5, 0]) cross(5);
translate([5, -5, 0]) cross(3);