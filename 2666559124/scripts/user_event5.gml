//draw_hud

// Draw barrel on hud
if (move_cooldown[AT_FSPECIAL] == 0) {
	draw_sprite_ext(sprite_get("hud_icons"), 0, temp_x + 164, temp_y - 24, 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("hud_icons"), 0, temp_x + 164, temp_y - 24, 1, 1, 0, c_gray, 1);
}
// Draw bomb on hud
if (move_cooldown[AT_DSPECIAL] == 0) {
	draw_sprite_ext(sprite_get("hud_icons"), 1, temp_x + 184, temp_y - 24, 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("hud_icons"), 1, temp_x + 184, temp_y - 24, 1, 1, 0, c_gray, 1);
}
