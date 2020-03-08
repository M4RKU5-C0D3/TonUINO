include <metrics.scad>;

use <card-pocket-lower.scad>
use <card-pocket-upper.scad>
use <pcb.scad>
use <front.scad>

module Assembly(){
  // FRONT
  Front();
  // POCKET
  translate([FW/4*3-PW/2,FH/2-PH/2,FT+0.001]){
    translate([0,0,0])CardPocketLower();
    translate([0,0,PT+0.001])CardPocketUpper();
  }
  // PCB
  translate([FW/4*3-PW/2,FH/2-PH/2,-10]) PCB();
  // BUTTONS
  for(BX = [FW/2+FW/12:FW/12:FW-FW/12]){
    translate([BX,(FH/2-PH/2-FB),0]){
      color("Lime")cylinder(FT+2,FB/2+1,FB/2+1);
      color("LimeGreen")cylinder(FT+4,FB/2-2,FB/2-2);
    }
  }
  // SPEAKER
  color("DimGray")
    translate([(FW/4),(FH/2),0])
      cylinder(1,(FS/2),(FS/2));
}

Assembly();
