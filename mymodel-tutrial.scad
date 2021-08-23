*square([5, 10]);

*linear_extrude(height=30) {
    square([5, 10]);
}

*linear_extrude(height=30, scale=0.5) {
    square([5, 10]);
}

linear_extrude(height=30, scale=0.5, twist=45) {
    square([5, 10]);
}