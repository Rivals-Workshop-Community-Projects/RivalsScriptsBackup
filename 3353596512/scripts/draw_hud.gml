//draw hud

if (get_match_setting(SET_PRACTICE) == true && get_gameplay_time() <= 180){
    draw_debug_text(temp_x, temp_y - 80, "TAUNT + SPECIAL to increase rank.");
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
draw_text_color(temp_x + 2, temp_y - 36, "c" + string(quota_current) + "/", c_white, c_white, c_white, c_white, 1);
draw_text_color(temp_x + 2, temp_y - 22, "c" + string(quota_next), c_white, c_white, c_white, c_white, 1);

if (!rank_number_flicker){
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(rank_font);
    draw_text_color(temp_x + 9, temp_y - 60, string(quota_level), c_white, c_white, c_white, c_white, 1);
}


/*
    var mul = 16; //spacing
 
      
    draw_debug_text(temp_x+mul*0, temp_y+mul*-4, "state = " + string(get_state_name(state)));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-3, "state_timer = " + string(state_timer));

    if (
        is_attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
        state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE)
    {
        if (is_attacking) draw_debug_text(temp_x+mul*0, temp_y+mul*-7, "attack = " + string(attack_names[attack]));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-6, "window = " + string(window));
        draw_debug_text(temp_x+mul*0, temp_y+mul*-5, "window_timer = " + string(window_timer));
    }


    draw_debug_text(temp_x+mul*0, temp_y+mul*-2, "x = " + string(x));
    draw_debug_text(temp_x+mul*0, temp_y+mul*-1, "y = " + string(y));

    draw_debug_text(temp_x+mul*5, temp_y+mul*-2, "hsp = " + string(hsp));
    draw_debug_text(temp_x+mul*5, temp_y+mul*-1, "vsp = " + string(vsp));

*/