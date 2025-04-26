//update

//Reset player height
if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	char_height = lerp(char_height, 52, 0.3)
}

//
if(djumps > 0 && free && steam > 0){
	if(state == PS_ATTACK_AIR && can_jump || state == PS_IDLE_AIR && !hitpause){
		if(jump_pressed){
			sound_play(sound_get("sfx_steam_quick"))
			spawn_hit_fx(x, y + 60, vfx_doublejump_steam)
			if(steam >= jump_cost){
				steam -= jump_cost
			}else{
				steam = 0
			}
			set_state(PS_DOUBLE_JUMP)
			if(left_down || left_pressed){
				hsp = -4
				old_hsp = -4
			}else if(right_down || right_pressed){
				hsp = 4
				old_hsp = 4
			}
			vsp = steam_jump_vsp
			old_vsp = steam_jump_vsp
			
			//Runes
			if(has_rune("F") || all_runes){
				var waterfx = spawn_hit_fx(x + (25 - random_func_2(1, 50, true)), (y - 10) + (25 - random_func_2(2, 50, true)), vfx_waterfx_small)
				var waterfx = spawn_hit_fx(x + (25 - random_func_2(3, 50, true)), (y - 10) + (25 - random_func_2(4, 50, true)), vfx_waterfx_small)
				var waterfx = spawn_hit_fx(x + (25 - random_func_2(5, 50, true)), (y - 10) + (25 - random_func_2(6, 50, true)), vfx_waterfx_small)
			}
		}
	}
}

//Dash FX
if(state == PS_DASH_START && state_timer == 3){
	spawn_hit_fx(x - 40*spr_dir, y - (60 + random_func(1, 20, true)), vfx_steam_small)
	spawn_hit_fx(x - 20*spr_dir, y - (60 + random_func(3, 20, true)), vfx_steam_medium)
	spawn_hit_fx(x - 40*spr_dir, y - (20 + random_func(1, 20, true)), vfx_steam_small)
	spawn_hit_fx(x - 5*spr_dir, y - (40 + random_func(2, 20, true)), vfx_steam_large)
}

//Reset Grabbedid
if(grabbedid != noone){
	if(attack != AT_DATTACK){
		if(state != PS_ATTACK_GROUND){
			grabbedid = noone
		}
	}
	if(!instance_exists(grabbedid)){
		grabbedid = noone
	}else{
		grabbedid.ungrab++;
		if(grabbedid.ungrab == 2){
			grabbedid.visible = true; //Feel free to remove this line if the grab does not make the opponent invisible.
			grabbedid.ungrab = 0;
			grabbedid.state = PS_TUMBLE;
			grabbedid = noone;
		}
	}
}

if(instance_exists(steam_wall)){
	steam_break = true
}else{
	steam_break = false
}

if(instance_exists(steam_rocket)){
	var trail = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_rocket_trail)
	trail.draw_angle = random_func_2(1, 360, true)
	var random_var_2 = random_func_2(1, 3, true)
	if(instance_exists(steam_rocket)){
		if(!masked){
			if(steam_rocket.hitbox_timer >= 15){
				if(random_var_2 == 0){
					var firework = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_firework)
					firework.draw_angle = random_func_2(1, 360, true)
					sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
				}else if(random_var_2 == 1){
					var firework = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_firework2)
					firework.draw_angle = random_func_2(1, 360, true)
					sound_play(asset_get("sfx_ell_dspecial_explosion_2"))
				}else if(random_var_2 == 2){
					var firework = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_firework3)
					firework.draw_angle = random_func_2(1, 360, true)
					sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
				}else{
					var firework = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_firework3)
					firework.draw_angle = random_func_2(1, 360, true)
					sound_play(asset_get("sfx_ell_dspecial_explosion_2"))
				}
				instance_destroy(steam_rocket);
			}
		}else{
			if(steam_rocket.hitbox_timer >= 7){
				if(random_var_2 == 0){
					var firework = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_firework)
					firework.draw_angle = random_func_2(1, 360, true)
					sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
				}else if(random_var_2 == 1){
					var firework = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_firework2)
					firework.draw_angle = random_func_2(1, 360, true)
					sound_play(asset_get("sfx_ell_dspecial_explosion_2"))
				}else if(random_var_2 == 2){
					var firework = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_firework3)
					firework.draw_angle = random_func_2(1, 360, true)
					sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
				}else{
					var firework = spawn_hit_fx(steam_rocket.x, steam_rocket.y, vfx_firework3)
					firework.draw_angle = random_func_2(1, 360, true)
					sound_play(asset_get("sfx_ell_dspecial_explosion_2"))
				}
				instance_destroy(steam_rocket);
			}
		}
	}
}

//Cancel Buffer
if(cancel_buffer){
	if(!hitpause && move_cooldown[AT_NSPECIAL] <= 0){
		set_attack(AT_NSPECIAL)
		sound_play(asset_get("mfx_back"))
		cancel_buffer = false
		if(steam > nspec_cost){
			steam -= nspec_cost
		}else{
			steam = 0
			move_cooldown[AT_NSPECIAL] = 90
		}
	}else if(!hitpause){
		cancel_buffer = false
	}
}

//Nspecial Cooldown

if(move_cooldown[AT_NSPECIAL] == 1){
	sound_play(asset_get("mfx_coin"), false, noone, 0.5)
	col_r_outline = 255
	col_g_outline = 255
	col_b_outline = 255
}

//Wavecancel

if(state == PS_WAVELAND){
	last_state_wl = true
}else{
	if(!(state == PS_ATTACK_GROUND && attack == AT_NSPECIAL) && !(state == PS_ATTACK_AIR && attack == AT_NSPECIAL)){
		last_state_wl = false
	}else{
		if(state == PS_ATTACK_GROUND && attack == AT_NSPECIAL || state == PS_ATTACK_AIR && attack == AT_NSPECIAL){
			if(window > 1){
				last_state_wl = false
			}
		}
	}
}

if(state == PS_SPAWN || not_moved){
	if(taunt_pressed && !masked && switch_timer <= 0){
		
		masked = true
		halloween = false
		switch_timer = 10
		
		sound_play(asset_get("mfx_coin"))
		spawn_hit_fx(x, y - 20, 111)
		
		//Sfx
		sfx_steam1 = sound_get("sfx_masked_steam1")
		sfx_steam2 = sound_get("sfx_masked_steam2")
		sfx_steam3 = sound_get("sfx_masked_steam3")
		sfx_steam_cloth = sound_get("sfx_masked_steam_cloth")
		
		set_victory_portrait(sprite_get("portrait_mask"));
		//CCS
		spr_charselect = sprite_get("masked_charselect");
		
		//Ground
		spr_idle = sprite_get("masked_idle");
		spr_crouch = sprite_get("masked_crouch");
		spr_walk = sprite_get("masked_walk");
		spr_walkturn = sprite_get("masked_walkturn");
		spr_dash = sprite_get("masked_dash");
		spr_dashstart = sprite_get("masked_dashstart");
		spr_dashstop = sprite_get("masked_dashstop");
		spr_dashturn = sprite_get("masked_dashturn");
	
		//Air
		spr_jumpstart = sprite_get("masked_jumpstart");
		spr_jump = sprite_get("masked_jump");
		spr_doublejump = sprite_get("masked_doublejump");
		spr_walljump = sprite_get("masked_walljump");
		spr_pratfall = sprite_get("masked_pratfall");
		spr_land = sprite_get("masked_land");
		spr_landinglag = sprite_get("masked_landinglag");
	
		//Dodge
		spr_parry = sprite_get("masked_parry");
		spr_roll_forward = sprite_get("masked_roll_forward");
		spr_roll_backward = sprite_get("masked_roll_backward");
		spr_airdodge = sprite_get("masked_airdodge");
		spr_airdodge_waveland = sprite_get("masked_waveland");
		spr_tech = sprite_get("masked_tech");
	
		//Hurt
		spr_hurt = sprite_get("masked_hurt");
		spr_bighurt = sprite_get("masked_bighurt");
		spr_hurtground = sprite_get("masked_hurtground");
		spr_uphurt = sprite_get("masked_uphurt");
		spr_downhurt = sprite_get("masked_downhurt");
		spr_bouncehurt = sprite_get("masked_bouncehurt");
		spr_spinhurt = sprite_get("masked_spinhurt");
	
		//Attack
		spr_jab = sprite_get("masked_jab");
		spr_dattack = sprite_get("masked_dattack");
		spr_ftilt = sprite_get("masked_ftilt");
		spr_dtilt = sprite_get("masked_dtilt");
		spr_utilt = sprite_get("masked_utilt");
		spr_nair = sprite_get("masked_nair");
		spr_fair = sprite_get("masked_fair");
		spr_bair = sprite_get("masked_bair");
		spr_uair = sprite_get("masked_uair");
		spr_dair = sprite_get("masked_dair");
		spr_fstrong = sprite_get("masked_fstrong");
		spr_ustrong = sprite_get("masked_ustrong");
		spr_dstrong = sprite_get("masked_dstrong");
		spr_nspecial = sprite_get("masked_nspecial");
		spr_fspecial = sprite_get("masked_fspecial");
		spr_uspecial = sprite_get("masked_uspecial");
		spr_dspecial = sprite_get("masked_dspecial");
		if(get_player_color(player) == 12){
			spr_taunt = sprite_get("masked_taunt");
			spr_taunt_2 = sprite_get("masked_taunt_2");
			spr_taunt3 = sprite_get("masked_taunt3_g7");
		}else if(get_player_color(player) == 11 || get_player_color(player) == 13){
			spr_taunt = sprite_get("masked_taunt");
			spr_taunt_2 = sprite_get("masked_taunt_2");
			spr_taunt3 = sprite_get("masked_taunt3_ocean");
		}else{
			spr_taunt = sprite_get("masked_taunt");
			spr_taunt_2 = sprite_get("masked_taunt_2");
			spr_taunt3 = sprite_get("masked_taunt3");
		}
			
		spr_fspecial_air = sprite_get("masked_fspecial_air");
		spr_uspecial_air = sprite_get("masked_uspecial_air");
		spr_uspecial_air_steam = sprite_get("masked_uspecial_air_steam");
		spr_nspecial_air = sprite_get("masked_nspecial_air");
		spr_dspecial_air = sprite_get("masked_dspecial_air");
		spr_bounce = sprite_get("masked_bounce");
	
		useskins = true;
	}else if(taunt_pressed && masked && switch_timer <= 0){
		
		switch_timer = 10
		
		if(get_player_color(player) == 12){
			spr_taunt = sprite_get("taunt");
			spr_taunt_2 = sprite_get("taunt_2");
			spr_taunt3 = sprite_get("taunt3_g7");
		}else if(get_player_color(player) == 11 || get_player_color(player) == 13){
			spr_taunt = sprite_get("taunt");
			spr_taunt_2 = sprite_get("taunt_2");
			spr_taunt3 = sprite_get("taunt3_ocean");
		}else{
			spr_taunt = sprite_get("taunt");
			spr_taunt_2 = sprite_get("taunt_2");
			spr_taunt3 = sprite_get("taunt3");
		}
		
		sound_play(asset_get("mfx_coin"))
		spawn_hit_fx(x, y - 20, 109)
		
		masked = false
		halloween = false
		
		set_victory_portrait(sprite_get("portrait"));
		sfx_steam1 = sound_get("sfx_steam1")
		sfx_steam2 = sound_get("sfx_steam2")
		sfx_steam3 = sound_get("sfx_steam3")
		sfx_steam_cloth = sound_get("sfx_steam_cloth")
		useskins = false
	}
}

if(not_moved && state != PS_SPAWN){
	if(state != PS_IDLE || !joy_pad_idle){
		set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sfx_steam_cloth);
		set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sfx_steam1);
		set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sfx_steam1);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sfx_steam3);
		set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sfx_steam_cloth);
		set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sfx_steam2);
		set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, sfx_steam3);
		set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sfx_steam1);
		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, sfx_steam1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sfx_steam1);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sfx_steam_cloth);
		
		not_moved = false
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt3"));
		set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
		
		if(!masked){
		    
		    set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
		    //Unmasked
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 0);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_land"));
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);
		    
		    set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 16);
		    set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
		    set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
		    
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 16);
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 4);
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
		    
		    set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 4);
		    set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
		    set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
		    
		    set_num_hitboxes(AT_TAUNT, 2);
		    
		    set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 0);
		    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
		    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 3);
		    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
		    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
		    set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
		    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -6);
		    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -80);
		    set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 40);
		    set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
		    set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
		    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 4);
		    set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
		    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
		    set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
		    set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
		    set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, vfx_steam_small);
		    set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
		    
		    set_hitbox_value(AT_TAUNT, 2, HG_PARENT_HITBOX, 0);
		    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
		    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 3);
		    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
		    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 3);
		    set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 2);
		    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -6);
		    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -80);
		    set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 40);
		    set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 40);
		    set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
		    set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 4);
		    set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 90);
		    set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 8);
		    set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 4);
		    set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
		    set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, vfx_steam_small);
		    set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
		    
		    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 2)
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GRAVITY, 0);
		    set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 5);
		    set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 0);
		    set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 24);
		    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -55);
		    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, 20);
		    set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 20);
		    set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 20);
		    set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 2);
		    set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 4);
		    set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
		    set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 4);
		    set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 60);
		    set_hitbox_value(AT_TAUNT, 3, HG_ANGLE_FLIPPER, 3);
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_SPRITE, sprite_get("steam_rocket"));
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_MASK, -1);
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ANIM_SPEED, .2);
		    set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, vfx_steam_hit_small);
		}else{
		    
		    set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
		    
			set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sfx_steam_cloth);
			set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sfx_steam1);
			set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sfx_steam1);
			set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sfx_steam3);
			set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sfx_steam_cloth);
			set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sfx_steam2);
			set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, sfx_steam3);
			set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sfx_steam1);
			set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, sfx_steam1);
			set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sfx_steam1);
			set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sfx_steam_cloth);
			set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sfx_steam3);
			
		    //Masked
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 22);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_scream"));
		    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);
		    
		    set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 15);
		    set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
		    set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		    
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
		    set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
		    
		    set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 20);
		    set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
		    set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
		    
		    set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
		    set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 6);
		    set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
		    set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 16);
		    
		    set_num_hitboxes(AT_TAUNT, 2);
		    
		    set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 0);
		    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
		    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 14);
		    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
		    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 4);
		    set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 1);
		    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 30);
		    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -80);
		    set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 40);
		    set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
		    set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
		    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 4);
		    set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
		    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
		    set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
		    set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
		    set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, vfx_steam_small);
		    set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
		    
		    set_hitbox_value(AT_TAUNT, 2, HG_PARENT_HITBOX, 0);
		    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
		    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 4);
		    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
		    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
		    set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 1);
		    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -30);
		    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -80);
		    set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 40);
		    set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 40);
		    set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
		    set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 4);
		    set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 90);
		    set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 8);
		    set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 4);
		    set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
		    set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, vfx_steam_small);
		    set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
		    
		    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 2)
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GRAVITY, 0);
		    set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 5);
		    set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 0);
		    set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 24);
		    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -55);
		    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, 20);
		    set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 20);
		    set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 20);
		    set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 3);
		    set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
		    set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 4);
		    set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 75);
		    set_hitbox_value(AT_TAUNT, 3, HG_ANGLE_FLIPPER, 3);
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_SPRITE, sprite_get("steam_rocket"));
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_MASK, -1);
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
		    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ANIM_SPEED, .2);
		    set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, vfx_steam_hit_small);
		}
	}
}

//Uspecial Air Accel
if(attack == AT_USPECIAL && state == PS_ATTACK_AIR){
	air_accel = 0.9;
}else{
	air_accel = .45;
}

//Halloween Thing
if(halloween == true){
    if(state != PS_IDLE && state != PS_SPAWN){
        halloween = false
        var hall_end = spawn_hit_fx(x, y, halloween_end)
        hall_end.spr_dir = spr_dir
    }
}

//Steam Check
if(steam <= 0){
	steam = 0
}else if(steam >= 100){
	steam = 100
}

//Galega Check

with(oPlayer){
    if("shrug_galega" in self && !array_contains(other.galega_players, player)){
        array_push(other.galega_players, player)
        array_sort(other.galega_players, true)
    }
}

//Overheat

if(has_rune("H") || all_runes){
	var heat_damage = true
}else{
	var heat_damage = false
}
if(player == galega_players[0]){
	with(oPlayer){
		var current_player = self
		
	    if(overheat > 0){
		    if(overheat_timer > 0 && state_cat != SC_HITSTUN){
		    	overheat_timer--
		    }else if(overheat_timer <= 0){
		    	overheat -= 1
		    	if(heat_damage && overheat mod 4 == 0 && overheat > 25){
		    		take_damage(player, -1, 1)
		    	}
		    }
		    if(overheat >= 100){
		    	with(other){
		    		if(lifetime mod 3 == 0){
		    			spawn_hit_fx(current_player.x - 30 + random_func_2(1, 60, true), current_player.y - 55 + random_func_2(2, 45, true), vfx_steam_small)
		    		}
		    	}
		    }else if(overheat > 75){
		    	with(other){
		    		if(lifetime mod 5 == 0){
		    			spawn_hit_fx(current_player.x - 30 + random_func_2(1, 60, true), current_player.y - 55 + random_func_2(2, 45, true), vfx_steam_small)
		    		}
		    	}
		    }else if(overheat > 50){
		    	with(other){
		    		if(lifetime mod 8 == 0){
		    			spawn_hit_fx(current_player.x - 30 + random_func_2(1, 60, true), current_player.y - 55 + random_func_2(2, 45, true), vfx_steam_small)
		    		}
		    	}
		    }
	    }
	    
	    //Remove Overheat on death
	    if(state == PS_DEAD || state == PS_RESPAWN){
	    	overheat = 0
	    }
	}
}

outline_color = [col_r_outline, col_g_outline, col_b_outline]

col_r_outline = lerp(col_r_outline, 0, 0.05)
col_b_outline = lerp(col_g_outline, 0, 0.05)
col_g_outline = lerp(col_b_outline, 0, 0.05)

/////////////////
//---[RUNES]---//
/////////////////

//All runes outline
if(all_runes){
	outline_color = [255, 255, 255]
}

init_shader();


if(has_rune("E") || all_runes){
	var steam_spd = 1 + (steam / 200)
	walk_speed = 4 * steam_spd;
	initial_dash_speed = 8.5 * steam_spd;
	dash_speed = 8 * steam_spd;
	
	leave_ground_max = 7 * steam_spd; //the maximum hsp you can have when you go from grounded to aerial without jumping
	max_jump_hsp = 6 * steam_spd; //the maximum hsp you can have when jumping from the ground
	air_max_speed = 5.5 * steam_spd; // (3) the maximum hsp you can accelerate to when in a normal aerial state
	jump_change = 5 * steam_spd; //maximum hsp when double jumping. If already going faster, it will not slow you down
	air_accel = .45 * steam_spd;
	walljump_hsp = 4.5 * steam_spd;
	walljump_vsp = 12 * steam_spd;
	
	wave_land_adj = 1.2 * steam_spd; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
}

//Chain

if(has_rune("O") || all_runes){
	with(oPlayer){
	    if(chained && chained_player == other){
	    	//Reset Chain Stuff on Death
	    	if(state == PS_DEAD || state == PS_RESPAWN){
	    		chained = false
	    		exit;
	    	}
	    	var temp_chain_timer = chain_timer
	    	//Chain Break Stuff
	    	with(other){
    			if(distance_to_point(other.x, other.y - 25) > 245 && other.chain_break_timer <= 0 && chain_deactivation_timer <= 0){
	    			other.chain_break_timer = 8
	    		}else if(distance_to_point(other.x, other.y -25) < 215 && other.chain_break_timer > 0){
	    			other.chain_break_timer = 0
	    		}
	    	}
	    	if(chain_break_timer == 1){
	    		with(other){
	    			var chain_break_hitbox = create_hitbox(AT_EXTRA_1, 6, other.x, other.y - 25)
	    			var crystalburst = spawn_hit_fx(other.x, other.y - 25, vfx_crystalburst)
	
		            var bamboo_dir = point_direction(x, y - 19, other.x, other.y - 19);
		            var bamboo_dist = point_distance(x, y - 19, other.x, other.y - 19);
		            
		            //since the arm sprite's origin isn't centered, do some math
		            if (bamboo_dist < 7) bamboo_dist = 7; //needs minimum distance to prevent arcsin errors
		            var arm_dir = darcsin(6 / bamboo_dist);
		            arm_dir = bamboo_dir - arm_dir + 180
		            if (bamboo_dist > 64){
		                var rope_x = other.x  + lengthdir_x(32, arm_dir);
		                var rope_y = other.y - 19  + lengthdir_y(32, arm_dir);
		                
		                var rope_length = 0;
		                var max_rope_length = point_distance(x, y - 19, other.x, other.y - 19);
		                while (rope_length < max_rope_length-16){
		                	var shatter = create_hitbox(AT_EXTRA_1, 2, round(rope_x), round(rope_y))
		                	var rand_num = round(random_func_2((rope_length / 16), 3, false))
		                	if(get_player_color(player) != 12){
					        	if(rand_num == 0){
					        		shatter.sprite_index = sprite_get("ice_small1")
					        	}else if(rand_num == 1){
					        		shatter.sprite_index = sprite_get("ice_small2")
					        	}else if(rand_num == 2){
					        		shatter.sprite_index = sprite_get("ice_small3")
					        	}else if(rand_num == 3){
					        		shatter.sprite_index = sprite_get("ice_small4")
					        	}
				        	}else{
				        		if(rand_num == 0){
					        		shatter.sprite_index = sprite_get("ice_small1_vortex")
					        	}else if(rand_num == 1){
					        		shatter.sprite_index = sprite_get("ice_small2_vortex")
					        	}else if(rand_num == 2){
					        		shatter.sprite_index = sprite_get("ice_small3_vortex")
					        	}else if(rand_num == 3){
					        		shatter.sprite_index = sprite_get("ice_small4_vortex")
					        	}
				        	}
		                	shatter.hsp = -2 + random_func_2((rope_length / 16), 4, false)
		                	shatter.vsp = -1 - random_func_2((rope_length / 16) + 1, 4, false)
		                    rope_x += lengthdir_x(16, arm_dir);
		                    rope_y += lengthdir_y(16, arm_dir);
		                    rope_length += 16;
		                }
		            }
	    		}
	    		if(chain_stack > 1){
	    			other.chain_deactivation_timer = 45
	    			chain_break_timer = 0
	    			chain_stack--
	    		}else{
	    			chained = false
	    			chain_stack = 0
	    		}
	    	}
	    	if(chain_timer < 250){
		    	chain_timer++
		    }
	    }
	    if(self != other && chain_break_timer > 1){
	    	chain_break_timer--
	    }
	}
	chain_deactivation_timer--
}

if(steam_wall_timer > 0){
	steam_wall_timer -= 1
}
steam_wall_anim_sync += 0.25
steam_wall_no_down--
switch_timer--
steam_break_timer--
lifetime++

#define array_contains(array, value)
var checks = 0
while(checks < array_length(array)){
	if(array[checks] == value){
		return true
	}
	checks++
}

return false
