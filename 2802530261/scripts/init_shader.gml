if(get_player_color(player) == 27 || get_player_color(player) == 28 || get_player_color(player) == 29 || get_player_color(player) == 30){
    set_character_color_shading(0, 0);
    set_character_color_shading(1, 0);
    set_character_color_shading(2, 0);
    set_character_color_shading(3, 0);
    set_character_color_shading(4, 0);
    set_character_color_shading(5, 0);
    set_character_color_shading(6, 0);
    set_character_color_shading(7, 0);
}else{
    set_character_color_shading(0, 1);
    set_character_color_shading(1, 1);
    set_character_color_shading(2, 1);
    set_character_color_shading(3, 1);
    set_character_color_shading(4, 1);
    set_character_color_shading(5, 1);
    set_character_color_shading(6, 1);
    set_character_color_shading(7, 1);
}

//rainbow
if(get_player_color(player) == 26){
if(get_color_profile_slot_r(26, 0) == 0 && get_color_profile_slot_g(26, 0) == 255 && get_color_profile_slot_b(26, 0) < 255){
    set_color_profile_slot( 26, 0, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 1, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 2, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 3, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 4, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 5, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 6, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 7, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
}else if(get_color_profile_slot_r(26, 0) == 0 && get_color_profile_slot_g(26, 0) > 0 && get_color_profile_slot_b(26, 0) == 255){
    set_color_profile_slot( 26, 0, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 1, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 2, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 3, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 4, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 5, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 6, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 7, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
}else if(get_color_profile_slot_r(26,0) < 255 && get_color_profile_slot_g(26, 0) == 0 && get_color_profile_slot_b(26, 0) == 255){
    set_color_profile_slot( 26, 0, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 1, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 2, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 3, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 4, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 5, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 6, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 7, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
}else if(get_color_profile_slot_r(26,0) == 255 && get_color_profile_slot_g(26, 0) == 0 && get_color_profile_slot_b(26, 0) > 0){
    set_color_profile_slot( 26, 0, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 1, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 2, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 3, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 4, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 5, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 6, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 7, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
}else if(get_color_profile_slot_r(26,0) == 255 && get_color_profile_slot_g(26, 0) < 255 && get_color_profile_slot_b(26, 0) == 0){
    set_color_profile_slot( 26, 0, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 1, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 2, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 3, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 4, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 5, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 6, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 7, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
}else if(get_color_profile_slot_r(26,0) > 0 && get_color_profile_slot_g(26, 0) == 255 && get_color_profile_slot_b(26, 0) == 0){
    set_color_profile_slot( 26, 0, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 1, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 2, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 3, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 4, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 5, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 6, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 7, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
}
}