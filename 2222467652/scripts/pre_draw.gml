if (get_player_color(player) == alt_infamous){
    shader_start();
    draw_sprite_ext(sprite_get("infamous_text"), clamp(infamoustaunt_spray_text_img, 0, 8), infamoustaunt_spray_text_x, infamoustaunt_spray_text_y, 2, 2, 0, c_white, 1);
    shader_end();
}

if (state == PS_RESPAWN){
    shader_start();
    draw_sprite_ext(sprite_get("respawn_platform"), get_gameplay_time() * 0.1, x, y, 1, 1, spr_angle, c_white, 1);
    shader_end();
}

if (taunt_hold_timer > 100 && instance_exists(asset_get("oTestPlayer"))){
    if (get_player_color(player) == alt_pride1){
        draw_sprite_ext(sprite_get("transpride"), 0, 0, 0, room_width, round(room_height / 5), 0, c_white, taunt_hold_timer * 0.0005);
    } else {
        draw_set_alpha(taunt_hold_timer * 0.0005);
        draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
        draw_set_alpha(1);
    }
}

if (attack == AT_DAIR && has_rune("E") && !hitpause) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    if (window == 2 || window == 3){
        gpu_set_alphatestenable(true);
        if (window == 2){
            gpu_set_fog(1, make_colour_rgb(192, 92, 0), 0, 1); //fancy gpu drawing stuff by Muno
            draw_sprite_ext(sprite_index, image_index, x - hsp, y - vsp * 2, spr_dir, 1, spr_angle, c_white, 0.8);
        }
        gpu_set_fog(1, make_colour_rgb(244, 164, 31), 0, 1);
        if (window == 2){
            draw_sprite_ext(sprite_index, image_index, x - hsp * 0.75, y - vsp * 1.5, spr_dir, 1, spr_angle, c_white, 0.8);
        }
        draw_sprite_ext(sprite_index, image_index, x - hsp * 0.5, y - vsp, spr_dir, 1, spr_angle, c_white, 0.8);
        draw_sprite_ext(sprite_index, image_index, x - hsp * 0.25, y - vsp * 0.5, spr_dir, 1, spr_angle, c_white, 0.8);
        gpu_set_fog(0, c_white, 0, 0);
        gpu_set_alphatestenable(false);
    }
}

if (has_rune("N")){
    if (rune_N_abyss_opacity > 0){
        shader_start();
        draw_sprite_ext(rune_N_abyss_spr_index, rune_N_abyss_img_index, x - (spr_dir * 50) - round(hsp * 1.5), y - round(vsp * 1.5) - 1, spr_dir * 1.5, 1.5, spr_angle, c_green, rune_N_abyss_opacity);
        shader_end();
    }
    if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSTRONG_2){
        if (rune_N_abyss_strongtype == AT_FSTRONG){
            if (window == 1){
                shader_start();
                draw_sprite_ext(sprite_get("fstrong_abyss"), 0, x - (spr_dir * 51), y - 1, spr_dir * 3, 3, spr_angle, c_green, 1);
                shader_end();
            }
            if (window == 2){
                shader_start();
                draw_sprite_ext(sprite_get("fstrong_abyss"), round(window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH) / 5)), x - (spr_dir * 51), y - 1, spr_dir * 3, 3, spr_angle, c_green, 1);
                shader_end();
            }
            if (window == 3){
                shader_start();
                draw_sprite_ext(sprite_get("fstrong_abyss"), 5 + round(window_timer / ((get_window_value(attack, window, AG_WINDOW_LENGTH) / 14))), x - (spr_dir * 51), y - 1, spr_dir * 3, 3, spr_angle, c_green, 1);
                shader_end();
            }
            if (window == 4){
                shader_start();
                draw_sprite_ext(sprite_get("fstrong_abyss"), 19 + round(window_timer / 8), x - (spr_dir * 51), y - 1, spr_dir * 3, 3, spr_angle, c_green, 1);
                shader_end();
            }
        }
    }
}

with(asset_get("pHitBox")){
    if (player_id == other.id && attack == AT_DSPECIAL && hbox_num == 1){
        draw_sprite_ext(sprite_get("dspecial_proj2"), 0, x, y, distance_to_point(other.x, other.y - 30) + 10, 1, point_direction(x, y, other.x, other.y - 30), c_white, 1);
    }
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == 47 && window == 2){
    var nes_screen_start_x = 0;
    if (spr_dir > 0){
        nes_screen_start_x = 36;
    } else {
        nes_screen_start_x = 96;
    }
    draw_sprite_part_ext(sprite_get("nes_taunt_level"), 0, nes_taunt_x * 0.25, 0, 15, 40, x + (nes_screen_start_x * spr_dir), y - 66, 4, 4, c_white, 1);
    shader_start();
    draw_sprite_ext(sprite_get("nes_taunt_luigi"), 0, x + (nes_screen_start_x * spr_dir) + 16, y - 34 + nes_taunt_y, 4, 4, 0, c_white, 1);
    shader_end();
    if (nes_taunt_win_timer > 60){
        draw_sprite_ext(sprite_get("nes_taunt_start"), 0, x + (nes_screen_start_x * spr_dir), y - 66, 4, 4, 0, c_white, 1);
    }
    draw_sprite_ext(sprite_get("nes_taunt_hud"), 0, x + (nes_screen_start_x * spr_dir), y - 66, 4, 4, 0, c_white, 1);
}

//get_window_value(attack, window, AG_WINDOW_LENGTH)