if (sprite_index == sprite_get("bighurt")){
    shader_start();
    draw_sprite_ext(sprite_get("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"), 0, x, y - 29, spr_dir, 1, state_timer * 15 * spr_dir, c_white, 1);
    shader_end();
    draw_sprite_ext(sprite_get("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA_outline"), 0, x, y - 29, spr_dir, 1, state_timer * 15 * spr_dir, make_colour_rgb(outline_color[0], outline_color[1], outline_color[2]), 1);
}

if (sprite_index == sprite_get("pratfall")){
    shader_start();
    draw_sprite_ext(sprite_get("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"), 0, x, y - 29, spr_dir, 1, state_timer * -15 * spr_dir, c_gray, 1);
    shader_end();
    draw_sprite_ext(sprite_get("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA_outline"), 0, x, y - 29, spr_dir, 1, state_timer * -15 * spr_dir, make_colour_rgb(outline_color[0], outline_color[1], outline_color[2]), 1);
    draw_sprite_ext(sprite_get("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA_outline"), 0, x, y - 29, spr_dir, 1, state_timer * -15 * spr_dir, c_black, 0.5);
}

if (get_player_color(player) == alt_negative){
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_alpha);
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir, 1, spr_angle, c_white, 1);
    gpu_set_alphatestenable(false);
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_blendmode(bm_normal);
}

if (infamoustaunt_spray_fade > 0){
    infamous_spray_color = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 0), get_color_profile_slot_g(get_player_color(player), 0), get_color_profile_slot_b(get_player_color(player), 0));
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, infamous_spray_color, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, spr_angle, c_white, infamoustaunt_spray_fade / 60); //fancy gpu drawing stuff by Muno
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, spr_angle, infamous_spray_color, infamoustaunt_spray_fade / 240);
    shader_end();
}

if (turned_into_a_goomba){
    draw_sprite_ext(sprite_get("goomba_mask"), 0, x - spr_dir * 4, y - 36, spr_dir * 2, 2, spr_angle, c_white, 1);
}

if phone_cheats[cheat_funny_bird]{
	draw_debug_text(x, y, "bird up");
}

if (state == PS_SPAWN){
    if (vacuum_move_type == 1){
        draw_sprite_ext(sprite_get("vacuum_car"), 0, x - vacuum_distance * spr_dir, y, spr_dir * 2, 2, 0, c_white, 1);
    }
    if (vacuum_move_type == 2){
        draw_sprite_ext(sprite_get("vacuum_car"), 0, x + vacuum_distance * spr_dir, y, spr_dir * 2, 2, 0, c_white, 1);
    }
}

//custom alt

if (colorselectmenu){
    var c_displaycolor = make_colour_rgb(get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected));
    draw_sprite_ext(sprite_get("custom_color_menu_box"), 0, -2, 46, 2, 2, 0, c_white, 0.8);
    draw_sprite_ext(sprite_get("custom_color_color_preview"), 0, 164, 67, 2, 2, 0, c_displaycolor, 1);
    draw_debug_text(25, 50, "Custom Color Menu");
    draw_debug_text(6, 70, "Current Color Slot: " + string(custom_color_slot_selected + 1));
    shader_start();
    draw_sprite_ext(sprite_get("custom_color_idle_preview"), 0, 160, 155, 1, 1, customcoloridlepreviewrotatevisible * 0.1, c_white, 1);
    draw_sprite_ext(sprite_get("boulderalt"), 0, 172, 106, 1, 1, customcoloridlepreviewrotatevisible * 0.1, c_white, 1);
    shader_end();
    if (custom_color_menu_preview_glow_opacity > 0){
        if (custom_color_slot_selected + 1 != 7){
            draw_sprite_ext(sprite_get("custom_color_idle_preview_glow" + string(custom_color_slot_selected + 1)), 0, 160, 155, 1, 1, customcoloridlepreviewrotatevisible * 0.1, c_white, custom_color_menu_preview_glow_opacity);
        } else {
            draw_sprite_ext(sprite_get("custom_color_idle_preview_glow" + string(custom_color_slot_selected + 1)), 0, 172, 106, 1, 1, customcoloridlepreviewrotatevisible * 0.1, c_white, custom_color_menu_preview_glow_opacity);
        }
    }
    draw_sprite_ext(asset_get("cc_revertButton_spr"), 0, -16, 86, 1, 1, 0, c_white, 0.9);
    if (colorselectmenu_current_hovering_option == 1){
        draw_sprite_ext(asset_get("cc_revertButton_spr"), 1, -16, 86, 1, 1, 0, c_white, 0.9);
    }
    draw_sprite_ext(asset_get("cc_codeButton_spr"), 0, -16, 120, 1, 1, 0, c_lime, 0.9);
    if (colorselectmenu_current_hovering_option == 2){
        draw_sprite_ext(asset_get("cc_codeButton_spr"), 1, -16, 120, 1, 1, 0, c_lime, 0.9);
    }
    draw_sprite_ext(asset_get("cc_saveButton_spr"), 0, -16, 154, 1, 1, 0, c_white, 0.9);
    if (colorselectmenu_current_hovering_option == 3){
        draw_sprite_ext(asset_get("cc_saveButton_spr"), 1, -16, 154, 1, 1, 0, c_white, 0.9);
    }
    draw_sprite_ext(sprite_get("custom_color_rgbvalue_box"), 0, 104, 91, 2, 2, 0, c_white, 0.9);
    draw_sprite_ext(sprite_get("custom_color_rgbvalue_box"), 0, 104, 125, 2, 2, 0, c_white, 0.9);
    draw_sprite_ext(sprite_get("custom_color_rgbvalue_box"), 0, 104, 159, 2, 2, 0, c_white, 0.9);
    draw_debug_text(4, 97, "Red Value:");
    draw_debug_text(110, 97, string(get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected)));
    draw_debug_text(4, 131, "Green Value:");
    draw_debug_text(110, 131, string(get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected)));
    draw_debug_text(4, 167, "Blue Value:");
    draw_debug_text(110, 167, string(get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected)));
    draw_debug_text(12, 190, "Close/Reopen to update!");
    if (custom_color_menu_transitiontimer <= 7 && custom_color_menu_transitiontimer > 0){
        draw_sprite_ext(sprite_get("custommenutransition"), custom_color_menu_transitiontimer, 0, 46, 4, 4, 0, c_white, 1);
    }
    if (custom_color_menu_transitiontimer <= 0){
        draw_sprite_ext(sprite_get("custommenutransition"), 0, 0, 46, 4, 4, 0, c_white, 1);
    }
}

custom_color_menu_preview_glow_opacity -= 0.05;
if (custom_color_menu_preview_glow_opacity < -1){
    custom_color_menu_preview_glow_opacity = 1;
}

if (playtesting_mode && get_player_color(player) == alt_custom && !colorselectmenu) && (y > 506 && y < 510 && x < 875 && x > 75){
    draw_set_font(asset_get("fName"));
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text_colour(x + 5, y - 140, "Taunt to open custom", c_white, c_white, c_gray, c_gray, 0.9);
    draw_text_colour(x + 5, y - 130, "color menu!", c_gray, c_gray, c_white, c_white,  0.9);
    customcoloridlepreviewrotate = 0;
    customcoloridlepreviewrotatetype = 0;
    customcoloridlepreviewrotatevisible = 0;
}


customcoloridlepreviewrotate += 1;
if (customcoloridlepreviewrotate > 35){
    customcoloridlepreviewrotate = 0;
    customcoloridlepreviewrotatetype += 1;
}
if (customcoloridlepreviewrotatetype > 8){
    customcoloridlepreviewrotatetype = 1;
}
if (customcoloridlepreviewrotatetype == 1){
    customcoloridlepreviewrotatevisible = customcoloridlepreviewrotate;
}

if (customcoloridlepreviewrotatetype == 2){
    customcoloridlepreviewrotatevisible = 35;
    customcoloridlepreviewrotatevisible += customcoloridlepreviewrotate * 0.5;
}

if (customcoloridlepreviewrotatetype == 3){
    customcoloridlepreviewrotatevisible = 52.5;
    customcoloridlepreviewrotatevisible -= customcoloridlepreviewrotate * 0.5;
}

if (customcoloridlepreviewrotatetype == 4){
    customcoloridlepreviewrotatevisible = 35 - customcoloridlepreviewrotate;
}

if (customcoloridlepreviewrotatetype == 5){
    customcoloridlepreviewrotatevisible = customcoloridlepreviewrotate;
    customcoloridlepreviewrotatevisible *= -1;
}

if (customcoloridlepreviewrotatetype == 6){
    customcoloridlepreviewrotatevisible = 35;
    customcoloridlepreviewrotatevisible += customcoloridlepreviewrotate * 0.5;
    customcoloridlepreviewrotatevisible *= -1;
}

if (customcoloridlepreviewrotatetype == 7){
    customcoloridlepreviewrotatevisible = 52.5;
    customcoloridlepreviewrotatevisible -= customcoloridlepreviewrotate * 0.5;
    customcoloridlepreviewrotatevisible *= -1;
}

if (customcoloridlepreviewrotatetype == 8){
    customcoloridlepreviewrotatevisible = 35 - customcoloridlepreviewrotate;
    customcoloridlepreviewrotatevisible *= -1;
}

user_event(12);