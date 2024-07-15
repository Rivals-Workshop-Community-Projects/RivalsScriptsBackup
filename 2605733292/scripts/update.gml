//update.gml

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
if (introTimer2 < 4) {//>
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 21) {//>
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
			sound_play(sfx_dashstart, false, noone, 0.85, 1);
		}	
		break;
	case PS_DASH_STOP:
		//Dash Stop Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_dashstop, false, noone, 0.85, 1);
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
	vsp = -11.5;
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

// Sleep Status Code
with (oPlayer){
	if (isCurrSleeping){
		// if hit out of sleep
		if (hitBySleepingAttack){
			shouldWakeUp = true;
		}
		
		if (y > blastzone_b){
			shouldBounceUpFromBlastzone = true;
			shouldWakeUp = true;
		}
	
		// preventing them from escaping
		can_tech = false;
		can_wall_tech = false;
	
		if (!hitpause){
			state_timer = floor(state_timer);	// prevents any weird decimal stuff
			if (sleepHatImageTimer != 6){
				if (sleepHatImageTimer2 != 3){
					sleepHatImageTimer2++;
				} else {
					sleepHatImageTimer2 = 0;
					sleepHatImageTimer++;
				}
			}
		}
	
		//y -= 1;
		// sets the initial damage value of the sleeping player
		if (sleepingTimer == 0){
			damageToWakeUp = get_player_damage(player);
			damageToWakeUp = clamp(damageToWakeUp, 0, 50);	// the second value of this determines the max length of sleep status
		}
		sleepingTimer++;
		if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
			if (should_make_shockwave){
				//print("force a wake up");
				shouldWakeUp = true;
			}
			if (state_timer == 10){
				// increasing the time it takes to sleep
				if (damageIncrementTick < damageToWakeUp && state_timer == 10){//>
					damageIncrementTick++;
					
					if (sleepIncrementAdvCounter != sleepIncrementAdvCounterMax){
						sleepIncrementAdvCounter++;
					} else {
						sleepIncrementAdvCounter = 0;
						damageIncrementTick++;
					}
					
					/*
					if (damageIncrementTick mod 2 == 0 && damageFlipVar){
						//print("this is odd do something ok im increasing thing");
						damageIncrementTick++;
						//print("flip back");
						damageFlipVar = false;
					} else {
						//print("not odd");
						
						if (damageFlipVar == false){
							damageFlipVar = true;
							//print("flip");
						}
					}
					*/
					state_timer--;
				} else {
					shouldWakeUp = true;
				}
				
				if (damageIncrementTick != 0){
					if ((damageToWakeUp - damageIncrementTick) <= 16){//>
						/*
						if ((damageToWakeUp - damageIncrementTick) % 2 == 0){
							sleepHatShouldFlash = true;
						} else {
							sleepHatShouldFlash = false;
						}
						*/
						if (sleepingTimer mod 2 == 0){
							sleepHatShouldFlash = true;
						} else {
							sleepHatShouldFlash = false;
						}
					}
				} else {
					sleepHatShouldFlash = false;
				}
			}
		} else {
			shouldWakeUp = true;
		}
		
		// code for waking up
		if (shouldWakeUp){
			if (shouldBounceUpFromBlastzone){
				shouldBounceUpFromBlastzone = false;
				djumps = 0;
				has_airdodge = true;
				has_walljump = true;
				vsp = -6.5;
				set_state(PS_IDLE_AIR);
			}
			sleepIncrementAdvCounter = 0;
			damageIncrementTick = 0;
			isCurrSleeping = false;
			sound_play(asset_get("mfx_unstar"));
			sleepHatImageTimer = 0;
			sleepHatImageTimer2 = 0;
			hitBySleepingAttack = true;
			sleepHatShouldFlash = false;
			//print("sleeping player woke up");
			shouldWakeUp = false;
			if (!hitpause){
				//if (state != PS_DEAD){
					if (!free){
						set_state(PS_IDLE);
					} else {
						set_state(PS_IDLE_AIR);
					}
				//}
				with (other){
					spawn_hit_fx(other.x, other.y - char_height, sleepVFX);
				}
			}
		}
	} else {
		sleepingTimer = 0;
		damageIncrementTick = 0;
	}
}	

if (state == PS_DEAD || state == PS_RESPAWN){
	//print("yeah i think im there");
}

runSleepCodeOnSelf();

if(has_rune("A")
|| has_rune("B")
|| has_rune("C")
|| has_rune("D")
|| has_rune("E")
|| has_rune("F")
|| has_rune("G")
|| has_rune("H")
|| has_rune("I")
|| has_rune("J")
|| has_rune("K")
|| has_rune("L")
|| has_rune("M")
|| has_rune("N")
|| has_rune("O")){
	has_runes_equipped = true;
} else {
	has_runes_equipped = false;
}


// Alt 28: Hope (the rainbow color stuff)
if (get_player_color( player ) == 27) {

    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

    color_rgb=make_color_rgb(249, 74, 255); //input rgb values here, uses rgb to create a gamemaker colour variable
    color_rgb2=make_color_rgb(74, 255, 143); //input rgb values here, uses rgb to create a gamemaker colour variable
    color_rgb3=make_color_rgb(74, 158, 255); //input rgb values here, uses rgb to create a gamemaker colour variable

    
    hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    hue2=(color_get_hue(color_rgb2)+hue_offset) mod 255; //finds the hue and shifts it
    hue3=(color_get_hue(color_rgb3)+hue_offset) mod 255; //finds the hue and shifts it
    
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    
    
    set_color_profile_slot( 27, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_color_profile_slot( 27, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));//uses that variable to set the slot's new colours
    set_color_profile_slot( 27, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    
	set_color_profile_slot( 27, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_color_profile_slot( 27, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));//uses that variable to set the slot's new colours
    set_color_profile_slot( 27, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    
	
    set_article_color_slot( 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_article_color_slot( 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_article_color_slot( 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    
	
    init_shader();
}

// -------------

#define runSleepCodeOnSelf()

// yea im not gonna bother un-indenting this
	if (isCurrSleeping){
		// if hit out of sleep
		if (hitBySleepingAttack){
			shouldWakeUp = true;
		}
		
		if (y > blastzone_b){
			shouldBounceUpFromBlastzone = true;
			shouldWakeUp = true;
		}
	
		// preventing them from escaping
		can_tech = false;
		can_wall_tech = false;
	
		if (!hitpause){
			state_timer = floor(state_timer);	// prevents any weird decimal stuff
			if (sleepHatImageTimer != 6){
				if (sleepHatImageTimer2 != 3){
					sleepHatImageTimer2++;
				} else {
					sleepHatImageTimer2 = 0;
					sleepHatImageTimer++;
				}
			}
		}
	
		//y -= 1;
		// sets the initial damage value of the sleeping player
		if (sleepingTimer == 0){
			damageToWakeUp = get_player_damage(player);
			damageToWakeUp = clamp(damageToWakeUp, 0, 50);	// the second value of this determines the max length of sleep status
		}
		sleepingTimer++;
		if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
			if (should_make_shockwave){
				//print("force a wake up");
				shouldWakeUp = true;
			}
			if (state_timer == 10){
				// increasing the time it takes to sleep
				if (damageIncrementTick < damageToWakeUp && state_timer == 10){//>
					damageIncrementTick++;
					
					if (sleepIncrementAdvCounter != sleepIncrementAdvCounterMax){
						sleepIncrementAdvCounter++;
					} else {
						sleepIncrementAdvCounter = 0;
						damageIncrementTick++;
					}
					
					/*
					if (damageIncrementTick mod 2 == 0 && damageFlipVar){
						//print("this is odd do something ok im increasing thing");
						damageIncrementTick++;
						//print("flip back");
						damageFlipVar = false;
					} else {
						//print("not odd");
						
						if (damageFlipVar == false){
							damageFlipVar = true;
							//print("flip");
						}
					}
					*/
					state_timer--;
				} else {
					shouldWakeUp = true;
				}
				
				if (damageIncrementTick != 0){
					if ((damageToWakeUp - damageIncrementTick) <= 16){//>
						/*
						if ((damageToWakeUp - damageIncrementTick) % 2 == 0){
							sleepHatShouldFlash = true;
						} else {
							sleepHatShouldFlash = false;
						}
						*/
						if (sleepingTimer mod 2 == 0){
							sleepHatShouldFlash = true;
						} else {
							sleepHatShouldFlash = false;
						}
					}
				} else {
					sleepHatShouldFlash = false;
				}
			}
		} else {
			shouldWakeUp = true;
		}
		
		// code for waking up
		if (shouldWakeUp){
			if (shouldBounceUpFromBlastzone){
				shouldBounceUpFromBlastzone = false;
				djumps = 0;
				has_airdodge = true;
				has_walljump = true;
				vsp = -6.5;
				set_state(PS_IDLE_AIR);
			}
			sleepIncrementAdvCounter = 0;
			damageIncrementTick = 0;
			isCurrSleeping = false;
			sound_play(asset_get("mfx_unstar"));
			sleepHatImageTimer = 0;
			sleepHatImageTimer2 = 0;
			hitBySleepingAttack = true;
			sleepHatShouldFlash = false;
			//print("sleeping player woke up");
			shouldWakeUp = false;
			if (!hitpause){
				//if (state != PS_DEAD){
					if (!free){
						set_state(PS_IDLE);
					} else {
						set_state(PS_IDLE_AIR);
					}
				//}
				with (other){
					spawn_hit_fx(other.x, other.y - char_height, sleepVFX);
				}
			}
		}
	} else {
		sleepingTimer = 0;
		damageIncrementTick = 0;
	}