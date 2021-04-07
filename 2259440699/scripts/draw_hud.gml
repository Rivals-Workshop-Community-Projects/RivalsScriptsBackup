var hud_thingy = -16;

var chungus = draw_sprite_ext( sprite_get("hud_smal"), 0, temp_x - 16, temp_y - 36, 1, 1, 0, c_white, 1 );
draw_debug_text( temp_x + 10, temp_y + hud_thingy, string(katamari_size));
draw_debug_text( temp_x + 30, temp_y + hud_thingy, "cm");


