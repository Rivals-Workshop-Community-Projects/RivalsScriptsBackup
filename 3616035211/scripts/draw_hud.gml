if (jestermode || get_match_setting(SET_PRACTICE)) && state == PS_SPAWN draw_debug_text(temp_x, temp_y - 4, (jestermode? "JESTER MODE ENGAGED": "PRESS TAUNT + UP FOR JESTER MODE"));

draw_rectangle_color(temp_x + 26, temp_y + 6, temp_x + 37, temp_y + 41, c_black, c_black, c_black, c_black, 0);
draw_rectangle_color(temp_x + 28, temp_y + 8, temp_x + 35, temp_y + 39, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0);
draw_rectangle_color(temp_x + 28, temp_y + 8 + 32*(tokens>=3? 0: 1 - token_recharge/40), temp_x + 35, temp_y + 39, c_white, c_white, c_white, c_white, 0);
shader_start();
draw_sprite_ext(sprite_get("tokens"), 3-tokens, temp_x+90, temp_y-48, 2, 2, 0, c_white, 1);
shader_end();