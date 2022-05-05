/*debug utility
draw_debug_text( 200, 10, "state : " + get_state_name(state));
draw_debug_text( 200, 25, "state timer : " + string(state_timer));
draw_debug_text( 200, 40, "attack : " + string(attack));
draw_debug_text( 200, 55, "window : " + string(window));
draw_debug_text( 200, 70, "window timer : " + string(window_timer));
draw_debug_text(  15, 10, "hsp: " + string(hsp));
draw_debug_text(  15, 25, "vsp: " + string(vsp));
draw_debug_text(  15, 40, "img ind: " + string(image_index));
draw_debug_text(  15, 55, "spr_dir: " + string(spr_dir));
draw_debug_text(  15, 70, "x: " + string(x));
draw_debug_text(  15, 85, "y: " + string(y));
draw_debug_text(  15, 100, "free: " + string(free));
draw_debug_text(  15, 115, "attack pressed : " + string(attack_pressed));
draw_debug_text(  15, 130, "attack down : " + string(attack_down));
draw_debug_text(  15, 145, "joy_dir : " + string(joy_dir));
draw_debug_text( 600, 10, "FPS : " + string(fps_real));
*/
draw_set_font(asset_get("fName"));

//hud
if(menu_version == 0){
//
if(menu_y < -12){
    draw_rectangle_color(temp_x + 100, temp_y + 10 +  menu_y, temp_x + 220, temp_y + 24 + menu_y, c_black, c_black, c_black, c_black, false);
    if(moving_text < name_xval[item_id] + 120){
        moving_text += 1.5;
    }else{
        moving_text = 0;
    }
    draw_sprite_part_ext(sprite_get("hud_" + string(item_id) + "_text"), 0, 0, 0, 60 * ((moving_text/(item_id > 2? (item_id = 3? 2: (item_id = 4? 2.2: 2.5)): 4.5))/name_xval[item_id]), 6, temp_x - moving_text + 214, temp_y + 12 + menu_y, 2, 2, c_white, 1);
}
draw_sprite_ext(sprite_get("hud2"), 0, temp_x - 10, temp_y + menu_y, 2, 2, 0, c_white, 1);
if(menu_y < -12){
    draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 0: 1), temp_x, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 2: 3), temp_x + 24, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 4: 5), temp_x + 48, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_missile_cooldown = 0? 6: 7), temp_x + 72, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_missile_cooldown = 0? 8: 9), temp_x + 96, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_flash_shift_cooldown = 0? 10: 11), temp_x + 116, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    if(menu_alpha < 1){
        menu_alpha += 0.04;
    }else{
        menu_alpha = -1
    }
    draw_sprite_ext(sprite_get("hud_item_cursor"), (item_id = 5? 1: 0), temp_x + (item_id < 5? 24 * item_id: 24 * 5 - 2) - 2, temp_y + 10 + menu_y, 2, 2, 0, c_white, abs(menu_alpha));
}
//
}else{
//
if(menu_y < -12){
    draw_rectangle_color(temp_x + 100, temp_y + 10 +  menu_y, temp_x + 220, temp_y + 24 + menu_y, c_black, c_black, c_black, c_black, false);
    if(moving_text < name_xval[item_id] + 120){
        moving_text += 1.5;
    }else{
        moving_text = 0;
    }
    draw_sprite_part_ext(sprite_get("hud_" + string(item_id) + "_text"), 0, 0, 0, 60 * ((moving_text/(item_id > 2? (item_id = 3? 2: (item_id = 4? 2.2: 2.5)): 4.5))/name_xval[item_id]), 6, temp_x - moving_text + 214, temp_y + 12 + menu_y, 2, 2, c_white, 1);
    draw_sprite_ext(sprite_get("hud_quick"), 0, temp_x + 96, temp_y - 22 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_quick"), 1, temp_x + 72, temp_y - 22 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_quick"), 2, temp_x + 48, temp_y - 22 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_quick"), 2, temp_x + 24, temp_y - 2 + menu_y, 2, 2, 90, c_white, 1);
    draw_sprite_ext(sprite_get("hud_quick"), 2, temp_x + 20, temp_y - 2 + menu_y, 2, 2, 180, c_white, 1);
    draw_sprite_ext(sprite_get("hud_quick"), 2, temp_x + 136, temp_y - 22 + menu_y, 2, 2, 270, c_white, 1);
}
draw_sprite_ext(sprite_get("hud2"), 0, temp_x - 10, temp_y + menu_y, 2, 2, 0, c_white, 1);
if(menu_y < -12){
    draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 0: 1), temp_x, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 2: 3), temp_x + 24, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 4: 5), temp_x + 48, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_missile_cooldown = 0? 6: 7), temp_x + 72, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_missile_cooldown = 0? 8: 9), temp_x + 96, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_items"), (hud_flash_shift_cooldown = 0? 10: 11), temp_x + 116, temp_y + 12 + menu_y, 2, 2, 0, c_white, 1);
}
//
}

//leds and stuff
draw_sprite_ext(sprite_get("hud1"), 0, temp_x - 10, temp_y -34, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_numbers_big"), get_player_stocks(player), temp_x + 4, temp_y + 22, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_helmet"), (state == PS_RESPAWN? 1: 0), temp_x + 24, temp_y + 2, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_dodge"), (has_airdodge = true? 0: 1), temp_x + 198, temp_y + 14, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_player"), get_player_team(player) - 1, temp_x + 198, temp_y - 6, 2, 2, 0, c_white, 1);
draw_sprite_stretched_ext(sprite_get("hud_aeion_bar"), (aeion < 1000? (power_ups[5] = 1? 0: 1): 0), temp_x + 74, temp_y + 36, 128 * (aeion/1000), 6, c_white, 1);
draw_sprite_ext(sprite_get("hud_aeion"), (aeion < 1000? (power_ups[5] = 1? 0: 1): 0), temp_x + 206, temp_y + 32, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_LED"), (hud_beam_cooldown = 0? 0: (hud_beam_cooldown > 300? 1: 2)), temp_x + 74, temp_y + 2, 4, 4, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_LED"), (hud_missile_cooldown = 0? 3: (hud_missile_cooldown > 300? 4: 5)), temp_x + 84, temp_y + 2, 4, 4, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_LED"), (hud_flash_shift_cooldown = 0? 6: (hud_flash_shift_cooldown > 300? 7: 8)), temp_x + 94, temp_y + 2, 4, 4, 0, c_white, 1);
draw_sprite_ext(sprite_get("power_bomb_overlay"), 0, temp_x + 178, temp_y - 4, 2, 2, 0, c_white, (power_cooldown = 0? 0: 1));
if(state == PS_SPAWN){
    draw_text_color(temp_x + 2 + 72, temp_y - 30, "taunt: menu version", c_black, c_black, c_black, c_black, 1);
    draw_text_color(temp_x - 2 + 72, temp_y - 30, "taunt: menu version", c_black, c_black, c_black, c_black, 1);
    draw_text_color(temp_x + 72, temp_y - 30 + 2, "taunt: menu version", c_black, c_black, c_black, c_black, 1);
    draw_text_color(temp_x + 72, temp_y - 30 - 2, "taunt: menu version", c_black, c_black, c_black, c_black, 1);
    draw_text_color(temp_x + 72, temp_y - 30, "taunt: menu version", c_white, c_white, c_white, c_white, 1);
    
    draw_text_color(temp_x + 184 + 2, temp_y - 30, (menu_version = 0? "[CLASSIC]": "[QUICK]"), c_black, c_black, c_black, c_black, 1);
    draw_text_color(temp_x + 184 - 2, temp_y - 30, (menu_version = 0? "[CLASSIC]": "[QUICK]"), c_black, c_black, c_black, c_black, 1);
    draw_text_color(temp_x + 184, temp_y - 30 + 2, (menu_version = 0? "[CLASSIC]": "[QUICK]"), c_black, c_black, c_black, c_black, 1);
    draw_text_color(temp_x + 184, temp_y - 30 - 2, (menu_version = 0? "[CLASSIC]": "[QUICK]"), c_black, c_black, c_black, c_black, 1);
    draw_text_color(temp_x + 184, temp_y - 30, (menu_version = 0? "[CLASSIC]": "[QUICK]"), (menu_version = 0? c_aqua: c_orange), (menu_version = 0? c_aqua: c_orange), (menu_version = 0? c_aqua: c_orange), (menu_version = 0? c_aqua: c_orange), 1);
}

//%
draw_sprite_ext(sprite_get("hud_numbers"), get_player_damage(player) % 10, temp_x + 100, temp_y + 14, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_numbers"), floor((get_player_damage(player) % 100) * 0.1), temp_x + 88, temp_y + 14, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_numbers"), floor(get_player_damage(player) * 0.01), temp_x + 76, temp_y + 14, 2, 2, 0, c_white, 1);

//missiles
draw_sprite_ext(sprite_get("hud_numbers"), missile_amount % 10, temp_x + 162, temp_y + 14, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_numbers"), floor((missile_amount % 100) * 0.1), temp_x + 150, temp_y + 14, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_numbers"), floor(missile_amount * 0.01), temp_x + 138, temp_y + 14, 2, 2, 0, c_white, 1);

//power bombs
draw_sprite_ext(sprite_get("hud_numbers"), power_bomb_amount % 10, temp_x + 162, temp_y - 6, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_numbers"), floor((power_bomb_amount % 100) * 0.1), temp_x + 150, temp_y - 6, 2, 2, 0, c_white, 1);

//bars
if(hud_beam_cooldown > 300 || hud_beam_cooldown == 0){
    draw_rectangle_color(temp_x + 2, temp_y + 4 + menu_y, temp_x + 3 + (hud_beam_cooldown = 0? 62: (hud_beam_cooldown - 300) / 500 * 62), temp_y + 5 + menu_y, c_yellow, c_yellow, c_yellow, c_yellow, false);
}else if(hud_beam_cooldown <= 300 || hud_beam_cooldown > 0){
    draw_set_alpha(0.6);
    draw_rectangle_color(temp_x + 2, temp_y + 4 + menu_y, temp_x + 3 + (hud_beam_cooldown = 0? 62: 62 - hud_beam_cooldown / 300 * 62), temp_y + 5 + menu_y, c_yellow, c_yellow, c_yellow, c_yellow, false);
    draw_set_alpha(1);
}
if(hud_missile_cooldown > 300 || hud_missile_cooldown == 0){
    draw_rectangle_color(temp_x + 74, temp_y + 4 + menu_y, temp_x + 75 + (hud_missile_cooldown = 0? 56: (hud_missile_cooldown - 300) / 500 * 56), temp_y + 5 + menu_y, c_red, c_red, c_red, c_red, false);
}else if(hud_missile_cooldown <= 300 || hud_missile_cooldown > 0){
    draw_set_alpha(0.6);
    draw_rectangle_color(temp_x + 74, temp_y + 4 + menu_y, temp_x + 75 + (hud_missile_cooldown = 0? 56: 56 - hud_missile_cooldown / 300 * 56), temp_y + 5 + menu_y, c_red, c_red, c_red, c_red, false);
    draw_set_alpha(1);
}