//B - Reversals
if attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL{
	trigger_b_reverse();
}

// NOTE: Wall pull check for fspecial
// NOTE2: Make fspecial able to be attack canceled on the ground into other attacks (rather than its current popup)

switch attack{
	case 2: // intro
		has_intro = false;
		if window == 1{
			if window_timer == 1 && !hitpause sound_play(asset_get("sfx_kragg_roll_end"), false, noone, true, 1.2);
			else if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && state_timer >= 45{
				window = 2;
				window_timer = 0;
			}
		}
		else if window == get_attack_value(2, AG_NUM_WINDOWS) && window_timer == 1 && !hitpause sound_play(asset_get("sfx_syl_dstrong"), false, noone, true, 0.9);
		if window <= get_attack_value(2, AG_NUM_WINDOWS) hud_offset = 2000; // put hud away
		if window == get_attack_value(2, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 && get_gameplay_time() <= 125{
			set_state(PS_SPAWN); //correct state to spawn if needed
			state_timer = get_gameplay_time();
		}
	break;
	case AT_FTILT:
		if window == 1 && window_timer == round(get_window_value(attack, window, AG_WINDOW_LENGTH) * (2/3)) && !hitpause sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.7, 1.15);
	break;
	case AT_DTILT:
		if window == 1 && window_timer == 6 && !hitpause{
			//sound_play(asset_get("sfx_swipe_weak2"), false, noone, 0.5, 1.1);
			sound_play(asset_get("sfx_leaves"), false, noone, 0.7, 1.25);
		}
	break;
	case AT_UTILT:
		if ((window == 1 && window_timer > 13) || (window < 4 && window_timer <= 15)) && !hitpause hud_offset = round(lerp(hud_offset, 190, 0.1));
		switch window{
			case 1:
				if window_timer == 10 && !hitpause{
					hsp = 4 * spr_dir;
					sound_play(asset_get("sfx_mol_flare_shoot"));
				}
			break;
			case 2:
				if window_timer % 5 == 3 && window_timer < 12 && !hitpause sound_play(asset_get("sfx_mol_spark_explode2"));
			break;
		}
	break;
	case AT_DATTACK:
		if window == 1{
			var accel_interval = 0.5;
			hsp += accel_interval * spr_dir;
		}
	break;
	case AT_FSTRONG:
		if window == 2{
			set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 1/3 + (strong_charge / 200));
			set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_HSPEED, 7 + (strong_charge / 20));
			if has_rune("L") strong_charge++;
		}
		if window == 3 && window_timer == 2 && !hitpause{
			sound_play(asset_get("sfx_ori_bash_use"));
			sound_play(asset_get("sfx_absa_uair"), false, noone, 0.7, 0.8);
		}
		if window <= 3 hud_offset = round(lerp(hud_offset, 50, 0.3));
	break;
	case AT_DSTRONG:
		if window == 2 && has_rune("L") strong_charge++;
		if window == 3{
			if window_timer == 2 && !hitpause sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 0.8);
			if window_timer == 5 && !hitpause sound_play(asset_get("sfx_buzzsaw_throw"));
		}
	break;
	case AT_USTRONG:
		if window == 1 && window_timer == 8 && !hitpause{
			//sound_play(asset_get("sfx_syl_ustrong_part1"));
			sound_play(asset_get("sfx_syl_nspecial"), false, noone, 0.4, 1.1);
			sound_play(asset_get("sfx_leaves"), false, noone, 0.7, 0.8);
		}
		if window == 3 && window_timer == 1 && !hitpause{
			//sound_play(asset_get("sfx_syl_ustrong_part1"));
			sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.6, 0.9);
		}
		if window >= 3 hud_offset = round(lerp(hud_offset, window == 3? 100 + (window_timer * 10):(window_timer <= 8? 170:210 - (window_timer * 6)), 0.5));
	break;
	case AT_NAIR:
		if window == 1 && window_timer == round(get_window_value(attack, window, AG_WINDOW_LENGTH) * (2/3)) && !hitpause sound_play(asset_get("sfx_ori_uptilt_single"), false, noone, 0.7, 1.3);
		if window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause sound_play(asset_get("sfx_ell_dtilt2"), false, noone, 1, 1.1);
	break;
	case AT_FAIR:
		if window == 1{
			hud_offset = round(lerp(hud_offset, 50 + (window_timer * 5), 0.5));
			if window_timer == 4 && !hitpause{
				sound_play(asset_get("sfx_syl_ustrong_part1"), false, noone, 0.5);
				//sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 1, 0.8);
				//sound_play(asset_get("sfx_syl_fspecial_bite"), false, noone, 0.5, 0.8);
			}
		}
	break;
	case AT_BAIR:
		if window == 1 && window_timer == 7 && !hitpause sound_play(asset_get("sfx_abyss_hazard_hit"), false, noone, 0.7, 0.9);
		if has_rune("H") && window == 3 && window_timer == 3 && !hitpause && flowey_bairloop == 1{
			window = 1;
			window_timer = 6;
			set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
			set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 3);
			flowey_bairloop = 0;
			attack_end();
			destroy_hitboxes();
		}
	break;
	case AT_DAIR:
		if window == 3 && window_timer == 5 && !hitpause{
			sound_play(asset_get("sfx_ori_glide_featherout"), false, noone, 0.9, 1.1);
			sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.2, 1.2);
		}
		//if hitpause can_fast_fall = false;
	break;
	case AT_UAIR:
		if window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause sound_play(asset_get("sfx_ori_grenade_hit"), false, noone, 1.1, 1.2);
		//if ((window == 1 && window_timer == 8) || (window == 2 && window_timer == 2)) && !hitpause sound_play(asset_get("sfx_ori_spirit_flame_" + string(window)));
		hud_offset = round(lerp(hud_offset, 140, 0.5));
	break;
	case AT_NSPECIAL:
		switch window{
			case 3:
				if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && !special_down{
					create_hitbox(AT_NSPECIAL, 1, x + 36 * spr_dir, y);
					window = 5;
					window_timer = 0;
					sound_play(asset_get("sfx_ice_burst_up"), false, noone, 1, 1.2);
					spawn_hit_fx(x + (44 * spr_dir), y - 24, small_leaf_hfx);
				}
				move_cooldown[AT_NSPECIAL] = 35;
			break;
			case 4:
				if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
					create_hitbox(AT_NSPECIAL, 2, x + 36 * spr_dir, y - 24);
					if has_rune("J") for (var i = 0; i < 2; i++;){
						var pel = create_hitbox(AT_NSPECIAL, 1, x + 36 * spr_dir, y);
						pel.extra_pellet = i;
					}
					sound_play(asset_get("sfx_ice_burst_up"), false, noone, 1, 1.4);
					sound_play(asset_get("sfx_leaves"), false, noone, 0.5, 1);
					spawn_hit_fx(x + (44 * spr_dir), y - 24, small_leaf_hfx);
				}
				move_cooldown[AT_NSPECIAL] = 80;
			break;
		}
	break;
	case AT_FSPECIAL:
		grav = 0.1;
		move_cooldown[AT_FSPECIAL] = 50;
		//vsp = clamp(1, -1, vsp);
		can_move = false;
		if was_parried set_state(PS_PRATFALL);
		if window == 1{
			hsp *= 0.75;
			vsp *= 0.75;
		}
		else if window == 2 || window == 3{
			if window == 2 && window_timer == 5 && !hitpause && flowey_vine == noone{
				flowey_vine = create_hitbox(AT_FSPECIAL, 1, x + 68 * spr_dir, y - 16);
				flowey_vineCheck = create_hitbox(AT_FSPECIAL, 3, x + 68 * spr_dir, y - 16);
			}
			//hsp = 0;
			//vsp = 0;
			with flowey_vine{
				if player_id == other && attack == AT_FSPECIAL && !other.hitpause{
					x_pos += (15 - (3/4) * hitbox_timer) * spr_dir;
				}
				if hitbox_timer > 20{
					image_xscale = 0;
					image_yscale = 0;
				}
			}
			if flowey_vineCheck != noone && instance_exists(flowey_vineCheck){
				flowey_vineCheck.x = flowey_vine.x + (10 * spr_dir);
				flowey_vineCheck.y = flowey_vine.y;
			}
			if instance_exists(grabp) && instance_exists(flowey_vine){
				grabp.hsp = 0;
				grabp.vsp = 0;
				grabp.spr_dir = -spr_dir;
				grabp.state = PS_FLASHED;
				grabp.free = true;
				grabp.x = flowey_vine.x + (20 * spr_dir);
				grabp.y = flowey_vine.y + 15;
				if flowey_vine.hitbox_timer >= 40{
					set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
					window = 5;
					window_timer = 0;
					flowey_vineCheck.y -= 1000;
					flowey_vineCheck.destroyed = true;
					//enemy_pos = [grabp.x, grabp.y];
					if grabp == flowey_save{
						flowey_save.hsp = -5 * spr_dir;
						flowey_save.vsp = -7;
						sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.6, 0.9);
					}
					else grabp.state = PS_FLASHED;
				}
			}
		}
		if window == 5 && window_timer < 7 && !hitpause && grabp != flowey_save{
			hsp = 0;
			vsp = 0;
			grabp.state = PS_FLASHED;
			grabp.x = x + 40 * spr_dir;
			grabp.y = y - 10;
		}
		if has_rune("C") && window == 5 && window_timer == 6 && !hitpause{
			fspecial_rune_kill = create_hitbox(AT_FSPECIAL, 5, x + (25 * spr_dir), y - 40);
			for (var i = 0; i < array_length(fspecial_rune_kill.can_hit); i++;) fspecial_rune_kill.can_hit[i] = false;
			with oPlayer other.fspecial_rune_kill.can_hit[player] = get_player_damage(player) >= 100;
		}
		if window == 5 && window_timer > 12 && !hitpause{
			can_jump = true;
			can_attack = true;
			if djumps > 1 djumps = 1;
		}
	break;
	case AT_DSPECIAL:
		switch window{
			case 1:
				can_jump = false;
				if window_timer == 8 && !hitpause sound_play(asset_get("sfx_kragg_rock_shatter")) ;
			break;
			case 2:
				can_jump = false;
				hsp = ((has_rune("D")? 8:5) * spr_dir) + ((has_rune("D")? 3:2) * (right_down - left_down));
				if special_pressed && window_timer > 1 && !hitpause{
					window = 3;
					window_timer = 0;
					//sound_play(asset_get(""));
				}
				if shield_pressed || (!place_meeting(x + (spr_dir * 60), y + 10, (asset_get("par_block"))) &&
				!place_meeting(x + (spr_dir * 60), y + 10, (asset_get("par_jumpthrough")))) ||
				place_meeting(x + (spr_dir * 35), y, (asset_get("par_block"))){
					window = 4;
					window_timer = 0;
				}
			break;
			case 3:
				hud_offset = round(lerp(hud_offset, 180, 0.5));
				hsp *= 0.975;
				if window_timer == 7 && !hitpause sound_play(asset_get("sfx_oly_uspecial_kick")) ;
				if has_rune("M"){
					hsp = 0;
					if !hitpause switch window_timer{
						case 5:
							if (place_meeting((x - (spr_dir * 90)), y + 10, (asset_get("par_block"))) ||
							place_meeting(x - (spr_dir * 90), y + 10, (asset_get("par_jumpthrough")))) &&
							!place_meeting(x - (spr_dir * 80), y, (asset_get("par_block")))
								create_hitbox(AT_DSPECIAL, 4, x - (110 * spr_dir), y - 82);
							if (place_meeting((x + (spr_dir * 130)), y + 10, (asset_get("par_block"))) ||
							place_meeting(x + (spr_dir * 130), y + 10, (asset_get("par_jumpthrough")))) &&
							!place_meeting(x + (spr_dir * 110), y, (asset_get("par_block")))
								create_hitbox(AT_DSPECIAL, 4, x + (34 * spr_dir), y - 82);
						break;
						case 10:
							if (place_meeting((x - (spr_dir * 162)), y + 10, (asset_get("par_block"))) ||
							place_meeting(x - (spr_dir * 162), y + 10, (asset_get("par_jumpthrough")))) &&
							!place_meeting(x - (spr_dir * 152), y, (asset_get("par_block")))
								create_hitbox(AT_DSPECIAL, 4, x - (182 * spr_dir), y - 82);
							if (place_meeting((x + (spr_dir * 202)), y + 10, (asset_get("par_block"))) ||
							place_meeting(x + (spr_dir * 202), y + 10, (asset_get("par_jumpthrough")))) &&
							!place_meeting(x + (spr_dir * 182), y, (asset_get("par_block")))
								create_hitbox(AT_DSPECIAL, 4, x + (106 * spr_dir), y - 82);
						break;
					}
				}
			break;
			case 4:
				if window_timer > 8 && !hitpause{
					can_jump = true;
				}
			break;
		}
	break;
	case AT_DSPECIAL_AIR:
		can_move = false;
		can_fast_fall = false;
		if window == 1{
			hsp *= 0.85;
			vsp *= 0.85;
		}
		if window == 3{
			if window_timer == 1 && !hitpause sound_play(asset_get("sfx_kragg_rock_shatter"));
			attack_end();
			destroy_hitboxes();
			if window_timer == 12{
				set_attack(AT_DSPECIAL);
				window = 2;
				window_timer = 0;
			}
		}
		fall_through = down_down;
	break;
	case AT_USPECIAL:
		if window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !instance_exists(flowey_save){
			flowey_save = instance_create(x, y, "obj_article1");
			flowey_savecooldown = 10;
			attack_end();
			destroy_hitboxes();
			set_state(free? PS_IDLE_AIR:PS_IDLE);
		}
		else if window == 2{
			vsp = -0.5;
			hsp *= 0.975;
			if window_timer == 5 && !hitpause && has_rune("F") && special_down{
				flowey_savejump += has_rune("L")? 1:0.5;
				window_timer = 0;
				if flowey_savejump >= 5 window_timer = 5;
			}
			if window_timer == 6 && !hitpause{
				x = flowey_save.x;
				y = flowey_save.y - 0.1;
				if special_down{
					vsp = -10 - flowey_savejump + flowey_save.vsp;
					flowey_savejump = 0;
				}
				else{
					vsp = (flowey_savejump == 0? -6:(-10 - flowey_savejump)) + flowey_save.vsp;
					flowey_savejump = 0;
				}
				hsp = (abs(hsp) * (right_down - left_down)) + flowey_save.hsp;
				flowey_saves_used -= 1;
				spawn_hit_fx(x, y - 24, vfx_star);
				if "flowey_saveattack" in flowey_save instance_destroy(flowey_save.flowey_saveattack);
				instance_destroy(flowey_save);
				//uspc_atkFall = 10;
				if djumps > 1 	djumps = 1;
			}
		}
	break;
	case AT_TAUNT:
		move_cooldown[AT_TAUNT] = 2;
		if has_rune("N") && instance_exists(flowey_save){
			var fly_dist = point_distance(0, 0, hsp, vsp);
			var acceleration = 0.3;
			if !joy_pad_idle{
				flowey_save.hsp += lengthdir_x(acceleration, joy_dir);
				flowey_save.vsp += lengthdir_y(acceleration, joy_dir);
			}
		}
		if state_timer == 216 || (state_timer >= 36 && !taunt_down){
			attack_end();
			destroy_hitboxes();
			set_state(free? PS_IDLE_AIR:PS_IDLE);
		}
	break;
	case AT_TAUNT_2:
		move_cooldown[AT_TAUNT_2] = 2;
		if window == 1 && window_timer == 28 && !hitpause{
			sound_play(sound_get("vineboom"));
		}
		if window == 2 && state_timer >= 50 && !hitpause && !taunt_down{
			window = 3;
			window_timer = 0;
		}
		if genesis && window == 3 && window_timer == 8 && !hitpause{
			spawn_hit_fx(x + 25 * spr_dir, y - 5, HFX_ELL_FSPEC_HIT);
			sound_play(asset_get("sfx_mol_norm_explode"));
			create_hitbox(AT_TAUNT_2, 1, x + (25 * spr_dir), y - 5);
		}
	break;
	case 49:
		through_platforms = true;
		fall_through = true;
		can_fast_fall = false;
		can_move = false;
		switch window{
			case 1:
				flowey_final_strong_timer = 600;
				flowey_final_strong_cooldown = 0;
				hsp = 0;
				vsp = -3 + (window_timer * 0.05);
				if get_player_color(player) != 3 particles = [];
			break;
			case 2:
				flowey_final_strong_timer--;
				flowey_final_strong_cooldown--;
				if !joy_pad_idle{
					hsp += lengthdir_x(1, joy_dir) * 0.3;
					vsp += lengthdir_y(1, joy_dir) * 0.3;
				}
				else{
					hsp *= 0.8;
					vsp *= 0.8;
				}
				var fly_dir = point_direction(0, 0, hsp, vsp);
				var fly_dist = point_distance(0, 0, hsp, vsp);
				var max_speed = 8;
				if fly_dist > max_speed{
					hsp = lengthdir_x(max_speed, fly_dir);
					vsp = lengthdir_y(max_speed, fly_dir);
				}
				if (flowey_final_strong_timer <= 0 || special_pressed) && flowey_final_strong_cooldown <= 0{
					window = 3;
					window_timer = 0;
				}
			break;
			case 3:
				flowey_final_strong_timer--;
				hsp *= 0.9;
				vsp *= 0.9;
			break;
			case 4:
				flowey_final_strong_timer--;
				hsp *= 0.9;
				vsp *= 0.9;
				if window_timer == 6 && !hitpause{
					window = flowey_final_strong_timer <= 0? 5:2;
					window_timer = 0;
					flowey_final_strong_cooldown = 60;
					attack_end();
				}
			break;
			case 5:
				flowey_final_strong_timer--;
				hsp *= 0.6;
				vsp *= 0.6;
			break;
		}
	break;
}