if (painted) {

	if (small_sprites != true) {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, spr_angle, c_black, 0.75)
	} else draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*2, image_yscale*2, spr_angle, c_black, 0.75)
}
