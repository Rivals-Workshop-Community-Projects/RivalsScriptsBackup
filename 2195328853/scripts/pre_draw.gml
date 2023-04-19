// pre-draw

if(alt == 23 || alt == 24){
    if(state == PS_LAND || state == PS_LANDING_LAG || state == PS_JUMPSQUAT){
        draw_sprite_ext(sprite_get("idle_crown"), image_index, x, y+20, spr_dir*(small_sprites+1), 1*small_sprites+1, 0, c_white, 1);
    }else if(state == PS_CROUCH || state == PS_WAVELAND){
        draw_sprite_ext(sprite_get("idle_crown"), image_index, x, y+34, spr_dir*(small_sprites+1), 1*small_sprites+1, 0, c_white, 1);
    }else{
        if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
            draw_sprite_ext(sprite_get("idle_crown"), image_index, x, y, spr_dir*(small_sprites+1), 1*small_sprites+1, 0, c_white, 1);
        }else{
            if(attack != AT_FTILT && attack != AT_UTILT && attack != AT_DTILT){
                draw_sprite_ext(sprite_get("idle_crown"), image_index, x, y, spr_dir*(small_sprites+1), 1*small_sprites+1, 0, c_white, 1);
            }
        }
    }
}

