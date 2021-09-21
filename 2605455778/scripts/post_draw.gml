if(attack == AT_NSPECIAL){
    if(window == 2 && window_timer < get_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME)-1){
        var tlength = nspHboxX.x - (x+40*spr_dir);
        shader_start();
        draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlength/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
        draw_sprite_ext(tongue_end_spr, 0, nspHboxX.x+20*spr_dir, nspHboxX.y, 1*spr_dir, 1, 0, c_white, 1);
        shader_end();
        with(pHitBox){
            if(player_id == other && attack == AT_NSPECIAL && hbox_num == 1){
                other.lastNspecXpos = x;
            }
        }
    }
    if(window == 3 && window_timer < 7){
        var tx = ease_linear(lastNspecXpos, x+58*spr_dir, min(window_timer, 7), 7);
        var tlenght2 = tx - (x+60*spr_dir);
        shader_start();
        draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlenght2/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
        draw_sprite_ext(tongue_end_spr, 0, tx, y-30, 1*spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
    if(window == 11){
        var tlength = gplayer.x - (x+60*spr_dir);
        shader_start();
        draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlength/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
        draw_sprite_ext(grabTongue_sprite, 0, gplayer.x-8*spr_dir, y-38, 1*spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
    if(window == 7){
        var tlength = nSpecPlatHboxXpos - (x+60*spr_dir);
        shader_start();
        draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlength/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
        draw_sprite_ext(grabTongue_sprite, 0, nSpecPlatHboxXpos-5*spr_dir, y-38, 1*spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
    if(window == 10){
        var totalTime = get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH);
        var tTopx = ease_linear(totemStorePos, x+65*spr_dir, min(totemSwallowTime, totalTime), totalTime);
        var tlength = tTopx - (x+60*spr_dir);
        if(tlength*spr_dir > 0){
            shader_start();
            draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlength/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
            draw_sprite_ext(grabTongue_sprite, 0, tTopx-8*spr_dir, y-38, 1*spr_dir, 1, 0, c_white, 1);
            shader_end();
        }
    }
}