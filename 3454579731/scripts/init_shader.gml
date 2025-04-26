var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);

if (playerAlt == 0){
    set_character_color_slot( 1, get_color_profile_slot_r( get_player_color(player), 0), get_color_profile_slot_g( get_player_color(player), 0), get_color_profile_slot_b( get_player_color(player), 0) );
    set_character_color_slot( 3, get_color_profile_slot_r( get_player_color(player), 2), get_color_profile_slot_g( get_player_color(player), 2), get_color_profile_slot_b( get_player_color(player), 2) );
    
    set_article_color_slot( 1, get_color_profile_slot_r( get_player_color(player), 0), get_color_profile_slot_g( get_player_color(player), 0), get_color_profile_slot_b( get_player_color(player), 0) );
    set_article_color_slot( 3, get_color_profile_slot_r( get_player_color(player), 2), get_color_profile_slot_g( get_player_color(player), 2), get_color_profile_slot_b( get_player_color(player), 2) );

}