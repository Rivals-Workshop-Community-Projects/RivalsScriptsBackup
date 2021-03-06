//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;

var draw = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("bomb_icon"), 0, temp_x+186, temp_y-16, 2, 2, 0, temp_color, 1);

var temp_color = c_white;
if (peacock_has_airdash == 0) temp_color = image_index = 0;
draw_sprite_ext(sprite_get("hud_dash"), 1, temp_x+172, temp_y +24, 2, 2, 0, temp_color, 1);

if (easter_egg_set == true){
draw_sprite_ext(sprite_get("hud_voice"), 1, temp_x+60, temp_y -10, 2, 2, 0, draw, 1);

}

user_event(11);