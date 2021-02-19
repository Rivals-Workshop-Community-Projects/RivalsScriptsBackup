with(asset_get("oPlayer"))
{

	if(state_cat == SC_HITSTUN)
	{
		jcroll_hsp = 0;
		jcroll_flag = false;
	}

	if(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD)
	{
		if(window == 1 && window_timer < jcroll_window_length)
		{
			if(jump_pressed)
			{
				jcroll_flag = true;
				jcroll_hsp = clamp(hsp, air_max_speed * -other.air_speed_limit_multiplier, air_max_speed * other.air_speed_limit_multiplier);
				window_timer = 13;
			}
		}
		
		if(window == 2 && jcroll_flag)
			set_state(PS_JUMPSQUAT);
	}

	if(state == PS_FIRST_JUMP && jcroll_flag)
	{
		hsp = jcroll_hsp;
		jcroll_hsp = 0;
		jcroll_flag = false;
	}
	else if(state_cat == SC_GROUND_COMMITTED && !(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_JUMPSQUAT) && jcroll_flag)
	{
		jcroll_hsp = 0;
		jcroll_flag = false;
	}

	// print_debug("attack: " + string(attack) + "; window: " + string(window) + "; window_timer: " + string(window_timer));
	// print_debug(string(roll_forward_active_frames));
}