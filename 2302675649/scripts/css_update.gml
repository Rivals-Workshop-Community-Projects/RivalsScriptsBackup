if ("syncUID" in id && syncUID == 25005)
{
	var isCPU = get_player_hud_color(player) == 8421504;
	var temp_x = x + 8;
	var temp_y = y + 9;
	isFurry = get_synced_var(player)==syncUID;

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
		if (player == 0)
		{
			buttonInfo.x = 8;
			buttonInfo.y = 39;
		}
		else if (isCPU)
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
			if (player == 0) suppress_cursor = true;
			if (menu_a_pressed)
			{
				isFurry = !isFurry;
				sound_play(asset_get("mfx_option"),0,0);
				set_synced_var(player, isFurry?syncUID:0);
				user_event(0);
			}
		}
	}
}

#define point_in_rectangle(px, py, x1, y1, x2, y2)
{
	return px >= x1 && px <= x2 && py >= y1 && py <= y2;
}