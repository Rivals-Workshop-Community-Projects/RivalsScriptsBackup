draw_sprite_ext(sprite_get("pipis_proj"), 1, temp_x + 156, temp_y - 22, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("nspecial_arrow"), jumpe, temp_x + 184, temp_y - 20, 1, 1, 0, c_white, 1);
if(move_cooldown[AT_DSPECIAL] > 0){
    draw_sprite_ext(sprite_get("pipis_check"), 1, temp_x + 114, temp_y - 24, 2, 2, 0, c_white, 1);
}else if(move_cooldown[AT_DSPECIAL] <= 0){
    draw_sprite_ext(sprite_get("pipis_check"), 0, temp_x + 114, temp_y - 24, 2, 2, 0, c_white, 1);
}
if(move_cooldown[AT_FSPECIAL] > 0){
    draw_sprite_ext(sprite_get("car_check"), 1, temp_x + 74, temp_y - 22, 1, 1, 0, c_white, 1);
}else if(move_cooldown[AT_FSPECIAL] <= 0){
    draw_sprite_ext(sprite_get("car_check"), 0, temp_x + 74, temp_y - 22, 1, 1, 0, c_white, 1);
}