with(asset_get("oPlayer"))
{
	if(state == PS_HITSTUN && hitpause)
	{
		if(old_vsp <= 0)
			wector_speed = orig_knock;
		wector_flag = false;
		wector_charge_counter = 0;
	}

	if(state == PS_HITSTUN && free)
	{
		if(up_down && !wector_flag && wector_speed > 0)
			wector_charge_counter++;
		else if(!wector_flag)
			wector_charge_counter = 0;

		if(wector_charge_counter == other.charge_time && !wector_flag)
		{
			wector_flag = true;
			wector_charge_counter = 0;
			sound_play(asset_get("mfx_star"));
		}
	}
	else if(free && wector_flag)
	{
		var spd = wector_speed;// (wector_speed + point_distance(0,0,hsp,vsp))/2;
		hsp = lengthdir_x(spd, joy_dir);
		vsp = lengthdir_y(spd, joy_dir);
		wector_speed = 0;
		wector_flag = false;
	}

	else
		wector_charge_counter = 0;
}