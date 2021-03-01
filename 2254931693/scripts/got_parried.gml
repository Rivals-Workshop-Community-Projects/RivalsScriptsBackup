max_fall = 11;
fast_fall = 17;
gravity_speed = .45;
can_move = true;
air_max_speed = 5.5;
can_fast_fall = true;
frog_air_leap = 0;
charge_sound = 0;


if (my_hitboxID.attack == AT_USPECIAL){
    my_hitboxID.length = 0;
    instance_destroy(uspecialfrog);
}

if (my_hitboxID.attack == AT_FSPECIAL){
        set_state(PS_PRATFALL);
}