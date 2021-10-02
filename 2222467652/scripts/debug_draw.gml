with(asset_get("pHitBox")){
    if (player_id == other.id && sprite_index == sprite_get("utilt_proj")){
        with(other){
            if (get_player_color(player) == alt_negative){
                var c_hatoutline = make_colour_rgb(255 - outline_color[0], 255 - outline_color[1], 255 - outline_color[2]);
            } else {
                var c_hatoutline = make_colour_rgb(outline_color[0], outline_color[1], outline_color[2]);
            }
            draw_sprite_ext(sprite_get("utilt_proj_outline"), 0, other.x, other.y, other.spr_dir, 1, other.proj_angle, c_hatoutline, 1);
        }
    }
}

if (state != PS_SPAWN){
    if (flutterjump > flutterjump_max - 2){
        var tired_alert_color = make_colour_rgb(247, 161, 161);
        if (spr_dir > 0){
            draw_sprite_ext(asset_get("exclamation_spr"), 0, x - 27 * spr_dir + random_func( 0, 3, false ), y - 37 + random_func( 1, 3, false ), 2, 2, 0, tired_alert_color, 0.9);
        }
        if (spr_dir < 0){
            draw_sprite_ext(asset_get("exclamation_spr"), 1, x - 27 * spr_dir + random_func( 0, 3, false ), y - 37 + random_func( 1, 3, false ), 2, 2, 0, tired_alert_color, 0.9);
        }
    } else {
        if (flutterjump > round(flutterjump_max * 0.5)){
            if (spr_dir > 0){
                draw_sprite_ext(asset_get("exclamation_spr"), 0, x - 28 * spr_dir, y - 36, 2, 2, 0, c_white, 0.8);
            }
            if (spr_dir < 0){
                draw_sprite_ext(asset_get("exclamation_spr"), 1, x - 28 * spr_dir, y - 36, 2, 2, 0, c_white, 0.8);
            }
        }
    }
}

if (taunt_hold_timer > 100){
    taunt_hold_timer_negative = taunt_hold_timer - 100;
    if (get_player_color(player) == alt_pride1){
        draw_sprite_ext(sprite_get("transpride"), 0, 0, 0, room_width, round(room_height / 5), 0, c_white, taunt_hold_timer * 0.0005);
    } else {
        if (get_player_color(player) == alt_negative){
            gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_alpha);
            gpu_set_alphatestenable(true);
            draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative, c_white, c_white, false);
            if (taunt_hold_timer < 200){
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 10, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 11, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 12, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 13, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 14, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 15, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 16, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 17, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 18, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 19, c_white, c_white, true);
                 draw_circle_color(x, y - round(char_height * 0.5), taunt_hold_timer_negative * taunt_hold_timer_negative * (taunt_hold_timer_negative * 0.12) - 20, c_white, c_white, true);
            }
            gpu_set_alphatestenable(false);
            gpu_set_blendmode(bm_normal);
        } else {
            draw_set_alpha(taunt_hold_timer * 0.0005);
            draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
            draw_set_alpha(1);
        }
    }
    if (get_player_color(player) != alt_negative){
        with(asset_get("oPlayer")){
            if (id == other.id) || ((url == "1962084547" || url == "2222467652" || url == "2285110741") && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT){
                if ("taunt_hold_timer" in self){
                    var birdluigi_taunt_oplayer_visible = taunt_hold_timer * 0.001;
                } else {
                    var birdluigi_taunt_oplayer_visible = 1;
                }
                shader_start();
                draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, birdluigi_taunt_oplayer_visible);
                shader_end();
            }
        }
    }
}

/*
gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_alpha);
gpu_set_alphatestenable(true);
draw_circle_color(x, y - round(char_height * 0.5), 50, c_white, c_white, false);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
*/