//hit_player

if (my_hitboxID.attack==AT_FSTRONG){
	if (hit_player_obj.hitpause == true){
		my_hitboxID.c_hitpause = true;
		my_hitboxID.c_hitpause_time = hit_player_obj.hitstop_full;
		my_hitboxID.c_old_hsp = my_hitboxID.hsp
		my_hitboxID.c_old_vsp = my_hitboxID.vsp
	}
	if (hit_player_obj.should_make_shockwave == true){
		bowling_timer=120;
	}
	if (my_hitboxID.through_platforms == -1){
		bowling_backwards=50;
	}
}
if (my_hitboxID.attack==AT_USTRONG){
	sound_stop(asset_get("sfx_absa_concentrate"))
	//if (my_hitboxID.hbox_num==3){
	//	hit_player_obj.x = hit_player_obj.x-((hit_player_obj.x-my_hitboxID.x)/2)
	//}
}
if (my_hitboxID.attack==AT_DSPECIAL){
	if (my_hitboxID.hbox_num==2){
		if (safety_strap = "on"){
			safety_strap_timer = strap_off_duration;
		}
	}
}
if (my_hitboxID.attack==AT_USPECIAL){
	if (my_hitboxID.hbox_num>0&&my_hitboxID.hbox_num<4){
		if (hit_player_obj.y < my_hitboxID.y){
			hit_player_obj.orig_knock = 5.5
			hit_player_obj.x = hit_player_obj.x+(sign(hit_player_obj.x-my_hitboxID.x)*3)
		}
	}
	if (my_hitboxID.hbox_num==4){
		if (hit_player_obj.y < my_hitboxID.y){
			hit_player_obj.orig_knock = 8
		}
		//hit_player_obj.x = hit_player_obj.x-(sign(hit_player_obj.x-my_hitboxID.x)*3)
	}
}