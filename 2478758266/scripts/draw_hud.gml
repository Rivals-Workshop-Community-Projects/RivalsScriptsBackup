draw_sprite_ext(sprite_get("shots_hud"),current_shot-1,temp_x-4,temp_y-32,2,2,0,c_white,1);






draw_sprite_ext(sprite_get("rmeter"), 0, temp_x+29, temp_y-32, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("rmeter_bar"), 0, temp_x+40, temp_y-20, 2 * (move_cooldown[AT_NSPECIAL] / 500), 2, 0, c_white, 1);

