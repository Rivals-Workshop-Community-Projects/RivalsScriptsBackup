//attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

//allow reverse ftilt code (by supersonic)
if (attack == AT_JAB)
{
    if (right_down-left_down == -spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player)
	{
        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, window_end); //NOTE: window_end is a tester variable!
        if (get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == window_end)
		{
            set_state(PS_IDLE);
            // if you get ftilt frame-perfectly on parry you can carry the parry lag over
            // that doesn't happen in base cast so this fixes that
            was_parried = false; 
        }
    }
	else reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
}

switch(attack)
{
	//charge attack mechanic + some other specific stuff for some of those moves
	case AT_JAB:
		if (window >= 10 && window <= 13) can_fast_fall = false; //no hitfalling jab 4

		switch (window) //check for all endlag windows for jab (seperated like this cuz it's more comfterable to edit)
		{
			case 1:
				can_jab4 = false; //prevents keqing jab from continiuing naturally
				if (get_match_setting(SET_TURBO)) clear_button_buffer(PC_ATTACK_PRESSED);
				break;
			case 9: //jab 3 (it has the whole "ooo can i use jab 4" stuff)
				/*
				if (window_timer >= window_cancel_time)
				{
					//continiue the jab if jab 4 is allowed
					if (attack_pressed && can_jab4)
					{
						if (up_down) set_attack(AT_UTILT);
						else if (down_down) set_attack(AT_DTILT);
						else if (right_down || left_down) set_attack(AT_FTILT);
						else
						{
							window = 10;
							window_timer = 0;
							can_jab4 = false;
						}
					}
					else if (window_timer == window_end) //if you reach the end of the window just go to idle
					{
						set_state(was_parried ? PS_PRATLAND : PS_IDLE);
						can_jab4 = false;
					}
				}
				*/
			case 3: case 6: case 12: case 16: //jabs 1, 2, 4 and 5
				if (attack_down_counter >= 10 && attack_down && window_timer >= window_cancel_time && !was_parried)
				{
					if (window == 12 && free) window_timer = 5; //jab 4 is airborne but keqing shouldn't use F-strong in midair
					else use_charge_attack();
				}
				break;
			//jab 5 startup
			case 13: 
				vsp = 60; //needs to be set up here manually or there will be jank with air canceling
				if (window_timer == window_end && free) window_timer = 0;
				break;
			case 12: case 16:
				if (window_timer == window_end && was_parried)
				{
					set_state(free ? PS_PRATFALL : PS_PRATLAND);
					parry_lag = clamp((4/45.0) * parry_distance + (160.0/3.0), 60, 100);
				}
				break;
		}
	case AT_FTILT: case AT_DTILT: case AT_UTILT: //should skip endlag
		if (attack_down_counter >= 10 && attack_down && window == window_last && window_timer >= window_end-5 && !was_parried) use_charge_attack();
		break;
	case AT_FSTRONG: //the effect work for the strongs is on update.gml instead, i can't put window_timer = 0 here
		if (!hitpause)
		{
			if (window == 4 && window_timer == 3) fstrong_hitbox = create_hitbox(attack, 1, slash_pos_x+16*spr_dir, slash_pos_y);
			if (window == 5 && window_timer == 2) fstrong_hitbox = create_hitbox(attack, 2, slash_pos_x+16*spr_dir, slash_pos_y);
		}

		if (instance_exists(fstrong_hitbox) && fstrong_hitbox != noone) fstrong_hitbox.fx_particles = 1;
	case AT_DSTRONG: case AT_USTRONG:
		//makes sure keqing is actually using the charge attack
		//if she does, disable the ability to charge her strongs and skip window 2 to make the move faster (since she isn't charging)
		if (!charge_attack) reset_attack_value(attack, AG_STRONG_CHARGE_WINDOW);
		else
		{
			if (window == 2) window = 3;
			set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
		}

		//destroy marker
		if (window == 4 && window_timer == 5 && instance_exists(artc_marker) && artc_marker.state == 1 && !hitpause)
		{
			artc_marker.state = 2;
			artc_marker.state_timer = 0;
		}

		//end charge attack
		if (window == window_last && window_timer == window_end) charge_attack = false;
		break;
	case AT_DAIR:
		switch (window)
		{
			case 1: //setup window
				if (window_timer > 1)
				{
					dair_fx_y_scale = 0;
					dair_time = 0;
					if (!free)
					{
						window = 3;
						window_timer = 0;
					}
				}
				if (!hitpause && window_timer == window_end - 4) sound_play(sfx_slash_medium1);
				break;
			case 2: //plunge loop
				can_wall_jump = true;
				if (!hitpause) dair_time ++;
				if (dair_time >= dair_cancel_time)
				{
					can_shield = true;
					can_jump = true;
					if (up_down) can_special = true;
				}

				if (dair_fx_y_scale < 2) dair_fx_y_scale += 0.25; //dair smear effect gets longer over time
				break;
			case 3: //plunge land
				destroy_hitboxes();
				break;
		}
		can_fast_fall = false;
		break;
	case AT_DATTACK:
		if (down_down && !free && !hitpause && !was_parried) hsp = 8*spr_dir;

		if (down_hard_pressed && !free && !hitpause && has_hit) buffered_hitfall = true;
		if (buffered_hitfall && free && !fast_falling)
		{
			vsp = 0;
			do_a_fast_fall = true;
		}

		if (window == 2 && !has_rune("F")) set_attack_value(attack, AG_CATEGORY, 2);
		if (has_rune("F")) coyote_time = coyote_time_max;

		if (!free && window >= 4)
		{
			if (was_parried && !hitpause)
			{
				hsp = 0;
				set_state(PS_PRATLAND);
			}
			else
			{
				landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
				set_state(PS_LANDING_LAG);
			}
		}
		break;
	//specials
	case AT_NSPECIAL: //stilleto spawn
		can_move = false;
		can_fast_fall = false;

		//if (window == 4) hsp = 50*spr_dir;
		//if (window == 6) hsp = 0;

		switch (window)
		{
			case 1: //setup window
				marker_aim_timer = -1; //under 0 and 0 = not aiming || over 0 = aiming

				//this part makes keqing face the right way
				if (spr_dir) marker_angle = 0;
				else marker_angle = 180;
				break;
			case 2: //aim logic
				//this makes her fall slow
				hsp = clamp(hsp, -2, 2);
				vsp = min(vsp, 2+marker_aim_timer/20);

				//how long is she aiming?
				marker_aim_timer ++;

				//loop
				if (!special_down)
				{
					window = 3;
					window_timer = 0;
				}
				else window_timer = 1; //i'm doing this cuz of sound effect which is set up in update cuz fuck you dan

				//spawn article
				if (!instance_exists(artc_marker))
				{
					artc_marker = instance_create(x, y-32, "obj_article1");
					artc_marker.state = 0;
					marker_angle = 0;

					//this part makes the marker spawn at the right spot
					//if keqing presses in the opposite direction she is facing the stilleto will spawn in place
					if (spr_dir)
					{
						if (left_down) marker_angle = 180;
						else marker_angle = 0;
					}
					else
					{
						if (right_down) marker_angle = 0;
						else marker_angle = 180;
					}
				}

				//aim
				if (instance_exists(artc_marker) && artc_marker.state == 0)
				{
					if (!joy_pad_idle && marker_aim_timer > 0) marker_angle = joy_dir;

					//raycast take
					for (var line_length = 0; line_length < marker_dist; line_length += 4)
					{
						marker_dist_x = x + lengthdir_x(line_length, marker_angle);
						marker_dist_y = y - 32 + lengthdir_y(line_length, marker_angle);

						if (position_empty(marker_dist_x, marker_dist_y) == false)
						{
							if (instance_place(marker_dist_x, marker_dist_y, asset_get("par_block")) != noone) break;
						}
					}
					artc_marker.x = marker_dist_x;
					artc_marker.y = marker_dist_y;

					//shield cancel to stop aiming
					if (shield_pressed)
					{
						sound_stop(loop_sound);
						sound_play(asset_get("sfx_gem_collect"));

						window = 0;
						window_timer = 0;

						instance_destroy(artc_marker);
						set_state(free ? PS_IDLE_AIR : PS_IDLE);
						move_cooldown[attack] = 20;
						clear_button_buffer(PC_SHIELD_PRESSED);
					}
				}
				break;
			case 3: //check the marker's position and erase it
				if (window_timer == 1 && instance_exists(artc_marker) && artc_marker.state == 0)
				{
					temp_marker_x = marker_dist_x;
					temp_marker_y = marker_dist_y;
					instance_destroy(artc_marker);
				}
				break;
			case 4: //if keqing is in the air she bounces up instead
				set_window_value(attack, 5, AG_WINDOW_VSPEED, -5*free);
				break;
			case 5: //shoot logic
				if (window_timer == 1)
				{
					nspec_proj = create_hitbox(AT_NSPECIAL, 2, x, y-32);
					nspec_proj_speed = 40; //40
					nspec_proj.fx_particles = 2;
					nspec_proj.unbashable = true;

					if (marker_aim_timer > 0) //hold version
					{
						nspec_angle = point_direction(x, y + 16, temp_marker_x, temp_marker_y + 48);
						nspec_proj.hsp = lengthdir_x(nspec_proj_speed, nspec_angle);
						nspec_proj.vsp = lengthdir_y(nspec_proj_speed, nspec_angle);
						if (spr_dir) nspec_proj.proj_angle = nspec_angle;
						else nspec_proj.proj_angle = nspec_angle-180;
						//it respawns the article as state 1 in hitbox_update, or on hit with hit_player
					}
					else if (marker_aim_timer == 0) //tap version
					{
						nspec_angle = 0;
						if (-spr_dir) nspec_angle = 180;
						nspec_proj.hsp = lengthdir_x(nspec_proj_speed, nspec_angle);
						nspec_proj.vsp = lengthdir_y(nspec_proj_speed, nspec_angle);
						nspec_proj.proj_angle = nspec_angle;
						if (-spr_dir) nspec_proj.proj_angle = nspec_angle-180;

						/*
						var closest_id = noone;
						var closest_distance = -1;
						var closest_in_range = false;
						var sight_range = 400;

						//closest player check for the tap version (it also makes sure the closest player isn't on the same team)
						with (oPlayer) if (self != other && get_player_team(player) != get_player_team(other.player))
						{
							if (closest_id == noone)
							{
								closest_id = self;
								closest_distance = point_distance(x, y, other.x, other.y);
							}
							else if (point_distance(x, y, other.x, other.y) < closest_distance)
							{
								closest_id = self;
								closest_distance = point_distance(x, y, other.x, other.y);
							}

							//this part checks if the enemy is in range
							if (sight_range < closest_distance) closest_in_range = false;
							else closest_in_range = true;
						}

						if (closest_in_range)
						{
							var angle = point_direction(x, y, closest_id.x, closest_id.y-closest_id.char_height/4);
							nspec_proj.hsp = lengthdir_x(nspec_proj_speed, angle);
							nspec_proj.vsp = lengthdir_y(nspec_proj_speed, angle);
							nspec_proj.proj_angle = angle;
							if (-spr_dir) nspec_proj.proj_angle = angle-180;
						}
						else
						{
							var angle = 0;
							if (-spr_dir) angle = 180;
							nspec_proj.hsp = lengthdir_x(nspec_proj_speed, angle);
							nspec_proj.vsp = lengthdir_y(nspec_proj_speed, angle);
							nspec_proj.proj_angle = angle;
							if (-spr_dir) nspec_proj.proj_angle = angle-180;
						}
						*/
					}
					
				}
				break;
		}
		break;
	case AT_NSPECIAL_2: //stilleto teleport
		if (uspec_to_nspec_cancel)
		{
			hsp = clamp (hsp, -12, 12);
			vsp = clamp (vsp, -12, 12);
		}

		switch (window)
		{
			case 1:
				vsp = clamp(vsp, vsp, 2);
			case 2:
				if (!counter_success) do_electro_particles(2, 1, 1);
				break;
			case 3:
				if (!counter_success) //no beidou counter lmao
				{
					x = temp_marker_x;
					y = temp_marker_y;
				}

				if (window == 3 && window_timer == 1)
				{
					nspec_cancel_aim = false;
					stilleto_id = noone;
					if (instance_exists(artc_marker)) instance_destroy(artc_marker);
				}
				break;
			case 6: //pratfall keqing if she doesn't land the hit (i probably don't need this cuz the move has a cooldown anyways)
				if (window_timer == window_end && !has_hit_player && free) set_state(PS_PRATFALL);
				if (has_rune("H"))
				{
					counter_success = false;
					reset_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE);
				}
				break;
			case 4:
				if (window_timer == 1 && !has_rune("H")) spawn_hit_fx(x, y-32, fx_nspec_warpend);
				break;

		}

		if (window >= 4 || window == window_last && window_timer <= 4)
		{
			uspec_to_nspec_cancel = false;
			can_move = false;
			hsp = 0;
			vsp = 0;
			x = x;
			y = y;
		}

		//just making the visual effect appear if the attack has no cooldown (with the cheat)
		if (debug_keqing)
		{
			if (window == window_last && window_timer == window_end-1)
			{
			    hud_anim_timer = 0;
			    hud_anim_start = true;
			}
		}
		break;
	case AT_FSPECIAL: //little mac side B but awesome
		can_fast_fall = false;
		can_wall_jump = true;

		switch (window)
		{
			case 1:
				//count the move as used on the first frame
				//overwritten later when some things apply
				spin_count = 3;
				fspec_used = true;
				if (window_timer == 1)
				{
					vsp = -8;
					hsp = 7*spr_dir;
				}
				//invincibily on update
				break;
			case 2:
				if (window_timer == 3) spin_count --;
				if (window_timer == window_end) window_timer = 0;
				
				if (special_pressed || spin_count <= 0 && window_timer == 3)
				{
					window = 3;
					window_timer = 0;
					sound_play(asset_get("sfx_absa_cloud_crackle"));
					sound_play(sfx_slash_heavy1);
					fspec_slash = spawn_hit_fx(x+48*spr_dir, y+8, fx_fspec_slash); //fx_fspec_slash
					fspec_slash.depth = -7;
				}
				break;
		}

		//go to landing lag
		if (window > 1 && !free)
		{
			set_state(PS_LANDING_LAG);
			landing_lag_time = 12;
		}

		//effect pause
		if (instance_exists(fspec_slash) && hitpause && state_cat != SC_HITSTUN)
		{
		    fspec_slash.pause_timer = 0;
			fspec_slash.pause = hitstop;
		}

		//electric particles
		//if (window < 3) do_electro_particles(4, 0, 0);

		if (was_parried && !free) set_state(PS_PRATLAND);
		break;
	case AT_USPECIAL: //pika pi
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;

		//levitation at a moderate speed
		if (window == 1 || window == 2)
		{
			hsp = clamp(hsp, -4, 4);
			vsp = min(vsp, 2);
		}

		//other test changes include:
		//1. special isn't neccesary to be held down to continiue the attack, just a direction (window 4)
		//2. prev_joy_dir is reset to -1 (window 1, window 3)

		switch (window)
		{
			case 1: //check if the uspec started on the ground or not to see if it should pratfall
				if (window_timer == 1)
				{
					uspec_count = 0;
					uspec_started_grounded = !free
					prev_joy_dir = -1;
				}
				break;
			case 2: //quick slash start effect
				if (window_timer == window_end)
				{
					var uspec_vanish = spawn_hit_fx(x, y-32, fx_uspec_vanish);
					uspec_vanish.depth = -6;

					uspec_fx_anim[0] = 0;

					//quick slash aim logic
					if (joy_pad_idle && prev_joy_dir = -1) joy_dir = 90;
					hsp = lengthdir_x(uspec_travel_dist, joy_dir);
					vsp = lengthdir_y(uspec_travel_dist, joy_dir);
					prev_joy_dir = joy_dir;

					if (joy_dir > 90 && joy_dir < 270) spr_dir = -1;
					else if (joy_dir < 90 || joy_dir > 270) spr_dir = 1;
					
					uspec_points[0] = [x, y - 32];
					uspec_points[1] = [x, y - 32];
				}
				break;
			case 3: //movement
				if (window_timer == 1) if (!hitpause) fall_through = true;
				if (window_timer == window_end) spawn_hit_fx(x, y-32, fx_nspec_cursorspawn); //lol reusing effects

				grav = -gravity_speed;

				uspec_points[1] = [x, y - 32];
				break;
			case 4: //post-movement
				fall_through = false;

				//slow down damn woman
				if (window_timer == 1)
				{
					hsp = lengthdir_x(uspec_travel_dist, prev_joy_dir)/10;
					vsp = lengthdir_y(uspec_travel_dist, prev_joy_dir)/10;
				}
				//if a direction is held down that isn't the same direction she will do another slash
				//also if she wasn't parried lol
				if (window_timer == window_end)
				{
					//&& joy_dir != prev_joy_dir
					//this commented code makes it so she can't do the same direction twice
					//the code below will make her do another up B if the special button is held down
					if (uspec_count < uspec_max && !joy_pad_idle && !was_parried) // && special_down
					{
						attack_end();
						uspec_count ++;
						window = 2;
						window_timer = 0;
					}
				}
				break;
			case 5: //decide if she shouldn't pratfall
				if (window_timer == window_end)
				{
					if (!free) set_state(PS_IDLE);
					else if (uspec_started_grounded && uspec_count == 0) set_state(PS_IDLE_AIR);
					
					if (was_parried) set_state(free?PS_PRATFALL:PS_PRATFALL);
				}
				break;
		}
		break;
	case AT_DSPECIAL: //workaholic E
		can_fast_fall = false;
		if (window == 1) dspec_fx_count = 0;
		
		if (window == 3)
		{
			if (window_timer == 2 && afterimage_destroy_cd == 0 && afterimage_amount < 1 + has_rune("B")) //limit the amount of afterimage articles that can spawn
			{
				//dspec coordinate recordings are done in update.gml cuz dan moment
				artc_afterimage = instance_create(dspec_rec_x, dspec_rec_y-34, "obj_article2");
				afterimage_amount ++;
			}
		}

		//trail effect on keqing
		if (state_timer >= 12 && dspec_fx_count < 4)
		{
			//afterimage
			if (state_timer % 3 == 0)
			{
				dspec_fx_count ++;
				var fx_trail = spawn_hit_fx(x, free?y-8:y, fx_dspec_fade);
				fx_trail.depth = 1;
			}

			//electric particles
			do_electro_particles(6, 0, 0);
		}

		move_cooldown[attack] = 40;
		break;
	//////////////////////////////////////////////
	case 49: //final smash - starward sword
		//single window stuff
		switch (window)
		{
			case 1: //var reset
				fs_flash_count = -1;
				used_burst = true;
				fs_slash_timer = 0;
				fs_afterimage_timer = 0;
				//afterimage coordinates for effects
				fs_afterimage_pos[0] = [x+160*spr_dir, x-96*spr_dir, x+120*spr_dir, x-120*spr_dir, x];
				fs_afterimage_pos[1] = [y, y-96, y-114, y+8, y-160];

				if (has_resolve_mechanic && burst_charge > 0) resolve_cur += 60; //bursts add to keqing's resolve automatically

				if ("fs_char_initialized" in self && fs_char_initialized)
				{
					fs_force_fs = false;
					fs_charge = 0;
				}
				burst_charge = 0;
				break;
			case 2: //vanish effect
				if (window_timer == window_end)
				{
					var uspec_vanish = spawn_hit_fx(x, y-32, fx_uspec_vanish);
					uspec_vanish.depth = depth-1;
				}
				break;
			case 4: //outline effect
				if (window_timer == 1) fs_cue_slashes = true;
				if (window_timer == window_end) color_outline_timer = color_outline_timer_max;
				break;
			case 6: //final slash effect
				if (window_timer == window_end-2)
				{
					fs_cue_slashes = false;
					for (var i = 0; i < 5; i ++) spawn_hit_fx(fs_afterimage_pos[0][i], fs_afterimage_pos[1][i]-13, fx_electro[2]);
				}
				if (window_timer == window_end)
				{
					spawn_hit_fx(x, y-32, fx_burst_finalslash);
					shake_camera(8, 12); //power, time
				}
				break;
			case 8:
				if (window_timer == window_end) used_burst = false;
				break;
		}

		if (fs_cue_slashes) fs_slash_timer ++;
		if (fs_slash_timer >= 9 && fs_afterimage_timer < 28) fs_afterimage_timer ++;

		//electro circle scale up
		if (state_timer < 10) fs_ease_scale = ease_cubeOut(0, 2, state_timer, 10);
        else fs_ease_scale = 2;

		//BG alpha setup
		if (window <= 3 && fs_alpha < 1)
		{
			fs_alpha += 0.1;
			fs_alpha_bg += 0.1;
		}
        if (window >= 6 && window_timer > window_end-10 && fs_alpha > 0) fs_alpha -= 0.1;

		//flash sequence (kill me)
		if (fs_cue_slashes && !hitpause)
		{
			var rapid_anim_rate = 3;

			//keqing star pattern
			if (fs_flash_count < 5)
			{
				if (!hitpause && fs_slash_timer % rapid_anim_rate == 0) fs_flash_count += 0.5;

				if (fs_slash_timer % (rapid_anim_rate*2) == 0) fs_effect_sequence(1, fs_flash_count);
				else if (fs_slash_timer % rapid_anim_rate == 0) fs_effect_sequence(2, fs_flash_count);
			}

			//rapid slashes
			if (fs_slash_timer >= 40)
			{
				if (fs_slash_timer % 5 == 0) //effects
				{
					var random_x = (random_func(513, 9, true)-5)*8;
					var random_y = (random_func(457, 9, true)-5)*8;
					var random_angle = random_func(465, 45, true)*8;

					var rapid_slash = spawn_hit_fx(x+random_x, y+random_y-16, fx_burst_slash);
					rapid_slash.draw_angle = random_angle;
				}
			}

			if (fs_slash_timer % 7 == 0) //hitbox
			{
				//create hitbox and reset the attack hitbox so it can multihit
				attack_end();
				var rapid_hbox = create_hitbox(attack, 2, x, y);
				rapid_hbox.fx_particles = 2;
			}
		}
		break;
	//////////////////////////////////////////////
	case AT_DSPECIAL_2: //beidou parry
		if (window == 1)
		{
			counter_uptime = counter_uptime_reset;
			if (window_timer == 1)
			{
				var flash_fx = spawn_hit_fx(x, y-32, fx_nspec_warpend);
				flash_fx.depth = depth+1;
			}
		}
		if (window == 2)
		{
			if (shield_down && counter_uptime > 0)
			{
				super_armor = true;
				window_timer = 0;
				counter_uptime --;

				do_electro_particles(3, 2, 0)
			}
			else
			{
				window ++;
				window_timer = 0;

				if (counter_success)
				{
					set_attack(AT_NSPECIAL_2);
					set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, counter_damage);
				}
			}
		}
		else
		{
			super_armor = false;
		}
		move_cooldown[AT_DSPECIAL_2] = parry_lag;
		break;
	//////////////////////////////////////////////
	case AT_TAUNT_2: //windblume lyre
		switch (window)
		{
			case 1: //activate
				if (window_timer == 1) lyre_hud_play_fade = 1;
				break;
			case 2: case 3: //playing lyre windows (window 2 is for the initial startup before the first tap)

				user_event(0); //playing lyre event

				//makes keqing play the animation
				if (jump_pressed && jump_counter == 1 || attack_pressed && attack_counter == 1 ||
				special_pressed && special_counter == 1 || shield_pressed && shield_counter == 1 ||
				strong_down && strong_down_counter == 1 || left_pressed || right_pressed)
				{
					window = 3;
					window_timer = 0;
					spawn_hit_fx(x, y - 62, fx_lyre_note);
				}
				else if (window == 3 && window_timer >= window_end) window_timer = window_end-1;

				//cancel playing the lyre if you press taunt again
				if (taunt_pressed && down_down)
				{
					window = 4;
					window_timer = 0;
					playing_lyre_timer = 0;

					spawn_hit_fx(x - 1 * spr_dir, y - 60, fx_lyre_despawn);
				}
				break;
			case 4: //deactivate
				if (window_timer == 1)
				{
					playing_lyre_timer = -1;
					cur_octwave = 0;
					lyre_hud_play_fade = -1;
				}
				if (window_timer == 25) spawn_hit_fx(x + 27 * spr_dir, y - 42, fx_introspark);
				break;
		}

		//in loving memory... (19/3/2021 - 9/6/2021), you will be missed :pensive:
		if (get_match_setting(SET_PRACTICE))
		{
			//timing
			if (lyre_hud_play_fade != 0)
			{
				//input
				if (special_pressed && instance_exists(artc_marker) && artc_marker.state == 1)
				{
					//logic

					spawn_hit_fx(x, y-32, fx_nspec_warpstart); //teleport start effect
					spawn_hit_fx(temp_marker_x, temp_marker_y, fx_nspec_marker_despawn); //stilleto despawn

					var fly_speed = 0;
					var go_to = 0;
					allow_glitch_warp = true;
					if (allow_glitch_warp)
					{
						if (stilleto_id == noone || !instance_exists(stilleto_id))
						{
							fly_speed = point_distance(x, y, artc_marker.x, artc_marker.y+32);
							go_to = point_direction(x, y, artc_marker.x, artc_marker.y+32);
						}
						else if (stilleto_id != noone)
						{
							fly_speed = point_distance(x, y, stilleto_id.x, stilleto_id.y);
							go_to = point_direction(x, y, stilleto_id.x, stilleto_id.y);
						}

						hsp = lengthdir_x(fly_speed/4, go_to);
						vsp = lengthdir_y(fly_speed/4, go_to);

						stilleto_id = noone;
						marker_dist_x = 0;
						marker_dist_y = 0;
						instance_destroy(artc_marker);

						allow_glitch_warp = false;
						clear_button_buffer(PC_SPECIAL_PRESSED);
						clear_button_buffer(PC_TAUNT_PRESSED);

						set_state(PS_IDLE_AIR);
					}
				}
			}
		}
		break;
	case 2: //intro
		var fx_x = x+11*spr_dir;
		var fx_y = y-30;

		switch (window)
		{
			case 1:
				if (window_timer == 1) //spawn marker
				{
					artc_marker = instance_create(fx_x-2*spr_dir, fx_y, "obj_article1");
					artc_marker.state = 1;
				}
				else if (window_timer == window_end-8 && instance_exists(artc_marker) && artc_marker.state == 1) //destroy marker
				{
					spawn_hit_fx(fx_x-2*spr_dir, fx_y, fx_nspec_marker_despawn);
					instance_destroy(artc_marker);
				}
				else if (window_timer == window_end) //teleport start
				{
					color_outline_timer = color_outline_timer_max;
					spawn_hit_fx(fx_x, fx_y, fx_nspec_warpend);
				}
				break;
			case 4:
				if (window_timer == 52) spawn_hit_fx(fx_x+16*spr_dir, fx_y-12, fx_introspark);
				if (window_timer == window_end-1) if (get_gameplay_time() <= 125) state = PS_SPAWN;
				break;
		}
		break;
	case 46: //sonic trick
		iasa_script(); //lets character cancel out of the animation at any point
		if (vsp > 0 && window == 3) //window 3 is the window specified for the trick hold pose
		{
			window ++;
			window_timer = 0;
		}
		if (window > 1 && !free) set_state(PS_LANDING_LAG);
		break;
}


//if there's an enemy with a stilleto, allow nspec cancel
//although this only actually activates according to hit_player
if (instance_exists(stilleto_id) && stilleto_id != noone && attack != AT_BURST) nspec_cancel = true;
else nspec_cancel = false;

if (nspec_cancel_timer > 0 && nspec_cancel && special_pressed && joy_pad_idle)
{
	if (instance_exists(artc_marker) && artc_marker.state == 1)
	{
		destroy_hitboxes();
		attack_end(attack);
		nspec_cancel_aim = true;

		if (attack == AT_USPECIAL) uspec_to_nspec_cancel = true;

		set_attack(AT_NSPECIAL_2);
    	window = 2;
		window_timer = window_end;

		nspec_cancel = false;
		nspec_cancel_timer = 0;
	}
}
if (nspec_cancel_aim)
{
	temp_marker_x = stilleto_id.x;
	temp_marker_y = stilleto_id.y;
}



//CHARGE ATTACK TELEPORT GLITCH (it was pretty early on in the game)
// by pressing special while keqing is in the charge/strong attack animation, she can teleport as the marker is still technecally there
// this could be a rune or something
/*
if (instance_exists(artc_marker) && artc_marker.state == 2 && artc_marker.state_timer <= 5 && special_pressed)
{
	attack = AT_NSPECIAL_2;
	window = 1;
	window_timer = 0;
    spawn_hit_fx(x, y-32, 21);
	if (stilleto_id == noone)
	{
		x = artc_marker.x;
		y = artc_marker.y+32;
	}
	else if (stilleto_id != noone)
	{
		x = stilleto_id.x;
		y = stilleto_id.y;
	}
}
*/


#define use_charge_attack
{
	charge_attack = true;

	//set the attack depending on the direction that is being held
	if (up_down) set_attack(AT_USTRONG);
	else if (down_down) set_attack(AT_DSTRONG);
	else if (right_down || left_down) set_attack(AT_FSTRONG);
	else set_attack(AT_FSTRONG);

	window = 1;
	window_timer = 0;
}
#define do_electro_particles(pulse_rate, random, effect)
{
	if (state_timer % pulse_rate == 0)
	{
		var random_x = (random_func(9, 5, true)-2)*8;
		var random_y = (random_func(10, 5, true)-2)*8;

		var elec_angle = random_func(7, 360, true);

		var elec_dir = random_func(8, 2, true)-1;
		if (elec_dir == 0) elec_dir = spr_dir;

		switch (effect)
		{
			case 0:
				var elec_random = random_func(6, 3, true);

    			var electro_effect = spawn_hit_fx(x+(random_x*random), y+(random_y*random)-32, fx_electro[elec_random]);
				break;
			case 1:
    	    	var electro_effect = spawn_hit_fx(x+(random_x*random), y+(random_y*random)-32, fx_electro_aura);
            	electro_effect.depth = -3;
				break;
		}

		electro_effect.draw_angle = elec_angle;
    	electro_effect.spr_dir = elec_dir;
	}
}
#define fs_effect_sequence(flash_type, flash_count)
{
	if (flash_count <= 5 && flash_count >= 0)
	{
		switch (flash_type)
		{
			case 1:
				var fs_flash1 = spawn_hit_fx(x, y, fx_uspec_flash);
				break;
			case 2:
				var fs_flash2 = spawn_hit_fx(x, y, fx_nspec_cursorspawn);
				break;
		}
	}

    switch (flash_count)
    {
		//type 1 - the whoosh
        case 0:
			fs_flash1.draw_angle = 350*spr_dir;
			fs_flash1.x = x+32*spr_dir;
			fs_flash1.y = y-32;
			break;
        case 1:
			fs_flash1.draw_angle = 160*spr_dir;
			fs_flash1.x = x+72*spr_dir;
			fs_flash1.y = y-32;
			break;
        case 2:
			fs_flash1.draw_angle = 5*spr_dir;
			fs_flash1.x = x-48*spr_dir;
			fs_flash1.y = y-96;
			break;
        case 3:
			fs_flash1.draw_angle = 210*spr_dir;
			fs_flash1.x = x+64*spr_dir;
			fs_flash1.y = y-72;
			break;
        case 4:
			fs_flash1.draw_angle = 50*spr_dir;
			fs_flash1.x = x-96*spr_dir;
			fs_flash1.y = y-32;
			break;
        case 5:
			fs_flash1.draw_angle = 270*spr_dir;
			fs_flash1.y = y-128;
			break;
		//type 2 - afterimage blasts
		case 0.5: case 1.5: case 2.5: case 3.5: case 4.5:
			fs_flash2.x = fs_afterimage_pos[0][fs_flash_count-0.5];
			fs_flash2.y = fs_afterimage_pos[1][fs_flash_count-0.5];
			break;
    }
}