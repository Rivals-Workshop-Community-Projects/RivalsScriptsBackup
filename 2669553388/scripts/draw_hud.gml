//HUD stuff
if move_cooldown[AT_DSPECIAL] > 0 {
	draw_sprite(sprite_get("tvicon"), 1, temp_x+180, temp_y-22);	
	}
	else {
	draw_sprite(sprite_get("tvicon"), 0, temp_x+180, temp_y-22);
}