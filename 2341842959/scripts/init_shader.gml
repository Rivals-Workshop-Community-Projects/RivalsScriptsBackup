for (var s = 0; s < 8; s++;){
    set_character_color_shading(s, 1 - shadelessmode);
    if s == 1 || s == 4{
        set_character_color_slot(
            s,
            get_color_profile_slot_r(get_player_color(player), s - shadelessmode),
            get_color_profile_slot_g(get_player_color(player), s - shadelessmode),
            get_color_profile_slot_b(get_player_color(player), s - shadelessmode)
        );
    }
}

//EA
if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
//    outline_color = [ 35, 67, 49 ];
}