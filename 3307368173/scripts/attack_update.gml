//attack_update.gml

custom_attack_grid();

//B-reverse - it allows the character to turn in while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

if (attack == AT_JAB) {
    if (right_down-left_down == -spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player) {
        var win_time = get_window_value(attack,window,AG_WINDOW_LENGTH);
        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, win_time);
        if get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == win_time {
            set_state(PS_IDLE);
            // if you get ftilt frame-perfectly on parry you can carry the parry lag over
            // that doesn't happen in base cast so this fixes that
        }
    } else {
        reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
    }
}

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_UAIR:
        if(window >= 6)
            move_cooldown[AT_UAIR] = 10;
        if (window == 6 && !free && window_timer >= 2)
		{
            set_state(PS_LANDING_LAG);
            landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
		}
        if (window == 1)
        {
            reset_attack_value(attack, AG_NUM_WINDOWS);
            reset_attack_value(attack, AG_HAS_LANDING_LAG);
            reset_attack_value(attack, AG_CATEGORY);
        }
        if (my_grab_id != noone)
        {
            can_fast_fall = true;
            var grab_pos_x = 0;
            var grab_pos_y = 0;
            switch(window)
            {
                case 2:
                    if(!hitpause)
                    {
                        window = 4;
                        window_timer = 0;
                        vsp = -6;
                        hsp = -2*spr_dir;
                    }
                    break;
                case 5: 
                    hsp /= 1+(window_timer)/50;
                    if(y > room_height - 75)
                    {
                        window = 6;
                        window_timer = 0;
                    }
                    break;
                case 6:
                    if(window_timer == 1)
                    {
                        sound_play(asset_get("sfx_kragg_spike"), false, noone, 1.2)
                        sound_play(asset_get("sfx_ice_dspecial_ground"), false, noone, 0.7, 1)
                        draw_y = 10;
                        vsp = -8;
                        hsp = -2*spr_dir;
                    }
                    break;
            }
            switch(image_index)
            {
                case 8:
                    grab_pos_x = 25;
                    grab_pos_y = -15;
                    break;
                case 9:
                    my_grab_id.spr_dir = spr_dir;
                    my_grab_id.hurt_img = 2;
                    grab_pos_x = 15;
                    grab_pos_y = -25;
                    break;
                case 10:
                    grab_pos_x = 0;
                    grab_pos_y = -50;
                    break;
                case 11:
                    my_grab_id.hurt_img = 1;
                    grab_pos_x = -10;
                    grab_pos_y = -30;
                    break;
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                    if(image_index >= 14)
                    {
                        force_depth = true;
                        depth = my_grab_id.depth + 1;
                    }
                    my_grab_id.spr_dir = spr_dir*(image_index<14?1:-1);
                    grab_pos_x = (image_index<14?15:-15)*((image_index == 12 || image_index == 14)?2:1);
                    grab_pos_y = -10;
                    break;
            }
            
            my_grab_id.x = floor(lerp(my_grab_id.x, x+grab_pos_x*spr_dir, 0.5));
            my_grab_id.y = floor(lerp(my_grab_id.y, y+grab_pos_y, 0.5));
        }
        else
            can_fast_fall = true;
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_DSPECIAL:
        move_cooldown[AT_DSPECIAL] = 30;
        can_fast_fall = false;
        can_move = false;
        saro_dspec_used = true;
        if(window == 1)
        {
            hsp /= 2;
            vsp /= 2;
        }
        else if (window != 5)
        {
            hsp = 0;
            vsp = 0;
        }
        if(window == 1 && window_timer == 4)
            sound_play(sound_get("sword_move"),false,noone,1,1.5);

        if(window == 1 && window_timer == 13)
        {
            hbox_pos = 140;
            if(left_down && spr_dir == -1 || right_down && spr_dir == 1) hbox_pos = 210;
            else if (left_down && spr_dir == 1 || right_down && spr_dir == -1) hbox_pos = 75;

            sound_play(asset_get("sfx_abyss_hazard_burst"),false,noone, .2);
            fx = spawn_hit_fx(x+hbox_pos*spr_dir,y-30, 259);
            fx.depth = depth-99;
        }
        else if(window == 3)
        {
            if(window_timer == 1)
            {
                if(saro_frenzy != 0) 
                {
                    hbox = create_hitbox(AT_DSPECIAL, 2, x+hbox_pos*spr_dir,y-30);
                    hbox.dspec_level = saro_frenzy;
                }
                create_hitbox(AT_DSPECIAL, 1, x+hbox_pos*spr_dir,y-30);
                sound_play(sound_get("swing2"),false,noone,1,0.7)
                saro_frenzy = 0;
            }
            if(window_timer == 3)
                sound_play(sound_get("sfx_sword_swing_medium1"),false,noone,1,1.1)
        }
        break;
	case AT_FSPECIAL:
        can_fast_fall = false;

        if (window == 1) 
        {
            has_ledgesnapped = false;
            reset_attack_value(attack, AG_NUM_WINDOWS);
            saro_fspec_used = true;
        }
        else if (window <= 4)
        {
            if(window == 3 && !has_ledgesnapped && free)
            {
				for(i = 0; i<=24;i+=2)
					if(position_meeting(x+20*spr_dir,y-i,asset_get("par_block")) && !position_meeting(x+20*spr_dir,y-i-2,asset_get("par_block")))
					{ 	y = y-i-2; has_ledgesnapped = true; }
            }
            can_wall_jump = true;
            can_move = false;
        }
        else if (window >= 5 || window == 4 && window_timer <= 18)
        {
            hsp = 0;
            vsp = 0;
        }

        if (my_grab_id != noone)
        {
            var grab_pos_x = 0;
            var grab_pos_y = 0;
            var grab_lerp = (window == 5?0.25:0.5);
            switch(window)
            {
                case 3:
                case 4: 
                    if(!hitpause)
                    {
                        window = 5;
                        window_timer = 0;
                    }
                    break;
                case 5:
                    saro_fspec_used = false;
                    grab_pos_x = 34;
                    grab_pos_y = -5;
                    if((left_down || left_stick_down) && spr_dir == 1
                    || (right_down || right_stick_down) && spr_dir == -1)
                    {   window = 6; window_timer = 0; 
                        set_attack_value(attack, AG_NUM_WINDOWS, 8);
                    }
                    else if((right_down || right_stick_down) && spr_dir == 1
                    ||  (left_down || left_stick_down) && spr_dir == -1
                    || window_timer == 21)
                    {   window = 9; window_timer = 0; 
                        set_attack_value(attack, AG_NUM_WINDOWS, 11);
                    }
                    else if(up_down || up_stick_down)
                    {   window = 12; window_timer = 0; 
                        set_attack_value(attack, AG_NUM_WINDOWS, 14);
                    }
                    else if(down_down || down_stick_down)
                    {   window = 15; window_timer = 0; 
                        set_attack_value(attack, AG_NUM_WINDOWS, 17);
                    }
                    break;
            }
            switch(image_index)
            {
                //BTHROW
                case 14:
                case 17:
                    force_depth = true;
                    depth = my_grab_id.depth + 1;
                    my_grab_id.spr_dir = spr_dir*-1;
                    grab_pos_x = 26;
                    grab_pos_y = -5;
                    break;
                case 16:
                    force_depth = true;
                    depth = my_grab_id.depth + 1;
                    my_grab_id.spr_dir = spr_dir*-1;
                    grab_pos_x = 16;
                    grab_pos_y = -5;
                    break;
                case 15:
                case 18:
                    my_grab_id.spr_dir = spr_dir;
                    grab_pos_x = -16;
                    grab_pos_y = -5;
                    break;
                case 19:
                    my_grab_id.spr_dir = spr_dir;
                    grab_pos_x = -30;
                    grab_pos_y = -8;
                    break;
                //FTHROW
                case 23:
                case 24:
                    grab_pos_x = 10;
                    grab_pos_y = -5;
                    break;
                case 25:
                    grab_pos_x = 20;
                    grab_pos_y = -5;
                    break;
                //UTHROW
                case 30:
                    grab_pos_x = 20;
                    grab_pos_y = -20;
                    break;
                case 31:
                    grab_pos_x = 12;
                    grab_pos_y = -40;
                    break;
                case 32:
                case 33:
                    my_grab_id.hurt_img = 2;
                    grab_pos_x = 0;
                    grab_pos_y = -45;
                    break;
                case 34:
                    grab_pos_x = 0;
                    grab_pos_y = -70;
                    break;
                //DTHROW
                case 38:
                    grab_pos_x = 28;
                    grab_pos_y = -20;
                    break;
                case 39:
                case 40:
                case 41:
                    grab_pos_x = 28;
                    grab_pos_y = -24;
                    break;
            }
            if(window >= 5)
            {
                my_grab_id.x = floor(lerp(my_grab_id.x, x+grab_pos_x*spr_dir, grab_lerp));
                my_grab_id.y = floor(lerp(my_grab_id.y, y+grab_pos_y, grab_lerp));
                my_grab_id.fall_through = true;
            }
            if (window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			    sound_play(asset_get("sfx_swipe_heavy2"));
			}
        }
        break;
	case AT_USPECIAL:
        can_wall_jump = true;
        if(window == 1) 
            saro_uspec_used = true; 

        if(window != 4)
            can_fast_fall = false;
		break;
	case AT_TAUNT:
        if(window == 2 && taunt_down && window_timer == 20) 
        {
            window_timer = 0;
        }
		break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
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