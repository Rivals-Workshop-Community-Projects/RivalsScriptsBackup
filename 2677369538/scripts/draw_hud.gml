if (state == PS_SPAWN){
//something
}

draw_sprite_ext(sprite_get("King_Knight_HUDleft"), image_index, temp_x-28, temp_y-17, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("King_Knight_HUDright"), image_index, temp_x+82, temp_y-17, 1, 1, 0, c_white, 1);

if (move_cooldown[AT_NSPECIAL] < 1){
draw_sprite_ext(sprite_get("King_Knight_HUDbomb"), image_index, temp_x-26, temp_y-47, 1, 1, 0, c_white, 1);
}
if (move_cooldown[AT_NSPECIAL] >= 1){
draw_sprite_ext(sprite_get("King_Knight_HUDbomb"), image_index, temp_x-26, temp_y-47, 1, 1, 0, c_gray, 0.7);
}

if (propeller_rats >= 2){
draw_sprite_ext(sprite_get("King_Knight_HUDpropeller"), image_index, temp_x-38, temp_y-47, 1, 1, 0, c_white, 0.7);
}
if (propeller_rats == 1){
draw_sprite_ext(sprite_get("King_Knight_HUDpropeller"), image_index, temp_x-38, temp_y-47, 1, 1, 0, c_white, 1);
draw_debug_text(temp_x+47, temp_y - 2, "1");
}
if (propeller_rats < 1){
draw_sprite_ext(sprite_get("King_Knight_HUDpropeller"), image_index, temp_x-38, temp_y-47, 1, 1, 0, c_white, 1);
draw_debug_text(temp_x+47, temp_y - 2, "2");
}
   
   
