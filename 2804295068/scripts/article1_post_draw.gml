//article1_draw

if (has_rune("B")){
	draw_sprite_ext(sprite_get("plat"), image_index mod 2, x, y+8, spr_dir*2, 2, 0, c_white, 1);
}