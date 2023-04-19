
if state != PS_SPAWN {
	shader_start();
	draw_sprite(sprite_get("smoke_hud"), move_cooldown[AT_NSPECIAL] !=0, temp_x +180 , temp_y - 22);
	if smoke_counter > 0 { draw_debug_text( temp_x+186, temp_y - 8, string(floor(smoke_counter)));}
	shader_end();
}
