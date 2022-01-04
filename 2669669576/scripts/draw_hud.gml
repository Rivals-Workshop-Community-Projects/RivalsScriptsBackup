if(move_cooldown[AT_FSPECIAL] > 0 or move_cooldown [AT_FSPECIAL_AIR] > 0){
    draw_sprite_ext(sprite_get("wall_hud"), 1, temp_x+ 188, temp_y - 12, 1, 1, 0, c_white, 1);
} else {
    shader_start();
    draw_sprite_ext(sprite_get("wall_hud"), 0, temp_x+ 188, temp_y - 12, 1, 1, 0, c_white, 1);
    shader_end();
    
}