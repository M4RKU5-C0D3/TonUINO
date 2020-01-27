W = 245;// TOTAL WIDTH
H = 140;// TOTAL HEIGHT
S = 100;// SPEAKER DIAMETER
B = 16; // BUTTON DIAMETER
difference() {
  cube([W,H,5]);
  // SPEAKER
  translate([(W/4),(H/2),-5])
    cylinder(15,(S/2),(S/2));
  // BUTTONS
  for(BX = [W/2+W/12:W/12:W-W/12]){
    translate([BX,(H/4),-5])
      cylinder(15,B/2,B/2);
  }
}
