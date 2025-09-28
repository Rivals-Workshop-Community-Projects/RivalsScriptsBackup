//article1_post_draw.gml
//similarly to a player's post_draw.gml, this script draws under the article's graphics

if (visible) {
	draw_sprite_ext(sprite_get("shadow"),
					0, x - 10 * spr_dir, y + 3,
					spr_dir, 1, 0, c_white, 0.8);
}