if "puddle_cooldown" not in self exit;

draw_sprite(sprite_get("hud_bottle"), (puddle_cooldown > 0), temp_x+196, temp_y-14)

// draw_debug_text(temp_x, temp_y, `fspecial cd: ${move_cooldown[AT_DSPECIAL]}`)