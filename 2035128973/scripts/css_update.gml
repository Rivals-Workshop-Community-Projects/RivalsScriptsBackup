if ("syncUID" in id && syncUID == 15005 && player != 0)
{
	var isCPU = get_player_hud_color(player) == 8421504;
	var temp_x = x + 8;
	var temp_y = y + 9;

	if (isCPU)
	{
		if (cpuHoverPlayer == -1)
		{
			for (var i = 1; i <= 4; ++i)
			{
				var c = cursors[i];
				if (point_in_rectangle(get_instance_x(c)-temp_x, get_instance_y(c)-temp_y, buttonInfo.x, buttonInfo.y, buttonInfo.x+30, buttonInfo.y+26))
				{
					cpuHoverPlayer = i;
					cursor_id = cursors[i];
					break;
				}
			}
		}
		else
		{
			cursor_id = cursors[cpuHoverPlayer]
			if (!point_in_rectangle(get_instance_x(cursor_id)-temp_x, get_instance_y(cursor_id)-temp_y, buttonInfo.x, buttonInfo.y, buttonInfo.x+30, buttonInfo.y+26))
			{
				cpuHoverPlayer = -1;
				cursor_id = cursors[player];
			}
		}
	}
	else
	{
		cpuHoverPlayer = -1;
		cursor_id = cursors[player];
	}

	if (instance_exists(cursor_id))
	{
		if (get_player_hud_color(player) == 8421504)
		{
			buttonInfo.x = 50;
			buttonInfo.y = 169;
		}
		else
		{
			buttonInfo.x = 66;
			buttonInfo.y = 169;
		}
		buttonInfo.hover = point_in_rectangle(get_instance_x(cursor_id)-temp_x, get_instance_y(cursor_id)-temp_y, buttonInfo.x, buttonInfo.y, buttonInfo.x+30, buttonInfo.y+26);
		if (buttonInfo.hover)
		{
			//if (player == 0) suppress_cursor = true;
			if (menu_a_pressed)
			{
				eyeShine = 36;
				isAccurate = !isAccurate;
				sound_play(asset_get("mfx_option"),0,0);
				set_synced_var(player, isAccurate?syncUID:0);
				user_event(0);
			}
		}
	}
}

#define point_in_rectangle(px, py, x1, y1, x2, y2)
{
	return px >= x1 && px <= x2 && py >= y1 && py <= y2;
}