//draw_hud - the x position of your HUD element is 48*(i-1)

    var temp_color = c_white;
    var x_pos = 186;
    if (move_cooldown[AT_DSPECIAL] > 0) temp_color = c_gray;
    draw_sprite_ext(sprite_get("future_cooldown"), 2, temp_x+x_pos, temp_y-12, 2, 2, 0, temp_color, 1);
    
    // temp_color = c_white;
    // x_pos = 166;
    // if (move_cooldown[AT_UTHROW] > 0) temp_color = c_gray;
    // draw_sprite_ext(sprite_get("nspecial_cooldown"), 1, temp_x+x_pos, temp_y-12, 2, 2, 0, temp_color, 1);
    // if (move_cooldown[AT_UTHROW] > 0) draw_sprite_ext(sprite_get("wand_disabled"), 0, temp_x+x_pos-2, temp_y-12, 2, 2, 0, c_white, 1);
    
    // temp_color = c_white;
    // x_pos = 144;
    // if (move_cooldown[AT_NTHROW] > 0) temp_color = c_gray;
    // draw_sprite_ext(sprite_get("nspecial_cooldown"), 0, temp_x+x_pos, temp_y-12, 2, 2, 0, temp_color, 1);
    // if (move_cooldown[AT_NTHROW] > 0) draw_sprite_ext(sprite_get("wand_disabled"), 0, temp_x+x_pos-2, temp_y-12, 2, 2, 0, c_white, 1);
    
    // temp_color = c_white;
    // x_pos = 122;
    // if (move_cooldown[AT_DTHROW] > 0) temp_color = c_gray;
    // draw_sprite_ext(sprite_get("nspecial_cooldown"), 3, temp_x+x_pos, temp_y-12, 2, 2, 0, temp_color, 1);
    // if (move_cooldown[AT_DTHROW] > 0) draw_sprite_ext(sprite_get("wand_disabled"), 0, temp_x+x_pos-2, temp_y-12, 2, 2, 0, c_white, 1);