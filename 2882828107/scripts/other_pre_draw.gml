if (puffshroom_timer != 0 && puffshroom_timer <= 30){
	
	var y_offset = floor(char_height/2);
	
	if (state == PS_HITSTUN_LAND || state == PS_HITSTUN){
		draw_y = 999;
		draw_sprite_ext(other_player_id.puffshroom_sprite, 0, x, y - y_offset, spr_dir, 1, 0, c_white, 1);
	}
}