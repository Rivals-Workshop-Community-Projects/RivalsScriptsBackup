//init_shader.gml
if ( get_player_color( player ) == 5 ){
	outline_color = [26, 26, 43]
}
if ( get_player_color( player ) == 6 ){
	outline_color = [43, 26, 26]
}
if ( get_player_color( player ) == 8 ){
	outline_color = [255, 255, 255]
}
if ( get_player_color( player ) == 0 ) {
    set_character_color_slot(0, 76,63,120)
    set_character_color_slot(2, 157,174,194)
}
animate_bg("results_bg_frame", 10, 5, true)

#define animate_bg(bg_name, bg_frames, bg_speed, bg_loop) 

if (object_index == asset_get("draw_result_screen"))
{
	
	var i;
	for (i = 0; i < bg_frames; ++i) {
		animated_bg[i] = sprite_get(bg_name+string(i));
	}
	
    if !("anim_timer" in self)
    {
		anim_timer = 0;
		anim_frame = 0;
    }

	anim_timer++;

	if (anim_timer >= bg_speed) { anim_frame++; anim_timer = 0; }

	if (anim_frame >= array_length_1d(animated_bg) && bg_loop) { anim_frame = 0; }
	set_victory_bg(animated_bg[anim_frame]);
}