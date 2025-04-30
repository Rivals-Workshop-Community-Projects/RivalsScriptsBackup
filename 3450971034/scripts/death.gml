//death.gml

if (instance_exists(my_grab_id) && my_grab_id != noone)
{
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

if (clinging) clinging = false;

if (outline_color == prev_outline && (fspecial_charge >= fspecial_large_charge || fspecial_stacks > 0)) {
    outline_color = [0, 0, 0];
    init_shader();
}
fspecial_charge = 0;
fspecial_stacks = 0;