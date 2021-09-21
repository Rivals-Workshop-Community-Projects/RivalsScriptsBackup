//update.gml

//MunoPhone Touch
muno_event_type = 1;
user_event(14);

if (!free){
	dtilt_started_on_ground = true
}

if (state != PS_IDLE){
	idle_sleep_time = 0
	idle_sleep_tick = 0
}

if (has_rune("A")){
	idle_sleep_time_specific = 1
} else {
	idle_sleep_time_specific = 4
}


if (has_rune("M")){
	essences_max_limit = 8
	essence_can_be_destroyed = false
} else {
	essences_max_limit = 1
	essence_can_be_destroyed = true
}

if (has_rune("N")){
	set_num_hitboxes(AT_NSPECIAL, 3);
} else {
	set_num_hitboxes(AT_NSPECIAL, 1);
}

if (has_rune("K")){
	set_num_hitboxes(AT_JAB, 5);
	set_num_hitboxes(AT_DATTACK, 4);
	set_num_hitboxes(AT_FSPECIAL, 4);
} else {
	set_num_hitboxes(AT_JAB, 4);
	set_num_hitboxes(AT_DATTACK, 3);
	set_num_hitboxes(AT_FSPECIAL, 3);
}

if (has_rune("L")){
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
} else {
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 17);
}

if (has_rune("G")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 14);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 14);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 14);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .6);
} else {
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
}

if (has_rune("O")){
	essence_can_be_destroyed = false
} else {
	essence_can_be_destroyed = true
}


//intro
if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 21) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

switch (state){
	case PS_SPAWN:
		if (state_timer == 1){
			//set_attack( AT_EXTRA_2 );
			//y -= 9999999998
		}
		break;
	case PS_IDLE:
		set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("sleep"));
		NotSleepKirby_IsSleeping = false
		if (image_index == 8){
			idle_sleep_time++;
		} else {
			idle_sleep_time = 0
		}
		if (image_index == 9){
			state_timer = 0
		}
		if (idle_sleep_time == 1){
			idle_sleep_tick++;
		}
		if (idle_sleep_tick == idle_sleep_time_specific){
			set_attack( AT_EXTRA_1 ); //make sure to make extra_1
			idle_sleep_time = 0
			idle_sleep_tick = 0
		}
		break;
	case PS_CROUCH:
		//Crouch Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_crouch);
		}
		if (image_index == 3){
			crouch_timer++;
			if (crouch_timer == 1){
				sound_play(sfx_crouch);
			}
		} else {
			crouch_timer = 0
		}
		break;
	case PS_WALK:
		if (image_index == 0 || image_index == 4){
			sleep_kabrbr_index++;
			if (sleep_kabrbr_index == 1){
				//sound_play(sfx_step)
			}	
		} else {
			sleep_kabrbr_index = 0
		}
		break;
	case PS_DASH_START:
		if (state_timer == 0){
			sound_play(sfx_dashstart);
		}	
		break;
	case PS_DASH_STOP:
		//Dash Stop Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_dashstop);
		}
		if (state_timer == 3){
			hsp *= 0.5
		}	
		break;
	case PS_DASH_TURN:
		//Dash Stop Sound Effect.
		if (state_timer == 2){
			//sound_play(sfx_dashstop);
		}
		break;
	case PS_JUMPSQUAT:
		//
		break;
	case PS_FIRST_JUMP:
		//
		break;
	case PS_DOUBLE_JUMP:
		//
		break;
	case PS_WALL_JUMP:
		//
		break;
	case PS_LANDING_LAG:
		//
		break;
	case PS_AIR_DODGE:
		//Stopping the Jump Sound Effect if Sleep Kirby Airdodges.
		sound_stop(sfx_jump);	
		break;
	case PS_WAVELAND:
		if (state_timer == 0){
			sound_stop(sfx_airdodge)
			sound_stop(sfx_jump)
		}	
		break;
	case PS_PARRY:
		if (state_timer == 0){
			sound_play(sfx_parry);
			//sound_stop(asset_get("sfx_parry_use"));
		}	
		break;
}

//up b into bubble
if (SleepKirby_up_b_into_nspec_happened == true){
	SleepKirby_up_b_into_nspec_happened = false
	set_state(PS_IDLE_AIR);
	vsp = -12.5
}

//Nspecial Hud Image Index Stuff
if (burst_bubble_is_charged == true){
	if (burst_bubble_hud_thing_timer_counter != 4){
		burst_bubble_hud_thing_timer_counter++;
	}
	
	if (burst_bubble_hud_thing_timer_counter == 4){
		burst_bubble_hud_thing_timer_counter = 0;
		burst_bubble_hud_thing_timer++;
	}
	
	if (burst_bubble_hud_thing_timer > 3){
		burst_bubble_hud_thing_timer = 0;
		burst_bubble_hud_thing_timer_actual_tick++;
	}
	if (burst_bubble_hud_thing_timer_actual_tick > 3){
		burst_bubble_hud_thing_timer_actual_tick = 0;
	}
	
} else if (burst_bubble_is_charged == false){
	burst_bubble_hud_thing_timer = 0;
	burst_bubble_hud_thing_timer_counter = 0;
}

//Very aggressive code to NOT make Sleep Kirby's hurtbox screw up if he goes to sleep after Jab 3 / Landing Nair.
if (sprite_index == sprite_get("sleep") || sprite_index == sprite_get("sleep_jab3")){
	set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("sleep_hurtbox"));
	hurtboxID.sprite_index = sprite_get("sleep_hurtbox");
}

if (jab_is_jabbing == true){
	hurtboxID.sprite_index = sprite_get("jab_hurt");
}

if (sprite_index != sprite_get("jab")){
	jab_is_jabbing = false
}

if (jab_is_jabbing == false && hurtboxID.sprite_index != sprite_get("sleep_hurtbox")
&& state != PS_CROUCH
&& state != PS_ATTACK_GROUND
&& state != PS_ATTACK_AIR
&& state != PS_ROLL_FORWARD
&& state != PS_ROLL_BACKWARD
&& state != PS_TECH_FORWARD
&& state != PS_TECH_BACKWARD
&& state != PS_PARRY
&& state != PS_PARRY_START
&& state_cat != SC_HITSTUN
&& !free){
	hurtboxID.sprite_index = sprite_get("sleep_hurtbox");
}

if (state != PS_ATTACK_GROUND){
	set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
}

if (IsSleepKirby_PlayAbilityStarSFX == true){
	IsSleepKirby_PlayAbilityStarSFX = false
	//sound_play(sfx_ability_star_break);
}

//Sleep Status Code
//(i hate this)
	with (oPlayer){
		if (is_in_playtest == false){
			Sleep_Meter = sprite_get("enemy_sleep_bar");

			//Debug vars
			//draw_debug_text( x, y - 30, string(NotSleepKirby_IsSleeping))
			//draw_debug_text( x, y , string(state_timer))
			//draw_debug_text( x, y + 30, string(NotSleepKirby_SleepTimerRelease))
			//draw_debug_text( x, y + 60, string(NotSleepKirby_SleepTimer))
			//draw_debug_text( x, y + 90, string(NotSleepKirby_SleepTick))

			if (NotSleepKirby_IsSleeping){
			
					//Muno Steve Stuffs
					if (url == 2284823424){
						//set_attack(AT_TAUNT_2);
						//window = 2;
						//window_timer = 0;
						//bed_timer = 0;
					}
			
					if (state_timer == -1){
						state_timer = 1
						NotSleepKirby_SleepTick = 1
					}
					NotSleepKirby_hat_timer++;
					if (NotSleepKirby_hat_timer == 4 && NotSleepKirby_hat_timer2 != 6){
						NotSleepKirby_hat_timer = 0
						NotSleepKirby_hat_timer2++;
					}
					if (!free){
						if (state_timer == 12){
							if (NotSleepKirby_SleepTimer != NotSleepKirby_SleepTimerRelease){
								state_timer = 11
								NotSleepKirby_SleepTimer++;				
							} else {
								NotSleepKirby_SleepTick = 0
								NotSleepKirby_IsSleeping = false
								sound_play(asset_get("mfx_unstar"));
							}
							if ((NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 22
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 20
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 18
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 16
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 14
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 12
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 10
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 8
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 6
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 4
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 2){
								if ((NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 2){
									spawn_hit_fx( x * spr_dir, y - 12, 302 );
								}
								NotSleepKirby_Sleep_Hat_Flash = true;
							} else {
								NotSleepKirby_Sleep_Hat_Flash = false
							}
						}
					} else { //free
					
						if (state_timer == -1){
							NotSleepKirby_SleepTick = 1
						}
						if (state_timer == 1){
							NotSleepKirby_SleepTick = 1
						}
						if (state_timer == 21){
							if (NotSleepKirby_SleepTimer != NotSleepKirby_SleepTimerRelease){
								state_timer = 20
								NotSleepKirby_SleepTimer++;				
							} else {
								vsp = -6
								NotSleepKirby_IsSleeping = false
								NotSleepKirby_SleepTick = 0
								sound_play(asset_get("mfx_unstar"));
								djumps = 0
								has_airdodge = true
								has_walljump = true
								set_state(PS_IDLE_AIR);
							}
							
							
							/*
							if ((NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 10
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 8
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 6
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 4
							|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 2){
								NotSleepKirby_Sleep_Hat_Flash = true;
							} else {
								NotSleepKirby_Sleep_Hat_Flash = false
							}
							*/
						}
						//Checking to see if the player hits the bottom blastzone while sleeping.
						if (y > blastzone_b && NotSleepKirby_WasHitBySleepRune == false){
							vsp = -20
							y -= 50
							NotSleepKirby_SleepTick = 0
							NotSleepKirby_IsSleeping = false
							sound_play(asset_get("mfx_unstar"));
							djumps = 0
							has_airdodge = true
							has_walljump = true
							set_state(PS_IDLE_AIR);
						}
					}
					if (NotSleepKirby_SleepTimer > (NotSleepKirby_SleepTimer + 12)){
						NotSleepKirby_SleepTimer = 0
						NotSleepKirby_IsSleeping = false
						NotSleepKirby_SleepTick = 0
						sound_play(oPlayer.sfx_ability_star_break);
					}
				} else {
					NotSleepKirby_hat_timer = 0
				}
				with (NotSleepKirbyID){
					with (oPlayer){
						var SleepKirby_enemy_hat = sprite_get("fspecial_enemy_hat");
						var SleepKirby_enemy_hat_otherdir = sprite_get("fspecial_enemy_hat_otherdir");
						//var SleepKirby_enemy_sleep_bar = sprite_get("fspecial_enemy_sleep_bar");
						var sfx_ability_star_break = sound_get("sfx_ability_star_break");
					}
				}

			if (NotSleepKirby_FspecialImmunity > 0 && NotSleepKirby_IsSleeping == false){
				NotSleepKirby_FspecialImmunity--;
			}
			
			if (NotSleepKirby_FspecialImmunity == -9){
				NotSleepKirby_FspecialImmunity = 0;
				NotSleepKirby_SleepTick = 0
				NotSleepKirby_IsSleeping = false
				sound_play(asset_get("mfx_unstar"));
				set_state(PS_IDLE_AIR);
				
			}

			if (state == PS_RESPAWN && NotSleepKirby_IsSleeping == true){
				NotSleepKirby_WasHitBySleepRune = false
				NotSleepKirby_IsSleeping = false
				state_timer = 2
				can_move = true
				can_jump = true
				NotSleepKirby_SleepTick = 0
			}

			if (state == PS_HITSTUN){
				if (state_timer == 0){
					if (NotSleepKirby_SleepTick == 1){
						NotSleepKirby_SleepTick = 0
						NotSleepKirby_IsSleeping = false
						sound_play(asset_get("mfx_unstar"));
					}
				}
				if (state_timer == -19){
					NotSleepKirby_SleepTick = 0
					NotSleepKirby_IsSleeping = false
					sound_play(asset_get("mfx_unstar"));
					state = PS_IDLE
				}
			}

			if (get_player_damage( player ) > 65){
				NotSleepKirby_SleepTimerRelease = 65
			} else {
				NotSleepKirby_SleepTimerRelease = get_player_damage( player ) - 0
			}
			
			
			/*
			if (hey_person_who_just_got_hit_by_burst_bubble_with_star_fall_asleep_please == true){
				if (NotSleepKirby_FspecialImmunity == 0){
					
					NotSleepKirby_FspecialImmunity = 40
					
					SleepKirby_enemy_hat = sprite_get("fspecial_enemy_hat");
					SleepKirby_enemy_hat_otherdir = sprite_get("fspecial_enemy_hat_otherdir");
					SleepKirby_enemy_sleep_bar = sprite_get("fspecial_enemy_sleep_bar");
					
					NotSleepKirbyID = id;
					
					state_timer = -1
					NotSleepKirby_hat_timer = 0
					NotSleepKirby_hat_timer2 = 0
					NotSleepKirby_SleepTimer = 0
					NotSleepKirby_SleepTimerRelease = get_player_damage( player )
					NotSleepKirby_IsSleeping = true
				} else {
					NotSleepKirby_FspecialImmunity = -9
				}
				hey_person_who_just_got_hit_by_burst_bubble_with_star_fall_asleep_please = false;
			}
			*/
		}
	}
