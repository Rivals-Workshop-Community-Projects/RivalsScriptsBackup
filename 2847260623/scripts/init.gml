//
player_die = 0;
time = 0;
music_change = 0;

if string_pos("SSL", get_char_info( 1, INFO_STR_NAME ) ) != true || string_pos("SSL", get_char_info( 1, INFO_STR_NAME ) ) != true || string_pos("SSL", get_char_info( 2, INFO_STR_NAME ) ) != true || string_pos("SSL", get_char_info( 3, INFO_STR_NAME ) ) != true {
	mode = 0;
}
if string_pos("SSL", get_char_info( 1, INFO_STR_NAME ) ) == true && string_pos("SSL", get_char_info( 1, INFO_STR_NAME ) ) == true && string_pos("SSL", get_char_info( 2, INFO_STR_NAME ) ) == true && string_pos("SSL", get_char_info( 3, INFO_STR_NAME ) ) == true {
	mode = 1;
}
death_check = 0;

mus_phase = 0;