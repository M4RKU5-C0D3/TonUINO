include <metrics.scad>;

use <card-pocket-upper.scad>;

module Front(){
  difference() {
    color("BurlyWood")cube([FW,FH,FT]);
    // SPEAKER CUTOUT
    translate([(FW/4),(FH/2),-1])
      cylinder(15,(FS/2),(FS/2));
    // BUTTONS CUTOUT
    for(BX = [FW/2+FW/12:FW/12:FW-FW/12]){
      translate([BX,(FH/2-PH/2-FB),-1])
        cylinder(FT+2,FB/2,FB/2);
    }
    // POCKET MOUNT
    translate([FW/4*3-PW/2,FH/2-PH/2,0])CardPocketHoles(FT);
  }
}

projection(cut = true)Front();
