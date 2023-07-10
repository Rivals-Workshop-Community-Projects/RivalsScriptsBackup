if "hitstun" in self && hitstun && state_cat == SC_HITSTUN && get_gameplay_time()%8 < 4{
    set_article_color_slot(6, 0, 0, 0);
    set_article_color_slot(7, 0, 0, 0);
}else if "state" in self && state == PS_SPAWN{
    set_article_color_slot(6, floor(get_color_profile_slot_r(get_player_color(player), 6)*(state_timer - 80)/45), floor(get_color_profile_slot_g(get_player_color(player), 6)*(state_timer - 80)/45), floor(get_color_profile_slot_b(get_player_color(player), 6)*(state_timer - 80)/45));
    set_article_color_slot(7, floor(get_color_profile_slot_r(get_player_color(player), 7)*(state_timer - 80)/45), floor(get_color_profile_slot_g(get_player_color(player), 7)*(state_timer - 80)/45), floor(get_color_profile_slot_b(get_player_color(player), 7)*(state_timer - 80)/45));
}else{
    set_article_color_slot(6, get_color_profile_slot_r(get_player_color(player), 6), get_color_profile_slot_g(get_player_color(player), 6), get_color_profile_slot_b(get_player_color(player), 6));
    set_article_color_slot(7, get_color_profile_slot_r(get_player_color(player), 7), get_color_profile_slot_g(get_player_color(player), 7), get_color_profile_slot_b(get_player_color(player), 7));
}