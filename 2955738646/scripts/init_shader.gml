//Shader stuff


//if(get_player_color(player) == 1){
/*
set_character_color_slot(2, 25, 225, 100);
set_character_color_slot(2, 25, 225, 100);
set_character_color_slot(2, 25, 225, 100);
set_character_color_slot(2, 25, 225, 100);
*/

if (state == PS_SPAWN){
SuperMech = false;
}

if (get_player_color(player) < 13) {
    if (SuperMech == true){
set_character_color_slot(0, 255, 205, 90, 1);
//outline_color = [ 25, 25, 25 ];
    }
}

//}