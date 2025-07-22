//draw hud

if (get_match_setting(SET_PRACTICE) == true){
    if (get_match_setting(SET_HITBOX_VIS)){
        draw_debug_text(temp_x, temp_y - 80, "Overtime Bonus: +" + string(total_bonus) + "%");
    } else {
        if (get_gameplay_time() <= 180) draw_debug_text(temp_x, temp_y - 80, "TAUNT + SPECIAL to increase rank.");
    }
}

if (creature_timer < 300 && scanned_creature){
    draw_sprite_ext(sprite_get("newcreature"), creature_index, 328, 42, 2, 2, 0, c_white, creature_alpha);
}

draw_sprite_ext(sprite_get("hud_quota"), 0, temp_x - 2, temp_y - 60, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_inv_tools"), hud_anim_timer/3, temp_x + 116, temp_y - 52, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_inv_scrap"), hud_scrap_box_index, temp_x + 78, temp_y - 62, 2, 2, 0, c_white, 1);

if (has_scrap && current_scrap != noone && hud_scrap_box_index >= 3){
    draw_sprite_ext(sprite_get("hud_scrap"), current_scrap.index, temp_x + 82, temp_y - 36, 2, 2, 0, c_white, 1);
}

//current moves
draw_sprite_ext(sprite_get("hud_tools"), melee_weapons[curr_melee].index, temp_x + 120, temp_y - 32, 2, 2, 0, c_white, 1);

if (curr_fspec != -1){
draw_sprite_ext(sprite_get("hud_tools"), fspecial_tools[curr_fspec].index + 3, temp_x + 154, temp_y - 32, 2, 2, 0, c_white, 1);
    if (curr_fspec == 1 && move_cooldown[AT_FSPECIAL_2] > 0) {
        draw_sprite_ext(sprite_get("hud_tools"), fspecial_tools[curr_fspec].index + 3, temp_x + 154, temp_y - 32, 2, 2, 0, c_black, 0.6);
    }
}

if (curr_uspec != -1){
draw_sprite_ext(sprite_get("hud_tools"), uspecial_tools[curr_uspec].index + 5, temp_x + 188, temp_y - 32, 2, 2, 0, c_white, 1);
    if (curr_uspec == 0 && (cant_use_jetpack || jetpack_fuel == 0)) || (curr_uspec == 1 && move_cooldown[AT_USPECIAL_2] > 0){
        draw_sprite_ext(sprite_get("hud_tools"), uspecial_tools[curr_uspec].index + 5, temp_x + 188, temp_y - 32, 2, 2, 0, c_black, 0.6);
    }
}

draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(weight_font);
draw_text_color(temp_x + 52, temp_y - 60, string(weight_value), c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(quota_font);
draw_text_color(temp_x + 2, temp_y - 36, "c" + string(round(quota_current)) + "/", c_white, c_white, c_white, c_white, 1);
draw_text_color(temp_x + 2, temp_y - 22, "c" + string(quota_next), c_white, c_white, c_white, c_white, 1);

if (!rank_number_flicker){
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(rank_font);
    draw_text_color(temp_x + 9, temp_y - 60, string(quota_level), c_white, c_white, c_white, c_white, 1);
}

if (show_result && !result_queue){
    draw_set_font(rank_font);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_sprite_ext(sprite_get("hud_sold"), sold_index/2, temp_x - 2, temp_y - 60, 2, 2, 0, c_white, 1);
    if (sold_index >= 6){
        if (result_timer <= result_timer_max){
        draw_text_color(temp_x, temp_y - 20, "c" + string(result_scrap), c_white, c_white, c_white, c_white, 1);
        draw_sprite_ext(sprite_get("hud_sold_text"), 0, temp_x - 2, temp_y - 60, 2, 2, 0, c_white, 1);
        } else {
        draw_text_color(temp_x, temp_y - 20, "c" + string(result_overtime), c_white, c_white, c_white, c_white, 1);
        draw_sprite_ext(sprite_get("hud_sold_text"), 1, temp_x - 2, temp_y - 60, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("hud_sold_grade"), result_grade, temp_x + 2, temp_y - 60, 2, 2, 0, c_white, 1);
        }    
    }
}

if (show_fine && !fine_queue){
    draw_set_font(rank_font);
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_sprite_ext(sprite_get("hud_fines"), fine_index/2, temp_x - 2, temp_y - 60, 2, 2, 0, c_white, 1);
    if (fine_index >= 6){
        draw_text_color(temp_x + 68, temp_y - 20, "c" + string(death_fine), c_white, c_white, c_white, c_white, 1);
    }
}

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(floor(x1) + i * 2, floor(y1) + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha > 0 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;