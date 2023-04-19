if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    if (attack == AT_FSTRONG){
            draw_sprite_ext( sprite_get("fstrong_overlay"), image_index, x, y, 1*spr_dir, 1, 0, c_white, 1 );
    }
    if (attack == AT_NSPECIAL){
        if (window == 2 || window == 3){
            var fruit_pos_x = 0;
            var fruit_pos_y = 0;
            if (image_index == 2 || image_index == 6){
                fruit_pos_x = x + 16*spr_dir;
                fruit_pos_y = y - 92;
            }
            if (image_index == 3 || image_index == 7){
                fruit_pos_x = x + 16*spr_dir;
                fruit_pos_y = y - 86;
            }
            if (image_index == 4 || image_index == 8){
                fruit_pos_x = x + 16*spr_dir;
                fruit_pos_y = y - 82;
            }
            if (image_index == 5 || image_index == 9){
                fruit_pos_x = x + 16*spr_dir;
                fruit_pos_y = y - 82;
            }
            draw_sprite_ext( sprite_get("fruit"), fruit_num, fruit_pos_x, fruit_pos_y, 1, 1, 0, c_white, 1 );
        }
    }
    
    if (attack == AT_NSPECIAL_2){
        if (image_index < 13){
        var fruit_pos_x = 0;
        var fruit_pos_y = 0;
        if (image_index == 10){
            fruit_pos_x = x + 4*spr_dir;
            fruit_pos_y = y - 82;
        }
        if (image_index == 11){
            fruit_pos_x = x - 32*spr_dir;
            fruit_pos_y = y - 76;
        }
        if (image_index == 12){
            fruit_pos_x = x - 36*spr_dir;
            fruit_pos_y = y - 72;
        }
        draw_sprite_ext( sprite_get("fruit"), fruit_num, fruit_pos_x, fruit_pos_y, 1, 1, 0, c_white, 1 );
        }
    }
}