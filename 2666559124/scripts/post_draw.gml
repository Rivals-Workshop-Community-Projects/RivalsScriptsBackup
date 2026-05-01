//post_draw

if (state == PS_RESPAWN) {
	if (alt == 15) {
		draw_sprite(sprite_get("plat_gb"), 0, x, y);
	} else {
		draw_sprite(sprite_get("plat_def"), 0, x, y);
	}
}

if (attack == AT_TAUNT && state == PS_ATTACK_GROUND && (alt == 7 || alt == 8 || alt == 9)) {
	draw_sprite_ext(sprite_get("taunt_overlay"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

// Final Smash Stuff
//draw_sprite_ext(sprite_get("fs_scene_b"), 0, view_get_xview(), view_get_yview() - 310, 1, 1, 0, c_white, 1);
