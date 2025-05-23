// Slenderman attack_update.gml

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Main switch for attack content.
switch (attack)
{
	case AT_JAB:
	// Falling through platforms with Jab.
	if (down_down)
	{
		fall_through = true;
		y++;
	}
	
	jab_timer++;
	jab_dspecial_movement();
	break;
	
	case AT_BAIR:
	if ((attack_down || right_stick_down || left_stick_down || up_stick_down || down_stick_down) &&
		strong_charge < 60 && window == 1 && 
		window_timer >= get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1)
	{
		smash_charging = true;
		attack_down = true;
	}
	break;
	
	case AT_FSTRONG:
	// Grab handling.
	if (instance_exists(grabbed_player_obj)) 
	{
		// First, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 13 || (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND))
		{ 
			grabbed_player_obj = noone; 
		}
		else
		{
			// Keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			grabbed_player_obj.force_depth = 1;
			grabbed_player_obj.depth = depth - 1;
			
			// If this is the first frame of a window, store the grabbed player's relative position.
			if (!fst_hit) 
			{
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
				window = 7;
				window_timer = 0;
				fst_hit = true;
			}
			
			// Change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 82 * spr_dir;
			var pull_to_y = -84 + round(grabbed_player_obj.char_height);
			// On the first window, pull the opponent into the grab.
			if (window == 7) 
			{
				// Using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_sineOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_sineOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
		}
		
		hsp = 0;
	}
	break;
	
	case AT_NSPECIAL:
	move_cooldown[AT_NSPECIAL] = 120;
	if (window == 5 || window == 6) can_move = false;
	
	// Grab handling.
	if (instance_exists(grabbed_player_obj)) 
	{
		if ((window >= 5 && window <= 12) || (window==12 && window_timer <= 6))
		{
			hsp = 0;
			vsp = 0;
			can_move = false;
			can_fast_fall = false;
		}
		
		// First, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 6) 
		{ 
			grabbed_player_obj = noone;
			if (hit_player_obj.slender_haunt == noone) hit_player_obj.slender_buildup += 20;
		}
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) 
		{ 
			grabbed_player_obj = noone; 
		}
		else 
		{
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			grabbed_player_obj.force_depth = 1;
			grabbed_player_obj.depth = depth-1;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (!nsp_hit && !hitpause) 
			{
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
				window = 5;
				window_timer = 0;
				nsp_hit = true;
			}
			
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 150 * spr_dir;
			var pull_to_y = -2;
			
			//on the first window, pull the opponent into the grab.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			if (window == 5)
			{
				move_cooldown[AT_DSPECIAL] = 30;
				if (!free && (window_timer == 1 || window_timer == 6 || window_timer == 12))
				{
					take_damage( grabbed_player_obj.player, player, 2 );
					spawn_hit_fx( grabbed_player_obj.x, grabbed_player_obj.y, 136 );
					shake_camera(1, 2);
					sound_play(sound_get("distort_11"), false, noone, 1, 1.3);
				}
				
				if (window_timer < 6)
				{
					grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
					grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
				}
				else if (window_timer < 12)
				{
					grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x+(-40 * spr_dir), window_timer, window_length);
					grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
				}
				else if (window_timer < 18)
				{
					grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x+(-100 * spr_dir), window_timer, window_length);
					grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
				}
			}
		}
	}
	break;
	
	case AT_FSPECIAL:
	fsp_did = true;
	can_fast_fall = false;
	can_move = false;
	
	switch (window)
	{
		case 1:
		if (window_timer == 10) summon_afterimage(0.7, 0);
		break;
		
		case 2:
		super_armor = true;
		with(oPlayer)
		{
			if (id != other.id && 
				get_player_team(other.player) != get_player_team(player) && 
				slender_haunt == noone)
			{
				if (point_distance(x, y, other.x, other.y - 66) < other.dist_h_static)
				{
					slender_buildup += 2.05;
				}
			}
		}
		break;
		
		case 3:
		super_armor = false;
		break;
	}
	if (window >= 2) can_wall_jump = true;
	
	if (window < 3)
	{
		if (place_meeting(x + hsp, y, asset_get("par_block")) && free) 
		{
		    for (var i = 1; i < 30; i++)
		    {
		        if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) 
		        {
		            y -= i;
		            break;
		        }
		    }
		}
	}
	break;
	
	case AT_USPECIAL:
	can_fast_fall = false;
	if (window == 1 && window_timer == 8) summon_afterimage(2, 1);
	if (window >= 2)
	{
		can_wall_jump = true;
		with(oPlayer)
		{
			if (id != other.id && get_player_team(other.player) != get_player_team(player) &&
				slender_haunt == noone)
			{
				if (point_distance(x, y, other.x, other.y - 66) < other.dist_h_static)
				{
					slender_buildup += 2.05;
				}
			}
		}
	}
	break;
	
	case AT_DSPECIAL:
	dsp_timer++;
	dsp_real_cd = 30;
	jab_dspecial_movement();
	
	// Shadow handling.
	if (window < 7 && !hitpause)
	{
		// Shadow Size Altering
		var _walkable = noone;
		
		// STEP 1:
		// Adjust shadow_increment.
		shadow_growth_timer = min(shadow_growth_timer + 1, shadow_growth_length);
		shadow_increment = ease_sineIn(
				shadow_increment_start,
				shadow_increment_end,
				shadow_growth_timer,
				shadow_growth_length);
		
		// STEP 2:
		// Set the total possible distance currently.
		shadow_width_true = 
				(dsp_orig_dir)
				? min(shadow_width_true + shadow_increment, shadow_width_max)
				: max(shadow_width_true - shadow_increment, shadow_width_max * -1);
		
		// STEP 3:
		// Adjust the size of the actual shadow.
		dsp_distance -= dsp_orig_dir;
		_walkable = get_walkable(dsp_distance);
		if (_walkable)
		{
			// Expand dsp_distance to reach shadow_width_true.
			while (_walkable && abs(dsp_distance) < abs(shadow_width_true))
			{
				dsp_distance += dsp_orig_dir;
				_walkable = get_walkable(dsp_distance);
			}
		}
		else
		{
			// Reduce dsp_distance until within the platform's size.
			while (!_walkable && dsp_distance * dsp_orig_dir >= 0)
			{
				dsp_distance -= dsp_orig_dir;
				_walkable = get_walkable(dsp_distance);
			}
			dsp_distance += dsp_orig_dir;
		}
		
		// Teleporting.
		if (dsp_timer > dsp_timer_min)
		{
			move_cooldown[AT_NSPECIAL] = 30;
			// Find a potential player to teleport to.
			var shadow_stood_id = -4;
			with (oPlayer)
			{
				if (id != other.id && hitpause == false &&
					get_player_team( other.player ) != get_player_team( player ) && 
					invincible == false && attack_invince == false && initial_invince == false &&
					y < other.y + 10 && y > other.y - 10)
				{
					if (other.dsp_orig_dir)
					{
						if (x > other.x && x < other.x + other.dsp_distance) shadow_stood_id = id;
					}
					else
					{
						if (x < other.x && x > other.x + other.dsp_distance) shadow_stood_id = id;
					}
				}
			}
			
			// Teleport behind the found player.
			if (shadow_stood_id != -4)
			{
				summon_afterimage(0, 0);
				spr_dir = shadow_stood_id.spr_dir;
				
				// Attempt to place Slenderman behind the player.
				if (position_meeting(
						shadow_stood_id.x - (30 * shadow_stood_id.spr_dir), 
						y + 1, 
						asset_get("par_block")) ||
					position_meeting(
						shadow_stood_id.x - (30 * shadow_stood_id.spr_dir), 
						y + 1, 
						asset_get("par_jumpthrough")))
				{
					// Could place behind.
					x = shadow_stood_id.x - (30 * shadow_stood_id.spr_dir);
				}
				else
				{
					// Could not be placed behind, place on top of player.
					x = shadow_stood_id.x;
				}
				shadow_stood_id.y = y;
				invincible = true;
				invincible_time = 1;
				
				// Sound effects.
				switch (get_player_color(player))
				{
					case 21:
					// ender
					sound_play(sound_get("z_tele_ender"),false,noone,0.8);
					sound_play(sound_get("z_tele_ender"),false,noone,0.8);
					sound_play(sound_get("piano"),false,noone,0.75);
					break;
					
					default:
					sound_play(sound_get("piano"));
					sound_play(sound_get("cut_5"));
					break;
				}
				
				// Apply portion of slender sickness.
				if (shadow_stood_id.slender_haunt == noone)
				{
					shadow_stood_id.slender_buildup += 20;
				}
				
				// Stop the found player.
				shadow_stood_id.was_parried = true;
				//shadow_stood_id.parry_lag = 60;
				shadow_stood_id.state = PS_PRATLAND;
				shadow_stood_id.state_timer = 0;
				shadow_stood_id.hsp = 0;
				shadow_stood_id.vsp = 0;
				shadow_stood_id.free = false;
				
				// End all actions.
				with(shadow_stood_id){
					attack_end();
					destroy_hitboxes();
				}
				
				// End the attack.
				dsp_real_cd = 120;
				state = PS_SPAWN;
				state_timer = 100;
				attack_end();
			}
		}
	}
	break;
	
	case AT_DSPECIAL_AIR:
	can_move = false;
	vsp = 0;
	hsp = 0;
	if (window_timer == 30)
	{
		move_to_ground();
		dsp_air_descend = noone;
		free = false;
		state = PS_IDLE;
		sound_play(sound_get("nisae_metallic1"), false, noone, 1, 0.9);
		spawn_base_dust(x - (16 * spr_dir), y, "dash", spr_dir);
		spawn_base_dust(x + (16 * spr_dir), y, "dash", spr_dir * -1);
	}
	break;
}

// VFX & SFX.
if (!hitpause)
{
	// VFX Handling.
	switch (attack)
	{
		case AT_DATTACK:
		if (window == 1 && window_timer % 3 == 0) spawn_base_dust(x - (12 * spr_dir), y, "walk", spr_dir);
		if (window == 2 && window_timer == 5) spawn_base_dust(x - (12 * spr_dir), y, "dash_start", spr_dir);
		break;
		
		case AT_FSTRONG:
		if (window == 2 && window_timer == 4) spawn_base_dust(x - (16 * spr_dir), y, "dash_start", spr_dir);
		break;
		
		case AT_USTRONG:
		if (window == 2 && window_timer == 5) 
		{ 
			spawn_base_dust(x - (32 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust(x + (32 * spr_dir), y, "dash_start", spr_dir * -1);
		}
		break;
		
		case AT_DSTRONG:
		if (window == 1 && window_timer == 7)
		{
			spawn_base_dust(x - (16 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust(x + (16 * spr_dir), y, "dash_start", spr_dir * -1);
		}
		if (window == 4 && window_timer == 5)
		{
			spawn_base_dust(x - (32 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust(x + (48 * spr_dir), y, "dash_start", spr_dir * -1);
			spawn_base_dust(x - (64 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust(x + (86 * spr_dir), y, "dash_start", spr_dir * -1);
		}
		break;
		
		case AT_USPECIAL:
		if (window == 1 && window_timer == 8) spawn_base_dust(x, y + 10, "jump");
		break;
	}
	
	if (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG)
	{
		if (smash_charging)
		{
			if (strong_charge % 10 == 0)
			{
				spawn_base_dust(x - (32 * spr_dir), y, "dash", spr_dir);
				spawn_base_dust(x + (32 * spr_dir), y, "dash", spr_dir * -1);
			}
			if (strong_charge % 10 == 4)
			{
				spawn_base_dust(x - (16 * spr_dir), y, "dash", spr_dir);
				spawn_base_dust(x + (16 * spr_dir), y, "dash", spr_dir * -1);
			}
		}
	}
	
	// SFX Handling.
	switch (attack)
	{
		case AT_DATTACK:
		if (window == 1 && window_timer == 2)
		{
			sound_play(sound_get("tta_23"), false,noone, 0.3, 1.5); 
			sound_play(sound_get("tta_5"), false, noone, 0.5, 1.8);
		}
		if (window == 2 && window_timer == 2)
		{
			sound_play(sound_get("tta_1")); 
			sound_play(sound_get("nisae_hit4"), false, noone, 0.9);
			sound_play(sound_get("SWB2"), false, noone, 0.5, 0.9);
		}
		break;
		
		case AT_FTILT:
		if (window == 1 && window_timer == 2) sound_play(sound_get("distort_3"), false, noone, 0.5, 1.8);
		if (window == 1 && window_timer == 6) sound_play(sound_get("distort_11"));
		break;
		
		case AT_DTILT:
		if (window == 1 && window_timer == 8)
		{
			sound_play(sound_get("distort_10"), false, noone, 1, 1.3); 
			sound_play(sound_get("nisae_hit7"), false, noone, 0.7, 1);
			sound_play(sound_get("swing5"), false, noone, 0.6, 0.8);
		}
		break;
		
		case AT_UTILT:
		if (window == 1 && window_timer == 8)
		{
			sound_play(sound_get("tta_1"));
			sound_play(sound_get("tta_5"));
			sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.75, 0.8);
		}
		break;
		
		case AT_NAIR:
		if (window == 1 && window_timer == 1) sound_play(sound_get("distort_5"), false, noone, 0.5, 1.5);
		if (window == 1 && window_timer == 6) 
		{
			sound_play(sound_get("distort_8_b")); 
			sound_play(sound_get("tta_15"), false, noone, 0.7);
			sound_play(asset_get("sfx_shovel_dig"), false, noone, 0.9, 0.7);
			sound_play(sound_get("BossMovePredict"), false, noone, 0.5, 1.1);
		}
		break;
		
		case AT_FAIR:
		if (window == 1 && window_timer == 12)
		{
			sound_play(sound_get("tta_4")); 
			sound_play(sound_get("tta_9"));
			sound_play(sound_get("SWB2"), false, noone, 0.5, 0.8);
			sound_play(asset_get("sfx_swipe_heavy1"), false, noone, 1, 0.85);
		}
		break;
		
		case AT_BAIR:
		if (window == 1 && window_timer == 2) sound_play(sound_get("antici_2"), false, noone, 1, 0.7);
		if (window == 2 && window_timer == 1)
		{
			sound_stop(sound_get("antici_2"));
			sound_play(sound_get("tta_9")); 
			sound_play(sound_get("tta_2"), false, noone, 1, 1.4);
			sound_play(sound_get("sfx_swipe_medium1"), false, noone, 0.7, 0.8);
		}
		break;
		
		case AT_UAIR:
		if (window == 1 && window_timer == 12)
		{
			sound_play(sound_get("tta_13")); 
			sound_play(sound_get("tta_14"), false, noone, 0.8);
			sound_play(sound_get("tta_17"), false, noone, 0.7);
			sound_play(sound_get("SWB2"), false, noone, 0.5, 0.9);
		}
		break;
		
		case AT_DAIR:
		if (window == 2 && window_timer == 13) 
		{
			sound_play(sound_get("distort_2")); 
			sound_play(sound_get("spike"), false, noone, 0.5, 1.4);
		}
		break;
		
		case AT_FSTRONG:
		if (window == 1 && window_timer == 2)
		{
			sound_play(sound_get("tta_7"));
			sound_play(sound_get("antici_1"), false, noone, 1, 0.8);
		}
		if (window == 2 && window_timer == 4)
		{
			sound_stop(sound_get("tta_7"));
			sound_play(sound_get("tta_2"), false, noone, 1, 1.2); 
			sound_play(sound_get("cut_3"));
		}
		if (window == 7 && window_timer == 1)
		{
			sound_play(sound_get("distort_5")); 
			sound_play(sound_get("distort_6"));
		}
		if (window == 9 && window_timer == 1)
		{
			sound_play(sound_get("distort_6")); 
			sound_play(sound_get("distort_6"));
		}
		break;
		
		case AT_DSTRONG:
		if (window == 1 && window_timer == 1)
		{
			sound_play(sound_get("tta_8")); 
			sound_play(sound_get("tta_12"));
		}
		if (window == 1 && window_timer == 5)
		{
			sound_play(sound_get("tta_9")); 
			sound_play(sound_get("hit4"), false, noone, 0.6, 1.2);
			shake_camera( 2, 4 );
		}
		if (window == 4 && window_timer == 1)
		{
			sound_stop(sound_get("tta_8")); 
			sound_stop(sound_get("tta_12"));
			sound_play(sound_get("tta_19")); 
			sound_play(sound_get("nisae_hit7"));
			sound_play(sound_get("nisae_hit4")); 
			sound_play(sound_get("nisae_metallic1"));
			shake_camera(6, 6);
		}
		break;
		
		case AT_USTRONG:
		if (window == 1 && window_timer == 2)
		{
			sound_play(sound_get("tta_6"), false, noone, 1, 1.7);
			sound_play(sound_get("antici_2"));
		}  
		if (window == 2 && window_timer == 5)
		{
			sound_stop(sound_get("tta_6"));
			sound_play(asset_get("sfx_may_wrap2"));
			sound_play(sound_get("tta_4"), false, noone, 1, 0.8); 
			sound_play(sound_get("tta_1"));
			sound_play(sound_get("SWE3"), false, noone, 0.7); 
			sound_play(sound_get("spike"), false, noone, 0.7);
			shake_camera(3, 4);
		}
		break;
		
		case AT_NSPECIAL:
		if (window == 1 && window_timer == 10)
		{
			sound_play(sound_get("SWEN"), false, noone, 0.8, 1.5);
			sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.8, 0.7);
		}
		if (window == 5 && window_timer == 1)
		{
			sound_stop(sound_get("SWEN"));
			sound_play(sound_get("distort_3"), false, noone, 0.5);
			sound_play(sound_get("tta_2")); 
			sound_play(sound_get("tta_18"));
		}
		if (window == 5 && window_timer == 18)
		{
			sound_play(sound_get("tta_23")); 
			sound_play(sound_get("tta_19")); 
			sound_play(sound_get("nisae_hit7"));
		}
		break;
		
		case AT_FSPECIAL:
		if (window == 1 && window_timer == 2) sound_play(sound_get("tta_2"), false, noone, 0.7, 2.2);
		if (window == 1 && window_timer == 8)
		{
			sound_play(sound_get("distort_4"), false, noone, 0.8, 1);
			var rand_tmp = random_func_2(3, 9, true);
			switch (rand_tmp)
			{
				case 0: sound_play(sound_get("distort_3"), false, noone, 0.5, 1.1); break;
				case 1: sound_play(sound_get("distort_5"), false, noone, 0.7, 1); break;
				case 2: sound_play(sound_get("distort_9"), false, noone, 0.7, 2); break;
				case 3: sound_play(sound_get("tta_3"), false, noone, 0.7, 1.4); break;
				case 4: sound_play(sound_get("tta_10"), false, noone, 0.7, 1.4); break;
				case 5: sound_play(sound_get("tta_11"), false, noone, 0.7, 1.65); break;
				case 6: sound_play(sound_get("tta_20"), false, noone, 0.7, 1.4); break;
				case 7: sound_play(sound_get("tta_21"), false, noone, 0.7, 1.8); break;
				case 8: sound_play(sound_get("tta_22"), false, noone, 0.7, 1.8); break;
			}
		}
		break;
		
		case AT_USPECIAL:
		if (window == 1 && window_timer == 8)
		{
			sound_play(sound_get("cut_4"), false, noone, 1);
			sound_play(sound_get("distort_3"), false, noone, 0.6);
			sound_play(sound_get("tta_2")); 
			sound_play(sound_get("tta_5"));
			sound_play(sound_get("tta_3"), false, noone, 0.8, 1.3);
			sound_play(sound_get("antici_1"), false, noone, 1, 0.8);
			sound_play(sound_get("antici_2"), false, noone, 1, 0.8);
		}
		if (window == 3 && window_timer == 22)
		{
			
			sound_play(sound_get("distort_10"), false, noone, 0.8);
			sound_play(sound_get("distort_11"), false, noone, 0.8); 
			sound_play(sound_get("nisae_hit2"));
			switch (get_player_color(player))
			{
				case 20:
				sound_play(sound_get("z_death_scarymaze2_jumpscare_warning_please"), false, noone, 0.9, 1);
				sound_play(sound_get("z_death_scarymaze2_jumpscare_warning_please"), false, noone, 0.9, 0.9);
				break;
				
				default:
				sound_play(sound_get("distort_ex_1"), false, noone, 0.7);
				break;
			}
		}
		break;
		
		case AT_DSPECIAL:
		if (window == 7 && window_timer == 1) sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.5, 1.3);
		break;
		
		case AT_TAUNT:
		if (window == 2 && window_timer == 1) sound_play(sound_get("pagegrab"), false, noone, 1, 1);
		if (window == 3 && window_timer == 20) sound_play(asset_get("sfx_syl_promo2"), false, noone, 0.7, 2.8);
		if (window == 4 && window_timer == 13)
		{
			sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
			if (special_down && down_down)
			{
				sound_play(sound_get("cut_4"), false, noone, 1);
				gimme_20_dollars = true;
				sound_stop(slender_staticmedium_sound_id);
				slender_staticmedium_sound_id = sound_play(sound_get("gimm20dollars"), true);
			}
		}
		break;
	}
}

#define get_walkable(_x_offset)
_solid_meeting = 
		position_meeting(
			x + _x_offset, 
			y + 1, asset_get("par_block"));
_plat_meeting = 
		position_meeting(
			x + _x_offset, 
			y + 1, asset_get("par_jumpthrough"));
return (_solid_meeting || _plat_meeting);
#define move_to_ground()
for (var _y = y - 4; _y < stage_top_position + 4; ++_y)
{
	if (instance_place(x, _y, asset_get("par_block")) != noone ||
    	instance_place(x, _y, asset_get("par_jumpthrough")) != noone)
	{
		// Try to reach end of plat.
		if (instance_place(x + 10, _y, asset_get("par_block")) == noone &&
    		instance_place(x + 10, _y, asset_get("par_jumpthrough")) == noone)
    	{
    		x -= 10;
    	}
    	else if (instance_place(x - 10, _y, asset_get("par_block")) == noone &&
    		instance_place(x - 10, _y, asset_get("par_jumpthrough")) == noone)
    	{
    		x += 10;
    	}
		y = _y;
		break;
	}
}
#define jab_dspecial_movement()
// Moving behavior
switch (window)
{
	case 1:
	// Idle.
	if (left_down)
	{
		if (spr_dir == 1)
		{
			spr_dir = -1;
			walkturn_dir = spr_dir;
			window = 3; 
			window_timer = 0; 
			state_timer = 0;
		}
		else
		{
			window = 2; 
			window_timer = 0; 
			state_timer = 0;
		}
	}
	else if (right_down)
	{
		if (spr_dir == 1)
		{
			window = 2; 
			window_timer = 0; 
			state_timer = 0;
		}
		else
		{
			spr_dir = 1;
			walkturn_dir = spr_dir;
			window = 3; 
			window_timer = 0; 
			state_timer = 0;
		}
	}
	
	// Freefall
	if (free)
	{
		window = 5; 
		window_timer = 0; 
		state_timer = 0;
	}
	
	// Jumping
	if (jump_pressed && attack == AT_JAB)
	{
		window = 4; 
		window_timer = 0; 
		state_timer = 0;
	}
	break;
	
	case 2:
	// Walking.
	if (!left_down && !right_down)
	{
		window = 1; 
		window_timer = 0; 
		state_timer = 0;
	}
	else if (left_down && walkturn_dir == 1)
	{
		spr_dir = -1;
		walkturn_dir = spr_dir;
		window = 3; 
		window_timer = 0; 
		state_timer = 0;
	}
	else if (right_down && walkturn_dir == -1)
	{
		spr_dir = 1;
		walkturn_dir = spr_dir;
		window = 3; 
		window_timer = 0; 
		state_timer = 0;
	}
	if (window == 2 && state_timer % 8 == 0) spawn_base_dust(x, y, "walk", spr_dir);
	
	case 3:
	// Walkturn (and walking).
	hsp = clamp(hsp + ((walk_accel + ground_friction) * spr_dir), walk_speed * -1, walk_speed);
	if (walkturn_dir != spr_dir)
	{
		window_timer = 0;
	}
	
	// Freefall
	if (free)
	{
		window = 5; 
		window_timer = 0;
		state_timer = 0;
	}
	
	// Jumping
	if (jump_pressed && attack == AT_JAB)
	{
		window = 4; 
		window_timer = 0; 
		state_timer = 0;
	}
	break;
	
	case 4:
	// Jumpstart.
	if (window_timer == jump_start_time)
	{
		vsp = (jump_down) ? jump_speed * -1 : short_hop_speed * -1;
		window = 5; 
		window_timer = 0; 
		state_timer = 0;
		sound_play(jump_sound);
		spawn_base_dust(x, y, "jump", spr_dir);
		
		if (left_down) hsp = walk_speed * -1;
		else if (right_down) hsp = walk_speed;
	}
	break;
	
	case 5:
	// Jump.
	if (!free)
	{
		window = 6; 
		window_timer = 0; 
		state_timer = 0;
		spawn_base_dust(x, y, "land", spr_dir);
		sound_play(land_sound);
	}
	break;
	
	case 6:
	
	break;
}

// Ending.
if (window <= 2)
{
	if (attack == AT_JAB)
	{
		// Jab ending.
		if (!attack_down && jab_timer > jab_timer_min)
		{
			window = 7; 
			window_timer = 0; 
			state_timer = 0;
		}
	}
	else
	{
		// DSpecial ending.
		if (dsp_timer >= dsp_timer_max || (!special_down && dsp_timer > dsp_timer_min))
		{
			window = 7; 
			window_timer = 0; 
			state_timer = 0;
		}
	}
}

if (attack == AT_JAB && jab_timer > jab_timer_min)
{
	can_shield = true;
	can_wall_jump = true;
}

if (window >= 7)
{
	if (attack == AT_JAB) jab_end_timer++;
	if (attack == AT_DSPECIAL) dsp_end_timer++;
}

#define summon_afterimage
///summon_afterimage(hspboolean, vspboolean)
var aft_ = instance_create(x, y, "obj_article1");
aft_.sprite_index = sprite_index;
aft_.image_index = image_index;
aft_.spr_dir = spr_dir;
aft_.hsp = hsp / 3 * argument[0];
aft_.vsp = vsp / 3 * argument[1];
return aft_;

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) 
{
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90 * dir : -90 * spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if (newdust != noone)
{
	newdust.dust_fx = dfx; //set the fx id
	if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite
	newdust.dust_color = dust_color; //set the dust color
	if (dir != 0) newdust.spr_dir = dir; //set the spr_dir
	newdust.draw_angle = dfa;
}
return newdust;