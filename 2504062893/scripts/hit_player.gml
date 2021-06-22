if (my_hitboxID.attack == AT_FSTRONG){
	if (my_hitboxID.hbox_num == 2){
		if (!hit_sound_played){
			sound_play(asset_get("sfx_absa_uair"), false, noone, 0.9, 1.1);
			hit_sound_played = true;
		}
	}
}
if (my_hitboxID.attack == AT_USTRONG){
	if (my_hitboxID.hbox_num == 1){
		if (!hit_sound_played){
			sound_play(asset_get("sfx_absa_uair"), false, noone, 0.9, 1.1);
			hit_sound_played = true;
		}
	}
}
if (my_hitboxID.attack == AT_DSTRONG){
	if (my_hitboxID.hbox_num == 1){
		if (!hit_sound_played){
			sound_play(asset_get("sfx_absa_uair"), false, noone, 0.9, 1.1);
			hit_sound_played = true;
		}
	}
}
if (my_hitboxID.attack == AT_DATTACK){
	if (my_hitboxID.hbox_num == 1){
		if (!hit_sound_played){
			sound_play(snd_slash, false, noone, 0.7, 0.8);
			sound_play(snd_Ftilt_hit, false, noone, 0.3, 0.9);
			hit_sound_played = true;
		}
	}
}
if (my_hitboxID.attack == AT_FAIR){
	if (my_hitboxID.hbox_num == 1){
		if (!hit_sound_played){
			sound_play(snd_Ftilt_hit, false, noone, 0.6, 1);
			sound_play(snd_slash, false, noone, 0.6, 0.9);
			hit_sound_played = true;
		}
	}
}
if (my_hitboxID.attack == AT_UTILT){
	if (my_hitboxID.hbox_num == 1){
		if (!hit_sound_played){
			sound_play(snd_Ftilt_hit, false, noone, 0.6, 1);
			sound_play(snd_slash, false, noone, 0.5, 0.9);
			hit_sound_played = true;
		}
	}
}
if (my_hitboxID.attack == AT_FTILT){
	if (my_hitboxID.hbox_num == 1){
		if (!hit_sound_played){
			sound_play(snd_Ftilt_hit, false, noone, 0.6, 1.2);
			sound_play(asset_get("sfx_ice_backair"), false, noone, 0.9, 1);
			hit_sound_played = true;
		}
	}
}
if (my_hitboxID.attack == AT_NAIR){
	if (my_hitboxID.hbox_num == 1){
		if (!hit_sound_played){
			sound_play(snd_Ftilt_hit, false, noone, 0.7, 1.2);
			sound_play(asset_get("sfx_ice_backair"), false, noone, 0.5, 1);
			hit_sound_played = true;
		}
	}
}
if (my_hitboxID.attack == AT_USPECIAL){
	if (my_hitboxID.hbox_num == 1){
		if (!hit_sound_played){
			sound_play(asset_get("sfx_clairen_tip_med"), false, noone, 1.1, 1.5);
			hit_sound_played = true;
		}
	}
}

if (attack == AT_FSPECIAL){
    with (asset_get("obj_article1")){
        if (player_id == other.id){
        	if (is_boosted){
        		// print("ouch that hurts")
        		sound_play(asset_get("sfx_absa_new_whip1")); // todo: layer this
        		// spawn_hit_fx(x, y, ) //TODO: make effect for this
        	}
        	has_bounced = true;
        	is_boosted = true;
        	grav = 0.2;
        	lifespan = 300;
            image_angle = 0;
        	hsp = -3*sign(spr_dir);
        	vsp = -6;
        }
    }
}

if (my_hitboxID.attack == AT_USPECIAL){
	uspec_cancel_alarm = 15;
	attack_canceled = true;
	attack_end();
	// move_cooldown[AT_USPECIAL] = 60; //doesn't work this way
}

// if (attack == AT_JAB){
// 	// print("jab")
// 	// if window == 4 || ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && hit_player_obj.state_timer == 0){
// 	if window == 4 && hit_player_obj.state_timer == 0{
// 		print("hitstun")
		
// 		if window_timer == 0 || window_timer == 6{
// 			// print("swipe")
// 			sound_play(asset_get("sfx_swipe_weak1"));
// 			jab_sound = false;
// 		}
// 	} 
// }