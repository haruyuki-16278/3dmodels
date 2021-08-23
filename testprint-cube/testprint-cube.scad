difference(){
	translate([-10, -10, 0]) {
		cube(20);
	}

	// rotate([])
	translate([10,-7, 2]) {
		rotate([90, 0, 90]) {
			linear_extrude(height=2) {
				text("X", size=16);
			}
		}
	}
	translate([-7, 10, 2.5]) {
		rotate([90, 0, 0]) {
			linear_extrude(height=2) {
				text("Y", size=16);
			}
		}
	}
	translate([-7, -7.5, 18]) {
		rotate([0, 0, 0]) {
			linear_extrude(height=2) {
				text("Z", size=16);
			}
		}
	} 
}

