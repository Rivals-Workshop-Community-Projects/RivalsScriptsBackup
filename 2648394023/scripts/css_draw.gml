var alt_cur = get_player_color(player);
var red_colors = [
    make_color_rgb(
        get_color_profile_slot_r(alt_cur, 8),
        get_color_profile_slot_g(alt_cur, 8),
        get_color_profile_slot_b(alt_cur, 8)
        ),
    make_color_rgb(
        get_color_profile_slot_r(alt_cur, 9),
        get_color_profile_slot_g(alt_cur, 9),
        get_color_profile_slot_b(alt_cur, 9)
        ),
    ];


draw_sprite_ext(sprite_get("css_wing"), 0, x + 8, y + 8, 2, 2, 0, red_colors[0], 1);
draw_sprite_ext(sprite_get("css_wing"), 1, x + 8, y + 8, 2, 2, 0, red_colors[1], 1);

muno_event_type = 6;
user_event(14);