//draw_hud - the x position of your HUD element is 48*(i-1)

if (get_player_damage(player) >= 100)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+156 + random_func(1, 6, true), temp_y-16 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
  
/*
if (down_buffer_1)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+156 + random_func(1, 6, true), temp_y-200 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
if (forward_buffer_1)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+156 + random_func(1, 6, true), temp_y-160 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
if (down_buffer_2)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+156 + random_func(1, 6, true), temp_y-120 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
if (forward_buffer_2)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+156 + random_func(1, 6, true), temp_y-80 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
*/

/*
if (df_1)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+106 + random_func(1, 6, true), temp_y-200 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
if (df_2)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+106 + random_func(1, 6, true), temp_y-160 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
*/

/*
if (downpress)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+106 + random_func(1, 6, true), temp_y-200 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
if (sidepress)
    draw_sprite_ext(sprite_get("super_icon"), 0,
    temp_x+106 + random_func(1, 6, true), temp_y-160 + random_func(0, 3, true),
    2, 2, 0, c_white, 1);
    */
