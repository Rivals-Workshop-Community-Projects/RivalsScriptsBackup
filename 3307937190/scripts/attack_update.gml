//attack_update.gml

custom_attack_grid();

//B-reverse - it allows the character to turn in while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_FAIR:
		if(window == 1)
			reset_attack_value(attack, AG_NUM_WINDOWS);
		if((window == 3 || window == 6 || window == 9) && 
			(attack_pressed || strong_down || right_stick_pressed || up_stick_pressed  || left_stick_pressed || down_stick_pressed ||
			 right_strong_pressed || up_strong_pressed  || left_strong_pressed  || down_strong_pressed) && window_timer >= 3 && has_hit)
		{
			if ((right_strong_pressed || right_down && attack_pressed || right_stick_pressed ) && spr_dir == 1 ||
			(left_strong_pressed || left_down && attack_pressed || left_stick_pressed ) && spr_dir == -1)
			{
				clear_button_buffer(PC_ATTACK_PRESSED);
				set_attack_value(attack, AG_NUM_WINDOWS, window+3);
				window = window+1;
				window_timer = 0;
			}
			else
			{
				can_attack	= true;
			}
			has_hit = false;
			has_hit_player = false;
		}
		break;
	case AT_DATTACK:
		if (window == 1){
			reset_attack_value(attack, AG_NUM_WINDOWS);
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_base_dust( x - (10 * spr_dir), y, "dattack", spr_dir);
			}
		}
		if(has_hit && window == 2 && !hitpause)
		{
			set_attack_value(attack, AG_NUM_WINDOWS, 4);
			window = 4;
			window_timer = 0;
			hsp = 2*spr_dir;
			vsp = -7;
			spawn_base_dust( x - (0 * spr_dir), y, "jump", spr_dir);
		}
		if (window == 4 && window_timer > 3)
			iasa_script();
		break;
	case AT_UAIR:	
		if(window != 3) hud_offset = 40;
		break;
	case AT_UTILT:	
		if(window != 1) hud_offset = 30;
		if(window == 3)
			set_attack_value(attack, AG_CATEGORY, 1);
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_FSPECIAL:
		can_wall_jump = true;
		if(state_timer == 1 && free) past_fspec_used = true;
		can_move = (window == 2);
		if(window >= 2 && window_timer == 2)
		{
			set_attack_value(AT_FSPECIAL, AG_CATEGORY, 1);
		}
		if(window == 1 && window_timer == 11)
		{
			sound_play(asset_get("sfx_orca_soak"),false,noone,1,2);
		}
		break;
	case AT_USPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;
		if(window == 1 && window_timer == 8)
		{
			sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,1.4);
			sound_play(asset_get("sfx_ori_charged_flame_release"),false,noone,1,1.1);
		}

		if (window == 1) 
		{
			uspec_grab_id = noone;
			vsp /= 1.2;
		}
		else hud_offset = 40;
		if (window <= 3) hsp = clamp(hsp, -3, 3);
		if (window > 1 && window < 4 && uspec_grab_id != noone && !hitpause)
		{
			uspec_grab_id.x = lerp(uspec_grab_id.x, x+45*spr_dir,0.1);
			uspec_grab_id.y = lerp(uspec_grab_id.y, y-20,0.1);
		}
		break;
	case AT_DSPECIAL:
		move_cooldown[AT_DSPECIAL] = 10;
		if(window == 1 && window_timer == window_end)
		{
			sound_play(asset_get("sfx_blow_weak1"),false,noone,1,2);
			sound_play(asset_get("sfx_orca_absorb"),false,noone,1,2);
			hbox = create_hitbox(AT_DSPECIAL, 1, x+16*spr_dir, y-54);
			hbox.ink_hold = ink_hold;
			hbox.ink_apply = true;
			hbox.hit_effect = fx_hit_ink_col1[ink_hold];
			hbox.fx_particles = ink_hold+1;

			if (ink_hold == 1) hbox.sprite_index = sprite_get("dspecial_blue");
			else if (ink_hold == 2) hbox.sprite_index = sprite_get("dspecial_yellow");

			//sorry supersonic but i was asked to change the order.
			switch(ink_hold)
			{
				case 0: ink_hold = 2; break;
				case 1: ink_hold = 0; break;
				case 2: ink_hold = 1; break;
			}
			/*ink_hold ++;
			ink_hold %= 3; //makes sure it doesnt go above 2. cool cap technique.
			*/
		}
		break;
	case AT_NSPECIAL:
		move_cooldown[AT_NSPECIAL] = 40;
		if(state_timer <= 1 && !past_nspec_used) 
			past_ff_nspec = false;
		else if(state_timer < 5 && down_down)
			past_ff_nspec = true;

		//Fire Ink
		if(window <= 3)
		{
			reset_attack_value(attack, AG_NUM_WINDOWS);
			if(window == 1 && window_timer == 6)
				sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,1,1.1)
			else if(window == 2) 
			{
				can_fast_fall = false;
				can_move = false;
				if(!past_nspec_used && !past_ff_nspec) vsp /= 2;
				hsp /= 2;
			}
			else if(!past_ff_nspec && window == 3)
				past_nspec_used = true;

			if(has_hit)
				can_jump = true;
		}
		//Blue Ink
		else if(window >= 4 && window <= 6)
		{
			set_attack_value(attack, AG_NUM_WINDOWS, 6);
			if(window == 5)
			{
				can_fast_fall = false;
				can_move = false;
				if(!past_nspec_used && !past_ff_nspec) vsp /= 2;
				hsp /= 2;

				if (window_timer == window_end)
				{
					sound_play(asset_get("sfx_ice_shatter"),false,noone,2)
					hbox = create_hitbox(AT_NSPECIAL, 2, x+64*spr_dir, y-30);
					hbox.ink_hold = 1;
					hbox.ink_apply = true;
					if(free)
					{
						vsp = -3;
						hsp = -2*spr_dir;
					}
				}
			}
			else if (window == 6)
			{
				if(!past_ff_nspec) past_nspec_used = true;
				if(window_timer > 12 && free)
					can_shield = true;
			}
		}
		else if(window >= 7 && window <= 9)
		{
			set_attack_value(attack, AG_NUM_WINDOWS, 9);
			if(window == 7)
			{
				can_fast_fall = false;
				can_move = false;
			}
			else if(window == 8)
			{
				if(!past_nspec_used && !past_ff_nspec) vsp /= 2;
				hsp /= 2;
				var thunder_hbox = noone;
				with(pHitBox)
				{
					if(player_id == other.id && attack == AT_NSPECIAL && hbox_num == 3)
					{
						thunder_hbox = id;
					}
				}
				if(window_timer == 1)
				{
					if(thunder_hbox != noone)
					{
						with(thunder_hbox)
						{
							sound_play(asset_get("sfx_absa_whip_charge"));
							hbox_state = 1;
							anim_timer = 0;
							hitbox_timer = 0;
						}
					}
					else 
						hbox = create_hitbox(AT_NSPECIAL, 3, x, y-50);
				}
			}
			else if(!past_ff_nspec) past_nspec_used = true;
		}
		break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case AT_TAUNT:
		if (window == 2 && window_timer == window_end-1 && taunt_down)
		{
			window_timer = window_end-2;
		}
		break;
	//case 2: //intro
		//if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		//if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
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

//written by supersonic, modified by bar-kun
#define spawn_base_dust
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}