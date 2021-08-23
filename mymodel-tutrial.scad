module cross(size=2) {
    cube([size, 1, 1], true);
    rotate([0, 0, 90]) {
        cube([size, 1, 1], true);
    }
}

function f(x) = 0.05 * x * x -10;

for (x = [-20:5:20]) {
    translate([x, f(x), 0]) {
        cross();
    }
}
