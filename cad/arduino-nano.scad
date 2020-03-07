include <metrics.scad>;

module ARDUINO(){
    color("SteelBlue")cube([17*2.54,7*2.54,1]);
    color("LightGrey")for(X = [2.54/2*3 : 2.54 : 17*2.54-2.54/2*3]){
        translate([X,2.54/2,-3])cylinder(3,0.5,0.5);
    }
}

ARDUINO();
