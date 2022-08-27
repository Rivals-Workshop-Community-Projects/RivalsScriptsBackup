//update
if(djumps > 0 && free && steam > 0){
	if(state == PS_ATTACK_AIR && can_jump || state == PS_IDLE_AIR && hitpause == false){
		if(jump_pressed /* && steam > 20*/){
			if(pedal_to_metal){
				sound_play(sound_get("sfx_steam_hiss_short"))
				pedal_to_metal = false
			}
			sound_play(sound_get("sfx_steam_quick"))
			spawn_hit_fx(x, y + 60, vfx_doublejump_steam)
			if(steam >= 15){
				steam -= 15
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
			vsp = -8.5
			old_vsp = -8.5
			//steam -= 20
		}
	}
}

if(steam < 0){
	steam = 0
}

//Dash FX
if(state == PS_DASH_START && state_timer == 3){
	//sound_play(asset_get("sfx_ell_steam_hit"))
	spawn_hit_fx(x - 40*spr_dir, y - (60 + random_func(1, 20, true)), vfx_steam_small)
	spawn_hit_fx(x - 20*spr_dir, y - (60 + random_func(3, 20, true)), vfx_steam_medium)
	spawn_hit_fx(x - 40*spr_dir, y - (20 + random_func(1, 20, true)), vfx_steam_small)
	spawn_hit_fx(x - 5*spr_dir, y - (40 + random_func(2, 20, true)), vfx_steam_large)
}

if(grabbedid != noone){
	if(attack != AT_DATTACK){
		if(state != PS_ATTACK_GROUND){
			grabbedid = noone
		}
	}
	if(!instance_exists(grabbedid)){
	grabbedid = noone
	exit;
	}
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.visible = true; //Feel free to remove this line if the grab does not make the opponent invisible.
		grabbedid.ungrab = 0;
		grabbedid.state = PS_TUMBLE;
		grabbedid = noone;
	}
}

steam_wall_anim_sync += 0.25

//geyser while not in fspecial
if(instance_exists(geyser) || instance_exists(geyser_2)){
	if(!(attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))){
		if((distance_to_object(geyser) < 20 || distance_to_object(geyser_2) < 20) && grabbedid == noone && state != PS_AIR_DODGE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_PARRY && !(attack == AT_DATTACK && state == PS_ATTACK_GROUND && window < 4)){
			if(distance_to_object(geyser) < 20 && (geyser.state == 2 || geyser.state == 1 && image_index > 1)){
				geyser.attack = true
				geyser.image_index = 0
				djumps = 0
				has_airdodge = true
				set_state(PS_IDLE_AIR)
				vsp = -16 + (-6 * (geyser.lifetime / 36))
				hsp /= 2
				if(left_down){
					hsp -= 2
				}else if(right_down){
					hsp += 2
				}
			}else if(distance_to_object(geyser_2) < 20 && (geyser_2.state == 2 || geyser_2.state == 1 && image_index > 1)){
				geyser_2.attack = true
				geyser_2.image_index = 0
				djumps = 0
				has_airdodge = true
				set_state(PS_IDLE_AIR)
				vsp = -16 + (-6 * (geyser_2.lifetime / 36))
				hsp /= 2
				if(left_down){
					hsp -= 2
				}else if(right_down){
					hsp += 2
				}
			}
		}
	}
}
//Indicating low on steam
/*
if(red_indicator_timer <= 0){
	if(steam < 50){
		if(down_strong_pressed && !free && can_strong == true || special_pressed && (left_down || right_down) && can_special == true){
			red_indicator_timer = 30
			sound_play(asset_get("mfx_timertick"))
		}
	}
	if(steam < 100 && can_strong = true && !free && can_strong == true){
		if(up_strong_pressed && can_ustrong == true){
			red_indicator_timer = 30
			sound_play(asset_get("mfx_timertick"))
		}
	}
	if(steam >= 100){
		if(special_pressed && can_special && joy_pad_idle && can_special){
			red_indicator_timer = 30
			sound_play(asset_get("mfx_timertick"))
		}
	}
}
*/

//Get Bounce Back (jk not anymore haha)
has_bounce = false

if(instance_exists(steam_wall)){
	steam_break = true
}else{
	steam_break = false
}

if(steam_wall_timer > 0){
	steam_wall_timer -= 1
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
		cancel_buffer = false
		if(steam > 34){
			steam -= 34
		}else{
			steam = 0
			no_pttm = true
			pedal_to_metal = false
			move_cooldown[AT_NSPECIAL] = 240
		}
	}else if(!hitpause){
		cancel_buffer = false
	}
}

//Tired

if(steam <= 0){
	col_r_outline = 100 + sin(lifetime / 20) * 50
	if(tired == false){
		tired = true
		move_cooldown[AT_NSPECIAL] = 180
		sound_play(sound_get("sfx_tired"))
	}
}else{
	tired = false
	col_r_outline = 0
}
outline_color = [col_r_outline, col_g_outline, col_b_outline]

init_shader();

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

//Steam Check
if(steam <= 0){
	steam = 0
}else if(steam >= 100){
	steam = 100
}


//Reset player height

if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	char_height = lerp(char_height, 52, 0.3)
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
		set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sfx_steam3);
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
		    
		    set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sfx_steam3);
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

//Specials Cancel
/*
if(steam >= 50){
	if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR || state == PS_LANDING_LAG && state_timer < 3){
		if(state_timer > 5 && !(attack == AT_DSTRONG && window < 3) && attack != AT_USTRONG && attack != AT_FSTRONG
		&& attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_DSPECIAL_AIR && attack != AT_EXTRA_1 && attack != AT_NSPECIAL){
			if(!hitpause){
				if(special_pressed && joy_pad_idle && !was_parried && has_hit_player || nspec_cancel_buffer){
					nspec_cancel_buffer = false
					set_attack(AT_NSPECIAL)
				}
			}else if(hitpause){
				if(special_pressed && joy_pad_idle && !was_parried && has_hit_player){
					nspec_cancel_buffer = true
				}
			}
		}
	}
}
*/

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

//Pedal to the Metal
if(pedal_to_metal){
	if(chuff_noise_timer >= 30){
		chuff_noise_timer = 0
		if(random_func_2(3, 3, true) == 0){
			sound_play(sound_get("sfx_chuff_1"))
		}else if(random_func_2(3, 3, true) == 1){
			sound_play(sound_get("sfx_chuff_2"))
		}else{
			sound_play(sound_get("sfx_chuff_3"))
		}
	}
	chuff_noise_timer++
	
	green_indicator_timer = 26
	if(steam < 100){
		steam += 0.3
	}else{
		pedal_to_metal = false
		sound_play(sound_get("sfx_steam_hiss_short"))
	}
	
	if(instance_exists(geyser)){
		geyser.attack = true
	}
	idle_anim_speed = .22;
	crouch_anim_speed = .15;
	walk_anim_speed = .25;
	dash_anim_speed = .55;
	
	walk_speed = 5;
	walk_accel = 0.4;
	initial_dash_speed = 8.5;
	dash_speed = 9;
	dash_turn_accel = 4;
	dash_stop_percent = .35;
	moonwalk_accel = 1.7;
	max_jump_hsp = 8;
	air_max_speed = 6.5;
	jump_change = 6.5;
	air_accel = .55;
	walljump_hsp = 4;
	walljump_vsp = 13;
	knockback_adj = 1.04;
	
	wave_land_adj = 1.3;
	wave_friction = .2;
	
	damage_adj = 0.75
	
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 4);
	
	set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 1);
	
	set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 4);
	
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 1);
	
	set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 3);
	
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4);

	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 12);
}else{
	if(steam > 0){
		idle_anim_speed = .14;
		crouch_anim_speed = .1;
		walk_anim_speed = .2;
		dash_anim_speed = .4;
		
		walk_speed = 4;
		walk_accel = 0.2;
		initial_dash_speed = 7;
		dash_speed = 7.5;
		dash_turn_accel = 2.5;
		dash_stop_percent = .35;
		moonwalk_accel = 1.2;
		max_jump_hsp = 7;
		air_max_speed = 6;
		jump_change = 5;
		air_accel = .45;
		walljump_hsp = 4.5;
		walljump_vsp = 12;
		knockback_adj = 1.02;
		
		wave_land_adj = 1.2;
		wave_friction = .4;
		
		damage_adj = 1
		
		set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);
		
		set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);
		
		set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 6);
		
		set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 4);
		
		set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);
	
		set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);
		
		set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
		set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 8);
		
		set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 4);
		
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 11);
	}else{
		if(lifetime mod 5 == 0){
			spawn_hit_fx(x - 40 + random_func(2, 80, true), y - 60 + random_func(1, 80, true), vfx_steam_small)
		}
		red_indicator_timer = 26
		
		idle_anim_speed = .1;
		crouch_anim_speed = .05;
		walk_anim_speed = .2;
		dash_anim_speed = .25;
		
		walk_speed = 2.5;
		walk_accel = 0.1;
		initial_dash_speed = 4.5;
		dash_speed = 5.5;
		dash_turn_accel = 2.5;
		dash_stop_percent = .35;
		moonwalk_accel = 0.75;
		max_jump_hsp = 4.5;
		air_max_speed = 4.5;
		jump_change = 5;
		air_accel = .15;
		walljump_hsp = 3.5;
		walljump_vsp = 10;
		knockback_adj = 1;
		
		wave_land_adj = 1;
		wave_friction = .5;
		
		damage_adj = 1.2
		
		set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 14);
		set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);
		
		set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);
		
		set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 6);
		
		set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);
		
		set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 11);
		set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 10);
	
		set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);
		
		set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 11);
		set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 10);
		
		set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 7);
		
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9);
		
		set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		
		//spike nair when tired
		set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 11);
		set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.4);
		set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 304);
		
		//jab 2 is strong when tired
		set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.75);
		set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 9);
		set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 304);
		
		set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 304);
	}
}

//Not tired
if(steam > 0){
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	
	set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6 * damage_adj);
	set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.2 * damage_adj);
	set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, round(6 * damage_adj));
	set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7 * damage_adj);
	set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.25 * damage_adj);
	set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 0);
	
	set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 9 * damage_adj);
	set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.25 * damage_adj);
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, round(5 * damage_adj));
	set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 9.5);
	set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.4);
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 0);
	
	set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 0);
}

//Steam Cap
if(steam > 100){
	steam = 100
}
//Damage Changes
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, round(10 * damage_adj));
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 9 * damage_adj);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.95 * damage_adj);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 11 * damage_adj);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .9 * damage_adj);

set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, round(7 * damage_adj));
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5 * damage_adj);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.55 * damage_adj);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6 * damage_adj);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .6 * damage_adj);

set_hitbox_value(AT_DAIR, 10, HG_DAMAGE, round(5 * damage_adj));
set_hitbox_value(AT_DAIR, 10, HG_BASE_KNOCKBACK, 5 * damage_adj);
set_hitbox_value(AT_DAIR, 10, HG_KNOCKBACK_SCALING, 0.55 * damage_adj);
set_hitbox_value(AT_DAIR, 10, HG_BASE_HITPAUSE, 9 * damage_adj);
set_hitbox_value(AT_DAIR, 10, HG_HITPAUSE_SCALING, 0.7 * damage_adj);

set_hitbox_value(AT_DAIR, 9, HG_DAMAGE, 3 * damage_adj);
set_hitbox_value(AT_DAIR, 9, HG_BASE_KNOCKBACK, 7 * damage_adj);
set_hitbox_value(AT_DAIR, 9, HG_KNOCKBACK_SCALING, 0.25 * damage_adj);
set_hitbox_value(AT_DAIR, 9, HG_BASE_HITPAUSE, 7 * damage_adj);
set_hitbox_value(AT_DAIR, 9, HG_HITPAUSE_SCALING, 0.6 * damage_adj);

set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, round(5 * damage_adj));
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 8 * damage_adj);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, 0.35 * damage_adj);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 2 * damage_adj);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, 0.1 * damage_adj);

set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, round(5 * damage_adj));
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9.5 * damage_adj);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.25 * damage_adj);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6 * damage_adj);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.25 * damage_adj);

set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3 * damage_adj);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 2 * damage_adj);

set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, round(7 * damage_adj));
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7 * damage_adj);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.75 * damage_adj);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.8);

set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, round(7 * damage_adj));
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7 * damage_adj);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.75 * damage_adj);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6 * damage_adj);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.8 * damage_adj);

set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6 * damage_adj);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.4 * damage_adj);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, round(5 * damage_adj));
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4.5 * damage_adj);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.35 * damage_adj);

set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6.5 * damage_adj);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.15 * damage_adj);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4 * damage_adj);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.45 * damage_adj);

set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 9 * damage_adj);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.15 * damage_adj);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, round(5 * damage_adj));
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 6 * damage_adj);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.2 * damage_adj);

set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.5 * damage_adj);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 7 * damage_adj);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 7 * damage_adj);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.6 * damage_adj);

set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8 * damage_adj);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .75 * damage_adj);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, round(7 * damage_adj));
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8 * damage_adj);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .7 * damage_adj);

set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, round(4 * damage_adj));
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 2 * damage_adj);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .1 * damage_adj);

set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6 * damage_adj);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.3 * damage_adj);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, round(5 * damage_adj));
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6 * damage_adj);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.35 * damage_adj);

set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7 * damage_adj);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.85 * damage_adj);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, round(11 * damage_adj));
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 12 * damage_adj);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.8 * damage_adj);

set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9.5 * damage_adj);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.95 * damage_adj);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, round(10 * damage_adj));
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 10 * damage_adj);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.75 * damage_adj);


steam_wall_no_down--
switch_timer--
steam_break_timer--
lifetime++