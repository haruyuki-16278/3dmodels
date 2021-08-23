difference() {
    cylinder(h=3, r=10);
    
    translate([4, 2, 0]){
        cylinder(h=3, r=2);
    }
    translate([-4, 2, 0]){
        cylinder(h=3, r=2);
    }
    
    difference() {
        #cylinder(h=3, r=8);
        translate([-10, -5, 0]) {
            #cube([20, 20, 3]);
        }
    }
}