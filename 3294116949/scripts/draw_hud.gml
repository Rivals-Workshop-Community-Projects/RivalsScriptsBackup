//draw_hud - the x position of your HUD element is 58*(i-1)



//if get_player_color(player) == 2 and caleb == 1 && get_gameplay_time() <= 200{
       //draw_debug_text(temp_x,temp_y - 12,"I Live, AGAIN");
//}       
//if get_player_color(player) == 2 and caleb == 0 && get_gameplay_time() <= 120{
       //draw_debug_text(temp_x,temp_y - 30,"Press Taunt for voiced mode");
//}

shader_start();
// nspec
draw_sprite_ext(sprite_get("fire_hud"), 0, temp_x+180, temp_y-20, 2, 2, 0, ((move_cooldown[AT_DSPECIAL] <= 0 || (instance_exists(lamp) && lamp.state == 1))?c_white:c_gray), 1);
draw_sprite_ext(sprite_get("axe_hud"), 0, temp_x+150, temp_y-20, 2, 2, 0, (move_cooldown[AT_NSPECIAL] > 0?c_gray:c_white), 1);
shader_end();