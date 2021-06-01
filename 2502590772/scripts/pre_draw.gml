//pre_draw


if (is_master_player) exit;


if (custom_clone) {
    //draw percent above partner
    if (get_local_setting(SET_HUD_SIZE) > 0) {
        draw_set_halign(fa_center);
        draw_set_font(font_fname);
        draw_text_color(x, y - char_height - 32, string(damage_percent_as_teammate) + "%", c_white, c_white, c_white, c_white, 1);
    }  
    //draw_debug_text(x, y - char_height - 160, "sync_next_predicted_state: " + get_state_name(sync_next_predicted_state));
    //draw_debug_text(x, y - char_height - 128, "run direction: " + string(right_down - left_down));
    //draw_debug_text(x, y - char_height - 96, "state: " + get_state_name(state));
    //draw_debug_text(x, y - char_height - 128, "should_not_be_running: " + string(should_not_be_dashing));
    //draw_debug_text(x, y - char_height - 96, "should_be_running: " + string(should_be_dashing));
}

else {
    shader_start();
    //baton pass visual
    if (visual_batonpass_counter < 7) {
        draw_sprite(spr_batoncaught, floor(visual_batonpass_counter), x, y - 30);
    }
    //helping hand buff visual
    if (has_been_buffed_by_helping_hand && visual_hh_buff_counter != 0) {
        draw_sprite(teammate_player_id.spr_hh_buff_arrow_effect, visual_hh_buff_counter - 1, x + visual_hh_buff_x, y + visual_hh_buff_y - visual_hh_buff_counter * 2 );
    }
    //dstrong2 thunder visual
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
        switch (attack) {
            case AT_DSTRONG_2:
                var draw_sprite_index = noone;
                var draw_image_index = noone;
                switch (window) {
                    case 3:
                        draw_sprite_index = spr_thunder;
                        draw_image_index = window_timer / 3;
                    break;
                    case 4:
                        if (window_timer >= 6) break;
                        draw_image_index = 2 + window_timer / 2;
                        draw_sprite_index = spr_thunder;
                    break;
                }
                if (draw_sprite_index == noone) break;
                for (var i = y; i > view_get_yview(); i -= 384) {
                    draw_sprite_ext(draw_sprite_index, draw_image_index, x, i, 2, 2, 0, c_white, 1);
                }
            break;
        }
    }
    
    shader_end();
}

//remnants of debug hell, c. 2021 commentized
//with (obj_article3) draw_debug_text(x, y - 100, string(state))
//var xx = x + 150 * (species_id * 2 - 1);
//draw_debug_text(xx, y - 200, "left_down: " + string(left_down));
//draw_debug_text(xx, y - 240, "state: " + get_state_name(state));
//var i = -300;
//var n = 16;
//var xx = x + 150 * (species_id * 2 - 1);
//draw_debug_text(xx, y + i, "left_hard: " + string(left_hard_counter)); i += n;
//draw_debug_text(xx, y + i, "right_hard: " + string(right_hard_counter)); i += n;
//draw_debug_text(xx, y + i, "up_hard: " + string(up_hard_counter)); i += n;
//draw_debug_text(xx, y + i, "down_hard: " + string(down_hard_counter)); i += n;
//draw_debug_text(xx, y + i, "left_strong: " + string(left_strong_counter)); i += n;
//draw_debug_text(xx, y + i, "right_strong: " + string(right_strong_counter)); i += n;
//draw_debug_text(xx, y + i, "up_strong: " + string(up_strong_counter)); i += n;
//draw_debug_text(xx, y + i, "down_strong: " + string(down_strong_counter)); i += n;
////draw_debug_text(x, y + i, "taunt: " + string(taunt_counter)); i += n;
//draw_debug_text(xx, y + i, "attack: " + string(attack_counter)); i += n;
//draw_debug_text(xx, y + i, "special: " + string(special_counter)); i += n;
//draw_debug_text(xx, y + i, "jump: " + string(jump_counter)); i += n;
//draw_debug_text(xx, y + i, "shield: " + string(shield_counter)); i += n;
//draw_debug_text(xx, y + i, "do_a_fast_fall: " + string(do_a_fast_fall)); i += n;



//draw_debug_text(x, y + i, "left_stick_counter: " + string(left_stick_counter)); i += n;
//draw_debug_text(x, y + i, "right_stick_counter: " + string(right_stick_counter)); i += n;
//draw_debug_text(x, y + i, "up_stick_counter: " + string(up_stick_counter)); i += n;
//draw_debug_text(x, y + i, "down_stick_counter: " + string(down_stick_counter)); i += n;

//draw_debug_text(x, y - char_height - 96, "game_timer: " + string(get_game_timer()));
//joy_dir = ai_airdodge_direction;
//                        joy_pad_idle = false;
//                        ai_airdodge_direction = noone;

//draw_debug_text(x, y - char_height - 96, "attack: " + string(attack) + "window: " + string(window) + " / " + string(window_timer));
//draw_debug_text(x, y - char_height - 96, string(hsp / (2 * ground_friction)));
//draw_debug_text(x, y - char_height - 96, "game_timer: " + string(get_game_timer()));
//draw_debug_text(x, y - char_height - 128, "time_up_destroy_clones_trigger: " + string(master_player_id.time_up_destroy_clones_trigger));