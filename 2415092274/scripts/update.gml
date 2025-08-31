//update

if (get_player_color( player ) == 7){ //towerofheaven
	if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
		outline_color=[35, 67, 49]
		init_shader();
	}
}

if (was_reloaded){sound_play(sound_get("gui_accept"));was_reloaded=false;}
if (aodev){aodevcount++;}

if (dsp_done){
	move_cooldown[AT_DSPECIAL] = 2;
	if (!free){
		dsp_done = false;
		move_cooldown[AT_DSPECIAL] = 0;
	}
}
if (usp_d_done){
	move_cooldown[AT_FSPECIAL] = 2;
	if (!free||state==PS_WALL_JUMP||state==PS_HITSTUN||state==PS_HITSTUN_LAND){
		usp_d_done = false;
		move_cooldown[AT_FSPECIAL] = 0;
	}
}
if (usp_did){
	move_cooldown[AT_USPECIAL] = 2;
	if (!free||state==PS_WALL_JUMP){
		usp_did = false;
		move_cooldown[AT_USPECIAL] = 0;
	}
}
if (fsp_buffer>0){
	fsp_buffer--;
	if (!free){fsp_buffer = clamp(fsp_buffer-5, 0, fsp_buffer_amount);};
	//print(string(fsp_buffer))
}

if (dsp_test_timer<dsp_test_max){
	dsp_test_timer++;
}

/*
if (!optimalmodeEX){
	if (state==PS_SPAWN){
		if (taunt_down&&shield_down){
			optimalmodeEX = true;
			white_flash_timer = 18;
			sound_play(sound_get("gui_decline"));
		}
	}else{
		if (down_down&&taunt_down&&shield_down){
			optimalmodeEX = true;
			white_flash_timer = 18;
			sound_play(sound_get("gui_decline"));
		}
	}
}*/

if (state_timer == 0 && state == PS_PARRY){
sound_play(sound_get("SE034_low"));
}

//var testset = (jump_down)?"F":(special_down)?"B":(attack_down)?"D":(!shield_down)?"E":"A"
var testset = (jump_down)?(special_down)?"B":"F":(attack_down)?"D":(!shield_down)?"E":"A"

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
						if (state_timer == 1||state_timer == 0){
							//with (other){print_debug( "hitpause detect" )}
							hsp = hsp / 1.8;
							//vsp = -5;
						}
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


if ((state==PS_SPAWN||taunt_down)&&testset=="B"&&mode!=testset&&get_player_color(player)!=12){mode=testset;init_shader();}
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



