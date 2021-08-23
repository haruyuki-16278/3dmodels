*for (n=[-20:20]) {
   translate([n, n, 0]){
        cube(1);
   }
}

*for (n=[-20:5:20]) {
   translate([n, n, 0]){
        cube(1);
   }
}

for (n=[-10, 3, 8, 15]) {
   translate([n, n, 0]){
        cube(1);
   }
}