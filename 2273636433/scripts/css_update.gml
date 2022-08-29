
//CSS Cursor Stuff
if instance_exists(cursor_id){
	var cur_x = get_instance_x(cursor_id);
	var cur_y = get_instance_y(cursor_id);
	
	if get_player_color(player) ==11 || get_player_color(player) ==12 {	
		if (cur_x > 178  + x )&& (cur_x <=  208  + x )&& (cur_y > 112 + y )&& (cur_y <=  138  + y ){		//Button Coordinates
			suppress_cursor = true;
			if menu_a_pressed  {
				set_synced_var( player, !get_synced_var( player)); // This is now the voice mode variable
				 sound_play(asset_get("mfx_option"));
				menu_a_pressed = false;
			}
		}
	} else {
		set_synced_var( player, false);
	}
}


