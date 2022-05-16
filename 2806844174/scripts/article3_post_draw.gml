// Article Update is ran for every frame that the article object is in-game.

if player_id.poggers_alt draw_sprite_ext(sprite_get("bubble_pog"), image_index, x, y, spr_dir, 1, 0, player_id.draw_color, 1);

if draw_circle > 0 {
	var circle_radius = ease_sineOut(0, 150, 25 - draw_circle, 25);
	draw_sprite_ext(sprite_get("circle2"), 0, circle_x + 2, circle_y, circle_radius/250, circle_radius/250, 0, c_white, (draw_circle/25));
}