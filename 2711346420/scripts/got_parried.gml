//got_parried.gml

if (my_hitboxID.attack == AT_USPECIAL){
    uspecial_can_glide = false;
}

if (my_hitboxID.attack == AT_DSPECIAL){
    with (monkeyBall){
        should_start_to_die = true;
		death_var_thing = 29;
		cur_hitbox.destroyed = true;
    }
}