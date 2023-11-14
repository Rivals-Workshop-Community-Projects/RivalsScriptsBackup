if (move_cooldown[AT_FSPECIAL] > 1){
    shader_start();
    draw_sprite( sprite_get("cooldown"), 0, temp_x + 184, temp_y - 24);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("cooldown"), 1, temp_x + 184, temp_y - 24);
    shader_end();
}

if (move_cooldown[AT_NSPECIAL] > 0){
    shader_start();
    draw_sprite( sprite_get("cooldown_nspec"), 0, temp_x + 154, temp_y - 22);
    shader_end();
}
else{

}