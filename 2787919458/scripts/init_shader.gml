var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch(alt_cur){
    case 0:
        if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
        set_character_color_slot(5, 254, 254, 255);
        set_article_color_slot(5, 254, 254, 255);
    break;
    case 22:
        for(i = 0; i < 2; i++){
            set_character_color_slot(i, 0, 0, 0, 0);
        }
        set_character_color_shading(2,-1);
    break;
}