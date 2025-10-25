if results_timer <= 70{
	draw_set_alpha(1 - (results_timer-60)/10);
	draw_rectangle_color(0, 0, 1000, 1000, 0, 0, 0, 0, 0);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_get("end_credits"), 0, 0, 0, 2, 2, 0, c_white, dsin(results_timer*3));
}