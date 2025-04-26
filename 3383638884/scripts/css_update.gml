//custom colors
/*
if(instance_exists(cursor_id))
{
	for (var cur = 0; cur < 4; cur++)
	{
		if(get_player_hud_color(cur+1) == $64e542) phone_online = true;
	}
	if(color_menu_open)
	{
		suppress_cursor = true;
		cur_x = get_instance_x(cursor_id);
		cur_y = get_instance_y(cursor_id);
		
		n = 0;
		while(n<3)
		{
			switch(n){
				case 0: var slider_x = slider_r[color_menu_cur_slot]; break;
				case 1: var slider_x = slider_g[color_menu_cur_slot]; break;
				case 2: var slider_x = slider_b[color_menu_cur_slot]; break;
			}
				
			if(cur_x >= x + slider_x + 124 - 2 && cur_x <= x + slider_x + 124 + 10 && cur_y >= y + 92 + n*10 && cur_y <= y + 92 + n*10 + 10)
			{
				if(menu_a_pressed)
					slider_held = n + 1;
			}
			n++;
		}
		if(slider_held > 0)
		{
			var slider_x = clamp(cur_x - x - 124 - 3, 0, 68);
			switch(slider_held){
				case 1: slider_r[color_menu_cur_slot] = slider_x; break;
				case 2: slider_g[color_menu_cur_slot] = slider_x; break;
				case 3: slider_b[color_menu_cur_slot] = slider_x; break;
			}
			if(!menu_a_down)
				slider_held = 0;
		}

		if(cur_x >= x + 120 && cur_x <= x + 120 + 82 && cur_y >= y + 35 && cur_y <= y + 35 + 14)
		{
			n = 1;
			while(n<14)
			{
				if(cur_x < x + 120 + n*6)
				{
					if(n != -color_preset_highlight)
						color_preset_highlight = n;
					break;
				}
				n++;
			}
			if(menu_a_pressed && color_preset_highlight > 0)
			{
				print_debug("switching to preset " + string(color_preset_highlight));
				n = 1;
				while(n<9)
				{
					slider_r[n] = round(get_color_profile_slot_r(color_preset_highlight-1, n-1)*68/255);
					slider_g[n] = round(get_color_profile_slot_g(color_preset_highlight-1, n-1)*68/255);
					slider_b[n] = round(get_color_profile_slot_b(color_preset_highlight-1, n-1)*68/255);
					n++;
				}
				if(color_preset_highlight == 1)
				{
					slider_r[1] = 68;
					slider_g[1] = 68;
					slider_b[1] = 68;
					slider_r[2] = 41;
					slider_g[2] = 41;
					slider_b[2] = 41;
				}
				color_preset_highlight *= -1;
			}
		}
		else
			color_preset_highlight = 0;

		n = 1;
		while(n<9)
		{
			if(menu_a_pressed && cur_x >= x + 102 + n*20 - (n>4)*80 && cur_x <= x + 102 + n*20 - (n>4)*80 + 18 && cur_y >= y + 54 + (n>4)*20 && cur_y <= y + 54 + (n>4)*20 + 18)
			{
				color_menu_cur_slot = n;
			}
			n++;
		}

		if(cur_x >= x + 140 && cur_x <= x + 140 + 40 && cur_y >= y + 128 && cur_y <= y + 128 + 14)
		{
			if(menu_a_pressed)
			{	
				bucket_ok_pressed = true;
			}
			if(!menu_a_down && bucket_ok_pressed)
			{
				bucket_ok_pressed = false;
				color_menu_open = false;

				//=========================================================================================================================== setting the pallete to gameplay
				set_synced_var(player, 1);
				n = 0;
				while(n<8)
				{
					set_color_profile_slot(14, n, round(slider_r[n+1]*255/68), round(slider_g[n+1]*255/68), round(slider_b[n+1]*255/68));
					n++;
				}
				init_shader();
			}
		}
		else
			bucket_ok_pressed = false;
	}
	else
	{
		if(get_synced_var(player) == 1)
			suppress_cursor = true;
		
		cur_x = get_instance_x(cursor_id);
		cur_y = get_instance_y(cursor_id);
	
		//paint bucket
		if(!is_online && cur_x >= x + 24 && cur_x <= x + 24 + 23 && cur_y >= y + 78 && cur_y <= y + 78 + 24)
		{
			suppress_cursor = true;
			if(menu_a_pressed)
			{	
				bucket_ok_pressed = true;
			}
			if(!menu_a_down && bucket_ok_pressed)
			{
				bucket_ok_pressed = false;
				if(get_synced_var(player) == 0)
					color_menu_open = true;
				else
				{
					set_synced_var(player, 0);
					init_shader();
				}
			}
		}
		else
			bucket_ok_pressed = false;
	}
}
else
	bucket_ok_pressed = false;
*/