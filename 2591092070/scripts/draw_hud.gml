//draw_hud.gml
//wah
if move_cooldown[AT_FSPECIAL] > 0 {
	draw_sprite(sprite_get("fspecindcooldown"), floor(1), temp_x + 160, temp_y + 5);
} else {
	draw_sprite(sprite_get("fspecind"), floor(1), temp_x + 160, temp_y + 5);
}

if move_cooldown[AT_NSPECIAL] > 0 {
	draw_sprite(sprite_get("nspecindcooldown"), floor(1), temp_x + 200, temp_y + 5);
} else {
	draw_sprite(sprite_get("nspecind"), floor(1), temp_x + 200, temp_y + 5);
}


