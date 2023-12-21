//init_shader
#region // Variables
/*
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );*/
#endregion

#region // Character Colors
switch(get_player_color(player)){
    #region // Seasonal Skin
    case 12:
        switch(get_match_setting(SET_SEASON)){
            case 1: // Valentine's
                set_character_color_slot( 0, 225, 73, 73 ); //Orange
                set_character_color_slot( 1, 166, 38, 85 ); //Dark Orange
                set_character_color_slot( 2, 102, 14, 96 ); //Dark Dark Orange
                set_character_color_slot( 3, 231, 171, 210 ); //Fur
                set_character_color_slot( 4, 115, 24, 64 ); //Darks
                set_character_color_slot( 5, 255, 133, 193 ); //Cyan Light
                set_character_color_slot( 6, 199, 83, 184 ); //Cyan
                set_character_color_slot( 7, 133, 52, 156 ); //Cyan Dark
                break;
            case 2: // Summer
                set_character_color_slot( 0, 89, 204, 233 ); //Orange
                set_character_color_slot( 1, 76, 122, 196 ); //Dark Orange
                set_character_color_slot( 2, 60, 74, 161 ); //Dark Dark Orange
                set_character_color_slot( 3, 227, 182, 104 ); //Fur
                set_character_color_slot( 4, 50, 105, 82 ); //Darks
                set_character_color_slot( 5, 255, 166, 40 ); //Cyan Light
                set_character_color_slot( 6, 222, 79, 22 ); //Cyan
                set_character_color_slot( 7, 181, 15, 9 ); //Cyan Dark
                break;
            case 3: // Halloween (Belmont)
                set_character_color_slot( 0, 88, 132, 245 ); //Orange
                set_character_color_slot( 1, 55, 59, 196 ); //Dark Orange
                set_character_color_slot( 2, 62, 30, 176 ); //Dark Dark Orange
                set_character_color_slot( 3, 230, 161, 145 ); //Fur
                set_character_color_slot( 4, 233, 236, 240 ); //Darks
                set_character_color_slot( 5, 171, 117, 96 ); //Cyan Light
                set_character_color_slot( 6, 138, 61, 58 ); //Cyan
                set_character_color_slot( 7, 87, 31, 48 ); //Cyan Dark
                break;
            case 4: // Christmas
                set_character_color_slot( 0, 12, 170, 0 ); //Orange
                set_character_color_slot( 1, 0, 117, 43 ); //Dark Orange
                set_character_color_slot( 2, 0, 79, 64 ); //Dark Dark Orange
                set_character_color_slot( 3, 227, 169, 166 ); //Fur
                set_character_color_slot( 4, 37, 37, 37 ); //Darks
                set_character_color_slot( 5, 255, 72, 72 ); //Cyan Light
                set_character_color_slot( 6, 173, 35, 86 ); //Cyan
                set_character_color_slot( 7, 120, 13, 90 ); //Cyan Dark
                break;
        }
        break;
    #endregion
    #region // Early Access Skin
    case 14:
        for(var i = 0; i < 8; i++){
            set_character_color_shading(i, 0);
        }
        break;
    #endregion
}
#endregion