var ct = current_time;
//update.gml
//Munohpone touch
{
	muno_event_type = 1;
	user_event(14);
}

//Dashing SH limit hsp boundaries
max_jump_hsp = lerp(max_jump_hsp_normal, max_jump_hsp_dsh, state == PS_DASH_START | state == PS_DASH | state == PS_JUMPSQUAT | state == PS_FIRST_JUMP);

//Set an override to draw the dashing jumpsquat animation instead of the standing jumpsquat animation
//Jumpsquat animation persists one frame into the FIRST JUMP state
in_dash_jumpsquat = ((state == PS_JUMPSQUAT && (prev_state == PS_DASH)) || (state == PS_FIRST_JUMP && state_timer <= 1 && in_dash_jumpsquat));

//Play a unique animation if they perform a dashing shorthop. Only good so long as they haven't yet jumped out of it or landed on the ground
in_dash_shorthop = (state == PS_FIRST_JUMP && !jump_down && in_dash_shorthop);
in_dash_jumpsquat = !in_dash_shorthop && in_dash_jumpsquat;

char_height = 64;

//Double jump FX
small_djump = (djumps > 0 && max_djumps > 1);

dspecial_points_timer = max(0, dspecial_points_timer - lerp(1, 2.5, dspecial_bad_input_display));

switch(state)
{
	case PS_RESPAWN:
	{
		//For some reason, prev_state is not set to PS_RESPAWN when taunting on the respawn platform.
		//This forces it to update so we can detect if the player is taunting on the respawn platform
		//and prevent the special FX from activating
		if(prev_state != PS_RESPAWN)
		{
			prev_state = PS_RESPAWN;
		}
		break;
	}
	case PS_FIRST_JUMP:
	{
		if(state_timer == 1 && upgraded_uspecial)
		{
			//DSpecial Sacrifice Boost FX: USpecial
			spawn_dust_fx(x, y, s_fx_jump_sacrifice, round(6 * 2));
		}
		//Main dashing shorthop calculations
		if(state_timer == 2)
		{
			//Hard-coding because I am a monster who cannot replicate the jump and dash formulas
			var dsh_hsp_min = 5.717;
			var dsh_hsp_max = 5.717;
			if(upgraded_nspecial && upgraded_fspecial)
			{
				dsh_hsp_min = 6.873;
				dsh_hsp_max = 6.873;
				//print(string_format(hsp, 3, 4));
			}
			else if(upgraded_nspecial)
			{
				dsh_hsp_min = 5.967;
				dsh_hsp_max = 5.967;
				//print(string_format(hsp, 3, 4));
			}
			else if(upgraded_fspecial)
			{
				dsh_hsp_min = 5.723;
				dsh_hsp_max = 6.123;
				//print(string_format(hsp, 3, 4));
			}
			
			var dsh_vsp = -5.83;
			if(upgraded_uspecial)
			{
				dsh_vsp = -5.87;
				//print(string_format(vsp, 3, 4));
			}
			
			//print(string(string_format(abs(hsp), 3, 5)) + " = " + string(string_format(dsh_hsp, 3, 5)));
			//print(string(string_format(vsp, 3, 5)) + " = " + string(string_format(dsh_vsp, 3, 5)));
			
			//If the player performs a shorthop after being in the DASH state (not DASHSTART), give them a horizontal boost and perform a unique animation
			if(vsp == dsh_vsp && abs(hsp) >= dsh_hsp_min && abs(hsp) <= dsh_hsp_max)
			{
				hsp = max_jump_hsp_dsh * spr_dir;
				sound_play(a_sfx_waveland_fors, false, noone, 1, 0.9);
				in_dash_shorthop = true;
				spawn_dust_fx(x, y + 8, s_fx_dash_shorthop_dust_color, 28); //Magic number, change if jump speed changes
			}
			
			//If the player fullhops, force the horizontal velocity to normal. This is needed to reset the jump velocity if the player has ever done a dashing shorthop
			else
			{
				max_jump_hsp = max_jump_hsp_normal;
				if(abs(hsp) >= max_jump_hsp_normal)
				{
					hsp = max_jump_hsp_normal * (hsp / abs(hsp));
				}
				in_dash_shorthop = false;
			}
		}
		
		//Cheat: Test hurt animations - spawn hitboxes
		if(state_timer == 20 && phone_cheats[CHEAT_TEST_HURTS] > 0)
		{
			var cheat_hitbox = create_hitbox(AT_EXTRA_1, phone_cheats[CHEAT_TEST_HURTS], x, y);
			cheat_hitbox.player = 0;
			take_damage(player, 0, -1);
		}
		break;
	}
	case PS_DOUBLE_JUMP:
	{
		//Double jump decay in USpecial
		if(state_timer == 0)
		{
			vsp *= power(dspecial_djump_decay_ratio, clamp(djumps - 1, 0, 3));
		}
		
		if(state_timer == 0 && upgraded_uspecial)
		{
			//DSpecial Sacrifice Boost FX: USpecial
			if(djumps > 1)
			{
				spawn_dust_fx(x, y, s_fx_djump_small_sacrifice, round(7 * 3));
			}
			else if(djumps == 1)
			{
				spawn_dust_fx(x, y, s_fx_djump_sacrifice, round(7 * 3));
			}
		}
		
		//Variable for detecting backwards doublejump
		dj_back = lerp(dj_back, hsp * spr_dir < 0, state_timer == 0);
		break;
	}
	case PS_DASH_START:
	{
		if(state_timer == 0 && upgraded_nspecial)
		{
			//DSpecial Sacrifice Boost FX: NSpecial
			spawn_dust_fx(x, y, s_fx_dashstart_sacrifice, 7 * 3);
		}
		if(upgraded_nspecial && state_timer % 6 == 0)
		{
			//DSpecial Sacrifice Boost FX: NSpecial
			spawn_dust_fx(x, y, s_fx_dash_sacrifice, 8 * 2);
		}
		break;
	}
	case PS_DASH:
	{
		if(upgraded_nspecial && state_timer % 6 == 0)
		{
			//DSpecial Sacrifice Boost FX: NSpecial
			spawn_dust_fx(x, y, s_fx_dash_sacrifice, 8 * 2);
		}
		break;
	}
	case PS_DASH_TURN:
	{
		if(state_timer == 3 && upgraded_nspecial)
		{
			//DSpecial Sacrifice Boost FX: NSpecial
			spawn_dust_fx(x, y, s_fx_dashturn_sacrifice, 7 * 3);
		}
		break;
	}
	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
	{
		//Spawn effects for rolling
		if(state_timer % 8 == 0)
		{
			spawn_shadowburn_fx(-20, 20, -20, 20, x, y, 420, undefined);
		}
		if(state_timer == 0)
		{
			spawn_shadowburn_fx(-10, 10, -10, 10, x, y, 421, undefined);
			spawn_shadowburn_fx(-50, 50, -50, 50, x, y, 422, undefined);
		}
		break;
	}
	case PS_AIR_DODGE:
	{
		//Spawn effects for airdodging
		if(state_timer % 6 == 0)
		{
			spawn_shadowburn_fx(-20, 20, -20, 20, x, y, 420, undefined);
		}
		if(state_timer == 0)
		{
			spawn_shadowburn_fx(-10, 10, -10, 10, x, y, 421, undefined);
			spawn_shadowburn_fx(-50, 50, -50, 50, x, y, 422, undefined);
		}
		break;
	}
	case PS_WAVELAND:
	{
		//Stop airdodge sound if wavedashing or wavelanding
		sound_stop(air_dodge_sound);
		
		//Spawn effects for wavelanding
		if(state_timer % 6 == 0)
		{
			spawn_shadowburn_fx(-12, 12, -2, 2, x, y+28, 420, 5);
		}
		break;
	}
	case PS_WALL_JUMP:
	{
		//Reset USpecial usage
		uspecial_used = false;
		
		if(state_timer == 0 && upgraded_uspecial)
		{
			//DSpecial Sacrifice Boost FX: USpecial
			spawn_dust_fx(x, y, s_fx_walljump_sacrifice, round(8 * 3));
		}
		break;
	}
	case PS_ATTACK_AIR:
	{
		switch(attack)
		{
			case AT_DSPECIAL_AIR:
			{
				char_height = 88;
				
				//Update DSpecial visual angles and alpha
				dspecial_sacrifice_angle = (dspecial_sacrifice_angle + dspecial_spin_rate) % 360;
				dspecial_restore_angle = (dspecial_restore_angle - dspecial_spin_rate) % 360;

				dspecial_alpha_timer += 1;

				dspecial_alpha_level = dsin(dspecial_alpha_sin_min + (dspecial_alpha_sin_max - dspecial_alpha_sin_min) * dspecial_alpha_timer / get_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH));
				dspecial_alpha_level *= lerp(1,dspecial_alpha_level,dspecial_alpha_squared);
				break;
			}
			case AT_FSPECIAL_AIR:
			{
				//Handle effects for aFSpecial
				if(window = clamp(window, 3, 6) && window != 5 && get_gameplay_time() % fspecial_iter_rate == 0)
				{
					var num_entries = ds_list_size(fspecial_stall_particle_array);
					
					//Get offset for the fs_index (deprecated)
					var this_index = (image_index % (sprite_get_number(current_sprite_ref) / 8));
					
					var t_x = x + hsp;
					var t_y = y + vsp;
					var line_length = floor(fspecial_stall_particle_max_lifetime * fspecial_iter_rate * fspecial_stall_particle_steepness);
					var this_angle = point_direction(hsp, vsp, 0, 0);
					
					//fspecial_stall_particle_array[|0] = [t_x, t_y, p1_x, p1_y, p2_x, p2_y, this_index];
					ds_list_insert(fspecial_stall_particle_array, 0, [t_x, t_y, t_x + line_length * dcos(this_angle + 90) * -spr_dir, t_y + line_length * dsin(this_angle + 90) * spr_dir, t_x + line_length * dcos(this_angle - 90) * -spr_dir, t_y + line_length * dsin(this_angle - 90) * spr_dir, this_index]);
					
					//Update overflow array & delete last particle
					if(num_entries == fspecial_stall_particle_max_lifetime)
					{
						for(var stream = 0; stream <= 3; stream++)
						{
							var lerp_overflow_x = lerp(fspecial_stall_particle_lasting_overflow[stream * 2], fspecial_stall_particle_coords[fspecial_stall_particle_array[|num_entries][6]][stream * 2], fspecial_stall_particle_easing_rate);
							
							var lerp_overflow_y = lerp(fspecial_stall_particle_lasting_overflow[stream * 2 + 1], fspecial_stall_particle_coords[fspecial_stall_particle_array[|num_entries][6]][stream * 2 + 1], fspecial_stall_particle_easing_rate);
							
							fspecial_stall_particle_lasting_overflow[stream * 2] = lerp_overflow_x;
							fspecial_stall_particle_lasting_overflow[stream * 2 + 1] = lerp_overflow_y;
						}
						ds_list_delete(fspecial_stall_particle_array, num_entries);
					}
				}
				break;
			}
		}
		
		break;
	}
	case PS_ATTACK_GROUND:
	{
		switch(attack)
		{
			case AT_USTRONG:
			{
				if(window == clamp(window,2,4))
				{
					char_height = 88;
				}
				break;
			}
			case AT_DSTRONG:
			{
				if(window == 1)
				{
					char_height = 88;
				}
				break;
			}
		}
		
		break;
	}
}
//Training mode shortcut to max out sacrifices
/*if(was_reloaded)
{
	if(down_down)
	{
		disabled_fspecial = true;
		disabled_nspecial = true;
		disabled_uspecial = true;
		
		sacrifice_level = 3;
		
		dspecial_update_timer = [dspecial_timer_max, dspecial_timer_max, dspecial_timer_max, dspecial_timer_max, dspecial_timer_max];
	}
	
	//Bug: Sets the sacrifices but does not give bonuses. I've forgotten how this system works and I'm too lazy to fix it lmao
	
	was_reloaded = 0;
}*/

//DSpecial special lockout mechanics
move_cooldown[AT_NSPECIAL] = lerp(move_cooldown[AT_NSPECIAL], 2, disabled_nspecial);
move_cooldown[AT_NSPECIAL_AIR] = lerp(move_cooldown[AT_NSPECIAL_AIR], 2, disabled_nspecial);

move_cooldown[AT_FSPECIAL] = lerp(move_cooldown[AT_FSPECIAL], 2, disabled_fspecial);
move_cooldown[AT_FSPECIAL_AIR] = lerp(move_cooldown[AT_FSPECIAL_AIR], 2, disabled_fspecial);

move_cooldown[AT_USPECIAL] = lerp(move_cooldown[AT_USPECIAL], 2, disabled_uspecial);

//Disable NSpecial usage if there are too many projectiles on stage
if(nspecial_current_projectiles >= nspecial_max_projectiles)
{
	move_cooldown[AT_NSPECIAL] = 2;
	move_cooldown[AT_NSPECIAL_AIR] = 2;
}

//NSpecial Manual Detonation check
if(special_pressed && !up_down && !down_down && !left_down && !right_down && !active_runes[?"F"] && rune_f_special_down_timer == 0 && state_cat != SC_HITSTUN && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (has_hit || has_hit_player))))
{
	rune_f_special_down_timer = 1;
}

//Reset selected DSpecial option when not using the move
if(!(attack == AT_DSPECIAL_AIR && state == PS_ATTACK_AIR) && dspecial_points_timer == 0)
{
    dspecial_selected = 0;
	dspecial_selected_old = 0;
	dspecial_selected_old_timer = 0;
	dspecial_bad_input_display = false;
}
if(dspecial_selected_old_timer <= 1)
{
	dspecial_selected_old = dspecial_selected;
}
if(dspecial_selected_old_timer > 0)
{
	dspecial_selected_old_timer -= 1;
}

//Detects if sourspot of UStrong was hit to play a special sound in hit_player.gml
if(state != PS_ATTACK_GROUND)
{
	vanda_hit_sourspot = false;
	vanda_hit_landslam = false;
}

if(!free)
{
	//DAir jump restoration reset
	djumps_restored = 0;
	
	//Reset USpecial usage
	uspecial_used = false;
}

//Update DSpecial timer if actively changing move stats
if(dspecial_needs_script_updates)
{
	var continue_processing = false;
	for(current_dspecial_timer = 0; current_dspecial_timer < array_length(dspecial_update_timer); current_dspecial_timer += 1)
	{
		if(dspecial_update_timer[current_dspecial_timer] > 0)
		{
			user_event(current_dspecial_timer);
			if(active_runes[?"D"]) //Double up on perks!
			{
				user_event(current_dspecial_timer);
			}
			dspecial_update_timer[current_dspecial_timer] = max(0, dspecial_update_timer[current_dspecial_timer] - 1);
			continue_processing = true;
		}
	}
	dspecial_needs_script_updates = continue_processing;
}

if(!(state == PS_ATTACK_AIR && attack == AT_FSPECIAL_AIR && window != 5) && ds_list_size(fspecial_stall_particle_array) > 0)
{
	//Empty arrays when not using aFSpecial
	ds_list_clear(fspecial_stall_particle_array);
	//Copy from fspecial_stall_particle_coords[9];
	fspecial_stall_particle_lasting_overflow = [66, -40, 46, -37, -48, -42, -18, -36];
}

//FSpecial Air sound off
if(!(state == PS_ATTACK_AIR && attack == AT_FSPECIAL_AIR && window == 3) && fspecial_playing_swoosh)
{
	sound_stop(a_sfx_owl0);
	fspecial_playing_swoosh = false;
}
if(get_gameplay_time() % shadowburn_frequency == 0)
{
	with(oPlayer)
	{
		//Update Shadowburn HitFX stuff
		if(shadowburn_timer != 0 && shadowburn_owner == other)
		{
			with(other)
			{
				spawn_shadowburn_fx(-30, 30, -40, 40, other.x, other.y, shadowburn_timer, undefined);
			}
			shadowburn_timer = max(0, shadowburn_timer - other.shadowburn_frequency);
		}
		else
		{
			shadowburn_owner = noone;
		}
		
		switch(state)
		{
			case PS_DEAD:
			case PS_RESPAWN:
			case PS_SPAWN:
			{
				shadowburn_timer = 0;
				shadowburn_owner = noone;
				break;
			}
		}
	}
}

//FSpecial & NSpecial speed lines
if(get_gameplay_time() % 8 == 0)
{
	var speed_lines = 2 * (upgraded_fspecial && free && state != PS_ATTACK_AIR && can_move); //FSpecial
	switch(state)
	{
		case PS_DASH_START:
		case PS_DASH:
		case PS_DASH_TURN:
		case PS_WAVELAND:
		case PS_ROLL_BACKWARD:
		case PS_ROLL_FORWARD:
		case PS_TECH_BACKWARD:
		case PS_TECH_FORWARD:
		{
			speed_lines = speed_lines | (upgraded_nspecial && !free); //NSpecial
		}
	}
	
	if(speed_lines > 0)
	{
		var t_lifetime = dspecial_fx_length * 2/3;
		var t_x = x - 10 * spr_dir;
		var t_y = y + (random_func(player + 9, 64, true) - 32) * sin(get_gameplay_time()) + spr_char_center;
		var b_hsp = (-5 + clamp(abs(hsp) / 2, 0, 3)) * spr_dir;
		
		var t_hsp1 = b_hsp * (random_func(player + 11, 1, false) + 0.3);
		var t_hsp2 = b_hsp * (random_func(player + 12, 1, false) + 0.3);
		var t_hsp3 = b_hsp * (random_func(player + 13, 1, false) + 0.3);
		var t_off1 = random_func(player + 7, 6, true) + 3;
		var t_off2 = random_func(player + 8, 6, true) + 3;
		
		if(speed_lines & 1) //NSpecial
		{
			spawn_rune_fx(t_x, t_y, t_lifetime, t_hsp1, 0, random_func(player + 6, 3, true) + 32, 3, 1, 1);
			spawn_rune_fx(t_x, t_y - t_off1, t_lifetime, t_hsp2, 0, random_func(player + 7, 3, true) + 32, 3, 1, 1);
			spawn_rune_fx(t_x, t_y + t_off2, t_lifetime, t_hsp3, 0, random_func(player + 8, 3, true) + 32, 3, 1, 1);
		}
		if(speed_lines & 2) //FSpecial
		{
			spawn_rune_fx(t_x, t_y, t_lifetime, t_hsp1, 0, random_func(player + 6, 3, true) + 29, 3, 1, 1);
			spawn_rune_fx(t_x, t_y - t_off1, t_lifetime, t_hsp2, 0, random_func(player + 7, 3, true) + 29, 3, 1, 1);
			spawn_rune_fx(t_x, t_y + t_off2, t_lifetime, t_hsp3, 0, random_func(player + 8, 3, true) + 29, 3, 1, 1);
		}
	}
}


//Muno cheat stuff
if(phone_cheats_updated[CHEAT_NSPECIAL])
{
	disabled_nspecial = !disabled_nspecial;
	upgraded_nspecial = disabled_nspecial;
	upgraded_fspecial = disabled_fspecial;
	upgraded_uspecial = disabled_uspecial;
	dspecial_needs_script_updates = true;
	sacrifice_level = disabled_nspecial + disabled_fspecial + disabled_uspecial;
	phone_cheats_updated[CHEAT_NSPECIAL] = false;
	
	dspecial_update_timer = [dspecial_timer_max, dspecial_timer_max*disabled_nspecial, dspecial_timer_max*disabled_fspecial, dspecial_timer_max*disabled_uspecial, dspecial_timer_max*disabled_nspecial*disabled_fspecial*disabled_uspecial];
}

if(phone_cheats_updated[CHEAT_FSPECIAL])
{
	disabled_fspecial = !disabled_fspecial;
	upgraded_nspecial = disabled_nspecial;
	upgraded_fspecial = disabled_fspecial;
	upgraded_uspecial = disabled_uspecial;
	dspecial_needs_script_updates = true;
	sacrifice_level = disabled_nspecial + disabled_fspecial + disabled_uspecial;
	phone_cheats_updated[CHEAT_FSPECIAL] = false;
	
	dspecial_update_timer = [dspecial_timer_max, dspecial_timer_max*disabled_nspecial, dspecial_timer_max*disabled_fspecial, dspecial_timer_max*disabled_uspecial, dspecial_timer_max*disabled_nspecial*disabled_fspecial*disabled_uspecial];
}

if(phone_cheats_updated[CHEAT_USPECIAL])
{
	disabled_uspecial = !disabled_uspecial;
	upgraded_nspecial = disabled_nspecial;
	upgraded_fspecial = disabled_fspecial;
	upgraded_uspecial = disabled_uspecial;
	dspecial_needs_script_updates = true;
	sacrifice_level = disabled_nspecial + disabled_fspecial + disabled_uspecial;
	phone_cheats_updated[CHEAT_USPECIAL] = false;
	
	dspecial_update_timer = [dspecial_timer_max, dspecial_timer_max*disabled_nspecial, dspecial_timer_max*disabled_fspecial, dspecial_timer_max*disabled_uspecial, dspecial_timer_max*disabled_nspecial*disabled_fspecial*disabled_uspecial];
}

handle_dspecial_fx();

if(phone_cheats[CHEAT_DEBUG] == 2)
{
	ds_list_insert(update_perf, 0, current_time - ct);
	if(ds_list_size(update_perf) > perf_size)
	{
		ds_list_delete(update_perf, perf_size);
	}

	if(fps_real < 59)
	{
		dropped_frames += 1;
	}
}

//Keeps track of total kills in the match
//Thanks to Ghostabo for a place to start, even if it needed improving (https://discord.com/channels/630147058535235604/659932078007386144/725378686630625330 )

if(active_runes[?"O"])
{
	with(oPlayer)
	{
		if(player != other.player)
		{
			dspecial_points_timer = max(0, dspecial_points_timer - 2.5);
		}
		if(player != other.player && state == PS_RESPAWN && state_timer == 1 && vanda_rune_o_player == other && get_player_team(player) != get_player_team(other.player))
		{
			//Remove mark if they died
			vanda_rune_o_mark = 0;
			vanda_rune_o_player = -1;
			with(other)
			{
				sound_play(a_sfx_holy_tablet, false, 0);
			}
		}
		else if(player != other.player && vanda_rune_o_mark != 0 && vanda_rune_o_player == other)
		{
			switch(vanda_rune_o_mark)
			{
				case 4: //USpecial
				{
					if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND || attack == AT_USPECIAL_2))
					{
						state = PS_PRATFALL;
						state_timer = 0;
						parry_lag = other.rune_o_parry_time;
						was_parried = true;
						dspecial_points_timer = other.dspecial_points_timer_max;
						shadowburn_timer = 40;
						shadowburn_owner = other;
						with(other)
						{
							sound_play(a_sfx_parry_success);
							sound_play(a_sfx_forsburn_spew2, false, 0, 2);
						}
					}
					break;
				}
				case 2: //FSpecial
				{
					if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_FSPECIAL_2))
					{
						state = PS_PRATFALL;
						state_timer = 0;
						parry_lag = other.rune_o_parry_time;
						was_parried = true;
						dspecial_points_timer = other.dspecial_points_timer_max;
						shadowburn_timer = 40;
						shadowburn_owner = other;
						with(other)
						{
							sound_play(a_sfx_parry_success);
							sound_play(a_sfx_forsburn_spew2, false, 0, 2);
						}
					}
					break;
				}
				case 1: //NSpecial
				{
					if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_NSPECIAL_2))
					{
						state = PS_PRATFALL;
						state_timer = 0;
						parry_lag = other.rune_o_parry_time;
						was_parried = true;
						dspecial_points_timer = other.dspecial_points_timer_max;
						shadowburn_timer = 40;
						shadowburn_owner = other;
						with(other)
						{
							sound_play(a_sfx_parry_success);
							sound_play(a_sfx_forsburn_spew2, false, 0, 2);
						}
					}
					break;
				}
				case -1:
				{
					if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_DSPECIAL_2))
					{
						state = PS_PRATFALL;
						state_timer = 0;
						parry_lag = other.rune_o_parry_time;
						was_parried = true;
						dspecial_points_timer = other.dspecial_points_timer_max;
						shadowburn_timer = 40;
						shadowburn_owner = other;
						with(other)
						{
							sound_play(a_sfx_parry_success);
							sound_play(a_sfx_forsburn_spew2, false, 0, 2);
						}
					}
				}
			}
		}
	}
}

//if(rune_f_special_down_timer > 0 && active_runes[?"F"])
//The above is commented out due to swapping Rune F into normal play
if(rune_f_special_down_timer > 0 && !active_runes[?"F"])
{
	if(special_down && rune_f_special_down_timer > 0)
	{
		rune_f_special_down_timer += 1;
	}
	else if(!special_down)
	{
		if(rune_f_special_down_timer <= 8 && rune_f_special_down_timer >= 0)
		{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			with(obj_article1)
			{
				if(variable_instance_exists(self, "vanda_variable"))
				{
					if(player_id == other && !rune_f_triggered && lifetime_timer > 8 && microstate == 21) //PS_ATTACHED_GROUND_ARMED
					{
						rune_f_triggered = true;
						with(other)
						{
							if(rune_f_special_down_timer != -30)
							{
								rune_f_special_down_timer = -30;
								sound_play(a_sfx_holy_textbox);
							}
						}
					}
				}
			}
			/*if(nspecial_current_projectiles > 0)
			{
				sound_play(a_sfx_holy_textbox);
				with(obj_article1)
				{
					if("vanda_variable" in self)
					{
						if(my_owner == other && !rune_f_triggered)
						{
							rune_f_triggered = true;
						}
					}
				}
			}*/
		}
		if(rune_f_special_down_timer != -30)
		{
			rune_f_special_down_timer = 0;
		}
	}
}
//else if(rune_f_special_down_timer < 0 && active_runes[?"F"])
//The above is commented out due to swapping Rune F into normal play
else if(rune_f_special_down_timer < 0 && !active_runes[?"F"])
{
	rune_f_special_down_timer += 1;
}

#define spawn_shadowburn_fx(spawnx_min, spawnx_max, spawny_min, spawny_max, this_x, this_y, rand_seed, this_depth)
	var shadowburn_fx_randx = random_func(rand_seed + 901, (spawnx_max-spawnx_min)+1, true) + spawnx_min;
	var shadowburn_fx_randy = random_func(rand_seed + 902, (spawny_max-spawny_min)+1, true) + spawny_min;

	var this_hit_fx = noone;
	if(random_func(rand_seed + 900, 9, true) <= 2)
	{
		this_hit_fx = spawn_hit_fx(this_x + shadowburn_fx_randx, this_y - 32 + shadowburn_fx_randy, fx_shadowball);
	}
	else
	{
		this_hit_fx = spawn_hit_fx(this_x + shadowburn_fx_randx, this_y - 32 + shadowburn_fx_randy, fx_shadowball_flame);
	}
	
	if(this_depth != undefined)
	{
		this_hit_fx.depth = this_depth;
	}
	else
	{
		this_hit_fx.depth = 5;
	}
	return this_hit_fx;

#define spawn_rune_fx(t_x, t_y, t_length, t_hsp, t_vsp, t_frame, t_type, t_special, t_alpha)
	ds_list_add(dspecial_fx_list_add, [t_length, t_length, t_x, t_y, t_hsp, t_vsp, t_frame, t_frame, t_type, t_special, t_alpha]);

#define handle_dspecial_fx()
	for(var i = 0; i < ds_list_size(dspecial_fx_list); i++)
	{
		//Subtracting one from lifetime timer
		dspecial_fx_list[|i][@0] -= 1;
		
		var this_timer = dspecial_fx_list[|i][0];
		if(this_timer == 0)
		{
			while(ds_list_size(dspecial_fx_list) > i)
			{
				//Remove FX at end of life
				ds_list_delete(dspecial_fx_list, i);
			}
			break;
		}
		
		//Count down and free up FX
		{
			dspecial_fx_list[|i][@2] += dspecial_fx_list[|i][4];
			dspecial_fx_list[|i][@3] += dspecial_fx_list[|i][5];
			
			//Process existing FX
			switch(dspecial_fx_list[|i][@8])
			{
				case 1:
				{
					dspecial_fx_list[|i][@4] *= 0.96;
					dspecial_fx_list[|i][@5] *= 0.96;
					if(this_timer <= dspecial_fx_list[|i][1] * 1 / 3)
					{
						var m = 6;
						//dspecial_fx_frame[i] = lerp(dspecial_fx_orig_frame[i], 28, dspecial_fx_timer[i] % m >= m/2 - 1);
						dspecial_fx_list[|i][@6] = lerp(0, dspecial_fx_list[|i][@7], this_timer % m >= m/2 - 1);
					}
					break;
				}
				case 2:
				{
					dspecial_fx_list[|i][@4] *= dspecial_fx_decay[dspecial_fx_list[|i][9]];
					dspecial_fx_list[|i][@5] *= dspecial_fx_decay[dspecial_fx_list[|i][9]];
					
					if(dspecial_fx_list[|i][@9] == 1 || dspecial_fx_list[|i][9] == 4)
					{
						dspecial_fx_list[|i][@10] = min(1, (dspecial_fx_list[|i][1] - this_timer) / 10);
					}
					
					if(this_timer <= dspecial_fx_list[|i][1] * dspecial_fx_fadeout_thresh)
					{
						dspecial_fx_list[|i][@10] = clamp((this_timer) / (dspecial_fx_list[|i][1] * dspecial_fx_fadeout_thresh), 0, 1);
					}
					
					break;
				}
				case 3:
				{
					dspecial_fx_list[|i][@4] *= lerp(0.93, 1.04, this_timer < 12);
					dspecial_fx_list[|i][@10] = min(1, this_timer / 12);
					break;
				}
			}
		}
	}
	
	//Add new FX in queue
	var num_limit = min(ds_list_size(dspecial_fx_list_add), dspecial_fx_list_max_size - ds_list_size(dspecial_fx_list));
	for(var i = 0; i < num_limit; i++)
	{
		ds_list_insert(dspecial_fx_list, 0, dspecial_fx_list_add[| i]);
	}
	ds_list_clear(dspecial_fx_list_add);