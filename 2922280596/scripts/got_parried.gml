if (attack == AT_FSPECIAL){
	state = PS_PRATFALL;
	hsp = 0;
	parry_lag = 40;
}

if (attack == AT_FSPECIAL_AIR){
	hsp = 0;
}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.transcendent = 1;
    //my_hitboxID.proj_angle = my_hitboxID.proj_angle + 180;
}

if(my_hitboxID.type == 1)
{
    fast_fwd = false;
    nspec_target = noone;
    nspec_shells = 0;
    nspec_target_timer = 0;
}