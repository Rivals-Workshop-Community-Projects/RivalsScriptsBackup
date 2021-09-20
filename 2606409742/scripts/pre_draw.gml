if sprite_index == sprite_get("taunt_2") && image_index == clamp(image_index, 4, 7){
	draw_sprite_ext(sprite_get("camera_flash"), image_index - 4, x, y, spr_dir, 1, 0, c_white, 1);
}