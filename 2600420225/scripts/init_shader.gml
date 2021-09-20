if(varia_suit == true && gravity_suit == false && get_player_color(player) <= 5){
    set_character_color_slot(0, 248, 224, 168 ); //plating1
    set_character_color_slot(1, 255, 189, 0 ); //plating2
    set_character_color_slot(2, 247, 107, 0 ); //plating3
    set_character_color_slot(3, 115, 33, 0 ); //plating4
}else if(varia_suit == true && gravity_suit == true  && get_player_color(player) <= 5){
    set_character_color_slot(0, 255, 231, 173 ); //plating1
    set_character_color_slot(1, 255, 132, 132 ); //plating2
    set_character_color_slot(2, 165, 66, 181 ); //plating3
    set_character_color_slot(3, 82, 41, 99 ); //plating4
}else if(varia_suit == true && gravity_suit == false && get_player_color(player) == 7){
    set_character_color_slot(7, 255, 98, 0); //vysor
}else if(varia_suit == true && gravity_suit == true && get_player_color(player) == 7){
    set_character_color_slot(7, 191, 0, 255); //vysor
}else if(varia_suit == true && gravity_suit == false && get_player_color(player) == 6){
    set_character_color_slot(0, 240, 176, 0 ); //plating1
    set_character_color_slot(1, 240, 176, 0 ); //plating2
    set_character_color_slot(2, 184, 0, 120 ); //plating3
    set_character_color_slot(3, 224, 248, 0 ); //plating4
}else if(varia_suit == true && gravity_suit == true  && get_player_color(player) == 6){
    set_character_color_slot(0, 96, 247, 0 ); //plating1
    set_character_color_slot(1, 96, 247, 0 ); //plating2
    set_character_color_slot(2, 0, 168, 176 ); //plating3
    set_character_color_slot(3, 128, 56, 136 ); //plating4
}