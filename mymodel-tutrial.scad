*for (n=[-20:5:20]) {
   translate([n, n, 0]){
       if (n%10 == 0){
           cube(2);
       } else {
           cube(1);
       }
   }
}

for (n=[-20:5:20]) {
   translate([n, n, 0]){
       cube(n % 10 ==0 ? 2 : 1);
   }
}