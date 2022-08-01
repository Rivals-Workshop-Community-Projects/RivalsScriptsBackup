if ("syncUID" in id && syncUID == 25005)
{
	if (instance_exists(cursor_id))
	{
		var temp_x = x + 8;
		var temp_y = y + 9;
		if (player == 0)
		{
			buttonInfo.x = 8;
			buttonInfo.y = 39;
		}
		else if (get_player_hud_color(player) == 8421504)
		{
			buttonInfo.x = 50;
			buttonInfo.y = 169;
		}
		else
		{
			buttonInfo.x = 66;
			buttonInfo.y = 169;
		}
		isTroll = get_synced_var(player);
		buttonInfo.hover = point_in_rectangle(get_instance_x(cursor_id)-temp_x, get_instance_y(cursor_id)-temp_y, buttonInfo.x, buttonInfo.y, buttonInfo.x+30, buttonInfo.y+26);
		if (buttonInfo.hover)
		{
			if (player == 0) suppress_cursor = true;
			if (menu_a_pressed)
			{
				isTroll = !isTroll;
                if(isTroll)
                {
                    sound_play(sound_get("jumper_shoot"),0,0);
                }
                else
                {
                    sound_play(sound_get("rocket_shoot"),0,0);
                }
				sound_play(asset_get("mfx_option"),0,0);
			}
		}
	}
	set_synced_var(player, isTroll);
	user_event(0);
}

#define point_in_rectangle(px, py, x1, y1, x2, y2)
{
	return px >= x1 && px <= x2 && py >= y1 && py <= y2;
}