//hit_player
var hit_attack = my_hitboxID.attack;

if (my_hitboxID.attack == AT_USTRONG){
    ustrong_target = hit_player_obj;
	if (my_hitboxID.hbox_num==4&&(hit_player_obj.orig_knock>20||hit_player_obj.should_make_shockwave)){
		sound_play(sound_get("shatterlight"));
	}else{
		sound_play(sound_get("wavedash"));
	}
}
if (my_hitboxID.attack == AT_BAIR){
	if (hit_player_obj.should_make_shockwave){
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, lumihitfx1 );
		sound_play(sound_get("shatterlight"));
	}
	if (hit_player_obj.free){
		sound_play(sound_get("stomp"));
	}
}
if (my_hitboxID.attack == AT_FAIR){
	if (hit_player_obj.should_make_shockwave){
		//sound_play(asset_get("sfx_blow_heavy2"));
		
		//sound_play(sound_get("shatterlight"));
		
		hitstop = round(hitstop*1.2)
		hitstop_full = round(hitstop_full*1.2)
		hit_player_obj.hitstop = round(hit_player_obj.hitstop*1.2)
		hit_player_obj.hitstop_full = round(hit_player_obj.hitstop_full*1.2)
	}
}
if (my_hitboxID.attack == AT_FTILT){
	if (my_hitboxID.hbox_num==1){
		sound_play(sound_get("click2"));
	}
	if (my_hitboxID.hbox_num==2){
		sound_play(sound_get("click2"));
	}
	if (my_hitboxID.hbox_num==3){
		sound_play(sound_get("click3"));
	}
}
if (my_hitboxID.attack == AT_DAIR && my_hitboxID.type == 2){
	has_hit = true;
	has_hit_player = true;
}
if (my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num == 1){
	if (hit_player_obj.free){
		spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, lumihitfx1 );
	}
}

//if (my_hitboxID.type == 1){ //deprecated
	if (latest_light_sentry != -4){
		if (point_distance(x, y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80 ||
			point_distance(hit_player_obj.x, hit_player_obj.y-(hit_player_obj.char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80 ||
			point_distance(my_hitboxID.x, my_hitboxID.y, latest_light_sentry.x, latest_light_sentry.y) <= 80 ){ //140?
			if (latest_light_sentry.state == 1){
			/*if (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0 ||
				my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 0){*/
				if (my_hitboxID.attack == AT_FSTRONG){
					hit_player_obj.state = PS_HITSTUN;
					hit_player_obj.hitpause = 1;
					hit_player_obj.hitstop = 30;
					hit_player_obj.hitstop_full = 30;
				}
				user_event( 0 );
				
			/*}*/
			}
		}
	}
//}