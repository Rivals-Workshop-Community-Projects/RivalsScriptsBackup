var cur_x;
var cur_y;
var alt = get_player_color(player);

if (instance_exists(cursor_id)){

	sync_bools = get_synced_var( player );

	if (sync_bools == 0){
	style_button = 0;
	voice_button = 0;
	}

	if (sync_bools == 1){
	style_button = 0;
	voice_button = 1;
	}

	if (sync_bools == 2){
	style_button = 1;
	voice_button = 0;
	}

	if (sync_bools == 3){
	style_button = 1;
	voice_button = 1;
	}

	cur_x	= get_instance_x(cursor_id);
	cur_y = get_instance_y(cursor_id);



		if (point_in_rectangle(cur_x, cur_y, x + voice_button_x, y + voice_button_y, x + voice_button_x + 18*2, y + voice_button_y + 6*2)){
			suppress_cursor = true;
				if (menu_a_pressed){

				sync_bools = sync_bools ^ 2;

				sound_play(asset_get("mfx_coin"));

				if (!style_button)
				sound_play(sound_get("crazy"));
				}
		}

		if (alt == 7 || alt == 6){
				if (point_in_rectangle(cur_x, cur_y, x + style_button_x, y + style_button_y + 6*2, x + style_button_x + 18*2, y + style_button_y + 12*2)){
					suppress_cursor = true;
						if (menu_a_pressed){

						if (alt == 7 && !voice_button)
						sound_play(sound_get("dante_letsgo"));
						if (alt == 6 && !voice_button)
						sound_play(sound_get("vergil_motivated_1"));

						sync_bools = sync_bools ^ 1;

						sound_play(asset_get("mfx_coin"));
						}
				}
		}

	set_synced_var( player, sync_bools );

}







#define point_in_rectangle(px, py, x1, y1, x2, y2)
{
  return px >= x1 && px <= x2 && py >= y1 && py <= y2;
}

