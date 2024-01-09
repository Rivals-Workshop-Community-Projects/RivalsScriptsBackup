if(get_match_setting(SET_HITBOX_VIS) && state == 1){
    shader_end();
    draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, .4)
}