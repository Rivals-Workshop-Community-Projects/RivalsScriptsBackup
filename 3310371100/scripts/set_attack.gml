//set_attack

reset_attack_value(AT_NAIR, AG_NUM_WINDOWS);
reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
reset_attack_value( attack, AG_LANDING_LAG );
if ( attack == AT_FSPECIAL ){
	if (free){
		fsp_airstart = true;
	}else{
		fsp_airstart = false;
	}
}

move_start_spr_dir_tracker = spr_dir;
wow_wavebounce_happened = false;
dsp_hit = false;
move_is_fresh = true;
the_parried_ice = 0;
if ( attack == AT_TAUNT ){
	print(string(get_match_setting( SET_SEASON )))
}