animate_bg("results_bg_frame", 10, 7, true)

#define animate_bg(bg_name, bg_frames, bg_speed, bg_loop) 

if (object_index == asset_get("draw_result_screen"))
{
	
if (!variable_instance_exists(self, "background_frame")) {
    background_frame = 0;
	background_frame_pillar = 0;
}
background_frame += 0.50;
//background_frame_pillar += 0.25;
draw_sprite_ext(sprite_get("winscreen"), background_frame, 0, 0, 2, 2.3, 0, c_white , 100);

//draw_sprite_ext(sprite_get("pillar"), background_frame_pillar, 0, 0, 2, 2, 0, c_white , 100);
//draw_sprite_ext(sprite_get("ground"), background_frame_pillar, 0, 0, 2, 2, 0, c_white , 100);
//draw_sprite_ext(sprite_get("ground"), background_frame_pillar, 0, -570, 2, 2, 0, c_white , 100);
}

//draw_sprite_ext(sprite_get("sprite"), (frame number), x, y, (X scale / sprite direction), (Y scale), (rotation degree), (color), (alpha / opacity))