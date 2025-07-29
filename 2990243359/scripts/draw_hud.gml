
shader_start();
if (!instance_exists(trident) && move_cooldown[AT_NSPECIAL] == 0){
    draw_sprite_ext(sprite_get("hud"), 0, temp_x+195, temp_y-11, 1, 1, 0, c_white, 1);
}

if (instance_exists(trident) || move_cooldown[AT_NSPECIAL] != 0){
    draw_sprite_ext(sprite_get("hud"), 1, temp_x+195, temp_y-11, 1, 1, 0, c_white, 1);
}
shader_end();