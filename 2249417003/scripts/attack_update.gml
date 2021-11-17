//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) {
    trigger_b_reverse();
}

//if (attack == AT_BAIR && window >= 7 && window_timer == 10) 
//|| (attack == AT_FSPECIAL) && window 

if (hitpause) exit;

if (ralsei_courage > 0 && state_timer == 8) {
	var nade = instance_create(x, y - 40, "obj_article1");
	nade.spr_dir = spr_dir;
	nade.article_index = 5;
	nade = instance_create(x, y - 30, "obj_article1");
	nade.spr_dir = spr_dir;
	nade.article_index = 5;
	nade.vsp = -3;
	sound_play(sound_get("dr_wing_edit"));
}  



switch (attack) { //open switch(attack)
	
	case AT_JAB:
		was_parried = false;
		if (window == 2 && window_timer == 1) {
			spawn_bullet_shell(0, false);
		}
	break;
	
	
	case AT_DATTACK:
		if (window == 1 && is_end_of_window()) {
			sound_play(sound_get("fesliyan_gunshot3"));
		}
		else if (window == 2 && window_timer == 1) {
			spawn_bullet_shell(0, false).x += 40 * spr_dir;
			spawn_bullet_shell(0, true).x -= 40 * spr_dir;
			
		}
	break;
	
	case AT_FAIR:
		if (window == 2 && (window_timer == 1 || window_timer == 4 || window_timer == 7)) {
			spawn_bullet_shell(0, false).vsp -= spr_dir;
		}
	break;	
	
	case AT_FSTRONG:
	switch (window) {
		case 1:
			if (window_timer == 1) {
				ralsei_use_super_move = false;
				ralsei_super_move_cancelled = (!ralsei_tp_meter_is_full());
			}
			//don't use the super ver. if shield was pressed
			if (shield_pressed || shield_down) ralsei_super_move_cancelled = true;
			
			//check for super ver.
			if (window_timer == 8) {
				ralsei_use_super_move = (ralsei_tp_meter_is_full() && !ralsei_super_move_cancelled);
				if (ralsei_use_super_move) {
					sound_play(sound_get("dr_weaponpull"));
					spawn_hit_fx(x, y - 30, 254);
					ralsei_tp = 0;
				}
			}
			
			//force charging the super ver. for exactly 5 frames
			if (ralsei_use_super_move && is_end_of_window()) {
				window_timer --;
				strong_charge++;
				if (strong_charge >= 5) {
					window = 2;
					window_timer = 0;
				}
			}
			
		break;
		
		case 2:
		//skip melee hitbox + shoot projectile if the super ver. is being used.
			if (ralsei_use_super_move && is_end_of_window()) {
				window = 3;
				window_timer = 1;
				create_hitbox(attack, 4, x, y - 30);
				sound_play(sound_get("dr_criticalswing"));
			}
		break;
	}
	break;

	case AT_USTRONG:
	switch (window) {
		case 1:
			if (window_timer == 1) {
				ralsei_use_super_move = false;
				ralsei_super_move_cancelled = false;
			}
			//don't use the super ver. if shield was pressed
			if (shield_pressed || shield_down) ralsei_super_move_cancelled = true;
			
			//check for super ver.
			if (window_timer == 8) {
				ralsei_use_super_move = (ralsei_tp_meter_is_full() && !ralsei_super_move_cancelled);
				if (ralsei_use_super_move) {
					sound_play(sound_get("dr_weaponpull_fast"));
					spawn_hit_fx(x, y - 30, 254);
					ralsei_tp = 0;
				}
			}
			
		break;
		
		case 3:
		//skip melee hitbox + shoot projectile if the super ver. is being used.
			if (window_timer == 1 && ralsei_use_super_move) {
				//activate courage
				ralsei_courage = ralsei_max_courage;// + strong_charge;
				sound_play(sound_get("dr_stardrop_edit"));
				var atk_up_effect = spawn_hit_fx(x, y - 100, ralsei_fx_atk_up);
				atk_up_effect.spr_dir = 1;
				atk_up_effect.depth = depth-1;
			}
		break;
	}
	break;

	case AT_DSTRONG:
	switch (window) {
		case 1:
			if (window_timer == 1) {
				//reset heal amounts and super move variables
				ralsei_use_super_move = false;
				ralsei_super_move_cancelled = (!ralsei_tp_meter_is_full());
				ralsei_dstrong_heal_amount = 0;
				ralsei_dstrong_player_heal_amount = [0, 0, 0, 0, 0];
			}
			//don't use the super ver. if shield was pressed
			if (shield_pressed || shield_down) ralsei_super_move_cancelled = true;
		break;
		
		case 2:
			if (window_timer == 1) {
				ralsei_use_super_move = (ralsei_tp_meter_is_full() && !ralsei_super_move_cancelled && !shield_pressed && !shield_down);
				if (ralsei_use_super_move) {
					sound_play(sound_get("dr_weaponpull_fast"));
					spawn_hit_fx(x, y - 30, 254);
					ralsei_tp = 0;
				}
			}
		break;
		case 3:
			if (window_timer == 1) {
				if (ralsei_use_super_move) {
					ralsei_dstrong_heal_amount = 12; //heal 12 hp 
					ralsei_dstrong_player_heal_amount[player] = 10; //also heal ralsei himself
					//empty super meter
					ralsei_tp = 0;
					
					//rune invincibility
					if (has_rune("E")) invince_time = max(invince_time, 12);
				}
				else {
					ralsei_dstrong_heal_amount = 1 + round(strong_charge / 20); //heal 0-3 hp depending on charge time
					
					if (has_rune("E")) {
						//self-heal
						var self_heal_amount = floor(min(ralsei_dstrong_heal_amount, ralsei_tp / 5));
						ralsei_dstrong_player_heal_amount[player] = self_heal_amount;
						ralsei_tp -= self_heal_amount * 5;
						//rune invincibility
						if (self_heal_amount > 0) invince_time = max(invince_time, 12);
					}
				}

			}
		case 4:

		case 5:
			if (was_parried && window == 5 && window_timer < 10) window_timer = 10;
			var frame_check = 3 - ralsei_use_super_move - was_parried;
			if (window_timer mod frame_check != 0) break;
			
			//if (window_timer mod (frame_check * 2) == frame_check )
			with (oPlayer) {
				if (player >= 1 && player <= 4 && !clone && other.ralsei_dstrong_player_heal_amount[player] > 0) {
					with (other) {
						spawn_hit_fx(other.x - 25 + random_func(other.player, 50, true), other.y - other.char_height + random_func(other.player + 10, floor(other.char_height), true), ralsei_fx_heal).depth = depth-1;
					}
				}
			}
			
			for(var i = 1; i <= 4; i++) {
				if (ralsei_dstrong_player_heal_amount[i] > 0) {
					take_damage( i, -1, -1 );
					ralsei_dstrong_player_heal_amount[i]--;
					
					//gain meter when healing opponents
					if (ralsei_use_super_move == false && get_player_team(i) != get_player_team(player)) {
						ralsei_tp += 3 + (ralsei_dstrong_player_heal_amount[i] == 0) * 3;
					}
				}
			}
			
			//this attack recovers -faster- if it is parried.
			if (was_parried && window_timer >= 20) {
				set_state(PS_IDLE);
			}
			
			//put this move on cooldown.
			move_cooldown[AT_DSTRONG] = 10;
			
		break;
	}
	break;
	
	case AT_DTILT:
		if (window == 2 && window_timer == 1 && !was_parried) {

			var mine_counter = 0
			with (obj_article1) {
				if (player_id != other || article_index != 2) continue;
				mine_counter++;
				//if (mine_counter <= (has_rune("A") * 4)) continue;
				//if (state < 3) { state = 5; state_timer = 0; image_alpha = 0.6; }
			}
			if (mine_counter <= (has_rune("A") * 4)) {
				var new_mine = instance_create(x + 10 * spr_dir, y - 12, "obj_article1");
				new_mine.article_index = 2;
				new_mine.spr_dir = spr_dir;
				new_mine.depth = depth-1;
			}
		}
		if (window > 2) move_cooldown[AT_DTILT] = 15;
	break;
	
	case AT_EXTRA_2:
		can_move = 0;
		window_timer = 1;
		ralsei_trigger = 1;
		knockback_adj = 10;
		var dir = right_down - left_down;
		if (!free && dir != 0) {
			vsp = -2
			hsp = dir * 0.2;
		}
	break;
	
	case AT_FTILT:
		switch (window) {
			case 2:
				if (window_timer == 1) {
					var new_bullet_angle_addition = -16;
					repeat (5) {
						var new_bullet = create_hitbox(AT_FTILT, 3, x + 30 * spr_dir, y - 32);
						var new_bullet_angle = (spr_dir < 0) * 180 + new_bullet_angle_addition;
						new_bullet.hsp = lengthdir_x(15, new_bullet_angle);
						new_bullet.vsp = lengthdir_y(15, new_bullet_angle);
						new_bullet_angle_addition += 8;
					}
					repeat (2) {
						spawn_bullet_shell(1, false);
					}
				}
			break;
		}
	break;
	
	case AT_UTILT:
		switch (window) {
			case 2:
				if (window == 2 && window_timer == 1) {
				//flamethrower
				var new_flame = instance_create(x + 30* spr_dir, y - 30, "obj_article1");
				new_flame.article_index = 4;
				new_flame.spr_dir = spr_dir;
			}
		break;
		case 4:
			if (state_timer >= 59) {
				attack_end();
				if (has_hit) {
					create_hitbox(AT_UTILT, 5, x + spr_dir * 70, y - 90); //finisher hitbox
					spawn_hit_fx(x + spr_dir * 70, y - 90, 305);
					spawn_hit_fx(x + spr_dir * 70, y - 90, 3);
				}
				window = 5;
				window_timer = 0;
			}
			
			else if ( (attack_down || up_stick_down) && !was_parried && is_end_of_window() ) {
				attack_end();
				window = 3;
				window_timer = 0;
			}
			
			if (state_timer mod 25 == 1) {spawn_grenades_if_courage_is_active(); }
			
			hsp = (right_down - left_down);
		break;
		}
	break;
	
	
	
	
	case AT_NAIR:
		switch (window) {
			case 1:
				if (is_end_of_window()) {
					ralsei_nair_cycle = (ralsei_nair_cycle+1) mod 6;
					ralsei_nair_consecutive_hits = 0;
				}
			break;
			case 2:
				if (!is_end_of_window()) break;
				var bullet1 = create_hitbox(AT_NAIR, 2, x + ralsei_nair_bullet1_x[ralsei_nair_cycle] * spr_dir, y + ralsei_nair_bullet1_y[ralsei_nair_cycle]);
				bullet1.hsp = lengthdir_x(12, ralsei_nair_bullet1_dir[ralsei_nair_cycle]) * spr_dir;
				bullet1.vsp = lengthdir_y(12, ralsei_nair_bullet1_dir[ralsei_nair_cycle]);	
				var bullet2 = create_hitbox(AT_NAIR, 2, x + ralsei_nair_bullet2_x[ralsei_nair_cycle] * spr_dir, y + ralsei_nair_bullet2_y[ralsei_nair_cycle]);
				bullet2.hsp = lengthdir_x(12, ralsei_nair_bullet2_dir[ralsei_nair_cycle]) * spr_dir;
				bullet2.vsp = lengthdir_y(12, ralsei_nair_bullet2_dir[ralsei_nair_cycle]);
				bullet2.spr_dir *= -1;
				
				var shell = spawn_bullet_shell(0, false);
				shell.x = bullet1.x;
				shell.y = bullet1.y;
				shell.hsp *= 0.25;
				
				shell = spawn_bullet_shell(0, false);
				shell.x = bullet2.x;
				shell.y = bullet2.y;
				shell.hsp *= 0.25;
				
			break;
			case 3:
				if (has_hit && !fast_falling && !do_a_fast_fall) {
					vsp = min(vsp, 1);
					//can_move = false;
					if (window_timer == 2 && !joy_pad_idle) {
						hsp += lengthdir_x(0.5, joy_dir);
						vsp += lengthdir_x(0.5, joy_dir);
					}
				}
			break;
			case 4:
				if (window_timer > 4 || has_hit /* && has_hit*/) {//if (window_timer > 7 - (has_hit * 2)) {
					if ((attack_pressed || attack_down) && ralsei_nair_consecutive_hits < 3) {
						ralsei_nair_cycle = (ralsei_nair_cycle+1) mod 6;
						window = 1;
						window_timer = 5;
						
						
						if (true /* has_hit */ ) {
							attack_end();
							if (has_hit) ralsei_nair_consecutive_hits++;
							else ralsei_nair_consecutive_hits = 0;
						
							//transition to final hit if ralsei has hit three nairs already
							if (ralsei_nair_consecutive_hits == 3) {
								attack_end();
								set_attack(AT_NTHROW);
							}
						}
						//else ralsei_nair_consecutive_hits = 0;
						
						has_hit = false;
						
						
						if (ralsei_nair_consecutive_hits == 2) spawn_grenades_if_courage_is_active();
					}
				}
				else if (has_hit_player) {
					can_move = false;
				}
				
				if (window_timer >= 12) can_wall_jump = true;
			break;
			case 5:
				can_wall_jump = true;
			break;
		}
	break;
	
	case AT_NTHROW: //nair2
		if (window == 2 && is_end_of_window()) {
			spawn_hit_fx(x, y - 26, 115).depth = depth-1;
		}
		else if (window == 3) can_move = false;
	break;
	
	case AT_BAIR:
		switch (window) {
			case 1:
				if (window_timer == 1) {
					//reset landing lag to normal.
					set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
					ralsei_bair_bullet_hit_player_object_id = noone;
				}
			break;
			case 6:
				can_move = false;
				if (window_timer == 1) { 
					sound_play(sound_get("fesliyan_rifle"));
					//super landing lag if the rifle shoots.
					set_attack_value(AT_BAIR, AG_LANDING_LAG, 14);
					//hitpause = true;
					//hitstop = max(hitstop, 15); 
					//if (!free) {
					//	vsp = 0;
					//	old_vsp = 0;
					//	y -= 1;
					//}
					spawn_grenades_if_courage_is_active();
					
					spawn_bullet_shell(2, true);
				}
			break;
			case 7:
				if (window_timer >= 5) can_wall_jump = true;
			break;
		}
	break;
	
	case AT_DAIR:
		
		switch (window) {
			case 2:
				hsp = clamp(hsp, -2.5, 2.5);
				if (window_timer == 3) {
					if (ralsei_dair_ammo > 0) {
						//if (vsp > 0) 
						var bullet = create_hitbox(attack, 1, x+8*spr_dir, y-4);
						vsp *= 0.67;
						vsp = clamp(vsp - ralsei_dair_velocity, -10, 10);
						ralsei_dair_ammo--;
						ralsei_dair_consecutive_shots++;
						if (ralsei_dair_consecutive_shots == 1) bullet.damage += 2;
						sound_play(sound_get("cs_machinegun"));
						spawn_hit_fx(x+8*spr_dir, y+16, ralsei_fx_dair_spark).depth = depth-1;
						has_hit = false; //set to true in hit_player.gml
						
						if (ralsei_dair_ammo == 0) {
							var emptyfx = spawn_hit_fx(x+4*spr_dir, max(72, y-80), ralsei_fx_dair_empty);
							emptyfx.depth = depth-1;
							emptyfx.spr_dir = 1;
							ralsei_dair_ammo = -1;
						}
						if (ralsei_dair_consecutive_shots mod 5 == 0) {
						 	spawn_grenades_if_courage_is_active();
						}
					}
					else {
						sound_play(sound_get("cs_machinegun_empty"));
						vsp = clamp (vsp - 0.25, -10, 6);
						//vsp = clamp(vsp - gravity_speed * 4, -10, max_fall);
					}
					
				}
			break;
			case 3:
				if (attack_down || strong_down || down_stick_down) {
					window = 2;
					window_timer = 0;
				}
			break;
		}
		
		can_wall_jump = (window >= 3);
	break;
	
	case AT_NSPECIAL:
		can_move = false;
		switch (window) {
			case 1: 
				//if no ammo, reload
				if (ralsei_nspec_ammo <= 0) {
					window = 5;
					window_timer = 0;
				}
				else if (window_timer == 1 && !hitpause) {
					sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.8, 1.2);
				}
			break;
			case 3:
				if (window_timer == 1) {
					if (!has_rune("B")) ralsei_nspec_ammo -= 1;
					spawn_hit_fx(x + 50 * spr_dir, y - 38, ralsei_fx_sonic).depth = depth - 1;
					spawn_bullet_shell(0, false);
				}
			break;
			case 4:
				if (is_end_of_window()) {
					//if button pressed, shoot again or reload
					if (special_down || special_pressed) {
						if (ralsei_nspec_ammo > 0) {
							window = 2;
							window_timer = has_rune("B") * 5;
							spawn_grenades_if_courage_is_active();
						}
					}
					else {
						//end the attack
						window = 8;
						window_timer = 0;
					}
				}
			break;
			case 5:
				if (window_timer == 1 && !hitpause) {
					sound_play(asset_get("sfx_spin"), false, noone, 0.75, 0.9);
				}
			case 6:
				hsp = clamp(hsp, -1, 1);
				vsp = min(vsp, 4);
				//cancel reload
				if (shield_pressed && (window == 6 || window_timer > 6)) {
					window = 8;
					window_timer = 0;
				}
			break;
			case 7:
			//reload complete
				ralsei_nspec_ammo = ralsei_nspec_max_ammo;
				if (window_timer == 1) sound_play(sound_get("reload_by_nioczkus_edited"));
			break;
			case 8:
				//cooldown
				move_cooldown[AT_NSPECIAL] = 10;
			break;
		}
	break;
	
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
		switch (window) {
			case 1:
			break;
			case 3:
				if (window_timer == 1) {
					ralsei_fspecial_minigun_article_id = instance_create(x, y, "obj_article1");
					ralsei_fspecial_minigun_article_id.spr_dir = spr_dir
					ralsei_fspecial_minigun_article_id.ammo = 48;
				}
			break;
			case 4:
				can_move = false;
				vsp = min(vsp, 6);
				//hsp = clamp(hsp - (spr_dir * 5.25 - right_down + left_down) / 10, -12, 12);
				if (window_timer <= 10) break;
				
				var hsp_rune_add =  has_rune("D") * 0.2;
				var hsp_goal = (-3 - (max(window_timer - 10, 0) / 20) - (2 * free)) * spr_dir + (right_down - left_down) * (3 + hsp_rune_add * 2);
				
				if (spr_dir > 0)
					hsp = clamp(hsp_goal, hsp - 0.4, hsp + 0.2 + hsp_rune_add );
				else 
					hsp = clamp(hsp_goal, hsp - 0.2, hsp + 0.4 + hsp_rune_add );
				
				if (window_timer >= 30) {
					if (window_timer >= 55) window_timer = 55;
					
					if (shield_pressed || !instance_exists(ralsei_fspecial_minigun_article_id) || ralsei_fspecial_minigun_article_id.ammo <= 0) {
						window = 5;
						window_timer = 0;
						clear_button_buffer(PC_SHIELD_PRESSED);
					}
					
					//can_jump = true;
					else if (jump_pressed) {
						clear_button_buffer(PC_JUMP_PRESSED);
						vsp = -jump_speed;
						window = 5;
						window_timer = 0;
						if (instance_exists(ralsei_fspecial_minigun_article_id) && ralsei_fspecial_minigun_article_id.state == 1) {
							ralsei_fspecial_minigun_article_id.state = 2;
							ralsei_fspecial_minigun_article_id.state_timer = 0;
						}
						hsp += (right_down - left_down) * 2;
					}
				}
			break;
		}
	break;
	
	case AT_USPECIAL:
		switch (window) {
			case 1:
				if (window_timer <= 5) {
					if (right_down - left_down = -spr_dir) {
						spr_dir *= -1;
					}
				}
			break;
			
			case 2:
				//shoot projectile
				if (!is_end_of_window()) break;
				var rpg_projectile = instance_create(x - 30 * spr_dir, y, "obj_article1");
				rpg_projectile.spr_dir = spr_dir;
				rpg_projectile.article_index = 3;
			break;
			
			case 5:
				if (window_timer >= 2) can_wall_jump = true;

			break;
			case 6:
			case 7:
				can_wall_jump = true;
				var holding_dir = right_down - left_down;
				if (holding_dir == -sign(hsp)) {
					hsp += holding_dir * 0.1;
				}
			break;
		}
	break;
	
	case AT_USPECIAL_GROUND:
		ralsei_uspecial_ground_cooldown = 30;
		switch (window) {
			case 1:
				if (window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH) - 5) break;
				
				var silo_already_exists;
				with (obj_article1) {
					if (player_id != other || article_index != 1) continue;
					silo_already_exists = 1;
					break;
				}
				if (silo_already_exists) {
					window = 4;
					window_timer = 10;
					break;
				}
				
				var missile_launcher = instance_create(x - 30 * spr_dir, y, "obj_article1");
				missile_launcher.spr_dir = spr_dir;
				missile_launcher.article_index = 1;
				ralsei_uspecial_ground_ammo = ralsei_uspecial_ground_max_ammo;
				
				//choose a target
				var closest_target = noone;
				var closest_target_distance = 9999;
				var ralsei_team = get_player_team( player );
				var ralsei_xx = x + 150 * spr_dir;
				var ralsei_yy = y - 5;
				with (oPlayer) {
					if (get_player_team(player) == ralsei_team || clone) continue;
					var this_target_distance = point_distance(ralsei_xx, ralsei_yy, x, y);
					if (this_target_distance >= closest_target_distance) continue;
					closest_target = id;
					closest_target_distance = this_target_distance;
				}
				ralsei_uspecial_ground_target_player_id = closest_target;
				
			break;
			case 3:
				if ((special_down || special_pressed) && ralsei_uspecial_ground_ammo > 0 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 2) {
					ralsei_uspecial_ground_ammo -= 1;
					window = 2;
					window_timer = 0;
					if (ralsei_uspecial_ground_ammo < 4 && ralsei_uspecial_ground_ammo mod 2 == 1) spawn_grenades_if_courage_is_active();
				}
			break;
			case 4:
				can_move = false;
			break;
		}
	break;
	
	case AT_EXTRA_1: 
		
		
		can_jump = true;
		can_attack = true;
		can_strong = true;
		can_ustrong = true;
		can_special = true;
		
		var new_move_dir = right_down - left_down;
		if (new_move_dir != ralsei_extra_move_dir) { 
			window_timer = 0;  
			if (new_move_dir != 0) { spr_dir = new_move_dir; }
		}
		ralsei_extra_move_dir = new_move_dir;
		hsp = clamp(hsp + ralsei_extra_move_dir * walk_accel, -walk_speed, walk_speed);
		if (!free && down_down) set_state(PS_CROUCH);
		if (is_end_of_window()) window_timer = 1;
		if (!ralsei_heart_active && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
			set_state(PS_IDLE);
		}
		
	break;
	
	case AT_DSPECIAL:
		if (window_timer != 2) break;
		move_cooldown[AT_DSPECIAL] = 22;
		ralsei_heart_active = !ralsei_heart_active;
		
		
		if (ralsei_heart_active) {
			//if (ralsei_tp == ralsei_max_tp) {
			//	sound_play(sound_get("dr_cantselect"));
			//	ralsei_heart_active = false;
			//}
			//else {
				ralsei_heart_has_airdodge_before_activating = has_airdodge;
				has_airdodge = false;
				sound_play(sound_get("dr_powerup"));
				ralsei_heart_deactivate_timer = 0;
				ralsei_tp_drain_lock = ralsei_tp_drain_lock_time;
			//}

		}
		else {
			has_airdodge = (!free || ralsei_heart_has_airdodge_before_activating);
			sound_play(sound_get("dr_powerup"));
		}
	break;
	
	case AT_TAUNT:
		switch (window) {
			case 1:
				if (window_timer <= 1) {
					clear_button_buffer(PC_TAUNT_PRESSED);
				}
				
				else if (taunt_pressed && get_training_cpu_action() != CPU_FIGHT) {
					ralsei_tp = ralsei_max_tp;
					ralsei_nspec_ammo = ralsei_nspec_max_ammo;
					ralsei_dair_ammo = ralsei_dair_max_ammo;
					set_state(PS_IDLE);
					clear_button_buffer(PC_TAUNT_PRESSED);
					ralsei_training_prompt = 0;
				}
			break;
			
			case 3:
				if (window_timer != 1) break;
				var random_vol = 0.9 + random_func(5, 20, false) / 200;
				var random_pitch = 0.9 + random_func(10, 20, false) / 200;
				sound_play(sound_get("clap"), false, noone, random_vol, random_pitch);
				if (state_timer > 90) ralsei_tp++;
			break;
			
			case 4:
				if (taunt_down || taunt_pressed) {
					window = 3;
					window_timer = 0;
				} 
			break;
		}
 		
	break;
}

//recoil rune
if (window_timer == 1 && has_rune("D")) {
switch (attack) {
	case AT_JAB:
		if window != 2 break;
		hsp -= spr_dir * 1.5;
	break;

	case AT_FTILT:
		if (window != 2) break;
		hsp -= spr_dir * 3.5;
	break;
	
	case AT_NAIR:
		if (window != 3) break;
		hsp +=         spr_dir * (lengthdir_x(1.5, ralsei_nair_bullet1_dir[ralsei_nair_cycle]) + lengthdir_x(1.5, ralsei_nair_bullet2_dir[ralsei_nair_cycle]) );
		vsp += -0.25 + spr_dir * (lengthdir_y(1.5, ralsei_nair_bullet1_dir[ralsei_nair_cycle]) + lengthdir_y(1.5, ralsei_nair_bullet2_dir[ralsei_nair_cycle]) );
	break;
	
	case AT_FAIR:
		if (window != 2 && window != 3) break;
		hsp -= spr_dir * 1;
		if (window == 2) vsp -= 0.5;
	break;
	
	case AT_BAIR:
		if (window != 6) break;
		hsp += spr_dir * 4;
	break;
	
	case AT_NSPECIAL:
		if window != 3 break;
		hsp -= spr_dir * 2.5;
	break;
}
}

#define ralsei_tp_meter_is_full
return ralsei_tp >= ralsei_max_tp;

#define is_end_of_window
return window_timer + 1 > get_window_value(attack, window, AG_WINDOW_LENGTH);


#define spawn_grenades
var nade = instance_create(x, y - 40, "obj_article1");
nade.spr_dir = spr_dir;
nade.article_index = 5;
nade = instance_create(x, y - 30, "obj_article1");
nade.spr_dir = spr_dir;
nade.article_index = 5;
nade.vsp = -3;
sound_play(sound_get("dr_wing_edit"));
return;

#define spawn_grenades_if_courage_is_active
if (ralsei_courage > 0) spawn_grenades();
return;

#define spawn_bullet_shell
var shell = instance_create(x, y - 40, "obj_article2");
shell.image_index = argument0;
var reverse_shot = argument1;
if (reverse_shot) { shell.spr_dir *= -1; shell.hsp *= -1; }
if (y <= ralsei_most_recent_ground_height) shell.bounce_height = ralsei_most_recent_ground_height;
return;
