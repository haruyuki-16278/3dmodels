translate([10, 0, 0]) {
    %cube(10);
    rotate([45, 0, 0]) cube(10);
    *translate([15, 15, 0]) {
        #cube(10);
        rotate([45, 0, 0]) cube(5);
    }
}