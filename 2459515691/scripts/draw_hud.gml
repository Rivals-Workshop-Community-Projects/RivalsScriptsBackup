if ("fuel" in self)
{
	shader_start();
	draw_sprite_ext(sprite_get("fuelmeter"), fuel, temp_x+38, temp_y-18, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("tank_gui"), ceil(tankcooldown/721), temp_x+82, temp_y-30, 1, 1, 0, c_white, 1);
	shader_end();
}