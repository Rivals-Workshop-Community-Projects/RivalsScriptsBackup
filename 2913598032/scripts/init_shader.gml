if object_index != oPlayer exit;

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2 && window == 2) {
    set_character_color_slot(0, color_get_red(green_color), color_get_green(green_color), color_get_blue(green_color));
    set_character_color_slot(1, color_get_red(green_dark), color_get_green(green_dark), color_get_blue(green_dark));
}
