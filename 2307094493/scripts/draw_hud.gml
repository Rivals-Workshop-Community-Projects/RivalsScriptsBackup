    shader_start();
     if (charge == -1){
    draw_sprite( sprite_get("HuD-"), 1, temp_x + 133, temp_y - 22);
     }
    if (charge == 1){
    draw_sprite( sprite_get("HuD+"), 1, temp_x + 133, temp_y - 22);
    }
    if (charge == 0){
    draw_sprite( sprite_get("HuD"), 1, temp_x + 133, temp_y - 22);
}
    shader_end();