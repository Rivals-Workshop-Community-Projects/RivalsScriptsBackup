//post-draw

if (state == PS_PARRY && !custom_clone) {
	draw_sprite_ext(sprite_get("parry_fx"), image_index, x, y, spr_dir, 1, 0, c_white, 0.5);
}

//draw_sprite_ext(sprite_get("book_particle"), 0, x, y, 1, 1, 0, c_white, 1);

with (pHitBox) {
	if (player_id == other.id) {
		if (attack == AT_NSPECIAL && hbox_num == 10) {
			//draw_sprite_ext(sprite_get("book_particle"), rubbleFrame, x, y, 1, 1, 0, c_white, 1);
			draw_sprite_ext(rubbleImage, rubbleFrame, x, y, 1, 1, rubbleRotation, c_white, rubbleOpacity);
		}
	}
}