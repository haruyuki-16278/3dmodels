module mesh(x=0, y=0, interval=0, bone=0) {
    longer_edge = x > y ? x : y;
    intersection() {
        square(size=[x+2*bone, y+2*bone], center=true);
        union() {
            for (i = [0: (interval+bone)*2*cos(45): 2*x]) {
                translate([i-x, 0, 0]) {
                    rotate([0, 0, 45]) {
                        square(size=[bone, longer_edge*1.5], center=true);
                    }
                    rotate([0, 0, -45]) {
                        square(size=[bone, longer_edge*1.5], center=true);
                    }
                }
            }
            translate([x/2+bone/2, 0, 0]) {
                square(size=[bone, y+bone*2], center=true);
            }
            translate([-(x/2+bone/2), 0, 0]) {
                square(size=[bone, y+bone*2], center=true);
            }
            translate([0, y/2+bone/2, 0]) {
                square(size=[x, bone], center=true);
            }
            translate([0, -(y/2+bone/2), 0]) {
                square(size=[x, bone], center=true);
            }
        }
    }
}

module mesh3d(height=0, x=0, y=0, interval=0, bone=0) {
    linear_extrude(height=height) {
        mesh(x=x, y=y, interval=interval, bone=bone);
    }
}

module knob() {
    linear_extrude(height=3) {
        polygon(points=[
                [0,-3],
                [3,-5],
                [3,5],
                [0,3]
            ], 
            paths=[
                [0, 1, 2, 3]
            ]
        );
    }
}


// 底面
union() {
    mesh3d(height=3, x=94, y=64, interval=10, bone=5);
    translate([52, 0, 0]) {
        rotate([0, 0, 0]) {
            knob();
        }
    }
    translate([-52, 0, 0]) {
        rotate([0, 0, 180]) {
            knob();
        }
    }
    translate([0, 37, 0]) {
        rotate([0, 0, 90]) {
            knob();
        }
    }
    translate([0, -37, 0]) {
        rotate([0, 0, 270]) {
            knob();
        }
    }
}

// y軸手前
translate([0, -37, 25]) {
    rotate([90, 0, 0]) {
        union() {
            difference() {
                mesh3d(height=3, x=94, y=40, interval=10, bone=5);
                translate([0, -22, 0]) {
                    rotate([0, 270, 90]) {
                        knob();
                    }
                }
            }
            translate([52, 0, 0]) {
                rotate([0, 0, 0]) {
                    knob();
                }
            }
            translate([-52, 0, 0]) {
                rotate([0, 0, 180]) {
                    knob();
                }
            }
        }
    }
}
// y軸奥
translate([0, 37, 25]) {
    rotate([90, 0, 180]) {
        union() {
            difference() {
                mesh3d(height=3, x=94, y=40, interval=10, bone=5);
                translate([0, -22, 0]) {
                    rotate([0, 270, 90]) {
                        knob();
                    }
                }
            }
            translate([52, 0, 0]) {
                rotate([0, 0, 0]) {
                    knob();
                }
            }
            translate([-52, 0, 0]) {
                rotate([0, 0, 180]) {
                    knob();
                }
            }
        }
    }
}

// ｘ軸手前
translate([52, 0, 25]) {
    rotate([90, 0, 90]) {
        difference() {
            mesh3d(height=3, x=70, y=40, interval=10, bone=5);
            translate([0, -22, 0]) {
                rotate([0, 270, 90]) {
                    knob();
                }
            }
            translate([40, 0, 0]) {
                rotate([0, 270, 0]) {
                    knob();
                }
            }
            translate([-40, 0, 0]) {
                rotate([0, 270, 180]) {
                    knob();
                }
            }
        }
    }
}
// x軸奥
translate([-52, 0, 25]) {
    rotate([90, 0, 270]) {
        difference() {
            mesh3d(height=3, x=70, y=40, interval=10, bone=5);
            translate([0, -22, 0]) {
                rotate([0, 270, 90]) {
                    knob();
                }
            }
            translate([40, 0, 0]) {
                rotate([0, 270, 0]) {
                    knob();
                }
            }
            translate([-40, 0, 0]) {
                rotate([0, 270, 180]) {
                    knob();
                }
            }
        }
    }
}
