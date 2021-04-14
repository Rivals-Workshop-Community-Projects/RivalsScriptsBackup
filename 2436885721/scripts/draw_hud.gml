if (move_cooldown[AT_NSPECIAL] > 1){
    shader_start();
    draw_sprite( sprite_get("nspecialiconcd"), 0, temp_x + 140, temp_y - 20);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("nspecialicon"), 1, temp_x + 140, temp_y - 20);
    shader_end();
}


if (move_cooldown[AT_DSPECIAL] > 1){
    shader_start();
    draw_sprite( sprite_get("dspecialiconcd"), 0, temp_x + 160, temp_y - 20);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("dspecialicon"), 1, temp_x + 160, temp_y - 20);
    shader_end();
}

if (move_cooldown[AT_FSPECIAL] > 1){
    shader_start();
    draw_sprite( sprite_get("fspecialiconcd"), 0, temp_x + 180, temp_y - 20);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("fspecialicon"), 1, temp_x + 180, temp_y - 20);
    shader_end();
}