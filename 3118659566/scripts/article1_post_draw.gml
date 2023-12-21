
//Setting for visual hurtbox in training mode
if get_match_setting(SET_HITBOX_VIS) {
    if(can_be_hurt){
        shader_end();
    draw_sprite_ext(mask_index,image_index,floor(x),floor(y),1*spr_dir,1,0,c_lime,0.5);
    }
}

if ((state == 0 && letters = 0) || state == 8) && free {
    if spr_dir = 1 {
        draw_sprite_ext( sprite_get("mb_air_propeller"), propframes, x, y, 1, 1, 0, c_black, 0.5 );
    } else if spr_dir = -1 {
    draw_sprite_ext( sprite_get("mb_air_propeller"), propframes, x + (2 * spr_dir), y, 1, 1, 0, c_black, 0.5 );
    }
}

if ((state == 0 && letters = 0) || state == 8 || state == 1) {
    draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 0, c_black, 0.5);
}
