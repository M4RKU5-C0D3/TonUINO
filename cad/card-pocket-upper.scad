include <metrics.scad>;

module CardPocketHoles(T){
    translate([   2.54,   2.54,-1])cylinder(T+2,1.5,1.5,$fn=16);
    translate([PW-2.54,   2.54,-1])cylinder(T+2,1.5,1.5,$fn=16);
    translate([PW-2.54,PH-2.54,-1])cylinder(T+2,1.5,1.5,$fn=16);
    translate([   2.54,PH-2.54,-1])cylinder(T+2,1.5,1.5,$fn=16);
}

module CardPocketUpper(){
    color("DeepSkyBlue",0.5)difference() {
        cube([PW,PH,PT]);
        //CUTOUT
        translate([(PW-25)/2,PH/2,-1])cube([25,PH/2+1,PT+2]);
        translate([PW/2,PH/2,-1])cylinder(PT+2,25/2,25/2);
        CardPocketHoles(PT);
    }
}

projection(cut = true) CardPocketUpper();

echo(str("CardPocketUpper: ",PW,"x",PH,"x",PT,"mm"));
