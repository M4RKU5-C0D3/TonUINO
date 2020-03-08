include <metrics.scad>;

use <card-pocket-upper.scad>;

module CardPocketLower(){
    difference(){
        CardPocketUpper();
        //CUTOUT
        translate([(PW-CW-PP)/2,PH-CH,-1])cube([CW+2,CH+1,PT+PP]);
    }
}

projection(cut = true)CardPocketLower();

echo(str("CardPocketLower: ",PW,"x",PH,"x",PT,"mm"));
