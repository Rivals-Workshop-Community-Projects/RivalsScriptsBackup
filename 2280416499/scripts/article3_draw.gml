//plat

draw_sprite_ext(sprite_get("platform_beams"), dir == 0, x, y, dir == 0 ? 1 : dir, 1, 0, image_blend, image_alpha);

for (var i = 0; i < array_length_1d(segments); i++){
	draw_sprite_ext(sprite_get("platforms"), abs(segments[i]), x + segments_pos[i], y, (segments[i] < 0) ? -1 : 1, 1, 0, image_blend, image_alpha);
}