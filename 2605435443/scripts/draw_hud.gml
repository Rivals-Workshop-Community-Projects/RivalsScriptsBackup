//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;

var draw = c_white;
if (move_cooldown[AT_FSPECIAL] > 0 || move_cooldown[AT_EXTRA_2] > 0) temp_color = c_gray;{
draw_sprite_ext(sprite_get("knuckle_cool"), 0, temp_x+186, temp_y-16, 2, 2, 0, temp_color, 1);
}

if (easter_egg_set == true){
draw_sprite_ext(sprite_get("hud_voice"), 2, temp_x+60, temp_y -10, 2, 2, 0, draw, 1);

}

if (easter_egg_set == false && easter_egg_timer <= 90){
	draw_debug_text(temp_x, temp_y - 32, "Press Taunt to activate Voiced Mode");
}

if(attack == AT_UTHROW && honk == true){
  draw_debug_text(temp_x, temp_y - 88,"NOTE SELECTED: " + string(note_str));  
  draw_debug_text(temp_x, temp_y - 34,"Press Attack for Major Notes");  
  draw_debug_text(temp_x, temp_y - 16,"Press Special for Minor Notes");  
  draw_debug_text(temp_x, temp_y - 52,"Hold Shield or Jump to Swap Octaves");  
}