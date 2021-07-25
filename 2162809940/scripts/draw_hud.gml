var umpire_out = false;

with(asset_get("obj_article3")){
    if (player_id == other.id){
        umpire_out = true;
    }
}

if (move_cooldown[AT_DSPECIAL] > 1){
    shader_start();
    draw_sprite( sprite_get("cooldown"), 0, temp_x + 184, temp_y - 24);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("cooldown"), 1, temp_x + 184, temp_y - 24);
    shader_end();
}

if (move_cooldown[AT_NSPECIAL] > 1){
    shader_start();
    draw_sprite( sprite_get("cooldown_target"), 0, temp_x + 154, temp_y - 24);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("cooldown_target"), 1, temp_x + 154, temp_y - 24);
    shader_end();
}

if (umpire_out){
    shader_start();
    draw_sprite( sprite_get("cooldown_umpire"), 0, temp_x + 124, temp_y - 24);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("cooldown_umpire"), 1, temp_x + 124, temp_y - 24);
    shader_end();
}