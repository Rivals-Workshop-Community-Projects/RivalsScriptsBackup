
the_parried_ice = 0;

if (my_hitboxID.attack==AT_NSPECIAL){
	my_hitboxID.ice_hsp = my_hitboxID.ice_hsp*-1.5;
	my_hitboxID.hitbox_timer = 0;
}
if (my_hitboxID.attack==AT_USPECIAL){
	vsp = 0;
	old_vsp = 0;
	/*uspecial_speed_timer = 0;
	window = 5;
	window_timer = 0;*/
}
if (my_hitboxID.attack==AT_DATTACK){
	fsp = 0;
	old_fsp = 0;
}
signalling_all_my_besties_i_have_been_PARRIED = true;


if (my_hitboxID.attack==AT_DSPECIAL){
		//print("parrylag = "+string(parry_lag))
	if (my_hitboxID.hbox_num==3){
		//landing_lag_time+=40
		the_parried_ice = 1;
	}
	if (my_hitboxID.hbox_num==4){
		//landing_lag_time+=80
		the_parried_ice = 2;
	}
		//print("new parrylag = "+string(parry_lag))
}