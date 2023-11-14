//attack_update.gml

//B-reverse - it allows the character to turn in_while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

//recording the last attack
if (state_timer == 1)
{
	if (attack != AT_FSPECIAL) window_loops = 0; //NOTE: not resetting the window loops will make the "supercharge tech" work a lot more easily
	prev_attack[1] = prev_attack[0]; //the prev attack
	prev_attack[0] = attack;
}

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_FTILT:
		if (window == 3 && window_timer == 1) new_hsp = hsp * 0.6; //using ftilt loses some speed
		break;
	case AT_JAB:
		switch (window)
		{
			case 10: //jab 3 landing lag / cancel to air
				if (!free) set_window(11);
				else if (window_timer == window_end) set_state(was_parried ? PS_PRATFALL : PS_IDLE_AIR);
			case 8: case 9:
				if (!free) set_window(11);
				break;
		}
		break;
	case AT_UTILT:
		switch (window)
		{
			case 3:
				if (is_attack_pressed(DIR_UP)) set_window(5);
				break;
			case 7:
				if (!free) set_window(0);
				else if (window_timer == window_end) set_state(was_parried ? PS_PRATFALL : PS_IDLE_AIR);
				break;
		}
		break;
	case AT_DATTACK:
		if (!free) manual_landing_lag();
		if (window == 1 && window_timer == 1) sound_play(jump_sound);
		break;
	case AT_USTRONG:
		if (do_a_fast_fall) set_attack_value(attack, AG_LANDING_LAG, 10);
		if (window == 1 && window_timer == 1) set_attack_value(attack, AG_LANDING_LAG, 6);

		if (free) hsp = clamp(hsp, -3, 3); //hsp limiter
		if (window == window_last)
		{
			if (!free)
			{
				manual_landing_lag();
			}
			else if (window_timer == window_end - 1) set_state(was_parried ? PS_PRATFALL : PS_IDLE_AIR);
		}
		break;
	case AT_FSTRONG:
		if (window == 2 && strong_charge % 12 == 1) sound_play(sound_get("sfx_charge"), false, 0, 1, 0.9 + strong_charge/120);
		break;
	case AT_DSTRONG:
		//smear effect
		if (window >= 4 && window <= 5 || window == 6 && window_timer < window_end/4) add_blue_blur(x, y - 24);
		if (window == 4) force_vfx_depth = depth - 1;
		else force_vfx_depth = 0;

		if (smash_charging && strong_charge == 1 && !hitpause) sound_play(sound_get("sfx_charge_loop"), true);

		//correct tornado position and scale
		if (instance_exists(dstrong_tornado_hbox))
		{
			if (window < 6 && (dstrong_tornado_xscale[0] < x && spr_dir == 1 || dstrong_tornado_xscale[0] > x && spr_dir == -1)) dstrong_tornado_xscale[0] = x;
			dstrong_tornado_hbox.image_xscale = (point_distance(dstrong_tornado_xscale[0], 0, dstrong_tornado_xscale[1], 0) + dstrong_size_offset) / 200;
			dstrong_tornado_hbox.x = floor((dstrong_tornado_xscale[0] + dstrong_tornado_xscale[1]) / 2);
		}

		switch (window)
		{
			case 1: //var reset
				dstrong_tornado_xscale = [noone, noone];
				dstrong_loops = 0;
				for (var i = 0; i < 20; i ++) check_can_hit[i] = true;
				break;
			case 3: //initial speed + funny
				if (window_timer == window_end)
				{
					if (has_rune("F") && !playtest_active) //flicky down smash what
					{
						attack = AT_TAUNT;
						window = 5;
						window_timer = 0;
						hurtboxID.sprite_index = get_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE);

						//spawns 2 flickies on either side of him
						var hbox = create_hitbox(0, 2, x + 16, y);
						hbox.hsp = 3;
						var hbox = create_hitbox(0, 2, x - 16, y);
						hbox.hsp = -3;
					}
					else
					{
						create_hitbox(attack, 1, x, y);
						hsp = (dstrong_hsp[1]/dstrong_hsp[0]) * spr_dir;
					}
				}
				break;
			case 4: //spawn tornado + go backwards
				if (!was_parried && !instance_exists(dstrong_tornado_hbox) && //can only have one tornado at a time
					dstrong_tornado_xscale[0] != noone && dstrong_tornado_xscale[1] != noone &&
					!place_meeting(x, y, asset_get("plasma_field_obj")))
				{
					dstrong_tornado_hbox = create_hitbox(
						attack,
						2,
						floor((dstrong_tornado_xscale[0] + dstrong_tornado_xscale[1]) / 2),
						y + get_hitbox_value(attack, 2, HG_HITBOX_Y)
					);
					dstrong_tornado_hbox.length = dstrong_tornado_hbox.length + strong_charge/2; //duration changes based on charge
					move_cooldown[attack] = dstrong_tornado_hbox.length + 20; //can't dstrong if tornado is out
				}

				if (window_timer == window_end)
				{
					if (dstrong_tornado_xscale[0] == noone) dstrong_tornado_xscale[0] = x;
					if (dstrong_loops >= dstrong_loops_max)
					{
						destroy_hitboxes();
						set_window(6);
					}
					else hsp = -dstrong_hsp[1] * spr_dir;
				}
				break;
			case 5: //go forward / jump up
				if (window_timer == window_end)
				{
					if (dstrong_tornado_xscale[1] == noone) dstrong_tornado_xscale[1] = x;

					dstrong_loops ++;
					if (dstrong_loops <= dstrong_loops_max)
					{
						set_window(4);
						hsp = dstrong_hsp[1] * spr_dir;
					}
				}
				break;
			case 6: //endlag
				hsp = clamp(hsp, -2.5, 1); //hsp limiter
				if (window_timer > 2) manual_landing_lag();
				break;
		}
		break;
	case AT_NAIR: //it has insta shield parry as a rune, commented out
		//nair vfx
		if (window == 1)
		{
			if (window_timer == 1)
			{
				nair_fx_time = -1;
				play_nair_fx = false;
			}
			if (window_timer == 2) play_nair_fx = true;
		}
		if (play_nair_fx)
		{
			if (!hitpause) nair_fx_time += 1;
			if (nair_fx_time >= sprite_get_number(sprite_get("fx_nairshield"))-1) play_nair_fx = false;
		}
		else nair_fx_time = -1;

		//insta shield parry rune
		//if (window == 2 || window == 1 && window_timer == window_end) perfect_dodging = true;
		//else perfect_dodging = false;
		break;
	case AT_FAIR:
		can_wall_jump = true;

		if (window == 1)
		{
			hsp /= 1.2;
			if (!fast_falling) vsp = clamp(vsp, vsp, 0);

			if (window_timer == window_end)
			{
				hsp = 6 * spr_dir;
				hsp += abs(new_hsp/1.5) * spr_dir;
			}
		}

		if (window == 4)
		{
			fair_fx_on_landlag = true;
			if (window_timer == window_end) spawn_hit_fx(x, y, fx_fair);
		}
		else fair_fx_on_landlag = false;
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL: //homing attack
		can_fast_fall = (window >= 4);
		can_wall_jump = can_fast_fall;

		//homing attack clash
		if (instance_exists(nspec_clash_id) && !hitpause)
		{
			spr_dir = x < nspec_clash_id.x ? 1 : -1;
			nspec_clash_id = noone;
		}
		
		//smear effect (add visual for multihome rune too)
		if (window == 4 || window == 5 || window == 6 && window_timer < window_end/4 ||
			(window == 7 && 1 < window_timer || window == 9 && window_timer < window_end/4)) // && instance_exists(homing_target)
		{
			add_blue_blur(x, y - 32);
			if (!hitpause && window <= 7) airdash_stats[3] ++;
			else if (window > 7)
			{
				airdash_stats[0] = 0;
				airdash_stats[3] = -1;
			}

			airdash_stats[0] = 1;
		}
		else airdash_stats[3] = -1;

		switch (window)
		{
			case 1: //value setup
				if (!is_super) can_nspec = false; //super sonic has no cooldown on homing attacks :troll:
				
				homing_values = [0, 0];
				homing_dist = has_multihome_rune ? homing_dist_rune : homing_dist_set;

				homing_target = noone;
				prev_homing_target = noone;
				with (oPlayer) if ("nspec_reticle_time" in self) nspec_reticle_time = 0;
				reset_window_value(attack, 9, AG_WINDOW_TYPE);

				if (has_multihome_rune)
				{
					multihome_targets_temp = [];
					next_multihome_target = 0;

				}
				break
			case 4: case 5: case 6: //maybe should put sonic in_pratfall?
				can_wall_jump = true;

				if (!free)
				{
					landing_lag_time = get_attack_value(attack, AG_LANDING_LAG) * (!has_hit ? 1.5 : 1);
					set_state(PS_LANDING_LAG);
				}
				break;
			case 7:
				if (!hitpause) //movement
				{
					hsp = lengthdir_x(homing_values[0], homing_values[1]);
					vsp = lengthdir_y(homing_values[0], homing_values[1]);
				}
				
				if (has_hit) //hit detection
				{
					window ++;
					window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)-1;
				}

				if (has_multihome_rune && next_multihome_target < multihome_limit-1) fall_through = true;

				if (window_end > 0) //wall detection/whiff
				{
					if (point_direction(0, 0, hsp, vsp) > 200 && point_direction(0, 0, hsp, vsp) < 340 &&
						(!free || place_meeting(x + hsp, y + vsp - 16, asset_get("par_block"))))
					{
						set_window_value(attack, 9, AG_WINDOW_TYPE, 7);
						set_window(0);
					}
					else if (window_timer == window_end && !has_hit)
					{
						hsp /= 5;
						set_window(10);
					}
				}
				break;
			case 9:
				manual_landing_lag();
			case 8: case 10:
				destroy_hitboxes();

				if (window == 8 && !hitpause && has_multihome_rune)
				{
					if (next_multihome_target < multihome_limit-1 && multihome_grid[# 0, next_multihome_target+1] != undefined)
					{
						next_multihome_target ++;
						window = 3;
						window_timer = 0;
						has_hit = false;
					}
				}
				break;
		}
		break;
	case AT_USPECIAL: //rainbow ring toss
		can_fast_fall = false;

		switch (window)
		{
			case 1:
				if (free) can_uspec = false;
				if (window_timer == window_end)
				{
					hsp = (free ? 0 : -6) * spr_dir;
					vsp = free ? -10 : 0;

					if (can_spawn_trick_ring && (!instance_exists(artc_trickring) || artc_trickring.state == 2)) artc_trickring = instance_create(x, y-32, "obj_article1");
				}

				if (instance_exists(artc_trickring) && artc_trickring.state == 1) if (can_spawn_trick_ring)
				{
					artc_trickring.state = 2;
					artc_trickring.state_timer = 0;
				}

				break;
			case 3:
				if (window_timer == window_end)
				{
					if (free)
					{
						if (!can_spawn_trick_ring) set_state(PS_PRATFALL);
						can_spawn_trick_ring = false;
					}
				}
				break;
		}
		break;
	case AT_USPECIAL_2: //rainbow ring use
		can_wall_jump = true;
		can_nspec = true;
		can_fspec = true;
		if (vsp >= -2)
		{
			can_jump = true;
			can_attack = true;
			can_special = true;
			can_shield = true;

			if (window == 1) set_window(0);
		}
		trick_input_time = 1;
		
		if (state_timer == 1)
		{
			if (right_down) spr_dir = 1;
			if (left_down) spr_dir = -1;
		}

		if (!free) manual_landing_lag();
		break;
	case AT_FSPECIAL: //kick / rocket accel
		can_wall_jump = true;

		//smear effect
		if (window == 5 || window >= 8 && window <= 9)
		{
			add_blue_blur(x, y - 24);
			if (!hitpause) airdash_stats[3] ++;
			airdash_stats[2] = 16;

			if (window == 5) airdash_stats[0] = 1;
			else if (window == 8) airdash_stats[0] = 2;
		}
		else if (window == 10) airdash_stats[3] = -1;

		if (has_hit && window > 4 && window < 7) //jump cancel
		{
			if (jump_pressed)
			{
				if (free && djumps > 0)
				{
					set_state(PS_DOUBLE_JUMP);
					if (hitpause) old_vsp = -djump_speed;
					else vsp = -djump_speed;
				}
				else if (!free) set_state(PS_JUMPSQUAT);

				window_loops = 0;
				fspec_supercharge = fspec_supercharge_set;
				trick_input_time = 0;
				can_fspec = false;
				airdash_stats[3] = -1;
			}
			can_jump = true;
		}

		switch (window)
		{
			case 1:
				airdash_stats[3] = -1;
				break;
			case 2: //charge - weak
				var holding_foward = (right_down && spr_dir || left_down && -spr_dir);

				if (abs(hsp) < 2 + holding_foward) hsp = (2 + holding_foward) * spr_dir;
				else hsp = hsp;

				if (!special_down)
				{
					set_window(4);
					hsp += abs(new_hsp) * spr_dir * 0.5;
					fspec_speed = hsp;
				}
				break;
			case 3: //charge - strong
				var holding_foward = (right_down && spr_dir || left_down && -spr_dir);

				if (window_timer == 1 && window_loops == 0) sound_play(sound_get("sfx_charge"));

				if (abs(hsp) < 2 + holding_foward) hsp = (2 + holding_foward) * spr_dir;
				else hsp = hsp;
				
				if (!special_down || window_timer == window_end-1)
				{
					sound_play(sound_get("sfx_rocketaccel"));
					set_window(8);
					hsp = 12 * spr_dir;
					hsp += abs(new_hsp) * spr_dir * 0.6;
				}
				break;
			case 4: case 5: //kick speed
				if (!hitpause) hsp = fspec_speed;
				break;
			case 6: case 10: //finish move
				if (window_timer == window_end)
				{
					if (was_parried) set_state(free ? PS_PRATFALL : PS_PRATLAND)
					else
					{
						if (free) set_state(PS_IDLE_AIR);
						else if (spr_dir == -1 && left_down || spr_dir == 1 && right_down) set_state(PS_WALK);
					}
				}
				break;
			case 7:
				off_edge = false;
				if (!free && abs(hsp) > 0.5) hsp -= 0.5 * spr_dir;
				break;
			case 8: case 9: //rocket accel
				if (window == 8 && window_timer == 1) fast_falling = false; //cancel fastfall on the first frame

				if (fast_falling) vsp = fast_fall;
				else vsp = 0;
				break;
		}
		break;
	case AT_DSPECIAL: //bounce bracelet
		can_wall_jump = true;

		switch (window)
		{
			case 3:
				vsp = fast_fall/0.75 + ((fast_fall/0.75) * fast_falling);
				add_blue_blur(x, y - 32); //smear effect
				break;
			case 4: //landing window
				destroy_hitboxes();
				if (window_timer == 1 && !free) sound_play(asset_get("sfx_kragg_spike"), false, 0, 0.6)
				
				if (window_timer == window_end)
				{
					vsp = -jump_speed + 1;
					vsp -= clamp(dspec_jumps*1.2, 0, dspec_jumps_max);

					set_window_value(attack, 5, AG_WINDOW_LENGTH, 18 + abs(vsp));
				}
				break;
			case 5: //bounce
				if (special_pressed && down_down && window_timer < 10 && !has_hit) //bounce spam increases height
				{
					attack_end();
					window = 2;
					window_timer = 0;
					dspec_jumps ++;
				}
				else if (window_timer == window_end) move_cooldown[attack] = 20;
				break;
		}
		break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		break;
	case AT_TAUNT_2: //tricks
		if (state_timer > 2 && !free) manual_landing_lag();

		if (window == 1 && window_timer == window_end)
		{
			//boost gain setup
			if (combo_hits > 0 || trick_rune_active)
			{
				//visual stuff
				spawn_hit_fx(x, y - char_height / 1.75, 304);
				sound_play(alt_cur != 21 ? asset_get("mfx_star") : sound_get("sfx_snicktrick"));
				for (var i = 0; i < 7; i ++)
				{
					var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), 24);
					newdust.x = floor(x);
					newdust.y = floor(y);
					newdust.hsp = (random_func(i, 9, true) - 5) * 2;
					newdust.vsp = random_func(i + 7, 5, true) - 10 * 2;
					newdust.dust_fx = 24; //set the fx id
				}

				//counts as ending a combo with a trick (the trick rune refreshes the combo counter instead)
				if (!trick_rune_active) combo_timer = 0;
				else
				{
					if (trick_rune_count == 1)
					{
						combo_timer = 0;
						trick_combo_end = true;
						doing_trick_combo_chain = true;
					}

					comboing = true;
					combo_hits = trick_rune_count;
					combo_timer = trick_input_set;
					combo_timer_full = trick_input_set;
				}
				trick_combo_end = true;
				boost_trick_delay = boost_trick_delay_set;
			}

            //var setting - will set to the max time to add more time for tricks using the trick rune
            if (!trick_rune_active) trick_input_time = 0;
            else trick_input_time = trick_input_set;

			if (has_blast) blast_cur += trick_rune_active ? 5 : 10;
		}

		if (window != window_last) can_fast_fall = false;
		else
		{
			if (!trick_rune_active) prev_trick = -1;
			can_fast_fall = true;
		}
		break;
	case AT_EXTRA_1: //tails partner action
		if (window == 1)
		{
			if (window_timer == 0)
			{
				homing_target = (check_homing_range() <= 0) ? noone : check_homing_range();

				homing_values[0] = 20;
				if (homing_target != noone) homing_values[1] = point_direction(x, y-char_height/1.75, homing_target.x, homing_target.y-homing_target.char_height/1.75)
				else homing_values[1] = spr_dir == 1 ? 315 : 225;
			}

			if (!hitpause) //movement
			{
				hsp = lengthdir_x(homing_values[0], homing_values[1]);
				vsp = lengthdir_y(homing_values[0], homing_values[1]);
			}
			
			if (has_hit) //hit detection
			{
				window ++;
				window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)-1;
			}

			//wall detection/whiff
			if (!free || place_meeting(x + hsp, y + vsp - 16, asset_get("par_block")))
			{
				hsp = 0;
				set_window(0);
				spawn_hit_fx(x, y, hit_fx_create(sprite_get("fx_knux_dunk"), 24));
				sound_play(asset_get("sfx_flare_razer"), false, 0, 1, 0.8)
				sound_play(asset_get("sfx_zetter_downb"), false, 0, 0.8, 0.6)
			}
			else if (window_timer == window_end && !has_hit && window_loops == get_window_value(attack, window, AG_WINDOW_LOOP_TIMES))
			{
				hsp /= 5;
				vsp = -1;
				set_state(PS_IDLE_AIR);
			}

			//sprite rotation
			if (!free)
			{
				spr_angle = 270 * spr_dir;
			}
			else if (place_meeting(x + hsp, y + vsp - 16, asset_get("par_block")))
			{
				spr_angle = 180 * (spr_dir == -1);
				draw_x = 16;
			}
			else spr_angle = homing_values[1] - 180 * (spr_dir == -1);
		}
		if (window == 2 && window_timer == window_end)
		{
			hsp /= 5;
			vsp = -7;
			set_state(PS_IDLE_AIR);
		}
		break;
	case AT_DSPECIAL_2: //rune H lightspeed charge
		if (window == 1 && window_timer == window_end) sound_play(sound_get("sfx_charge_lightspeed_start"))
		if (window == 2)
		{
			if (state_timer == 48) sound_play(sound_get("sfx_charge_lightspeed_loop"), true);

			if (!special_down || boost_mode)
			{
				sound_stop(sound_get("sfx_charge_lightspeed_start"));
				sound_stop(sound_get("sfx_charge_lightspeed_loop"));
				set_window(0);
			}
			else if (special_down) //maybe it can be a ring magnet for super sonic idk
			{
				if (state_timer % 4 == 0)
				{
					var pos_angle = random_func(9, 30, true) * 12;
					var pos_dist = 100 + random_func(11, 10, true)*10;
					var fx = spawn_hit_fx(
						x + lengthdir_x(pos_dist, pos_angle),
						y - 32 + lengthdir_y(pos_dist, pos_angle),
						fx_runeD_charge
					);
				}

				if (!has_superform) boost_cur ++;
				else
				{
					var detected_ring = collision_circle(x, y - 16, 200, pHitBox, false, true);
					var magnet_speed = 15;

					with (pHitBox) if (attack == 0 && hbox_num == 1 && player_id.is_bar_sonic)
					{
						if (self == detected_ring)
						{
							hsp = lengthdir_x(magnet_speed, point_direction(x, y, other.x, other.y - 16));
							vsp = lengthdir_y(magnet_speed, point_direction(x, y, other.x, other.y - 16));
							hitbox_timer = ring_collect_time[0];
							grounds = 1;
							walls = 1;
							ring_player = other.player;
							hud_owner_col = get_match_setting(SET_TEAMS) ? get_player_hud_color(ring_player) : hud_col_sel[ring_player];
							ring_visible = true;
						}
						else
						{
							orig_grounds = grounds;
							orig_walls = walls;
						}
					}
				}
			}

		}
		break;
	case 49: //final smash - sonic overdrive
		super_armor = true;
		can_move = false;

		if ("fs_char_initialized" in self)
		{
			fs_charge = 0;
			fs_force_fs = false;
		}

		if (window == 4 && window_timer == 1) sound_play(sound_get("sfx_fs_woosh_multi"));

		if (window == 5)
		{
			//vfx stuff
			if (!hitpause)
			{
				var fx = spawn_hit_fx(x, y - 32, fx_airdash_trail);
				fx.draw_angle = point_direction(x, y, prev_fs_x, prev_fs_y);

				if (state_timer % 3 == 0)
				{
					var fx = spawn_hit_fx(x, y - 32, fx_fs_elecring);
					fx.draw_angle = point_direction(x, y, prev_fs_x, prev_fs_y);
					fx.spr_dir = random_func(6, 2, true) == 1 ? 1 : -1;
				}
			}

			//set previous position so the vfx know how to be drawn
			prev_fs_x = x;
			prev_fs_y = y;

			//check who needs to stay stunned
			with (pHitBox) if (player == other.player && attack == 49 && hbox_num == 1) for (var i = 0; i < 20; i++) other.fs_trapped_player[i] = !can_hit[i];
			with (oPlayer) if (other.fs_trapped_player[player])
			{
				hitstop = 2;
				hitstop_full = 60;
				hitpause = true;
			}

			if (state_timer >= fs_timer_offset + fs_anim_pos[array_length(fs_anim_pos)-1][4]) //end movement sequence
			{
				x = start_fs_x;
				y = start_fs_y-1;
				set_window(0);
				destroy_hitboxes();
				for (var i = 0; i < 20; i++) fs_trapped_player[i] = 0;
				shake_camera(8, 14);
				sound_play(asset_get("sfx_abyss_explosion"));
				fs_blast[0] = fs_bg_effect.x;
				fs_blast[1] = fs_bg_effect.y;
				fs_blast[4] = fs_blast[5]; //timer set
			}
			else //movement itself
			{
				hsp = 0;
				vsp = 0;

				/*
				if (!hitpause) switch (state_timer) //playing sounds in these frames
				{
					//case 51: case 70: case 80:
					case 95: case 107: case 122: case 136: case 160: case 175: case 185: case 202:
						var pitch = (random_func(8, 10, true))/10 + 1.5
						sound_play(sound_get("sfx_fs_woosh"), false, 0, 0.4, pitch);
						break;
				}
				*/
				
				for (var i = 0; i < array_length(fs_anim_pos)-1; i ++)
				{
					if (state_timer >= fs_timer_offset + fs_anim_pos[i][4] && state_timer < fs_timer_offset + fs_anim_pos[i+1][4])
					{
						var offset = fs_timer_offset + fs_anim_pos[i][4];

						//x tween
						x = set_tween (
							start_fs_x + fs_anim_pos[i][0] * spr_dir, //start pos
							start_fs_x + fs_anim_pos[i+1][0] * spr_dir, //end pos
							fs_anim_pos[i+1][2], //ease type
							0, //start time
							state_timer - offset, //current time
							fs_anim_pos[i+1][4] - fs_anim_pos[i][4], //finish time
							(fs_anim_pos[i][2] == "in_back" || fs_anim_pos[i][2] == "out_back" || fs_anim_pos[i][2] == "in_out_back") ? fs_anim_pos[i][5] : 0
						);

						//y tween
						y = set_tween (
							start_fs_y + fs_anim_pos[i][1], //start pos
							start_fs_y + fs_anim_pos[i+1][1], //end pos
							fs_anim_pos[i+1][3], //ease type
							0, //start time
							state_timer - offset, //current time
							fs_anim_pos[i+1][4] - fs_anim_pos[i][4], //finish time
							(fs_anim_pos[i][3] == "in_back" || fs_anim_pos[i][3] == "out_back" || fs_anim_pos[i][3] == "in_out_back") ? fs_anim_pos[i][6] : 0
						);
					}
				}
			}
		}
		else if (window < 5)
		{
			//lightspeed particle effects
			if (state_timer % 3 == 0 && window < 4) //red
			{
				var pos_angle = random_func(9, 30, true) * 12;
				var pos_dist = 100 + random_func(11, 10, true)*10;
				var fx = spawn_hit_fx(
					x + lengthdir_x(pos_dist, pos_angle),
					y - 32 + lengthdir_y(pos_dist, pos_angle),
					fx_fs_charge
				);
			}
			if (state_timer % 5 == 0) //light blue
			{
				var pos_angle = random_func(9, 30, true) * 12;
				var pos_dist = 100 + random_func(12, 10, true)*10;
				var fx = spawn_hit_fx(
					x + lengthdir_x(pos_dist, pos_angle),
					y - 32 + lengthdir_y(pos_dist, pos_angle),
					fx_runeD_charge
				);
			}

			start_fs_x = x - fs_anim_pos[i][0] * spr_dir;
			start_fs_y = y - fs_anim_pos[i][1];
			fs_timer_offset = state_timer;

			if (instance_exists(fs_bg_effect)) fs_bg_effect.x = start_fs_x;
		}

		//reset vars stuff
		if (window == window_last && window_timer == window_end - 1)
		{
			blast_cur = 0;
			blast_post_cur = blast_max;
			blast_post_timer = blast_post_deplete_time;
			blast_meter_ready_img = 1;
			can_teamblast = false;
		}
		break;
	case 48: //super sonic transformation
		vsp = clamp(vsp, -abs(vsp), 0);
		hsp /= 1.1;
		can_move = false;

		if (window == 1)
		{
			super_glow = 0;
			if ("super_form_active" not in self && !uses_super_colors) super_col_lerp_time = 0;

			if (window_timer == 1)
			{
				spawn_hit_fx(x, y, fx_emeralds);
				sound_play(sound_get("sfx_emeralds_spawn"));
				sound_play(sound_get("sfx_emeralds_idle"), true);
			}
		}
		if (window == 2 && window_timer == window_end) spawn_hit_fx(x, y-32, fx_trickring_circspark);
		if (window == 4)
		{
			super_col_lerp_time ++;
			sound_stop(sound_get("sfx_emeralds_idle"));

			var fx = spawn_hit_fx(
				x + (random_func(1, 8, true) - 4) * 8,
				y - random_func(2, 8, true) * 8,
				fx_sparkle
			);
			fx.hsp = (random_func(1, 8, true) - 4) * 1.5;
			fx.vsp = (random_func(2, 8, true) - 4) * -1.5;
		}

		if (super_transform_time >= 78)
		{
			uses_super_colors = set_up_super_colors || "super_form_active" in self && super_form_active;
			if (!set_up_super_colors &&
				("super_form_active" not in self || //regular super sonic rune
				(super_form_active && super_col_lerp_time > super_col_lerp_time_max || //chaos emeralds if sonic used them already
				!super_form_active && super_col_lerp_time <= super_col_lerp_time_max) ) ) //chaos emeralds if he hasn't used them yet
			{
				is_super = true;
			}
		}

		if (set_up_super_colors) //repurposed as the intro
		{
			if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
			if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		}
		break;
}


//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;

	//we need this so if we put an "illegal" value it will not crash the game
	window_num = window;

	//speed resetting - horizontally
	switch (get_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE))
	{
		case 0: hsp += get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //adds speed
		case 1: case 2: hsp = get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //sets speed for the first frame/the entire window
	}

	//speed resetting - vertically
	switch (get_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE))
	{
		case 0: vsp += get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //adds speed
		case 1: case 2: vsp = get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //sets speed for the first frame/the entire window
	}
}

#define manual_landing_lag
{
	if (!was_parried)
	{
		if (!free)
		{
			landing_lag_time = get_attack_value(attack, AG_LANDING_LAG) * (!has_hit ? 1.5 : 1);
			set_state(PS_LANDING_LAG);
		}
		else if (window_timer == window_end) set_state(get_window_value(attack, window, AG_WINDOW_TYPE) == 7 ? PS_PRATFALL : PS_IDLE_AIR)
	}
	else set_state(free ? PS_PRATFALL : PS_PRATLAND);
}

#define add_blue_blur(pos_x, pos_y)
{
	if (!hitpause && (airdash_stats[3] <= -1 || airdash_stats[3] % 3 == 0))
	{
		var dash_fx = spawn_hit_fx(pos_x, pos_y, fx_airdash_trail);
		dash_fx.draw_angle = point_direction(x, y, x + hsp, y + vsp);
	}
}
#define check_homing_range
{
	var closest_distance = 9999999999999;
	var closest_player = noone;

	with (oPlayer) if (get_player_team(player) != get_player_team(other.player))
	{
		var temp_angle = point_direction(other.x, other.y-other.char_height/1.75, x, y-char_height/1.75);

		if (distance_to_object(other) < other.homing_dist && distance_to_object(other) < closest_distance &&
			(other.spr_dir == 1 && (temp_angle < 90 - other.homing_range[0] || temp_angle > 270 + other.homing_range[1]) ||
			other.spr_dir == -1 && 90 + other.homing_range[0] < temp_angle && 270 - other.homing_range[1] > temp_angle))
		{
			closest_distance = distance_to_object(other);
			closest_player = self;
		}
	}

	with (closest_player)
	{
		if (state != PS_DEAD && state != PS_RESPAWN && !invincible) //!hurtboxID.dodging && 
		{
			return closest_player;
		}
	}
}


#define set_fs_speed(add_hsp, add_vsp)
{
	hsp += add_hsp * spr_dir;
	vsp += add_vsp;
}
#define set_tween
{
	var start = argument[0];
	var finish = argument[1];
	var easetype = argument[2];
	var start_time = argument[3];
	var cur_time = argument[4];
	var end_time = argument[5];

	switch (easetype)
	{
		case "linear": return ease_linear(start, finish, cur_time - start_time, end_time); break;
		case "in_circ": return ease_circIn(start, finish, cur_time - start_time, end_time); break;
		case "out_circ": return ease_circOut(start, finish, cur_time - start_time, end_time); break;
		case "in_out_circ": return ease_circInOut(start, finish, cur_time - start_time, end_time); break;
		case "in_cube": return ease_cubeIn(start, finish, cur_time - start_time, end_time); break;
		case "out_cube": return ease_cubeOut(start, finish, cur_time - start_time, end_time); break;
		case "in_out_cube": return ease_cubeInOut(start, finish, cur_time - start_time, end_time); break;
		case "in_expo": return ease_expoIn(start, finish, cur_time - start_time, end_time); break;
		case "out_expo": return ease_expoOut(start, finish, cur_time - start_time, end_time); break;
		case "in_out_expo": return ease_expoInOut(start, finish, cur_time - start_time, end_time); break;
		case "in_quad": return ease_quadIn(start, finish, cur_time - start_time, end_time); break;
		case "out_quad": return ease_quadOut(start, finish, cur_time - start_time, end_time); break;
		case "in_out_quad": return ease_quadInOut(start, finish, cur_time - start_time, end_time); break;
		case "in_quart": return ease_quartIn(start, finish, cur_time - start_time, end_time); break;
		case "out_quart": return ease_quartOut(start, finish, cur_time - start_time, end_time); break;
		case "in_out_quart": return ease_quartInOut(start, finish, cur_time - start_time, end_time); break;
		case "in_sine": return ease_sineIn(start, finish, cur_time - start_time, end_time); break;
		case "out_sine": return ease_sineOut(start, finish, cur_time - start_time, end_time); break;
		case "in_out_sine": return ease_sineInOut(start, finish, cur_time - start_time, end_time); break;
		case "in_back": return ease_backIn(start, finish, cur_time - start_time, end_time, overshoot); break;
		case "out_back": return ease_backOut(start, finish, cur_time - start_time, end_time, overshoot); break;
		case "in_out_back": return ease_backInOut(start, finish, cur_time - start_time, end_time, overshoot); break;
	}

	var overshoot = (easetype == "in_back" || easetype == "out_back" || easetype == "in_out_back") ? argument[6] : 0;
}