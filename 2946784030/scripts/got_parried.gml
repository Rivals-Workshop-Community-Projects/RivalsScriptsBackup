if (attack == AT_FSTRONG){fstrong_bonk = true;}

if wario_voiced == true && my_hitboxID.projectile_parry_stun == 1{
    sound_play( sound_get("VFX_Parried") );
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 5{
	bike.bike_hit_thing = true;
}

if attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3{
	window_timer = 0;
	window = 10;
}

if attack == AT_DSPECIAL_2{
	window_timer = 0;
	window = 4;
	set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
}