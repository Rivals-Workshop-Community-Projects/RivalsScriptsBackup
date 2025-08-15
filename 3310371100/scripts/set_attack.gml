//set_attack

reset_attack_value(AT_NAIR, AG_NUM_WINDOWS);
reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
reset_attack_value( attack, AG_LANDING_LAG );
reset_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME);
if ( attack == AT_FSPECIAL ){
	if (free){
		fsp_airstart = true;
	}else{
		fsp_airstart = false;
	}
}
if ( attack == AT_NSPECIAL ){
	if (!free){
		attack = AT_NSPECIAL_2
	}
}
if ( attack == AT_FSPECIAL ){
	attack = AT_FSPECIAL_2
}
if ( attack == AT_DSPECIAL ){
	dsp_downpour = false;
	attack = AT_DSPECIAL_2
}

if (get_match_setting( SET_SEASON )==3){
if (get_synced_var( player )==0){//A
	if (get_player_color( player ) == 8){
	var tmp_rand = random_func_2( id%4, 10, true );
	var tmp_rand_b = random_func_2( 2+(id%4), 10, true )/20;
		switch (tmp_rand){
			case 8:
				sound_play(sound_get("windchime_1"),false,noone,0.35,0.9+tmp_rand_b)
			break;
			case 9:
				sound_play(sound_get("windchime_2"),false,noone,0.35,0.9+tmp_rand_b)
			break;
			default: break;
		}
	}
}
}

move_start_spr_dir_tracker = spr_dir;
wow_wavebounce_happened = false;
dsp_hit = false;
move_is_fresh = true;
the_parried_ice = 0;
//if ( attack == AT_TAUNT ){
//	print(string(get_match_setting( SET_SEASON )))
//}