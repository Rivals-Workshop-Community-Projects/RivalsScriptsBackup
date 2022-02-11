//draw_hud - the x position of your HUD element is 58*(i-1)



//if get_player_color(player) == 2 and caleb == 1 && get_gameplay_time() <= 200{
       //draw_debug_text(temp_x,temp_y - 12,"I Live, AGAIN");
//}       
//if get_player_color(player) == 2 and caleb == 0 && get_gameplay_time() <= 120{
       //draw_debug_text(temp_x,temp_y - 30,"Press Taunt for voiced mode");
//}

if get_gameplay_time() <= 200 and switcher == 1{
       draw_debug_text(temp_x,temp_y - 30,"Hold taunt and press attack");
       draw_debug_text(temp_x,temp_y - 12,"to use the actual taunt");
}       
if get_gameplay_time() <= 120 and switcher == 0{
       draw_debug_text(temp_x,temp_y - 30,"Press Shield for advanced elemental");
       draw_debug_text(temp_x,temp_y - 12,"switcher mode");
}

shader_start();
// nspec
if fire = 1
draw_sprite_ext(sprite_get("fire_hud"), 0, temp_x+189, temp_y-18, 2, 2, 0, (move_cooldown[AT_NSPECIAL] > 0?c_gray:c_white), 1);

if ice = 1
draw_sprite_ext(sprite_get("ice_hud"), 0, temp_x+189, temp_y-18, 2, 2, 0, (move_cooldown[AT_NSPECIAL] > 0?c_gray:c_white), 1);

if thunder = 1
draw_sprite_ext(sprite_get("tesla_hud"), 0, temp_x+191, temp_y-16, 2, 2, 0, (move_cooldown[AT_NSPECIAL] > 0?c_gray:c_white), 1);

if pistols = 1
draw_sprite_ext(sprite_get("pistols_hud"), 0, temp_x+189, temp_y-18, 2, 2, 0, (move_cooldown[AT_NSPECIAL] > 0?c_gray:c_white), 1);

// dspec
draw_sprite_ext(sprite_get("tnt_hud"), 0, temp_x+158, temp_y-14, 2, 2, 0, (move_cooldown[AT_DSPECIAL] > 0?c_gray:c_white), 1);

// dair
draw_sprite_ext(sprite_get("pitch_hud"), 0, temp_x+21, temp_y+52, 2, 2, 90, (move_cooldown[AT_DAIR] > 0?c_gray:c_white), 1);

shader_end();