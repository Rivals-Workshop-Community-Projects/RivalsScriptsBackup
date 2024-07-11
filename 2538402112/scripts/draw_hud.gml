//draw_hud - the x position of your HUD element is 48*(i-1)

if ("grov_hasruneO" in self) && !grov_hasruneO{
    var x_pos = 186;
    var temp_color = move_cooldown[AT_FTHROW] <= 0 ? c_white:c_gray;
    draw_sprite_ext(sprite_get("nspecial_cooldown"), 2, temp_x+x_pos, temp_y-12, 2, 2, 0, temp_color, 1);
    if (move_cooldown[AT_FTHROW] > 0) draw_sprite_ext(sprite_get("nspecial_cooldown"), 4, temp_x+x_pos+4, temp_y-12, 2, 2, 0, c_white, 1);
    
    x_pos = 166;
    temp_color = move_cooldown[AT_UTHROW] <= 0 ? c_white:c_gray;
    draw_sprite_ext(sprite_get("nspecial_cooldown"), 1, temp_x+x_pos, temp_y-12, 2, 2, 0, temp_color, 1);
    if (move_cooldown[AT_UTHROW] > 0) draw_sprite_ext(sprite_get("nspecial_cooldown"), 4, temp_x+x_pos+4, temp_y-12, 2, 2, 0, c_white, 1);
    
    x_pos = 144;
    temp_color = move_cooldown[AT_NTHROW] <= 0 ? c_white:c_gray;
    draw_sprite_ext(sprite_get("nspecial_cooldown"), 0, temp_x+x_pos, temp_y-12, 2, 2, 0, temp_color, 1);
    if (move_cooldown[AT_NTHROW] > 0) draw_sprite_ext(sprite_get("nspecial_cooldown"), 4, temp_x+x_pos+4, temp_y-12, 2, 2, 0, c_white, 1);
    
    x_pos = 122;
    temp_color = move_cooldown[AT_DTHROW] <= 0 ? c_white:c_gray;
    draw_sprite_ext(sprite_get("nspecial_cooldown"), 3, temp_x+x_pos, temp_y-12, 2, 2, 0, temp_color, 1);
    if (move_cooldown[AT_DTHROW] > 0) draw_sprite_ext(sprite_get("nspecial_cooldown"), 4, temp_x+x_pos+4, temp_y-12, 2, 2, 0, c_white, 1);
}