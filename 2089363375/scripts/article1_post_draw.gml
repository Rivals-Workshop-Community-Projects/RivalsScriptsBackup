//
with (player_id) {
    shader_start();
        draw_sprite_ext(mycat.sprite_index, mycat.image_index, mycat.x, mycat.y, mycat.spr_dir, 1, 0, c_white, 1);
    shader_end();
    if (strong_flashing) {
        gpu_set_fog(1, c_yellow, 0, 0);
            draw_sprite_ext(mycat.sprite_index, mycat.image_index, mycat.x, mycat.y, mycat.spr_dir, 1, 0, c_white, 0.5);
        gpu_set_fog(0, 0, 0, 0);
    }
    
    if (dspecial_blink_timer % 12 > 6) {
        gpu_set_fog(1, c_white, 0, 0);
            draw_sprite_ext(mycat.sprite_index, mycat.image_index, mycat.x, mycat.y, mycat.spr_dir, 1, 0, c_white, 0.5);
        gpu_set_fog(0, 0, 0, 0);
    }
    if (mycat.state == "attack" && mycat.current_attack == AT_NSPECIAL && (mycat.window == 10 || mycat.window == 11)) {
        shader_start();
            draw_sprite_ext(sprite_get("cat_nspecial_effect"), mycat.image_index, mycat.x, mycat.y, mycat.spr_dir, 1, 0, c_white, 1);
        shader_end();
        
    }
}