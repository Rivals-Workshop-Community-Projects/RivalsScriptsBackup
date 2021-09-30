//update
//gravity-jump protection
if (grav_jump_protection) {
    grav_jump_protection = 0;
    if (fast_falling && djumps > 0) djumps--;
}
if (state == PS_DOUBLE_JUMP && check_fast_fall && djumps > 0) grav_jump_protection = 1;
//Momentum
if(hitpause != true){
	if((state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_ATTACK_GROUND) && 
	!((attack == AT_DATTACK || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && state == PS_ATTACK_GROUND)){
		if(state == PS_IDLE ||
		attack == AT_FAIR && state == PS_ATTACK_GROUND|| attack == AT_BAIR && state == PS_ATTACK_GROUND|| 
		attack == AT_DAIR && state == PS_ATTACK_GROUND|| attack == AT_UAIR && state == PS_ATTACK_GROUND|| 
		attack == AT_NAIR&& state == PS_ATTACK_GROUND || attack == AT_TAUNT && state == PS_ATTACK_GROUND ||
		attack == AT_JAB && state == PS_ATTACK_GROUND){
			if(momentum > 0){
				momentum -= 0.075
			}else if(momentum < 0){
				momentum += 0.075
			}
			if(momentum < 0.1 && momentum > -0.1){
				momentum = 0
			}
		}else if(state == PS_CROUCH || attack == AT_EXTRA_1 && state == PS_ATTACK_GROUND ){
			if(momentum > 0){
				momentum -= 0.2
			}else if(momentum < 0){
				momentum += 0.2
			}
			if(momentum < 0.1 && momentum > -0.1){
				momentum = 0
			}
		} 
	 	if(state != PS_WAVELAND && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && attack != AT_EXTRA_3 && state != PS_PARRY){
			off_edge = true
			hsp = momentum
			if(state == PS_DASH || state == PS_DASH_START){
				if(momentum <= 7 && momentum >= -7){
					momentum += 0.2 * spr_dir
				}else{
					if(momentum > 7){
						momentum = 7
					}else if(momentum < -7){
						momentum = -7
					}
				}
			}else if(state == PS_WALK){
				if(momentum <= 4 && momentum >= -4){
					momentum += 0.05 * spr_dir
				}else{
					if(momentum > 4){
						momentum = 4
					}else if(momentum < -4){
						momentum = -4
					}
				}
			}
		}else{
			momentum = hsp
		}
	}else{
		if(attack == AT_USTRONG || attack == AT_FSTRONG){
			if(state_timer == 0){
				hsp = momentum
			}
		}
		//sorry this lines so long couldnt figure out how to condense it lol
		if(state == PS_FIRST_JUMP && state_timer < 1 || state == PS_IDLE_AIR && state_timer < 1 
		&& prev_state == PS_IDLE || state == PS_IDLE_AIR && state_timer < 1 && prev_state == PS_DASH 
		|| state == PS_IDLE_AIR && state_timer < 1 && prev_state == PS_DASH_START
		|| state == PS_IDLE_AIR && state_timer < 1 && prev_state == PS_WALK){
			hsp = momentum
		}
		if(down_pressed && state_timer > 5 && state != PS_HITSTUN && state != PS_AIR_DODGE && state != PS_PARRY && !(attack == AT_EXTRA_1 && attack == AT_EXTRA_3 && state == PS_ATTACK_GROUND) && !jump_down
		&& !(attack == AT_FSPECIAL && state == PS_ATTACK_GROUND) && !(attack == AT_FSPECIAL && state == PS_ATTACK_AIR)
		&& !(attack == AT_DSPECIAL && state == PS_ATTACK_AIR) && !(attack == AT_USPECIAL && state == PS_ATTACK_AIR) &&
		!(attack == AT_DATTACK && state == PS_ATTACK_AIR) && !((attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) && state == PS_ATTACK_AIR && attack == AT_EXTRA_3)){
			vsp = 8
		}
		if(state != PS_DOUBLE_JUMP){
			momentum = hsp
		}else{
			if(right_down || right_pressed){
				momentum += 0.15
			}else if(left_down || left_pressed){
				momentum -= 0.15
			}
			if(hsp > 0){
				if(right_pressed || right_down){
					hsp = momentum
				}else{
					hsp = momentum/2
				}
			}else if(hsp < 0){
				if(left_pressed || left_down){
					hsp = momentum
				}else{
					hsp = momentum/2
				}
			}
		}
	}
}

/*Orbitting around blackhole
if(!instance_exists(blackhole)){
	orbitting = false
}
if(orbitting == true){
	can_move = true;
	fall_through = true
	x = blackhole.orbit_x
	y = blackhole.orbit_y
	if(orbit_timer <= 100){
		orbit_timer++
	}
	orbit_ending_timer++
	if(orbit_timer > 10){
		if(state != PS_IDLE_AIR && state != PS_IDLE && state != PS_LAND){
			sound_play(asset_get("sfx_clairen_sword_deactivate"))
			orbitting = false
			hsp = (((5 + orbit_timer / 20) * cos(degtorad(blackhole.orbit_dir))));
			momentum = (((5 + orbit_timer / 20) * cos(degtorad(blackhole.orbit_dir))));
			vsp = ((-5 - orbit_timer / 20) * sin(degtorad(blackhole.orbit_dir)));
		}
	}
	if(orbit_ending_timer >= 250){
		orbitting = false
		sound_play(asset_get("sfx_clairen_sword_deactivate"))
		hsp = (((5 + orbit_timer / 20) * cos(degtorad(blackhole.orbit_dir))));
		vsp = ((-5 - orbit_timer / 20) * sin(degtorad(blackhole.orbit_dir)));
		if(free){
			set_state(PS_PRATFALL)
		}else{
			set_state(PS_PRATLAND)
		}
	}
}else{
	orbit_timer = 0
	orbit_ending_timer = 0
}
*/

//Crouch making overhead indicator lower
if(state == PS_CROUCH){
	if(down_down){
    	char_height = lerp(char_height, 30, 0.35)
	}else{
		char_height = lerp(char_height, 50, 0.35)
	}
}

//Nspecial one per flight
if(nspecial_used == true){
	move_cooldown[AT_NSPECIAL] = 2
}
if(!free  || state == PS_HITSTUN){
	nspecial_used = false
}
//Char Height fallback
if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_CROUCH){
	char_height = 50
}
//Absa Djump
/*
if(state == PS_DOUBLE_JUMP && state_timer < 1){
	vsp = 1 - state_timer / 1.5
}
*/


//Extra SFX
if(state == PS_DASH_START && state_timer == 4){
	sound_play(asset_get("sfx_clairen_poke_weak"))
}

if(state == PS_DASH_TURN && state_timer == 2){
	sound_play(asset_get("sfx_clairen_swing_weak"))
}
/*if (fast_falling && !prev_fast_falling)
{
  sound_play(asset_get("sfx_ell_utilt_retract"))
}
prev_fast_falling = fast_falling;
*/


if(!(attack == AT_EXTRA_1 && state == PS_ATTACK_GROUND || attack == AT_EXTRA_1 && state == PS_ATTACK_AIR )){
	if(shield_size < 1.25){
		shield_size += 0.0025
	}else{
		shield_size = 1.25
	}
}

//Fspecial Star Logic
if(instance_exists(star)){
	var star_trail = spawn_hit_fx(star.x, star.y, vfx_star_trail)
	star_trail.y += -8 + random_func(1, 16, true)
	with(star){
		if(hsp < 18 && hsp > -18){
			hsp += 0.3 *spr_dir
		}
		if(instance_exists(player_id.blackhole)){
			if(distance_to_object(player_id.blackhole) < 100 && (hsp > 2 || hsp < -2)){
				if(hsp < 22 && hsp > -22){
					hsp += 0.25 *spr_dir
				}
				if(player_id.blackhole.y > y){
					vsp += 0.5
				}else if(player_id.blackhole.y < y){
					vsp -= 0.5
				}
			}else{
				vsp /= 1.25
			}
		}else{
			vsp /= 1.25
		}
	}
}

//Stop Kazotsky playing
if(!(attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND) &&
!(attack == AT_TAUNT_2 && state == PS_ATTACK_AIR)){
	if(kazot_playing == true){
		sound_stop(sound_get("mus_kazotsky_kick"))
		kazot_playing = false
	}
}

//Spotdodge
if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
	if(spot_dodge){
		hsp = 0
	}
	if(state_timer > 21){
		spot_dodge = false
	}
	if(state_timer < 2){
		if(down_pressed || down_down){
			spot_dodge = true
		}
	}
}

//I hate how sounds work
if(need_remove_hover_sound == true && !(attack == AT_NSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))){
	sound_stop(asset_get("sfx_ell_hover"))
	need_remove_hover_sound = false
}

//No nspecial for you my good chap
if(instance_exists(jetpack)){
	move_cooldown[AT_NSPECIAL] = 2
}

//Airdodge fx
if(state == PS_AIR_DODGE){
	if(state_timer == 0 || state_timer == 7 || state_timer == 15){
		spawn_hit_fx(x, y, vfx_airdodge_fx)
	}
}
if state == PS_AIR_DODGE && state_timer == 3 {
	sound_play( asset_get("mfx_star"), 0, noone, .3, 1 )
}
//Airdodge Shenanigans
/* gone but not forgotten
if(state == PS_AIR_DODGE){
	if(left_down){
		if(!up_down && !down_down){
			if(hsp > -7.5){
				hsp -= 1.5
			}
		}else{
			if(hsp > -7.5){
				hsp -= 0.75
			}
		}
	}else if(right_down){
		if(!up_down && !down_down){
			if(hsp < 7.5){
				hsp += 1.5
			}
		}else{
			if(hsp < 7.5){
				hsp += 0.75
			}
		}
	}
	if(up_down){
		if(!left_down && !right_down){
			if(vsp > -7.5){
				vsp -= 1.5
			}
		}else{
			if(vsp > -7.5){
				vsp -= 0.75
			}
		}
	}else if(down_down){
		if(!left_down && !right_down){
			if(vsp < 7.5){
				vsp += 1.5
			}
		}else{
			if(vsp < 7.5){
				vsp += 0.75
			}
		}
	}
}

if(state == PS_WAVELAND){
	if(hsp < -7){
		hsp = -7
	}else if(hsp > 7){
		hsp = 7
	}
}
*/
if(state == PS_CROUCH) {
	if state_timer == 1 {
		crouchsoundtimer = 45;
	}
	crouchsoundtimer--;

	if (crouchsoundtimer == 0){
		sound_play(asset_get("mfx_logo_shing"));
		crouchsoundtimer = 80;
	}
}

if(!(attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))){
	if(instance_exists(blackhole)){
		set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_spin_hurt"));
	}else if(!instance_exists(blackhole)){
		set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_throw_hurt"));
	}
}

if state == PS_PARRY {
	//momentum = 0;
	hsp *= .95
}

//COMPATIBILITY
if arcadeswitch > 3 arcadeswitch = 1
//print_debug(arcadeswitch)
/* //dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Ch- Cheese? What is a wheel of cheese doing here?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Umm?";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "This is going to be a BRIE-eeze";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "...";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Whatever you say, dude";
page++;

/*
//cheese kirby
if (swallowed == 1) {
	swallowed = 0;
	
	var ability_spr = sprite_get("kirb");
	var ability_hurt = sprite_get("kirb_hurt");
	var cheese_spr = sprite_get("cheese_proj");
	var myicon = sprite_get("cheesekirbyicon")
	
	with enemykirby{
		newicon = myicon
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 7);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
                
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
                
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 2);
                
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2)
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.42);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 25);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 25);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6.2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 24);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, cheese_spr);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .5);
	}
}*/