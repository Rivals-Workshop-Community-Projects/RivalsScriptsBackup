shader_start();

draw_sprite_ext(sprite_get("fileloaded"), 0, 20, view_get_hview() - 35, 1, 1, 0, c_white, uspecial_hud_text_alpha);
draw_sprite_ext(sprite_get("filenotfound"), 0, 20, view_get_hview() - 35, 1, 1, 0, c_white, uspecial_hud_text_alpha_2);

shader_end();