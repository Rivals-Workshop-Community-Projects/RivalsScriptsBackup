if get_player_color(player) == 7 {
    hue = (hue + hue_speed) % 255; //finds the hue and shifts it
    color_hsv = make_color_hsv(hue, 160, 245); //creates a new gamemaker colour variable using the shifted hue
    set_color_profile_slot(7, 0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_color_profile_slot(7, 1, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
    set_article_color_slot(0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_article_color_slot(1, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
    init_shader();
}