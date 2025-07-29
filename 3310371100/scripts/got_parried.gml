
the_parried_ice = 0;

if (my_hitboxID.attack==AT_NSPECIAL){
	if (my_hitboxID.ice_verticalmode==true){
		my_hitboxID.ice_hsp = my_hitboxID.ice_hsp*-1.5;
		my_hitboxID.ice_vsp = my_hitboxID.ice_vsp*-1;
		my_hitboxID.hitbox_timer = 0;
	}else{
		my_hitboxID.ice_hsp = my_hitboxID.ice_hsp*-1.5;
		my_hitboxID.hitbox_timer = 0;
	}
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

if (fsp_loop_count > 0){
	fsp_loop_count = 0;
	sound_play(sound_get("oops"),false,noone,0.6,1)
}

if (my_hitboxID.attack==AT_DSPECIAL_2){
	//wahh
	sound_play(sound_get("oops_spin"),false,noone,0.7,1)
	//hsp = hsp*0.5;
	hsp = dsp_hsp_store;
	vsp = dsp_vsp_store;
	window=6; window_timer=0;
}
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