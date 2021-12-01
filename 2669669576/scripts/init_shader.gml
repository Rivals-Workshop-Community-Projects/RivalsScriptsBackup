if(get_player_color(player) == 7){
    set_color_profile_slot( 0, 4, 247, 250, 255 );
    set_color_profile_slot_range( 4, 143, 17, 12 );
    outline_color = [167, 186, 74]
    for(i = 0; i < 8; i++) set_character_color_shading(i, 0);
} else {
    set_color_profile_slot( 0, 4, 247, 250, 255 );
    set_color_profile_slot_range( 4, 3, 17, 12 );
}