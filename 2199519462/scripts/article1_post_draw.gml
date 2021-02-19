if get_match_setting(SET_HITBOX_VIS) {
	draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,0.5)
}
with (orig_player_id) {
shader_start();
}
	draw_sprite(sprite_get("arrow"),0,x,y)
with (orig_player_id) {
shader_end();
}

/*
with (player_id) {
shader_start();
}
if effect > 0 draw_sprite(sprite_get("dspecial_cake_over"), image_index, x, y)
with (player_id) {
shader_end();
}
