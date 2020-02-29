CW = 85.0;//mm card width   < 34 x 2.54
CH = 54.0;//mm card height  < 22 x 2.54 
CT =  0.9;//mm card thickness

W = 38 * 2.54;// width
H = 23 * 2.54;// height
T =  1 * 2.00;// thickness

color("DeepSkyBlue",0.5)difference() {
    cube([W,H,T]);
    // CARD CUTOUT
    translate([W/2-(CW+2)/2,H-CH,-1])
        cube([CW+2,CH+1,T+2]);
    // PCB HOLES
    *for(X = [0 : 2.54 : W+1]){
        for(Y = [0 : 2.54 : H+1]){
            translate([X,Y,-1])cylinder(T+2,0.5,0.5);
        }
    }
    // DRILL HOLES
    translate([  2.54,  2.54,-1])cylinder(T+2,1.5,1.5,$fn=16);
    translate([W-2.54,  2.54,-1])cylinder(T+2,1.5,1.5,$fn=16);
    translate([W-2.54,H-2.54,-1])cylinder(T+2,1.5,1.5,$fn=16);
    translate([  2.54,H-2.54,-1])cylinder(T+2,1.5,1.5,$fn=16);
}
