//chugnus

if (get_player_color(player) == 11){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
    outline_color = [35, 67, 49];
}

if (get_player_color(player) == 12){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
    outline_color = [60, 19, 124];
}

/*
if (get_player_color(player) == 15){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}
*/

//if (get_player_color(player) == 14){
//    for(i = 0; i < 8; i++){
//        set_character_color_shading(i, 0);
//        if (i != 7 && i != 1){
//            set_character_color_slot(i, 0, 255, 0, 0);
//            outline_color = [0, 255, 0];
//        }
//    }
//}

//if (get_player_color(player) != 14){
//    set_color_profile_slot_range( 2, 10, 17, 19 );
//}