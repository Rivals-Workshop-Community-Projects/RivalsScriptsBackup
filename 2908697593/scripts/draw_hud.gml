// draw_hud will draw things on the hud.
user_event(11);

// Ammo Counter for Plasma Cutter

draw_sprite_ext(sprite_get("hud1"), 0, temp_x + 156, temp_y - 28, 2, 2, 0, c_white, 1);
if "ammo" in self draw_sprite_ext(sprite_get("hud2"), ammo, temp_x + 156 + 20, temp_y - 22, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("hud3"), 0, temp_x + -2, temp_y - 43, 1, 1, 0, c_white, 1);

draw_sprite_ext(sprite_get("hud4"), 0, temp_x + 43, temp_y - 43, 1, 1, 0, c_white, 1);

draw_sprite_ext(sprite_get("hud5"), 0, temp_x + -2, temp_y - 43, 1, 1, 0, c_white, 0.2);

draw_sprite_ext(sprite_get("hud"), 0, temp_x + 156, temp_y - 28, 2, 2, 0, c_white, 0.2);




