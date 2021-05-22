//css-draw
user_event(1)

if cssTimer == 0 {
    set_color_profile_slot_range( 3, 1, 1, 1 );
    set_color_profile_slot_range( 6, 1, 1, 1 );
}

var alt_cur = get_player_color(player);
if alt_cur == 0 {
    set_character_color_slot(6, 255, 255, 255, 1);
    set_character_color_slot(3, 181, 30, 30, 1);
}

