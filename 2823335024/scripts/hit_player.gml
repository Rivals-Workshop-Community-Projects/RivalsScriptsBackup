//hit_player


if (my_hitboxID.attack==AT_USTRONG){
	sound_stop(asset_get("sfx_absa_concentrate"))
	//if (my_hitboxID.hbox_num==3){
	//	hit_player_obj.x = hit_player_obj.x-((hit_player_obj.x-my_hitboxID.x)/2)
	//}
}
if (my_hitboxID.attack==AT_DSPECIAL){
	if (my_hitboxID.hbox_num==2){
		if (joycon_drift = "off"){
			joycon_drift_timer = drift_on_duration;
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

//csnw sfx layering
switch(my_hitboxID.attack){
	
	case AT_FSTRONG:
		if (my_hitboxID.hbox_num != 5){ 
				sound_play(sound_get("hit_medium_5"), 0, noone, 1, 1.1)
		}
		if (my_hitboxID.hbox_num == 5){ 
				sound_play(sound_get("hit_hard_1"), 0, noone, 1, 0.7)
		}
	

}