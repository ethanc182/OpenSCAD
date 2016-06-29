$fn = 400;



/*
Ethan's Guitar Pick part design
A simple small guitar pick design. Print with the dimensions and create more than one if possible.
*/
module addstructure(pickheight, radius, length, width) {
    
    linear_extrude(height = pickheight){
    offset(r=radius){
    polygon
        ([[length,0], [0,width], [0, -width]]);
    }
}
}

union() {
    addstructure(0.75, 0.7, 29, 12);
    addstructure(0.79, 5.3, 12, 7);
    addstructure(0.68, 0.6, 30, 11);
}