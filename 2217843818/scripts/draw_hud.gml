if (move_cooldown[AT_DSPECIAL] > 1){
    shader_start();
    draw_sprite( sprite_get("cooldown"), 0, temp_x + 180, temp_y - 20);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("cooldown"), 1, temp_x + 180, temp_y - 20);
    shader_end();
}