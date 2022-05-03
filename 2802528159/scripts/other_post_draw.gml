if(emmi_frozen == true){
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x, y, (small_sprites + 1) * spr_dir, small_sprites + 1, 0, c_aqua, 0.8);
    shader_end();
    draw_sprite_ext(other_player_id.ice_sprite, 1, x - 30 + 4, y - 54, 2, 2, 0, c_white, 1);
    draw_sprite_ext(other_player_id.ice_sprite, 1, x - 30 + 4, y - 14, 2, 2, 0, c_white, 1);
    draw_sprite_ext(other_player_id.ice_sprite, 1, x + 4, y - 34, 2, 2, 0, c_white, 1);
}

if(emmi_shocked == true){
    if(shock_shader > -0.6){
        shock_shader -= 0.04
    }else if(shock_shader == -0.6){
        shock_shader = 0.6;
    }
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x, y, (small_sprites + 1) * spr_dir, small_sprites + 1, 0, c_fuchsia, abs(shock_shader));
    shader_end();
}

if(emmi_frozen == true && other_player_id.ice_victim != self){
    emmi_frozen = false;
}