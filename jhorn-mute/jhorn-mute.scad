module cross_section() {
    polygon(
        points=[
            [0,0],
            [5,20],
            [10,35],
            [15,47],
            [20,55],
            [18,65],
            [5,65],
            [0,55],
            [-20,55],
            [-20,58],
            [-2,58],
            [3,68],
            [20,68],
            [23,55],
            [18,47],
            [13,35],
            [8,20],
            [3, 0]
        ]
    );
    polygon(
        points=[
            [12,65],
            [12,55],
            [7,41],
            [10,40],
            [15,55],
            [15,65]
        ]
    );
    
}

module mute_base() {
    rotate_extrude(convexity=30) {
        translate([20, 0, 0]){
            cross_section();
        }
    }
}

cross_section();
mute_base();

!difference() {
    mute_base();
    for(a=[0:12:360]){
        rotate([0, 45, a]) {
            translate([-21, 0, 75]) {
                #cylinder(r=0.6, h=10, center=true, $fn=20);
            }   
        }
    }
}