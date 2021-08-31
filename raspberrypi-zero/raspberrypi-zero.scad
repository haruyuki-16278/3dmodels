module raspberryPiZero() {
    module fillet(r=1, pos=1) {
        rotate([0, 0, 90*(pos-1)]) {
            difference() {
                square(size=[r, r]);
                circle(r=r, $fn=30);
            }
        }
    }

    function square_corner(i=1) = ((i%4 < 2) ? 1 : -1);
    linear_extrude(height=1.5){
        difference() {
            square(size=[65, 30], center=true);
            for(i = [1:4]) {
                translate([30.5*square_corner(i), 13*square_corner(i-1), 0]) {
                    fillet(r=2, pos=i);
                }
            }
            for(i = [1:4]) {
                translate([29.5*square_corner(i), 12*square_corner(i-1), 0]) {
                    circle(r=1.25, $fn=30);
                }
            }
        }
    }

    translate([0, 11.5, 2.5]) {
        union() {
            cube([51, 5, 2.5], center=true);
            for(i = [-1:2:1]) {
                for(j = [1:20]) {
                    translate([j*2.54-26.5, i*1.25, 2]) {
                        cube(size=[0.5, 0.5, 10], center=true);
                    }
                }
            }
        }
    }

    translate([31, 0, 2]) {
        cube([4, 17, 1], center=true);
    }

    translate([-27, 2, 2.25]) {
        cube([15, 12, 1.5], center=true);
    }

    translate([-20, -12, 3]) {
        cube([11, 7.5, 3], center=true);
    }

    translate([22, -13, 2.5]){
        cube([8, 6, 3], center=true);
    }

    translate([11, -13, 2.5]){
        cube([8, 6, 3], center=true);
    }
}

raspberryPiZero();