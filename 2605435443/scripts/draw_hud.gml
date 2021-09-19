//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;

var draw = c_white;
if (move_cooldown[AT_FSPECIAL] > 0 || move_cooldown[AT_EXTRA_2] > 0) temp_color = c_gray;{
draw_sprite_ext(sprite_get("knuckle_cool"), 0, temp_x+186, temp_y-16, 2, 2, 0, temp_color, 1);
}

if (easter_egg_set == true){
draw_sprite_ext(sprite_get("hud_voice"), 2, temp_x+60, temp_y -10, 2, 2, 0, draw, 1);

}