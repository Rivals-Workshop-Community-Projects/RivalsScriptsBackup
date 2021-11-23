
//reset flag: set to TRUE explicitly in the attack
lev_bypass = false;

// per-attack logic
switch(attack)
{
	//===========================
	case 2: //B
	{
        can_wall_jump = (window == 3 || window == 6)

		lev_bypass = window < 6;
		if (!free && window < 4)
		{
			window = 4;
			window_timer = 0;
			attack_end();
		}
		else if (window == 3)
		{
			if (special_down && !was_parried) window_timer = 0;
            do_faster_falling();
		}
		
		//hold special to continue attack from window 5
		set_window_value(attack, 5, AG_WINDOW_GOTO, (special_down && !was_parried) ? 3 : 0);
		//only active when falling
		set_hitbox_value(attack, 2, HG_WINDOW, (vsp > 1) ? 3 : 0);
	} break;
	//===========================
	case 3: //C
	{
        if (window == 1)
        {
            can_move = false;
            hsp *= 0.85;
            vsp *= 0.85;
            lev_bypass = true;
        }
        else if (window == 2 || window == 3)
		{
            can_move = false;
            lev_bypass = true;
            move_cooldown[attack] = 60;
		}
	} break;
	//===========================
	case 4: //D
	{
        if (window == 1)
        {
            vsp *= 0.85;
        }
        else if (window == 2)
        {
            vsp *= 0.45;
            can_move = false;
            if (hsp < unown_d_speed) hsp += unown_d_accel;
            lev_bypass = true;
        }
	} break;
	//===========================
	case 6: //F
	{
        if (window == 1)
		{
			set_window_value(attack, 1, AG_WINDOW_GOTO, (left_down ? 6 : 0));
		}
	} break;
	//===========================
	case 8: //H
	{
        if (window == 2 && window_timer == 1 && attack_down && !hitpause)
		{
			hsp -= 4;
		}
	} break;
	//===========================
	case 9: //I
	{
		if (window == 1 && window_timer == 1)
		{
			unown_i_angle = 90;
		}
		else if (window <= 2)
		{
			
			if (window == 1 && !special_down 
			&& 	window_timer > get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME))
			{
			    window = 2;
			    window_timer = 0;
			}
			else if (window == 2 
		    && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		    {
		     	//reposition hitboxes
		     	unown_i_angle = (360 + unown_i_angle) % 180;
		     	
		     	var unit_distance = get_hitbox_value(attack, 0, HG_HITBOX_X);
		     	var unit_x = lengthdir_x(unit_distance, unown_i_angle);
		     	var unit_y = lengthdir_y(unit_distance, unown_i_angle);
		     	
		     	for (var i = 1; i <= get_num_hitboxes(attack); i++)
		     	{
				    var mult_dist = (i % 2 == 0 ? 1 : -1) * floor((i+1)/2);
				    set_hitbox_value(attack, i, HG_HITBOX_X, mult_dist * unit_x);
				    set_hitbox_value(attack, i, HG_HITBOX_Y, -unown_eye_center_offset + mult_dist * unit_y);
		     	}
		    }
			else if (!joy_pad_idle)
			{
				var lerp_strength = (window = 1 ? 0.35 : 0.07);
				unown_i_angle = round(lerp(unown_i_angle, joy_dir, lerp_strength));
			}
		}
		else if (window == 4 && window_timer > 5)
		{
			unown_i_angle = round(lerp(unown_i_angle, 90, 0.15));
		}
	} break;
	//===========================
	case 10: //J
	{
		if (window == 1)
		{
			unown_j_victim = noone;
		}
        else if (window == 4)
		{
			vsp *= 0.1; hsp *= 0.1;
			lev_bypass = true;
			
			if (instance_exists(unown_j_victim))
			{
				//keep in hitpause
				unown_j_victim.hitstop++;
				
				//lerp towards target pos
				var array_index = min(array_length(unown_j_positions) - 1, window_timer);
				unown_j_victim.x = 
				   lerp(unown_j_victim.x, x + unown_j_positions[array_index].x, 0.35);
				unown_j_victim.y =
				   lerp(unown_j_victim.y, y + unown_j_positions[array_index].y 
				                            + (unown_j_victim.char_height/2), 0.35);
			}
			else { unown_j_victim = noone; }
		}
		
	} break;
	//===========================
	case 12: //L
	{
        can_wall_jump = (window == 3 || window == 6)

		lev_bypass = !(window == 5 || window == 7);
		if (window < 4)
		{
            if (!free)
            {
                window = 4;
                window_timer = 0;
                attack_end();
                destroy_hitboxes();
                shake_camera(12, 7);
            }
            else if (has_hit || has_hit_player)
            {
                window = 6;
                window_timer = 0;
                attack_end();
                destroy_hitboxes();
                has_hit_player = false;
                has_hit = false;
            }
            else if (window == 3)
            {
                if (special_down && !was_parried) window_timer = 0;
                do_faster_falling();
            }
		}
		
		//hold special to continue attack from window 6
		set_window_value(attack, 6, AG_WINDOW_GOTO, (special_down && !was_parried) ? 3 : 0);
		//only active when falling
		set_hitbox_value(attack, 2, HG_WINDOW, (vsp > 1) ? 3 : 0);
	} break;
	//===========================
    case 17: //Q
    {
        if ((window == 3) || (window == 2 && has_hit_player))
        && (strong_down)
        {
        	window = 4;
        	window_timer = 0;
        	hsp *= 0.75;
        	vsp *= 0.75;
        	//hitpause case
        	old_hsp *= 0.75;
        	old_vsp *= 0.75;
        	destroy_hitboxes();
        }
        else if (window == 4)
        {
        	lev_bypass = true;
        	vsp *= 0.55;
        }
    }break;
	//===========================
    case 20: //T
    {
        if (window == 1 && window_timer <= 1)
        {
            unown_t_times_through = 0;
        }

        if (window == 3) && (special_down)
        {
            //VSP boost
            vsp -= 0.2;

            if (unown_t_times_max > unown_t_times_through)
            && (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ))
            {
                window_timer = 0;
                unown_t_times_through++;
                attack_end();
            }
        }
    }break;
	//===========================
    case 21: //U
    {
        if (window == 1 && window_timer <= 1)
        {
            unown_u_bounced = false;
        }
        else if (!unown_u_bounced && has_hit && !hitpause)
        {
        	unown_u_bounced = true;
        	vsp = min(-5, vsp -3);
        }
    }break;
	//===========================
    case 22: //V
    {
        if (window == 2 && has_hit)
        {
        	window = 4;
        	window_timer = 0;
        	destroy_hitboxes();
        }
        else if (window == 4 && !hitpause)
        {
        	vsp = max(fast_fall, vsp);
        }
    }break;
	//===========================
    case 28: //?
    {
    	lev_bypass = true;
    }break;
	//===========================
    case AT_EXTRA_1: //Pseudoparry
    {
        if (window == 1) 
        {
            perfect_dodging = true;
            lev_bypass = true;
        }
        has_hit_player = perfect_dodged;
    }break;
	//===========================
	default: break;
}

//prevent attacks from being able to land on platforms when the inputs are there to go through
fall_through = (down_down) && (!lev_bypass);


#define do_faster_falling()
{
    if (vsp >= max_fall && vsp < fast_fall)
    {
        vsp += gravity_speed;
    }
}