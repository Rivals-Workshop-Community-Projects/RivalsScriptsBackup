draw_sprite_ext(sprite_get("flutter_meter_bar_backlayer"), 0, temp_x + 80, temp_y - 16, 2, 2, 0, c_white, 1);

var flutterjump_meter_fill = flutterjump_max - flutterjump_draw;
if (flutterjump < round(flutterjump_max * 0.5)){
    draw_sprite_ext(sprite_get("flutter_meter_bar"), 0, temp_x + 80, temp_y - 16, flutterjump_meter_fill * (flutterjump_max * 0.0064), 2, 0, c_white, 1);
} else {
    if (flutterjump > 2){
        draw_sprite_ext(sprite_get("flutter_meter_bar_tired"), 0, temp_x + 80, temp_y - 16, flutterjump_meter_fill * (flutterjump_max * 0.0064), 2, 0, c_white, 1);
    }
}
if (get_player_color(player) == alt_pride1){
    draw_sprite_ext(sprite_get("transpride"), 0, temp_x + 80, temp_y - 17, flutterjump_meter_fill * (flutterjump_max * 0.0064), 2, 0, c_white, 0.65);
}

if (fspecial_charge * 1.75 >= flutterjump_meter_fill * (flutterjump_max * 0.0064)) || (fspecial_stored){
    var fspecial_meter_bar_draw_opacity = 0.6;
} else {
    var fspecial_meter_bar_draw_opacity = 1;
}

if (fspecial_charge > 0 || fspecial_stored > 0){
    if (fspecial_charge * 1.75 < 64 && fspecial_stored <= 0){
        shader_start();
        draw_sprite_ext(sprite_get("fspecial_meter_bar"), 0, temp_x + 80, temp_y - 16, fspecial_charge * 1.75, 2, 0, c_white, fspecial_meter_bar_draw_opacity);
        shader_end();
    } else {
        shader_start();
        if (fspecial_stored > 0){
            draw_sprite_ext(sprite_get("fspecial_meter_bar"), 0, temp_x + 80, temp_y - 16, fspecial_stored * 1.65, 2, 0, c_white, fspecial_meter_bar_draw_opacity);
        } else {
            draw_sprite_ext(sprite_get("fspecial_meter_bar"), 0, temp_x + 80, temp_y - 16, 64, 2, 0, c_white, fspecial_meter_bar_draw_opacity);
        }
        shader_end();
    }
}

draw_sprite_ext(sprite_get("flutter_meter"), 0, temp_x + 70, temp_y - 26, 2, 2, 0, c_white, 1);

if (move_cooldown[AT_USPECIAL] > 5){
    shader_start();
    if (get_player_color(player) == 0){
        draw_sprite_ext(sprite_get("kirbyicon"), 0, temp_x + 158, temp_y - 22, 1, 1, 0, c_gray, 1);
        if (in_range_of_egg_throw && can_special){
            draw_sprite_ext(sprite_get("kirbyicon"), 0, temp_x + 158, temp_y - 22, 1, 1, 0, c_white, 0.5);
        }
    } else {
        draw_sprite_ext(sprite_get("kirbyicon3"), 0, temp_x + 158, temp_y - 22, 1, 1, 0, c_gray, 1);
        if (in_range_of_egg_throw && can_special){
            draw_sprite_ext(sprite_get("kirbyicon3"), 0, temp_x + 158, temp_y - 22, 1, 1, 0, c_white, 0.5);
        }
    }
    shader_end();
} else {
    shader_start();
    if (get_player_color(player) == 0){
        draw_sprite_ext(sprite_get("kirbyicon"), 0, temp_x + 158, temp_y - 22, 1, 1, 0, c_white, 1);
    } else {
        draw_sprite_ext(sprite_get("kirbyicon3"), 0, temp_x + 158, temp_y - 22, 1, 1, 0, c_white, 1);
    }
    shader_end();
}

var fstrongindicatorattackstate = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
if (!free && !has_rune("F")) || (fstrongindicatorattackstate && attack == AT_FSTRONG && !has_rune("F")){
    if (misfire_charged || misfire_active){
        draw_sprite_ext(sprite_get("misfireicon"), 0, temp_x + 184, temp_y - 22, 2, 2, 0, c_white, 1);
    } else {
        draw_sprite_ext(sprite_get("misfireicon"), 0, temp_x + 184, temp_y - 22, 2, 2, 0, c_gray, 1);
    }
} else {
    if (!has_naired){
        draw_sprite_ext(sprite_get("cycloneicon"), 0, temp_x + 184, temp_y - 22, 2, 2, 0, c_white, 1);
    } else {
        draw_sprite_ext(sprite_get("cycloneicon"), 0, temp_x + 184, temp_y - 22, 2, 2, 0, c_gray, 1);
    }
}

if (has_rune("L")){
    if (get_player_damage(player) >= 100) || (state == PS_ATTACK_AIR && attack == AT_FTHROW) || (state == PS_ATTACK_GROUND && attack == AT_FTHROW) || (state == PS_ATTACK_AIR && attack == AT_UTHROW) || (state == PS_ATTACK_GROUND && attack == AT_UTHROW){
        draw_sprite_ext(sprite_get("abyss_go_icon"), get_gameplay_time() / 10, temp_x + 120, temp_y - 50, 2, 2, 0, c_white, 1);
    }
}

if (deadtimer < 10){
    if (state != PS_DEAD){
        if (hatdeathdrawheight > 0){
            shader_start();
            draw_sprite_ext(sprite_get("hat"), 0, temp_x + 50, temp_y + 10, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("hat_outline"), 0, temp_x + 50, temp_y + 10, 2, 2, 0, make_colour_rgb(outline_color[0], outline_color[1], outline_color[2]), 1);
            shader_end();
        } else {
            shader_start();
            draw_sprite_ext(sprite_get("hat"), 0, temp_x + 50, temp_y + 10 + hatdeathdrawheight, 2, 2, hatdeathdrawangle, c_white, 1);
            draw_sprite_ext(sprite_get("hat_outline"), 0, temp_x + 50, temp_y + 10 + hatdeathdrawheight, 2, 2, hatdeathdrawangle, make_colour_rgb(outline_color[0], outline_color[1], outline_color[2]), 1);
            shader_end();
        }
    }
} else {
    shader_start();
    draw_sprite_ext(sprite_get("hat"), 0, temp_x + 50 - deadtimer * 0.5, temp_y + deadhatpos, 2, 2, deadtimer * 3, c_white, 1);
    if (get_player_color(player) == alt_gb){
        draw_sprite_ext(sprite_get("hat_outline"), 0, temp_x + 50 - deadtimer * 0.5, temp_y + deadhatpos, 2, 2, deadtimer * 3, make_colour_rgb(35, 67, 49), 1);
    }
    if (get_player_color(player) == alt_gold){
        draw_sprite_ext(sprite_get("hat_outline"), 0, temp_x + 50 - deadtimer * 0.5, temp_y + deadhatpos, 2, 2, deadtimer * 3, make_colour_rgb(94, 77, 35), 1);
    }
    if (get_player_color(player) == alt_gooigi){
        draw_sprite_ext(sprite_get("hat_outline"), 0, temp_x + 50 - deadtimer * 0.5, temp_y + deadhatpos, 2, 2, deadtimer * 3, make_colour_rgb(20, 94, 56), 1);
    }
    if (get_player_color(player) == alt_nes){
        draw_sprite_ext(sprite_get("hat_outline"), 0, temp_x + 50 - deadtimer * 0.5, temp_y + deadhatpos, 2, 2, deadtimer * 3, make_colour_rgb(32, 32, 122), 1);
    }
    shader_end();
}


//draw_debug_text(temp_x + 90, temp_y - 42, string(current_month) + "/" + string(current_day) + "/" + string(current_year));
//draw_debug_text(temp_x + 90, temp_y - 42, string(get_stage_data(SD_ID)));
//draw_debug_text(temp_x + 90, temp_y - 42, string(get_stage_data(SD_ID)));

user_event(11);

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == 50 && window == 2 && has_hit_player && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 3){
    draw_set_alpha(1);
    draw_rectangle_color(0,0,960,540,c_white,c_white,c_white,c_white,false);
    draw_set_alpha(0.25);
    draw_rectangle_color(0,0,960,540,get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),false);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_get("fs_bg"), 0, random_func(0, 11, true) - 10, random_func(1, 11, true) - 10, 2, 2, 0, get_player_hud_color(player), 1);
    shader_start();
    draw_sprite_ext(sprite_get("fs_bird"), (fs_cutscene_time / fs_cutscene_length) * 11, 300, 20, 2, 2, 0, c_white, 1);
    shader_end();
    if (fs_target_id != noone){
        with(fs_target_id){
            shader_start();
            draw_sprite_ext(sprite_index, image_index, 210, 590, -6, 6, -10, c_white, 1);
            shader_end();
        }
    }
    if ((fs_cutscene_time / fs_cutscene_length) * 12){
        var bird_text_offset_x = 120;
        var bird_text_offset_y = 100;
        var bird_text_color = make_colour_rgb(round(get_color_profile_slot_r(get_player_color(player), 0)), round(get_color_profile_slot_g(get_player_color(player), 0)), round(get_color_profile_slot_b(get_player_color(player), 0)));
        var bird_text_string = "Nothing personnel, kid.";
        draw_set_font(asset_get("roaLBLFont"));
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text_color(bird_text_offset_x - 2, bird_text_offset_y, bird_text_string, c_black, c_black, c_black, c_black, 1);
        draw_text_color(bird_text_offset_x + 2, bird_text_offset_y, bird_text_string, c_black, c_black, c_black, c_black, 1);
        draw_text_color(bird_text_offset_x, bird_text_offset_y - 2, bird_text_string, c_black, c_black, c_black, c_black, 1);
        draw_text_color(bird_text_offset_x, bird_text_offset_y + 2, bird_text_string, c_black, c_black, c_black, c_black, 1);
        draw_text_color(bird_text_offset_x, bird_text_offset_y, bird_text_string, c_white, c_white, c_white, c_white, 1);
        draw_text_color(bird_text_offset_x, bird_text_offset_y, bird_text_string, bird_text_color, bird_text_color, bird_text_color, bird_text_color, 0.25);
    }
}

//make_colour_rgb(round(get_color_profile_slot_r(get_player_color(player), 0)), round(get_color_profile_slot_g(get_player_color(player), 0)), round(get_color_profile_slot_b(get_player_color(player), 0)))