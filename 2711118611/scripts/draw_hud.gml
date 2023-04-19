ui_y = 18
sword_one_x = 154
sword_two_x = 174
sword_three_x = 192

if (instance_exists(sword_one)) {
    draw_sprite_ext(spr_nspecial_icon, 1, temp_x + sword_one_x, temp_y - ui_y, 2, 2, 0, c_white, 1);
}
else if(move_cooldown[AT_NSPECIAL] > 0) {
    draw_sprite_ext(spr_nspecial_icon, 1, temp_x + sword_one_x, temp_y - ui_y, 2, 2, 0, c_white, 0.5);
}
else {
    draw_sprite_ext(spr_nspecial_icon, 1, temp_x + sword_one_x, temp_y - ui_y, 2, 2, 0, c_black, 0.8);
}

if (instance_exists(sword_two)) {
    draw_sprite_ext(spr_fspecial_icon, 1, temp_x + sword_two_x, temp_y - ui_y, 2, 2, 0, c_white, 1);
}
else {
    draw_sprite_ext(spr_fspecial_icon, 1, temp_x + sword_two_x, temp_y - ui_y, 2, 2, 0, c_black, 0.8);
}

if (instance_exists(sword_three)) {
    draw_sprite_ext(spr_dspecial_icon, 1, temp_x + sword_three_x, temp_y - ui_y, 2, 2, 0, c_white, 1);
}
else {
    draw_sprite_ext(spr_dspecial_icon, 1, temp_x + sword_three_x, temp_y - ui_y, 2, 2, 0, c_black, 0.8);
}

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT && window == 2) {
    var center = view_get_wview() / 2;
    draw_sprite_ext(spr_textbox, 1, center, temp_y - 20, 1.5, 1.5, 0, c_white, 1);
    if (window_timer > 1) {
        draw_debug_text(center - 100, temp_y - 70, str_line_one_text);
        draw_debug_text(center - 100, temp_y - 50, str_line_two_text);
        //draw_debug_text(temp_x, temp_y, string(int_text_pos));
    }

}