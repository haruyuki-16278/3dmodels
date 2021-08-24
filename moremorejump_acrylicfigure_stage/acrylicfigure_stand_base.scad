module standbase() {
  // base
  cube([170, 80, 5]);

  // steps
  intersection(){
    union() {
      union() {
        translate([85, 100, 5]){
          cylinder(r=60, h=1);
        }
        translate([0, 120, 5]){
          cylinder(r=80, h=1);
        }
        translate([170, 120, 5]){
          cylinder(r=80, h=1);
        }
      }
      union() {
        translate([85, 100, 6]){
          cylinder(r=58, h=1);
        }
        translate([0, 120, 6]){
          cylinder(r=78, h=1);
        }
        translate([170, 120, 6]){
          cylinder(r=78, h=1);
        }
      }
      translate([85, 100, 7]){
        cylinder(r=56, h=1);
      }
      translate([85, 100, 8]){
        cylinder(r=54, h=1);
      }
    }
    translate([0, 0, 5]) {
      cube([170, 80, 5]);
    }
  }
}

module mainDisplay() {
  difference() {
    // base
    cube([55, 25, 3]);
    // minus
    translate([1, 1, 2]) {
      cube([53, 23, 1]);
    }
  }
  translate([7, -10, 0]) {
    cube([3, 10, 3]);
  }
  translate([50, -10, 0]) {
    cube([3, 10, 3]);
  }
}

module bardeco() {
  difference() {
    // base
    cube([8, 27, 2]);
    // minus
    translate([2, 0, 1]){
      cube([1, 27, 1]);
    }
    translate([5, 0, 1]){
      cube([1, 27, 1]);
    }
  }
  translate([0, -9, 0]) {
    cube([2, 9, 2]);
  }
  translate([6, -9, 0]) {
    cube([2, 9, 2]);
  }
}

module bigheart2d() {
  difference() {
    // base
    union() {
      rotate([0, 0, 25]) {
        scale([0.7, 1, 1]) {
          circle(r=30);
        }
      }
      translate([13, 0, 0]){
        rotate([0, 0, -25]) {
          scale([0.7, 1, 1]) {
            circle(r=30);
          }
        }
      }
    }
    // minus
    union() {
      rotate([0, 0, 25]) {
        scale([0.7, 1, 1]) {
          circle(r=22);
        }
      }
      translate([13, 0, 0]){
        rotate([0, 0, -25]) {
          scale([0.7, 1, 1]) {
            circle(r=22);
          }
        }
      }
    }
    translate([7, -20, 0]) {
      square(size=[60, 30], center=true);
    }
  }
}

module bigheart3d() {
  linear_extrude(height=5) {
    scale([1.2, 1.2, 1.2]){
      bigheart2d();
    }
  }
  #translate([-21, -5, 2.5]) {
    rotate([90, 0, 0]) {
      cylinder(h=9 ,r=2);
    }
  }
  translate([37, -5, 2.5]) {
    rotate([90, 0, 0]) {
      cylinder(h=9 ,r=2);
    }
  }
}

module heart2d() {
  difference() {
    union() {
      translate([-2, 0, 0]) {
        rotate([0, 0, 30]) {
          scale([0.7, 1, 1]) {
            circle(r=10);
          }
        }
      }
      translate([2, 0, 0]) {
        rotate([0, 0, -30]) {
          scale([0.7, 1, 1]) {
            circle(r=10);
          }
        }
      }
    }
    union() {
      translate([-2, 0, 0]) {
        rotate([0, 0, 30]) {
          scale([0.7, 1, 1]) {
            circle(r=8);
          }
        }
      }
      translate([2, 0, 0]) {
        rotate([0, 0, -30]) {
          scale([0.7, 1, 1]) {
            circle(r=8);
          }
        }
      }
    }
  }
}

module clover2d() {
  for (deg = [0:120:240]) {
    rotate([0, 0, deg]) {
      translate([0, 9.3, 0]) {
        heart2d();
      }
    }
    
  }
}

module clover3d() {
  linear_extrude(height=2) {
    clover2d();
  }
}

module logo() {
  translate([0, -50, 0]) {
    rotate([0, 0, -7.5]) {
      clover3d();
    }
    translate([0, 0, 2]) {
      rotate([0, 0, 7.5]) {
        clover3d();
      }
    }
  }
}

module petitDisplay() {
  difference() {
    cube([35, 15, 2]);
    translate([1, 1, 1]) {
      cube([33, 13, 1]);
    }
  }
}

module sidedeco() {
  translate([2.5, 3, 3]) {
    petitDisplay();
  }
  for(x = [0:37/5:37]) {
    translate([x, -4, 0]) {
      if (x == 0 || x == 37){
        translate([0, -7, 0]) {
          cube([3, 32, 3]);
        }
      } else {
        cube([3, 25, 3]);
      }
    }
  }
  translate([0, 21, 0]) {
    cube([40, 3, 5]);
  }
}

// main render
color("#2f2f2f"){
  standbase();
}

color("#88ddff"){
  translate([57.5, 70, 10]){
    rotate([90, 0, 0]){
      mainDisplay();
    }
  }
}

color("#ff88aa"){
  translate([46, 69, 9]) {
    rotate([90, 0, 0]){
      bardeco();
    }
  }
  translate([116, 69, 9]) {
    rotate([90, 0, 0]){
      bardeco();
    }
  }
}

color("#eedd55"){
  translate([77.5, 78, 14]){
  // translate([0, -50, 14]){
    rotate([90, 0, 0]) {
      bigheart3d();
    }
  }
}

color("#00ff55"){
  translate([85, 73, 70]) {
    rotate([90, 0, 0]) {
      scale([0.5, 0.5, 0.5]) {
        logo();
      }
    }
    
  }
}

color("#5577ff") {
  translate([0.5, 55, 11]) {
    rotate([90, 0, 15]) {
      sidedeco();
    }
  }
  translate([130, 65, 11]) {
    rotate([90, 0, -15]) {
      sidedeco();
    }
  }
}