var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch(alt_cur){
    case 0:
        if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
        set_character_color_slot(6, 239, 24, 17 );
        set_article_color_slot(6, 239, 24, 17 );
    break;
    case 8:
    for(var i = 0; i < 8; i++)set_character_color_shading(i,0);
    break;
    case 24:
        set_character_color_shading(4,-1);
        set_character_color_shading(3,0.25);
        set_character_color_shading(5,-1);
    break;
    case 25:
        set_character_color_shading(5,-1);
        set_character_color_shading(3,0);
    break;
}

