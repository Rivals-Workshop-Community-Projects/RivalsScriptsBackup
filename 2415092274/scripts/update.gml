//update

if (dsp_done){
	move_cooldown[AT_DSPECIAL] = 2;
	if (!free){
		dsp_done = false;
		move_cooldown[AT_DSPECIAL] = 0;
	}
}
if (usp_d_done){
	move_cooldown[AT_NSPECIAL] = 2;
	if (!free||state==PS_WALL_JUMP||state==PS_HITSTUN||state==PS_HITSTUN_LAND){
		usp_d_done = false;
		move_cooldown[AT_NSPECIAL] = 0;
	}
}

if (state_timer == 0 && state == PS_PARRY){
sound_play(sound_get("SE034_low"));
}

//copied from rsnm
with (asset_get("oPlayer")){
	if (id != other.id){
	//with (other){print_debug( "other id detect" )}
		if (state==PS_HITSTUN){
		//with (other){print_debug( "hitstun detect" )}
			if (last_player == other.player){
				//with (other){print_debug( "last player detect" )}
				if (last_attack == AT_USPECIAL && (last_hbox_num == 2||last_hbox_num == 3)){
					//with (other){print_debug( "last attack detect" )}
					if (!hitpause){
						//with (other){print_debug( "hitpause detect" )}
						hsp = 0;
						//vsp = -5;
					}
				}
				if (last_attack == AT_USPECIAL && (last_hbox_num == 4)){
					fall_through = true;
				}
			}
		}
		//with (other){print_debug( "---
		//---
		//---" )}
	}
}

if (!music_init){
	if (get_player_color( player ) == 8){
		set_victory_theme( sound_get( "Victory_silentman" ));//silentman's court
	}else if (get_player_color( player ) == 9){
		set_victory_theme( sound_get( "Victory_lime" ));//red wine
	}else{
		set_victory_theme( sound_get( "Victory" ));//normal twilight
	}
	music_init = true;
}