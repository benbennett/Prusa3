// PRUSA iteration3
// Y idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module y_idler_base(){
 translate(v = [0,0,-5]) cylinder(h = 30, r=8);	
 translate(v = [0,20,-5]) cylinder(h = 30, r=8);
 translate(v = [0,10,10]) cube(size = [16,20,30], center=true);
 translate(v = [-4,10,10]) cube(size = [8,16+20,30], center=true);
}

module y_idler_holes(){
 translate(v = [0,0,-10]) cylinder(h = 120, r=2.3);	
 translate(v = [0,20,-10]) cylinder(h = 120, r=4.5);
 translate(v = [0,0,2]) cylinder(h = 16, r=12);
}

// Final part
module y_idler(){
 translate(v = [0,0,8])rotate([0,-90,0]) difference(){
  y_idler_base();
  y_idler_holes();
 }
}

y_idler();
