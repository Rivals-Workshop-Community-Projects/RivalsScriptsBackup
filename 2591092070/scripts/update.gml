
//just kidding you can fast fall again
if (!free || state == PS_PRATFALL) {
	can_fast_fall = true;
}

if (!free || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED) {
	move_cooldown[AT_DSPECIAL] = 0;
}

// enspeshal
{
if (the_timer != 0){

if (the_timer >= 0 && the_timer < 30){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 24);
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 20);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
}

if (the_timer >= 30 && the_timer < 60){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 14);
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 20);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
}

if (the_timer >= 60 && the_timer < 80){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 20);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
}

if (the_timer >= 80){
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 20);

}

}

if (shield_pressed || jump_pressed){
	the_charging = false;
}


}

//Flashing outline when nspecial is fully charged
if (the_charge == true) {
        the_shine += 1;
    if (the_shine >= 60){
        the_shine = 1;
    }
    if (the_shine <= 1){
        outline_color = [161, 0, 255];
    }
    if (the_shine >= 25){
        outline_color = [0, 0, 0];
    }
    init_shader();
}

if (the_charge == false) {
    outline_color = [0, 0, 0];
    {
    init_shader();
    }
}