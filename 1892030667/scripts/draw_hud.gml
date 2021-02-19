//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;
shader_start();
if "gun_load" in id {
    if (gun_load == 0) temp_color = c_gray;
    if has_gun == 1 draw_sprite_ext(sprite_get("gun_small"), 0, temp_x+160, temp_y-15, 2, 2, 0, temp_color, 1);
    else draw_sprite_ext(sprite_get("gun_small"), 0, temp_x+160, temp_y-15, 2, 2, 0, temp_color, 1);
}
shader_end();