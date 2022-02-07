/*
*
*               -------- init_shader.gml -----------
*
*   
*   
*   
*
*/

//------------------------------------------------------------------------------
//Changes temp colours for the default alt

//------------------------------------------------------------------------------
//Changes hands based on mode

//Red
if ("red_mode" in self && red_mode == true){ 
    set_character_color_slot( 4, 
    get_color_profile_slot_r(get_player_color(player), 6), 
    get_color_profile_slot_g(get_player_color(player), 6), 
    get_color_profile_slot_b(get_player_color(player), 6)
    );
    set_character_color_slot( 7, 
    0, 
    0, 
    0
    );
} 
//Purple
else if ("red_mode" in self && red_mode == 2) {
    set_character_color_slot( 1, 
    213, 
    0, 
    255
    );
    set_character_color_slot( 4, 
    213, 
    0, 
    255
    );
    set_character_color_slot( 7, 
    75, 
    0, 
    141
    );
} 
//Blue
else {
    set_character_color_slot( 4, 
    get_color_profile_slot_r(get_player_color(player), 5), 
    get_color_profile_slot_g(get_player_color(player), 5), 
    get_color_profile_slot_b(get_player_color(player), 5)
    );
    set_character_color_slot( 7, 
    0,
    83,
    255
    );
    switch(get_player_color(player)){
        case(5):
        case(7):
        case(8):
        case(9):
        case(11):
        case(12):
        case(14):
            set_character_color_slot( 7, 
            0,
            10,
            127
            );
            break;
    }
}

//Veil Alt
switch(get_player_color(player)){
    case(14):
        //Red
        if ("red_mode" in self && red_mode) {
            set_character_color_slot( 0, 
            234,
            29,
            35
            );
            set_character_color_slot( 1, 
            234,
            29,
            35
            );
            set_character_color_slot( 2, 
            234,
            29,
            35
            );
            set_character_color_slot( 3, 
            234,
            29,
            35
            );
        //Blue
        } else {
            set_character_color_slot( 0, 
            0,
            68,
            255
            );
            set_character_color_slot( 1, 
            0,
            68,
            255
            );
            set_character_color_slot( 2, 
            0,
            68,
            255
            );
            set_character_color_slot( 3, 
            0,
            68,
            255
            );
        }
        break;
}

//------------------------------------------------------------------------------
//Changes eyes depending on direction facing / changes eyes to purple

//Purple
if ("red_mode" in self && red_mode == 2){
    set_character_color_slot( 5, 
    0, 
    0, 
    0
    );
    set_character_color_slot( 6, 
    213, 
    0, 
    255
    );
}

else if ("spr_dir" in self && spr_dir == -1){
    set_character_color_slot( 5, 
    get_color_profile_slot_r(get_player_color(player), 6), 
    get_color_profile_slot_g(get_player_color(player), 6), 
    get_color_profile_slot_b(get_player_color(player), 6)
    );
    set_character_color_slot( 6, 
    get_color_profile_slot_r(get_player_color(player), 5), 
    get_color_profile_slot_g(get_player_color(player), 5), 
    get_color_profile_slot_b(get_player_color(player), 5)
    );
}

//------------------------------------------------------------------------------