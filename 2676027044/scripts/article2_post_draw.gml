// article1_post_draw
// post_draw draws sprites on top of an article

if (state == 2){
	draw_sprite_ext(sprite_get("shadowcharge_spin"), get_gameplay_time() / 6, x, y - 15, 1, 1, get_gameplay_time() * 5, c_white, 1);
	draw_sprite_ext(sprite_get("shadowcharge_spin"), get_gameplay_time() / 6, x, y + 15, 1, 1, get_gameplay_time() * 5, c_white, 1);
	draw_sprite_ext(sprite_get("shadowcharge_spin"), get_gameplay_time() / 6, x - 15, y, 1, 1, get_gameplay_time() * 5, c_white, 1);
	draw_sprite_ext(sprite_get("shadowcharge_spin"), get_gameplay_time() / 6, x + 15, y, 1, 1, get_gameplay_time() * 5, c_white, 1);

	draw_sprite_ext(sprite_get("shadowcharge_core"), get_gameplay_time() / 8, x + 25, y + 5, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("shadowcharge_core"), get_gameplay_time() / 8, x - 25, y + 55, 1, 1, 0, c_white, 1);
}