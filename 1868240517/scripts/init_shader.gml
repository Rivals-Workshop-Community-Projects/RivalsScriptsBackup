// called when the character gets KO'd

player_color = get_player_color(player);
energy_clr[player_color] = make_color_rgb(get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0));

if player_color == 12 {
    set_character_color_slot(1,get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0),0.2);
    set_article_color_slot(1,get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0),0.2);
    
    set_character_color_shading(1,0);
}

if player_color == 13 {
    set_character_color_slot(1,get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0),0.0);
    set_article_color_slot(1,250, 250, 250,0.0);
    set_character_color_shading(1,0);
}
/*if player_color == 14 {
    set_character_color_slot(1,get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0),0.3);
    set_article_color_slot(1,get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0),0.3);
    
    set_character_color_shading(1,0);
}*/

if player_color == 9 {
     //set_character_color_shading(1,-1);
}