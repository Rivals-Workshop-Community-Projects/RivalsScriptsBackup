draw_sprite_ext(sprite_get("hud"), hud_anim / 10, temp_x + 78, temp_y - 30, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("nspecial_arrow"), jumpe, temp_x + 188, temp_y - 24, 1, 1, 0, c_white, 1);
if(move_cooldown[AT_DSPECIAL] > 0){
    draw_sprite_ext(sprite_get("pipis_check"), 1, temp_x + 120, temp_y - 26, 1, 1, 0, c_white, 1);
}else if(move_cooldown[AT_DSPECIAL] <= 0){
    draw_sprite_ext(sprite_get("pipis_check"), 0, temp_x + 120, temp_y - 26, 1, 1, 0, c_white, 1);
}
if(move_cooldown[AT_FSPECIAL] > 0){
    draw_sprite_ext(sprite_get("car_check"), 1, temp_x + 82, temp_y - 28, 1, 1, 0, c_white, 1);
}else if(move_cooldown[AT_FSPECIAL] <= 0){
    draw_sprite_ext(sprite_get("car_check"), 0, temp_x + 82, temp_y - 28, 1, 1, 0, c_white, 1);
}