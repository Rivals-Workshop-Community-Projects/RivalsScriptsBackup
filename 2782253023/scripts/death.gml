//death.gml

if (super_mode == false) {
    super_gauge = super_gauge = 0;
} else if (super_mode == true) {
    outline_color = [ 0, 0, 0 ];
    super_gauge = 0;
    super_mode = false;
}