//attack_update

//B - Reversals
switch(attack)
{
	case AT_NSPECIAL: case AT_FSPECIAL: case AT_DSPECIAL: case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

//charge attack mechanic - holding down attack will allow keqing to use chargeless strongs out of tilts
switch(attack)
{
	case AT_JAB:
		switch (window) //check for all endlag windows for jab (seperated like this cuz it's more comfterable to edit)
		{
			//charge attack mechanic
			case 3: //jab 1
			case 6: //jab 2
			case 9: //jab 3
			case 12: //jab 4
			case 16: //jab 5
				if (attack_down_counter >= 10 && attack_down && window_timer >= window_cancel_time && !was_parried)
				{
					if (window == 12 && free) window_timer = 5; //jab 4 is airborne but keqing shouldn't use F-strong in midair
					else use_charge_attack();
				}
				break;
			//
			//jab 5 startup
			case 13: 
				vsp = 60; //needs to be set up here manually or there will be jank with air canceling
				if (window_timer == window_end && free) window_timer = 0;
				break;
		}
	case AT_FTILT: case AT_DTILT: case AT_UTILT: //should skip endlag
		if (attack_down_counter >= 10 && attack_down && window == window_last && window_timer >= window_end-5 && !was_parried) use_charge_attack();
		break;
	case AT_FSTRONG: case AT_DSTRONG: case AT_USTRONG:
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
}

//using different strongs/hitting with F-spec's wave slash will send the enemy in different directions
switch (attack)
{
	case AT_USTRONG: //sends up
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
		break;
	case AT_DSTRONG: //sends down
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 290);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
		break;
	case AT_FSTRONG: default: //sends in the opposite direction keqing is facing
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
		if (instance_exists(artc_marker))
		{
			if (spr_dir) set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
			else set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 130); //180-50
		}
		break;
}

//other normals stuff
switch(attack)
{
	case AT_JAB:
		if (get_match_setting(SET_TURBO) && window == 1) clear_button_buffer(PC_ATTACK_PRESSED);
		if (window == 9)
		{
			if (window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME))
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
					set_state(PS_IDLE);
					can_jab4 = false;
				}
			}
		}
		if (window >= 10 && window <= 13) can_fast_fall = false; //no hitfalling on jab 4
		break;
	case AT_FSTRONG: //the effect work for the strongs is on update.gml instead, i can't put window_timer = 0 here
		if (window == 4 && window_timer == 4) fstrong_hitbox = create_hitbox(attack, 1, slash_pos_x+16*spr_dir, slash_pos_y);
		if (window == 5 && window_timer == 3) fstrong_hitbox = create_hitbox(attack, 2, slash_pos_x+16*spr_dir, slash_pos_y);
		
		if (instance_exists(fstrong_hitbox) && fstrong_hitbox != noone) fstrong_hitbox.fx_particles = 1;
		break;
	case AT_DAIR:
		if (window == 1 && window_timer > 1)
		{
			dair_time = 0;
			if (!free)
			{
				window = 3;
				window_timer = 0;
			}
		}
		if (window == 2)
		{
			can_wall_jump = true;
			if (!hitpause) dair_time ++;
			if (dair_time >= dair_cancel_time) can_shield = true;
		}
		if (window == 3 && window_timer == 0 && !hitpause) spawn_hit_fx(x+0*spr_dir, y, fx_dair_aoe); //placeholder effect
		break;
	case AT_DATTACK:
		var prev_hsp = hsp;
		if (down_down && !free && !hitpause && !was_parried) hsp = 8*spr_dir;
		break;
}


//if there's an enemy with a stilleto, allow nspec cancel
//although this only actually activates according to hit_player
if (stilleto_id != noone && attack != AT_BURST) nspec_cancel = true;
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
if (attack == AT_NSPECIAL_2 && window == 3 && window_timer == 1)
{
	nspec_cancel_aim = false;
	stilleto_id = noone;
	if (instance_exists(artc_marker)) instance_destroy(artc_marker);
}


//specials
switch(attack)
{
	case AT_NSPECIAL: //stilleto spawn
		can_move = false;
		can_fast_fall = false;

		//if (window == 4) hsp = 50*spr_dir;
		//if (window == 6) hsp = 0;

		switch (window)
		{
			case 1:
				//this part makes keqing face the right way
				if (spr_dir) marker_angle = 0;
				else marker_angle = 180;
				break;
			case 2: //aim logic
				//this makes her fall slow
				hsp = clamp(hsp, -2, 2);
				vsp = min(vsp, 2);

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
					can_shield = true; //shield cancel to sto aiming
					if (!joy_pad_idle && marker_aim_timer > 0) marker_angle = joy_dir;

					//no raycasting take
					//marker_dist_x = lengthdir_x(marker_dist, marker_angle);
					//marker_dist_y = lengthdir_y(marker_dist, marker_angle);
					//
					//artc_marker.x = x + marker_dist_x;
					//artc_marker.y = y + marker_dist_y-32;

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

		if (window <= 2 && vsp > 2) vsp = 2;
		if (window == 2) do_electro_particles(2, 1, 1);
		if (window == 3)
		{
			x = temp_marker_x;
			y = temp_marker_y;
		}
		if (window == 4 && window_timer == 1) spawn_hit_fx(x, y-32, fx_nspec_warpend);

		if (window >= 4 || window == window_last && window_timer <= 4)
		{
			uspec_to_nspec_cancel = false;
			can_move = false;
			hsp = 0;
			vsp = 0;
			x = x;
			y = y;
		}

		//pratfall keqing if she doesn't land the hit (i probably don't need this cuz the move has a cooldown anyways)
		if (window == window_last && window_timer == window_end && !has_hit_player && free) set_state(PS_PRATFALL);



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

		//electric particles
		//if (window < 3) do_electro_particles(4, 0, 0);

		if (was_parried && !free) set_state(PS_PRATLAND);
		break;
	case AT_USPECIAL: //pika pi
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;

		//makes keqing jump on the first uspec only
		//just experimenting
		//if (window == 1 && window_timer == 1) vsp = -6;

		switch (window)
		{
			case 1: //check if the uspec started on the ground or not to see if it should pratfall
				if (window_timer == 1)
				{
					if (free) uspec_started_grounded = false;
					else uspec_started_grounded = true;
				}
				break;
			case 2: //quick slash start effect
				if (window_timer == window_end)
				{
					var uspec_vanish = spawn_hit_fx(x, y-32, fx_uspec_vanish);
					uspec_vanish.depth = -6;
				}
				break;
			case 3: //movement
				if (!hitpause && window_timer == 1)
				{
					fall_through = true;

					//quick slash aim logic
					if (joy_pad_idle) joy_dir = 90;
					hsp = lengthdir_x(uspec_travel_dist, joy_dir);
					vsp = lengthdir_y(uspec_travel_dist, joy_dir);
					prev_joy_dir = joy_dir;

					if (joy_dir > 90 && joy_dir < 270) spr_dir = -1;
					else if (joy_dir < 90 || joy_dir > 270) spr_dir = 1;
				}
				if (window_timer == 2)
				{
					uspec_flash = spawn_hit_fx(x, y-32, fx_uspec_flash);

					if (!hitpause)
					{
						if (hsp == 0 && (left_down || right_down)) uspec_flash.x = x-96*spr_dir;
						if (vsp == 0 && (down_down || up_down)) uspec_flash.y = y-112;
					}

					if (spr_dir) uspec_flash.draw_angle = prev_joy_dir;
					else uspec_flash.draw_angle = prev_joy_dir+180;
				}
				if (window_timer == window_end) spawn_hit_fx(x, y-32, fx_nspec_cursorspawn); //lol reusing effects
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
					if (uspec_count < uspec_max && special_down && !joy_pad_idle && !was_parried)
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
			if (window_timer == 2 && afterimage_amount < 2) //limit the amount of afterimage articles that can spawn
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

				if ("fs_char_initialized" in self && fs_char_initialized) fs_force_fs = false;
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
}

//taunts
switch(attack)
{
	case AT_TAUNT: //to be the weapon select pose
		break;
	case AT_TAUNT_2: //to be the lyre
		/*
		var lyre_sound = sound_get("_lyre");
		var lyre_inc_value = 0.062475; //this changes the pitch
		//var const = 1.05946309436; //12th root of 2; important music constant

		if (window_timer == 1)
		{
			if (window == 1) lyre_hud_play_fade = 1;
			if (window == 3) lyre_hud_play_fade = -1;
		}

		//the time she plays the lyre
		//this kinda replaces the state timer's purpose in case i need to change animation speeds in window 1
		//dw about it
		if (window == 2) 
		{
			playing_lyre_timer ++;

			//cancel playing the lyre if you press taunt again
			if (taunt_pressed && down_down)
			{
				window = 3;
				window_timer = 0;
				playing_lyre_timer = 0;
			}
		}
		
		if (playing_lyre_timer > 0) user_event(1);

		//lyre logic (cancel logic in the end of this statement)
		if (playing_lyre_timer > 0)
		{
			//set the prev note to the current one (it's like on the healing)
			prev_note_id = note_id;

			//change the key held time if it's held down
			if (note_id > -1) key_held_time ++;

			//custom key inputs
			//i can literally add as many keys as i want
			switch (keyboard_key)
			{
				default: note_id = -1; break; //no keys held down at all	
				
				//full keyboard ver
				//octwave 1
				case 90: note_id = 0+12*0; break; //do	//z
				//1
				case 88: note_id = 2+12*0; break; //re	//x
				case 67: note_id = 3+12*0; break; //me	//c
				//4
				case 86: note_id = 5+12*0; break; //fa	//v
				//6
				case 66: note_id = 7+12*0; break; //sol	//b
				//8
				case 78: note_id = 9+12*0; break; //la	//n
				case 77: note_id = 10+12*0; break; //si	//m
				//11
				
				//octwave 2
				case 65: note_id = 0+12*1; break; //do	//a
				//1
				case 83: note_id = 2+12*1; break; //re	//s
				case 68: note_id = 3+12*1; break; //me	//d
				//4
				case 70: note_id = 5+12*1; break; //fa	//f
				//6
				case 71: note_id = 7+12*1; break; //sol	//g
				//8
				case 72: note_id = 9+12*1; break; //la	//h
				case 74: note_id = 10+12*1; break; //si	//j
				//11

				//octwave 3
				case 81: note_id = 0+12*2; break; //do	//q
				//1
				case 87: note_id = 2+12*2; break; //re	//w
				case 69: note_id = 3+12*2; break; //me	//e
				//4
				case 82: note_id = 5+12*2; break; //fa	//r
				//6
				case 84: note_id = 7+12*2; break; //sol	//t
				//8
				case 89: note_id = 9+12*2; break; //la	//y
				case 85: note_id = 10+12*2; break; //si	//u
				//11


				//numpad ver
				//case 96: note_id = 0; break; //numpad 0  // C
				//case 110: note_id = 1; break; //decimal point  // C#
				//case 97: note_id = 2; break; //numpad 1  // D
				//case 98: note_id = 3; break; //numpad 2  // D#
				//case 99: note_id = 4; break; //numpad 3  // E	
				//case 100: note_id = 5; break; //numpad 4  // F
				//case 101: note_id = 6; break;//numpad 5  // F#
				//case 102: note_id = 7; break; //numpad 6  // G
				//case 103: note_id = 8; break; //numpad 7  // G#
				//case 104: note_id = 9; break; //numpad 8  // A
				//case 105: note_id = 10; break; //numpad 9  // A#
				//case 111: note_id = 11; break; //divide  // B
				//case 106: note_id = 12; break; //multiply  // C
			}
			//if a key isn't held ot the prev note isn't the same one, reset the timer
			if (note_id == -1 || prev_note_id != note_id) key_held_time = 0;

			//play sound
			if (key_held_time == 1) sound_play(lyre_sound, 0, 0, 1, (note_id*lyre_inc_value)+1);
		}
		*/
		break;
}

//KEQING JUMP GLITCH (19/3/2021 - 9/6/2021, was patched in genshin impact v1.6)
// - step 1: put up a lightning stilleto
// - step 2: use keqing's lyre taunt
// - step 3: durring the startup, press special to teleport to the stilleto
// - step 4: depending on the angle and distance keqing is from the stilleto, she will do a massive leap
//THIS ONLY WORKS IN TRAINING MODE! (maybe it should be a cheat instead lol)

if (attack == AT_TAUNT_2 && get_match_setting(SET_PRACTICE))
{
	//timing
	if (window < 2)
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
				if (stilleto_id == noone)
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