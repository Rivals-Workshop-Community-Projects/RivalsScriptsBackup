// change the triangle color
if (get_player_damage(player) < 100) {
	draw_sprite_ext(asset_get("triangle_spr"), 0, x, y - (char_height + hud_offset + 30), 1, 1, 0, c_gray, 1);
}

