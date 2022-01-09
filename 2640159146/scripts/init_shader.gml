if object_index != oPlayer exit;

if  (get_player_color(player) == 19) {
    set_character_color_slot( 3, 0, 0, 0, 0);

}
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))