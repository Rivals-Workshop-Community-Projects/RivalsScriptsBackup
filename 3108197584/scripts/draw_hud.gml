if "drone" not in self exit;
shader_start();
draw_sprite_ext(sprite_get("drone_hud"), 0, temp_x + 188, temp_y - 10, 1, 1, 0, c_white, 1);
shader_end();
draw_sprite_ext(sprite_get("drone_hud_out"), 0, temp_x + 188, temp_y - 10, 1, 1, 0, make_color_rgb(static_colorO[32]*255, static_colorO[33]*255, static_colorO[34]*255), 1);
draw_sprite_ext(sprite_get("drone_hud"), 0, temp_x + 188, temp_y - 10, 1, 1, 0, c_black, .5*(instance_exists(drone)? 1: move_cooldown[AT_DSPECIAL]>0));

//draw_sprite_ext(sprite_get("pointer"), 0, mouse_x-view_get_xview(), mouse_y-view_get_yview(), 1, 1, 0, c_red, 1);
