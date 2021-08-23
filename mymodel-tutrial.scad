square([5,10], center=true);
translate([10, 0, 0]) {
    circle(5);
}
translate([20, 0, 0]) {
    text("d");
}

translate([30, 0, 0]) {
    polygon(points = [
        [0, 0],
        [0, 10],
        [10, 10]
    ]);
}