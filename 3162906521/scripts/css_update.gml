
//CSS Cursor Stuff
if instance_exists(cursor_id){
	var cur_x = get_instance_x(cursor_id);
	var cur_y = get_instance_y(cursor_id);
	
	// if get_player_color(player) ==11 || get_player_color(player) ==12 {
		if (cur_x > 178  + x )&& (cur_x <=  208  + x )&& (cur_y > 32 + y )&& (cur_y <=  56  + y ){		//Button Coordinates
			suppress_cursor = true;
			if menu_a_pressed == true{
				if get_synced_var (player) == 0{
					sound_play(asset_get("mfx_option"));
					set_synced_var (player, 1);
					snd_rng = random_func(0, 4, true);
                    if (snd_rng == 0) {
                        sound_play(sound_get("v_yes1"));
                    }else if (snd_rng == 1) {
						sound_play(sound_get("v_yes2"));
                    }else if (snd_rng == 2) {
                        sound_play(sound_get("v_yes3"));
                    }else if (snd_rng == 3) {
					sound_play(sound_get("v_texasstyle"));
					}
					// print("I found that making an error causes it to work. Don't question it, Dan moment. -TinMines");
					// cursor_id.x = cursor_id.x - 200; //so this creates an error, but allows it to work? I think it's a Dan moment, but it makes it work so I can't complain
				} else if get_synced_var (player) > 1{
					set_synced_var (player, 0);
					sound_play(asset_get("mfx_option"));
					// print("I found that making an error causes it to work. Don't question it, Dan moment. -TinMines");
					// cursor_id.x = cursor_id.x - 200;
				} else if get_synced_var (player) == 1{
					if get_player_color(player) == 7{ //crazy dave alt
						set_synced_var (player, 2);
						sound_play(sound_get("cd_sun"), false, noone, 0.8);
					} else if get_player_color(player) == 8{
						set_synced_var (player, 3);
						sound_play(sound_get("pizza_parry"), false, noone, 0.7);
					} else{
						sound_play(asset_get("mfx_option"))
						set_synced_var (player, 0);
						// cursor_id.x = cursor_id.x - 200
					}
				}
				menu_a_pressed = false;
			}
		}
	// } else {
	// 	set_synced_var( player, false);
	// }
}


//, false, noone, 0.5