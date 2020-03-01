include <metrics.scad>;

module PCB(){
    difference(){
        color("Chocolate")cube([PW,PCBH,PCBT]);
        // drillings
        for(X = [0 : 2.54 : PW+1]){
            for(Y = [0 : 2.54 : PCBH+1]){
                translate([X,Y,-1])cylinder(PCBT+2,PCBD,PCBD);
            }
        }
        // MOUNTING HOLES POCKET
        translate([  2.54,  2.54,-1])cylinder(PT+2,1.5,1.5,$fn=16);
        translate([PW-2.54,  2.54,-1])cylinder(PT+2,1.5,1.5,$fn=16);
        translate([PW-2.54,PH-2.54,-1])cylinder(PT+2,1.5,1.5,$fn=16);
        translate([  2.54,PH-2.54,-1])cylinder(PT+2,1.5,1.5,$fn=16);
    }
}

PCB();

echo(str("PCB: ",PW,"x",PCBH,"x",PCBT,"mm"));
