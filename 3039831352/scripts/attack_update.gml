//attack_update.gml

//B-reverse - it allows the character to turn in_while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL && has_dropdash_rune) trigger_b_reverse();

custom_attack_grid();

//recording the last attack
if (state_timer == 1)
{
	if (attack != AT_FSPECIAL) window_loops = 0; //NOTE: not resetting the window loops will make the "supercharge tech" work a lot more easily
	prev_attack[1] = prev_attack[0]; //the prev attack
	prev_attack[0] = attack;
}
if (window == window_last && abs(new_hsp) > min_dash_spd && !free) new_hsp = min_dash_spd * sign(new_hsp); //add speed limiter to the end of attacks

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_FTILT:
		if (window == 3 && window_timer == 1) new_hsp = hsp * 0.6; //using ftilt loses some speed
		
		if (window == 1 && window_timer == 1)
		{
			var min_spd = get_window_value(attack, window, AG_WINDOW_HSPEED);
			var cur_spd = abs(hsp) + ground_friction;
			var endlag_min = 13;

			set_window_value(
				attack,
				window_last,
				AG_WINDOW_LENGTH,
				floor(clamp(cur_spd - min_spd + endlag_min, endlag_min, 20))
			);
		}
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
			case 1: //clears button buffer just in case
				if (window_timer == 1) clear_button_buffer(PC_ATTACK_PRESSED);
				break;
			case 3: //combo input
				if (is_attack_pressed(DIR_UP) || is_attack_pressed(DIR_NONE)) set_window(5);
				break;
			case 7:
				if (!free) set_window(0);
				else if (window_timer == window_end) set_state(was_parried ? PS_PRATFALL : PS_IDLE_AIR);
				break;
		}
		break;
	case AT_DATTACK:
		if (!free) manual_landing_lag();
		if (window == 1 && window_timer == 1 && !hitpause) sound_play(jump_sound);
		break;
	case AT_USTRONG:
		if (do_a_fast_fall) set_attack_value(attack, AG_LANDING_LAG, 10);
		if (window == 1 && window_timer == 1) set_attack_value(attack, AG_LANDING_LAG, 6);

		if (free && window >= 3) hsp = clamp(hsp, -3, 3); //hsp limiter
		if (window == window_last)
		{
			if (!free) manual_landing_lag();
			else if (window_timer == window_end - 1) set_state(was_parried ? PS_PRATFALL : PS_IDLE_AIR);
		}
		break;
	case AT_FSTRONG:
		if (window == 2 && strong_charge % 12 == 1) sound_play(sound_get("sfx_charge"), false, 0, 1, 0.9 + strong_charge/120);
		break;
	case AT_DSTRONG:
		//smear effect
		if ((window >= 4 && window <= 5 && get_gameplay_time() % 2 == 0 || window == 6 && window_timer < window_end/4  && get_gameplay_time() % 3 == 0)) add_blue_blur(x, y - 24);
		if (window == 4) force_vfx_depth = depth - 1;
		else force_vfx_depth = 0;

		if (smash_charging && strong_charge == 1 && !hitpause) cur_loop_sound = sound_play(sound_get("sfx_charge_loop"), true);

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

				dstrong_start_x = x;
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
						temp_hbox = create_hitbox(attack, 1, x, y);
						hsp = (dstrong_hsp[1]/dstrong_hsp[0]) * spr_dir;
						if (has_boost_atk_rune && (boost_mode || is_super)) hsp /= boost_atk_spd_mult;
						sound_play(sound_get("sfx_bluetornado_start"));
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
					//dstrong_tornado_hbox.length = dstrong_tornado_hbox.length + strong_charge/2; //duration changes based on charge
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
					else
					{
						hsp = -dstrong_hsp[1] * spr_dir;
						if (has_boost_atk_rune && (boost_mode || is_super)) hsp /= boost_atk_spd_mult;
					}
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
						if (has_boost_atk_rune && (boost_mode || is_super)) hsp /= boost_atk_spd_mult;
					}
				}
				break;
			case 6: //endlag
				hsp = sign(spr_dir == 1) ? clamp(hsp, -2.5, 1) : clamp(hsp, -1, 2.5); //hsp limiter
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

		if (has_superform)
		{
			if (is_super)
			{
				set_hitbox_value(attack, 1, HG_ANGLE, 20);
				set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER, .3);
					
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
			}
			else
			{
				reset_hitbox_value(attack, 1, HG_ANGLE); // 20
				reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK); // 8
				reset_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER); // .3
			}
		}
		// if (window == 1)
		// {
		// 	hsp /= 1.2;
		// 	if (!fast_falling) vsp = clamp(vsp, vsp, 0);

		// 	if (window_timer == window_end)
		// 	{
		// 		hsp = 6 * spr_dir;
		// 		hsp += abs(new_hsp/1.5) * spr_dir;
		// 	}
		// }

		/*
		if (window == 2)
		{
			fair_fx_on_landlag = true;
			if (window_timer == window_end) spawn_hit_fx(x, y, fx_fair);
		}
		else fair_fx_on_landlag = false;
		*/
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
			window == 7 && (window_timer > 0 || window_loops > 1) || window == 9 && window_timer < window_end/4) // && instance_exists(homing_target)
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
				if (window_timer == window_end - 5)
				{
					spawn_hit_fx(x, y - 40, fx_windhit[0]);
					sound_play(asset_get("sfx_spin"))
				}

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
				break;
			case 2:
				fall_through = has_quickhome_rune || has_multihome_rune; // homing attack through plats rune
				break;
			case 3:
				fall_through = has_quickhome_rune || has_multihome_rune; // homing attack through plats rune
				if (window_timer == window_end)
				{
					reset_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED);
					if (is_super) // increase nspec speed if super sonic is already moving
					{
						var nspec_speed_max = clamp(
							max(get_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED), abs(hsp) + 3),
							get_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED),
							max_dash_spd
						);
						set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, nspec_speed_max);
					}
				}
				break;
			case 4: case 5: case 6: //maybe should put sonic in_pratfall?
				can_wall_jump = true;

				if (!free)
				{
					landing_lag_time = get_attack_value(attack, AG_LANDING_LAG) * (!has_hit ? 1.5 : 1);
					set_state(PS_LANDING_LAG);
				}
				else
				{
					can_attack = true;
					if (attack_pressed)
					{
						airdash_stats[0] = 0;
						airdash_stats[3] = -1;
					}
				}
				break;
			case 7: //homing attack
				fall_through = has_quickhome_rune || has_multihome_rune; // homing attack through plats rune
			
				if (!hitpause) //movement
				{
					if (!has_multihome_rune)
					{
						var dir = point_direction(x, y-char_height/1.75, homing_target.x, homing_target.y-homing_target.char_height/1.75);
						homing_values[1] += sin(degtorad(dir - homing_values[1])) * 10;
						// if(x > homing_target.x && spr_dir == 1 || x < homing_target.x && spr_dir == -1) spr_dir *= -1;
					}
					else
					{
						var next_target = multihome_grid[# 0, next_multihome_target];
						var dir = point_direction(x, y-char_height/1.75, next_target.x, next_target.y-next_target.char_height/1.75);
						homing_values[1] += sin(degtorad(dir - homing_values[1])) * 10;
						// if(x > next_target.x && spr_dir == 1 || x < next_target.x && spr_dir == -1) spr_dir *= -1;
					}
					hsp = lengthdir_x(homing_values[0], homing_values[1]);
					vsp = lengthdir_y(homing_values[0], homing_values[1]);
				}
				
				if (has_hit) //hit detection
				{
					window ++;
					window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)-1;
				}

				if (has_multihome_rune && next_multihome_target < multihome_limit-1) fall_through = true;

				//ground detection/whiff
				if (point_direction(0, 0, hsp, vsp) > 200 && point_direction(0, 0, hsp, vsp) < 340 &&
					(!free || place_meeting(x + hsp, y + vsp - 16, asset_get("par_block"))))
				{
					set_window_value(attack, 9, AG_WINDOW_TYPE, 7);
					set_window(0);
				}
				else if (place_meeting(x + 20 * sign(hsp), y, asset_get("par_block")) && vsp < 0)
				{
					set_window_value(attack, 9, AG_WINDOW_TYPE, 7);
					x = x + hsp*2;
					set_window(0);
				}
				else if (was_parried) set_window(10);
				else if (window_timer == window_end-1 && window_loops == get_window_value(attack, window, AG_WINDOW_LOOP_TIMES)-1 && !has_hit)
				{
					hsp /= 5;
					if (has_multihome_rune && next_multihome_target < multihome_limit-1 && multihome_grid[# 0, next_multihome_target+1] != undefined) 
					{
						next_multihome_target ++;
						window = 3;
						window_timer = 0;
						has_hit = false;
						y -= 20;
					}
					else set_window(10);
				}
				
				break;
			case 9:
				fall_through = has_quickhome_rune;
				manual_landing_lag();
			case 8: case 10:
				fall_through = has_quickhome_rune;
				destroy_hitboxes();

				if (window == 8 && !hitpause && has_multihome_rune)
				{
					if (next_multihome_target < multihome_limit-1 && multihome_grid[# 0, next_multihome_target+1] != undefined)
					{
						next_multihome_target ++;
						window = 3;
						window_timer = 0;
						has_hit = false;
						y -= 20;
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
				if (window_timer == window_end)
				{
					if (!joy_pad_idle) uspec_air_throw_hsp = abs(hsp) * spr_dir; //hsp
					else uspec_air_throw_hsp = 0;
					hsp = (free ? 0 : -6) * spr_dir;
					vsp = free ? -10 : 0;

					if (can_spawn_trick_ring && (!instance_exists(artc_trickring) || artc_trickring.state == 2 || artc_trickring.trick_ring_player != player))
					{
						artc_trickring = instance_create(x, y-32, "obj_article1");
					}
				}
				if (instance_exists(artc_trickring) && artc_trickring.state == 1 && can_spawn_trick_ring)
				{
					with (artc_trickring)
					{
						if (trick_ring_player == other.player)
						{
							state = 2;
							state_timer = 0;
							visible = true;
						}
					}
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
		if (window == 5 || window == 8 && window_loops > 0 || window == 9 || window >= 12)
		{
			add_blue_blur(x, y - 24);
			if (!hitpause) airdash_stats[3] ++;
			airdash_stats[2] = 16;

			if (window == 5) airdash_stats[0] = 1;
			else if (window == 8) airdash_stats[0] = 2;
		}
		else if (window == 10 || window == 6) airdash_stats[3] = -1;
		if (has_hit && window > 4 && window < 7 && window < 12) //jump cancel
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

		//main attack logic
		switch (window)
		{
			case 1:
				airdash_stats[3] = -1;
				set_window_value(attack, 2, AG_WINDOW_LOOP_TIMES, is_super ? 1 : 2);
				break;
			case 2: //charge - weak
				var holding_foward = (right_down && spr_dir || left_down && -spr_dir);

				if (abs(hsp) < 2 + holding_foward) hsp = (2 + holding_foward) * spr_dir;
				else hsp = hsp;

				if (!special_down && !special_pressed)
				{
					set_window(4);
					hsp += abs(new_hsp) * spr_dir * 0.5;
					fspec_speed = hsp;
				}
				break;
			case 3: //charge - strong
				var holding_foward = (right_down && spr_dir || left_down && -spr_dir);

				if (window_timer == 1 && window_loops == 0) sound_play(sound_get("sfx_charge"));

				if (!dropdash_commit && abs(hsp) < 2 + holding_foward) hsp = (2 + holding_foward) * spr_dir;
				else hsp = hsp;
				
				if (!special_down || dropdash_commit || window_timer == window_end-1 && window_loops >= get_window_value(attack, window, AG_WINDOW_LOOP_TIMES)-1)
				{
					sound_play(sound_get("sfx_rocketaccel"));
					set_window(8);
					hsp = 12 * spr_dir;
					hsp += abs(new_hsp) * spr_dir * 0.6;
					dropdash_commit = false;
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
				if (fast_falling && !hitpause) vsp = fast_fall;
				else vsp = 0;
				grav = 0;
				can_move = false;
				break;
			case 7: case 11:
				new_hsp = 0;
				iasa_script();
				break;
		}

		//beam clash compatibility
		if ((window == 8 || window == 9) && window_timer == 0 && window_loops == 0 && !hitpause) create_hitbox(attack, 4, x, y); //spawn clash checker
		if (!hitpause) switch (window)
		{
			case 1: //var reset
				beam_clash_buddy = noone;
				beam_clash_timer = 0;
				beam_length = 0;
				beam_juice = 30;
				break;
			case 8: case 9: //hitbox window
				with (pHitBox) if (player_id == other && attack == AT_FSPECIAL && hbox_num == 4) other.clashbox = self; //detects the hitbox for the clash
				if (beam_clash_buddy == noone && instance_exists(clashbox))
				{
					var me = self;
					//check if someone is doing a beam and the clash hitbox exists
					with (oPlayer) if ("has_goku_beam" in self && doing_goku_beam && (beam_angle == 0 || beam_angle == 180))
					{
						var him = self;

						//detect clash
						with (beam_newest_hbox) if (place_meeting(x, y, me.clashbox))
						{
							//sets up variables
							me.clash_x = x - 72 * me.spr_dir; 	//sets up the positions to snap sonic to
							me.clash_y = y + 24;				//making it look more correct
							me.beam_clash_buddy = him;
							me.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max); //get the higher value of the two
							me.doing_goku_beam = true;

							him.beam_clash_buddy = me;
							him.beam_juice = max(him.beam_juice, 30);
							him.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max); //get the higher value of the two
							him.doing_goku_beam = true;

							with (me) //initiate beam clash
							{
								sound_play(sfx_beam_clash);

								//creates hitbox for the beam clash
								destroy_hitboxes();
								clashbox = create_hitbox(attack, 4, x, y);

								set_window(12);
							}
						}
					}
				}
				break;
			case 12: case 13: case 14: //beam clash windows (sonic has 3 variants for the animation based on how well he's doing)
				with (pHitBox) if (player_id == other && attack == AT_FSPECIAL && hbox_num == 4) other.clashbox = self; //detects the hitbox for the clash (again)

				//sonic movement logic, this is how sonic actually moves forward
				can_move = false;
				x = lerp(x, clash_x + (beam_length - 8) * spr_dir, 0.5);
				y = lerp(y, clash_y, 0.5);
				vsp = 0;
				grav = 0;

				if (beam_clash_buddy != noone) beam_clash_logic();
				else
				{
					destroy_hitboxes();
					if (clash_winner == self) //sonic won, restart the attack
					{
						hsp = 16 * spr_dir;
						set_window(8);
					}
					else if (clash_winner == noone) //stalemate, sonic jumps off the beam
					{
						set_attack(AT_NSPECIAL);
						hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE);
						set_window(9);
						sound_play(sound_get("sfx_jump"));
					}
					else set_window(10); //sonic lost, he goes to endlag which gaurentees the beam hitting him
				}
				break;
		}
		break;
	case AT_DSPECIAL: //bounce bracelet
		can_wall_jump = true;
		if (fast_falling) dspec_fastfall = true;

		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					sound_play(jump_sound);
					if (vsp > 0) vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
				}
				can_fast_fall = false;
				break;
			case 2:
				can_fast_fall = true;
				break;
			case 3:
				if (!hitpause) vsp = fast_fall/0.75 + ((fast_fall/0.75) * fast_falling);
				add_blue_blur(x, y - 32); //smear effect
				break;
			case 4: //landing window
				destroy_hitboxes();
				if (window_timer == 1 && !free) 
				{
					if (has_dropdash_rune && special_down) dropdash_commit = true;
					else sound_play(asset_get("sfx_kragg_spike"), false, 0, 0.6);
				}
				
				if (dropdash_commit) // perform rocket accel out of dspecial
				{
					set_attack(AT_FSPECIAL);
					window = 3;
					window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
					state_timer = 1;
					dropdash_commit = true;
					new_hsp = max(abs(new_hsp), 3 + 4 * dspec_fastfall + 2 * boost_mode + 4 * is_super) * sign(new_hsp);
					if (new_hsp == 0) new_hsp = (3 + 4 * dspec_fastfall + 2 * boost_mode + 4 * is_super) * spr_dir;
				}
				
				if (window_timer == window_end)
				{
					vsp = -jump_speed + 1;
					vsp -= clamp(dspec_jumps*1.2, 0, dspec_jumps_max);

					set_window_value(attack, 5, AG_WINDOW_LENGTH, 18 + abs(vsp));
				}
				break;
			case 5: //bounce
				if (special_pressed && down_down && window_timer < 10 && !has_hit && !was_parried) //bounce spam increases height
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
	case AT_TAUNT:
		if (window == 1 && window_timer == 1 && taunt_grace_timer > 0)
		{
			do_trick();
			taunt_grace_timer = 0;
			set_window(6);
		}
		break;
	case AT_TAUNT_2: //tricks
		if (state_timer > 2 && !free) manual_landing_lag();

		if (has_rune("I") && (!trick_rune_active || trick_rune_count == 1)) //directional boosting tricks rune
		{
			if (window == 1)
			{
				if ("sonic_mushroom_trick" not in self || !sonic_mushroom_trick)
				{
					hsp = 0;
					vsp = 0;
				}

				if (window_timer == window_end)
				{
					var boost = 13;
					switch (cur_trick)
					{
						case 0: //neutral
							hsp = 0;
							vsp = -8;
							break;
						case 1: //up
							hsp = 0;
							vsp = -boost;
							break;
						case 2: //right
							hsp = boost;
							vsp = -8;
							break;
						case 3: //down
							hsp = 0;
							vsp = boost;
							break;
						case 4: //left
							hsp = -boost;
							vsp = -8;
							break;
					}
				}
			}
		}
		if (has_rune("J") && window > 1) //attack cancel
		{
			can_attack = true;
			can_special = true;
			can_strong = true;
			can_ustrong = true;
		}

		if (window == 1 && window_timer == window_end)
		{
			//boost gain setup
			do_trick();

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

		//let sonic cancel his attacks like the rainbow ring trick compatibility
		if ("sonic_mushroom_trick" in self && sonic_mushroom_trick && state_timer > 2) iasa_script();
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
			if (state_timer == 48) cur_loop_sound = sound_play(sound_get("sfx_charge_lightspeed_loop"), true);

			if (!special_down || boost_mode)
			{
				sound_stop(cur_loop_sound);
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

				if (!has_superform) boost_cur = min(boost_cur + 2, boost_max);
				else
				{
					var detected_ring = collision_circle(x, y - 16, 300, pHitBox, false, true);
					var magnet_speed = 15;
					
					if (detected_ring == noone) 
					{
						detected_ring = create_hitbox(
							0, 1,
							floor(x + lengthdir_x(300, random_func_2(get_gameplay_time()%200, 360, true))),
							floor(y - char_height / 1.75 + lengthdir_y(300, random_func_2(get_gameplay_time()%200, 360, true)))
						);
						detected_ring.ring_player = player;
						detected_ring.ring_collect_time = [20, 50];
						detected_ring.hud_col_sel = [$ffffff, $241ced, $efb700, $b1a3ff, $1de6a8, $808080];
					}

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
			//stop enemies in place
			with (oPlayer) if (player != other.player)
			{
				if (!hitpause)
				{
					old_hsp = hsp;
					old_vsp = vsp;
				}
				hitpause = true;
				hitstop = 2;
				hitstop_full = 2;
			}

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
				cur_loop_sound = sound_play(sound_get("sfx_emeralds_idle"), true);
			}
		}
		if (window == 2 && window_timer == window_end) spawn_hit_fx(x, y-32, fx_trickring_circspark);
		if (window == 4 || window == 5 && window_timer == 0)
		{
			if (!secret_active) super_col_lerp_time ++;
			sound_stop(cur_loop_sound);

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
			uses_super_colors = (set_up_super_colors || "super_form_active" in self && super_form_active) && !secret_active;
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
	case 3: //outta here
		can_move = false;
		if (free)
		{
			mask_index = asset_get("empty_sprite");
			fall_through = true;

			if (window == 16 && y < get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE)) set_state(PS_HITSTUN); //super sonic killing
			if (window == 11) grav = 0.2;
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
#define custom_attack_grid
{
    var cancel_total = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME_TOTAL);
    var whiff_mult = (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1;
    window_cancel_total = (window_cancel_time + cancel_total) * whiff_mult;
    
    var window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES); //looping window for X times - we set this up inside the different conditions
    var window_type_value = get_window_value(attack, window, AG_WINDOW_TYPE); //check the type of the window, helps condense the code a bit
    var window_loop_can_hit_more = get_window_value(attack, window, AG_WINDOW_LOOP_REFRESH_HITS); //checks if the loop should refresh hits or not
    
    //make sure the player isn't in hitpause
    if (!hitpause)
    {
        //make sure the window is in type 9 or 10
        if (window_type_value == 9 || window_type_value == 10)
        {
            //checks the end of the window
            if (window_timer == window_end)
            {
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0)
                {
                    if (window_loop_can_hit_more) attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                    window_loops ++; //at the start of the window, count a loop up
                }

                //when all the loops are over, go to the next window and reset the loop value
                //if it's window type 10, it should stop the loop prematurely
                if (window_loops > window_loop_value-1 || window_type_value == 10 && !free)
                {
                    destroy_hitboxes();
                    if (window < window_last)
                    {
                        window += 1;
                        window_timer = 0;
                    }
                    else set_state(free ? PS_IDLE_AIR : PS_IDLE);
                    window_loops = 0;
                }
            }
            else if (window_loop_value == 0) attack_end(attack);
            //if we aren't using the AG_WINDOW_LOOP_TIMES custom attack grid index we can just make it loop forever
            //this is how the game usually treats window type 9
        }
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
		dash_fx.draw_angle = point_direction(0, 0, hsp, vsp);
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
#define do_trick
{
	if (combo_hits > 0 || trick_rune_active)
	{
		//visual stuff
		spawn_hit_fx(x, y - char_height / 1.75, 304);
		sound_play(alt_cur != 22 ? asset_get("mfx_star") : sound_get("sfx_snicktrick"));
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

		if (!has_superform && !trick_rune_active) //this timer makes it so sonic gets less boost from ending a trick too
		{
			if (trick_spam_penalty_mult * trick_spam_penalty < 1) trick_spam_penalty ++;
			trick_spam_penalty_time = trick_spam_penalty_set;
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


//beam clash compatibility (document stuff)
#define beam_clash_logic
{
	if (!beam_clash_buddy.doing_goku_beam) //if no clash is happening, cancel the clash
	{
		beam_clash_buddy.beam_clash_buddy = noone;
		beam_clash_buddy = noone;
	}
	else //clash is indeed happening
	{
		if (beam_clash_timer >= beam_clash_timer_max) //time's up
		{
			if (clash_winner != self) beam_juice = 0; //if you didn't win the beam clash
			if (clash_winner == beam_clash_buddy) //if the enemy won the beam clash, stop the beam clash
			{
				beam_clash_buddy.beam_clash_buddy = noone;
				beam_clash_buddy = noone;
			}
			else beam_clash_buddy.beam_juice = 0; //if they didn't, clear their juice too

			if (clash_winner == noone) //if there is no winner, quit beam clash
			{
				beam_juice = 0;
				set_window_value(AT_NSPECIAL, 9, AG_WINDOW_INVINCIBILITY, 1);

				beam_clash_buddy.beam_clash_buddy = noone;
				beam_clash_buddy.beam_juice = 0;
				beam_clash_buddy = noone;
			}
		}
		else //the actual clash
		{
			clash_winner = noone;
			if (beam_length > beam_clash_buddy.beam_length) //winning
			{
				clash_winner = self;
				if (window != 12) set_window(12);
			}
			if (beam_length < beam_clash_buddy.beam_length) //losing
			{
				clash_winner = beam_clash_buddy;
				if (window != 14) set_window(14);
			}
			if (beam_length == beam_clash_buddy.beam_length && window != 13) set_window(13); //neutral

			beam_clash_timer ++;
			if (special_pressed) //clash input
			{
				clear_button_buffer(PC_SPECIAL_PRESSED);
				beam_length += 32;
				beam_clash_buddy.beam_length -= 32;
				beam_juice = min(beam_juice + 20, beam_juice_max);
				beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
				sound_play(sfx_beam_progress, false, noone, 1, 1 + beam_juice * 0.001);
			}

			//reached the enemy, i win
			if (x >= beam_clash_buddy.x - clash_stop_offset && spr_dir == 1 || x <= beam_clash_buddy.x + clash_stop_offset && spr_dir == -1)
			{
				clash_winner = self;
				beam_clash_timer = beam_clash_timer_max;

				beam_juice = 0;
				beam_clash_buddy.beam_clash_buddy = noone;
				beam_clash_buddy.beam_juice = 0;
				beam_clash_buddy = noone;
			}
		}
	}
}