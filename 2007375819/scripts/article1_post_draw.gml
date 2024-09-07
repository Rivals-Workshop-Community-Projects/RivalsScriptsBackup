//article1_post_draw
if state == 2 && (state_timer % 115 >= 0 && state_timer % 115 <= 5 || state_timer % 115 >= 15 && state_timer % 115 <= 20) {
	draw_sprite_ext(sprite_get("blueytank_flash"), -1, x, y, spr_dir, 1, 0, c_white, 1);	
}

if 2 > minionHealth {
	draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, image_yscale, image_angle, c_yellow, 1/(minionHealth+2));
	draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, image_yscale, image_angle, c_red, 1/(minionHealth+2));
}