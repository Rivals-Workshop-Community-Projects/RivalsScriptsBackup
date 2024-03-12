//update.gml

/*
//Sleep Kirby Hat Offsets
if (free){
	//Air Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = 0; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
} else if (!free){
	//Grounded Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = 0; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
}
*/

// altering Dream Nail Dialogue for The Knight (Reiga) if MK is on The Halberd.
if (isOnHalberd){
	knight_compat_dream = 
		[
			"My battleship has no needs for Knights like you.",
			"Another Knight... hmph.",
			"Know my power."
		]
}

//print(get_synced_var( player ));
voiced = get_synced_var( player );

/*
//Voiced Mode
if (normal_voiced_toggle == 1){
	voiced = 1;
} else if (normal_voiced_toggle == 0){
	voiced = 0;
}
*/

// voiced mode stuff
if (state_cat == SC_HITSTUN && state_timer == 1 && !hitpause && voicelineHurtCD == 0 && voiced){
	voicelineHurtCD = 40;
	if (get_player_damage( player ) < 100){//>
		var hurtVC = random_func( 1, 4, true ) + 1;
		sound_stop(vc_mk_hurt1);
		sound_stop(vc_mk_hurt2);
		sound_stop(vc_mk_hurt3);
		if (hurtVC == 1){
			sound_play(vc_mk_hurt1);
		} else if (hurtVC == 2){
			sound_play(vc_mk_hurt2);
		} else if (hurtVC == 3){
			sound_play(vc_mk_hurt3);
		}
	} else if (get_player_damage( player ) >= 100){
		var hurtVC = random_func( 1, 4, true ) + 1;
		if (hurtVC == 1){
			sound_play(vc_mk_hurt_big1);
		} else if (hurtVC == 2){
			sound_play(vc_mk_hurt_big2);
		}
	}
}
if (!free){
	voicelineHurtCD = 0;
}

if (voicelineHurtCD != 0){
	voicelineHurtCD--;
}

switch (state){
	case PS_SPAWN:
		/*
		//Voiced Mode
		if (state == PS_SPAWN && state_timer <= 100 && normal_voiced_toggle == 0 && taunt_pressed){//>
			normal_voiced_toggle = 1
			sound_play(asset_get("mfx_star"));
			sound_play(vc_mk_taunt_1);
		}
		*/
		if (state_timer == 6 && isAnimeAlt){
			sound_play(music_animeAppear);
		}
		if (state_timer == 100 && taunt_down && get_player_color(player) == 15){
			NESalt_shouldAddBackShading = true;
			sound_play(asset_get("mfx_star"));
			spawn_hit_fx(x, y - 20, 302);
			init_shader();
		}
		//Input Swap Toggle
		if (state == PS_SPAWN && state_timer <= 100 && inputs_swapped_toggle == false && (up_strong_pressed||down_strong_pressed||left_strong_pressed||right_strong_pressed)){
			inputs_swapped_toggle = true;
			sound_play(asset_get("mfx_star"));//>
		}
		break;
	case PS_CROUCH:
		//Crouch Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_crouch);
		}
		break;
	case PS_JUMPSQUAT:
		//
		if (state_timer == 3){
			if (voiced == true){
				var jumpvc = random_func( 1, 3, true );
				switch (jumpvc){
					case 1:
						sound_play(vc_mk_jump)
						break;
				}
			}
		}
		break;
	case PS_WALL_JUMP:
		//
		wings_out = false;
		sound_stop(sfx_condor_dive);
		move_cooldown[AT_FSPECIAL] = 0;
		move_cooldown[AT_USPECIAL] = 0;
		move_cooldown[AT_DSPECIAL] = 0;
		break;
	case PS_LANDING_LAG:
		//
		if (attacking_out_of_shuttle_loop == true && !has_hit){
			sound_stop(landing_lag_sound);
			set_state(PS_PRATLAND);
		}
		break;
	case PS_AIR_DODGE:
		//Stopping the Jump Sound Effect Airdodge.
		sound_stop(sfx_jump);	
		
		//
		move_cooldown[AT_JAB] = 3;
		move_cooldown[AT_FTILT] = 3;
		move_cooldown[AT_UTILT] = 3;
		move_cooldown[AT_DTILT] = 3;
		move_cooldown[AT_DATTACK] = 3;
		move_cooldown[AT_FSTRONG] = 3;
		move_cooldown[AT_USTRONG] = 3;
		move_cooldown[AT_DSTRONG] = 3;
		
		//a
		if (airdodging_out_of_shuttle_loop){
			if (window == 2 && window_timer == 11){
				set_state(PS_PRATFALL);
			}
		}
		
		break;
	case PS_WAVELAND:
		if (state_timer == 0){
			sound_stop(sfx_airdodge)
			sound_stop(sfx_jump)
		}
		if (airdodging_out_of_shuttle_loop == true){
			prat_land_time = 25;
			airdodging_out_of_shuttle_loop = false;
			set_state(PS_PRATLAND);
			sound_stop(landing_lag_sound);
		}
		break;
	case PS_PARRY:
		if (state_timer == 0){
			sound_play(sfx_parry);
			//sound_stop(asset_get("sfx_parry_use"));
		}	
		break;
	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
		if (state_timer == 2){
			sound_play(sfx_dimensional_cape_use, false, noone, 0.4, 1.1);
		}	
		break;
}

if !(url == 2580068632) {
	player = -1
}

if (jump_pressed){
	wing_jump_timer = 2
}

if (wing_jump_timer != 0){
	wing_jump_timer--;
}

if (!free){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
	if (state != PS_LANDING_LAG){
		attacking_out_of_shuttle_loop = false;
	}
	if (state != PS_WAVELAND){
		airdodging_out_of_shuttle_loop = false;
	}
	
	wings_out = false;
}

if (state != PS_PRATLAND){
	prat_land_time = 20;
}

// Intro stuff
if (introTimer2 < 3) {//>
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

// a
if (get_player_color( player ) != 7 && get_player_color( player ) != 17){
	if (brawl_mode){
		set_victory_portrait( sprite_get( "portrait_brawl" ));
		set_victory_sidebar( sprite_get( "result_small" ));
	} else if (!brawl_mode){
		set_victory_portrait( sprite_get( "portrait" ));
		set_victory_sidebar( sprite_get( "result_small" ));
	}
}

//this increments introTimer every few frames, depending on the number entered

if (introTimer < 19 && !is_in_playtest) {//>
    hud_offset = 1000;
} 
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

//i can now know how much gems sk has :smiling_imp:
/*
with asset_get("oPlayer"){
	if (variable_instance_exists(id, "gems") && variable_instance_exists(id, "gems") && id != other.id){
		vsp = -4
	}
}
*/