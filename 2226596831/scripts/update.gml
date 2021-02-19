//update

if (bowling_timer>0){
	if (bowling_timer == 50){
		sound_play(sound_get("ding_1"));
	}
	if (bowling_timer == 1){
		var tmp_rand = random_func( 7, 3, true );
		switch (tmp_rand){
			case 0:
				sound_play(sound_get("nice_throw_1"));
				break;
			case 1:
				sound_play(sound_get("nice_throw_2"));
				break;
			case 2:
				sound_play(sound_get("nice_throw_3"));
				break;
		}
	}
	bowling_timer--;
}

if (track_altered = true){
	if (!free){
		fsp_air_track = fsp_air_max;
		dsp_air_track = dsp_air_max;
	}
}
if (grav_altered = true){
	if (state==PS_ATTACK_AIR&&attack==AT_NAIR){
	}else{
		gravity_speed = orig_grav;
		grav_altered = false;
	}
}

with (asset_get("oPlayer")){
	if (id != other.id){
	//with (other){print_debug( "other id detect" )}
		if (state==PS_HITSTUN){
		//with (other){print_debug( "hitstun detect" )}
			if (last_player == other.player){
				//with (other){print_debug( "last player detect" )}
				if (last_attack == AT_USPECIAL && last_hbox_num == 4){
					//with (other){print_debug( "last attack detect" )}
					if (!hitpause){
						//with (other){print_debug( "hitpause detect" )}
						hsp = 0;
						//vsp = -5;
					}
				}
			}
		}
		//with (other){print_debug( "---
		//---
		//---" )}
	}
}

if (bowling_backwards>0){
	if (bowling_backwards == 1){
		sound_play(sound_get("bowling_scare"));
	}
	bowling_backwards--;
}

if (safety_strap_timer>0){
	if (safety_strap=="on"){
		sound_play(sound_get("off"));
		safety_strap = "off"
		white_flash_timer = 24
		safety_strap_anim = safety_strap_anim_duration;
		safety_strap_anim_type = 1;
	}
	if (safety_strap_timer == safety_strap_anim_duration){
		safety_strap_anim = safety_strap_anim_duration;
		safety_strap_anim_type = 0;
	}
	if (safety_strap_timer == 1){
		sound_play(sound_get("on"));
		safety_strap = "on"
	}
	safety_strap_timer--;
	if (safety_strap_timer%2==0){
		spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-48+random_func( 8, 96, true ), flamefx );
	}
}
if (safety_strap_anim>0){
	safety_strap_anim--;
}








//runecode
if (runesUpdated){
	if (runeA){
		jump_speed = 12;
		djump_speed = 10.5;
	}else{
		jump_speed = 10.5;
		djump_speed = 9;
	}
	if (runeB){
		wave_land_adj = 1.4;
		wave_friction = .01;
	}else{
		wave_land_adj = 1;
		wave_friction = .02;
	}
	if (runeD){
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 2);
	}else{
		reset_attack_value(AT_FAIR, AG_LANDING_LAG);
	}
	if (runeE){
		set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_JAB, 2, HG_ANGLE, 88);
	}else{
		reset_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_JAB, 2, HG_ANGLE);
	}
	if (runeF){
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
	}else{
		reset_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER);
		reset_hitbox_value(AT_NAIR, 1, HG_ANGLE);
	}
	if (runeH){
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 265);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
	}else{
		reset_hitbox_value(AT_DAIR, 2, HG_ANGLE);
		reset_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK);
	}
	if (runeI){
		set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 12);
	}else{
		reset_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH);
	}
	runesUpdated = false;
}


if (runeC){
	if (state==PS_DOUBLE_JUMP){
		if (state_timer==0){
			hsp=hsp+(3*(right_down-left_down))
		}
	}
}

if (runeJ){
	if (state==PS_ATTACK_GROUND && attack==AT_FSTRONG){
		if (smash_charging){
			strong_charge++;
		}
	}
}

if (runeN&&runeO){
	safety_strap_timer = strap_off_duration-1;
}



