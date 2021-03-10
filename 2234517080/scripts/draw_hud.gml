if (star_cooldown > 1){
    shader_start();
    draw_sprite( sprite_get("cooldown"), 0, temp_x + 184, temp_y - 24);
    shader_end();
}