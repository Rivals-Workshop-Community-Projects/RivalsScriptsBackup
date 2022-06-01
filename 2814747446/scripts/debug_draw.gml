// debug_draw is used to draw debug text/sprites. These will be drawn all in-game objects (players, stage, articles, etc.)

if(get_match_setting(SET_HITBOX_VIS)){
    with(pHitBox){
        // draw_debug_text( x, y, "transcendent : " + string(transcendent));
        // draw_debug_text( x, y-15, "plasma_safe : " + string(plasma_safe));
        if(attack == AT_NSPECIAL and hbox_num == 1){
            draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);
            
        }
    }
}