//post-draw

shader_start();
if (state==PS_IDLE){
if (blink_time>0){
	if (get_player_color( player ) == 7){
	draw_sprite_ext( sprite_get("idle_blink_ea"), image_index, x, y, spr_dir, 1, 0, -1, 1 )
	}else{
	draw_sprite_ext( sprite_get("idle_blink"), image_index, x, y, spr_dir, 1, 0, -1, 1 )
	}
}
}
shader_end();