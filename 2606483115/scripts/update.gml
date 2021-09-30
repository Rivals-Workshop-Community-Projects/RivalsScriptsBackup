if(djumps > 0 && free && steam > 0){
	if(state == PS_ATTACK_AIR && can_jump || state == PS_IDLE_AIR && hitpause == false){
		if(jump_pressed /* && steam > 20*/){
			sound_play(sound_get("sfx_steam_quick"))
			spawn_hit_fx(x, y + 60, vfx_doublejump_steam)
			steam -= 25
			set_state(PS_DOUBLE_JUMP)
			if(left_down || left_pressed){
				hsp = -4
				old_hsp = -4
			}else if(right_down || right_pressed){
				hsp = 4
				old_hsp = 4
			}
			vsp = -8
			old_vsp = -8
			//steam -= 20
		}
	}
}

if(steam < 0){
	steam = 0
}
if(!free){
	if(steam < 100 && state != PS_ATTACK_GROUND && steam_break == false && steam_break_timer <= 0){
		steam++
	}
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

if(steam < 50){
	move_cooldown[AT_DSTRONG] = 2
	move_cooldown[AT_NSPECIAL] = 2
	move_cooldown[AT_FSPECIAL] = 2
}
if(steam < 100){
	move_cooldown[AT_USTRONG] = 2
}
steam_wall_anim_sync += 0.25

//geyser while not in fspecial
if(instance_exists(geyser) || instance_exists(geyser_2)){
	if(!(attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))){
		if((distance_to_object(geyser) < 20 || distance_to_object(geyser_2) < 20) && grabbedid == noone && state != PS_AIR_DODGE && !(attack == AT_DATTACK && state == PS_ATTACK_GROUND && window < 4)){
			if(distance_to_object(geyser) < 20 && (geyser.state == 2 || geyser.state == 1 && image_index > 1)){
				geyser.state = 3
				geyser.state_timer = 0
				geyser.image_index = 0
				djumps = 0
				has_airdodge = true
				set_state(PS_IDLE_AIR)
				vsp = -16
				hsp /= 2
				if(left_down){
					hsp -= 2
				}else if(right_down){
					hsp += 2
				}
			}else if(distance_to_object(geyser_2) < 20 && (geyser_2.state == 2 || geyser_2.state == 1 && image_index > 1)){
				geyser_2.state = 3
				geyser_2.state_timer = 0
				geyser_2.image_index = 0
				djumps = 0
				has_airdodge = true
				set_state(PS_IDLE_AIR)
				vsp = -16
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
if(red_indicator_timer <= 0){
	if(steam < 50){
		if(down_strong_pressed && !free && can_strong == true || special_pressed && (left_down || right_down) && can_special == true || special_pressed && can_special && joy_pad_idle){
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
}

//Extra Airdodges
if(!has_airdodge && can_shield && free){
	if(shield_pressed){
		if(steam >= 50){
			air_dodge_speed = 7.5;
			set_state(PS_AIR_DODGE)
			steam -= 50
			sound_play(sound_get("sfx_steam_quick"))
			sound_stop(asset_get("sfx_quick_dodge"))
			spawn_hit_fx(x, y - 20, vfx_nspec_cancel)
		}else if(red_indicator_timer <= 0){
			red_indicator_timer = 30
			sound_play(asset_get("mfx_timertick"))
		}
	}
}else if(has_airdodge){
	air_dodge_speed = 10;
}

//Get Bounce Back
if(!free){
	has_bounce = true
}

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

if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	char_height = lerp(char_height, 52, 0.3)
}

if(state == PS_SPAWN || not_moved){
	if(taunt_pressed && !masked && switch_timer <= 0){
		
	
		masked = true
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
		}else if(get_player_color(player) == 11){
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
		}else if(get_player_color(player) == 11){
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
		set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sfx_steam3);
		
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

//Uspecial Air Accel
if(attack == AT_USPECIAL && state == PS_ATTACK_AIR){
	air_accel = 0.9;
}else{
	air_accel = .45;
}
switch_timer--
steam_break_timer--