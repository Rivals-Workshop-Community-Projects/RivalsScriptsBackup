//muno_event_type = 6;
//user_event(14);

if "prev_color" not in self prev_color = -1;

switch (get_player_color(player)) {
    case 2:
        colorSet(get_player_color(player), 3, make_color_hsv(get_gameplay_time() % 256, 255, 255));
    	colorSet(get_player_color(player), 4, make_color_hsv(get_gameplay_time() % 256, 255, 255));
        init_shader();
        break;
}
if (prev_color != get_player_color(player)) {
    prev_color = get_player_color(player);
}

muno_event_type = 6;
user_event(14);

#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));