*intersection() {
    cube([8, 2, 1], true);
    cube([2, 8, 1], true);
}

*difference() {
    cube([8, 2, 1], true);
    cube([2, 8, 1], true);
}
difference() {
    cube([2, 8, 1], true);
    cube([8, 2, 1], true);
}