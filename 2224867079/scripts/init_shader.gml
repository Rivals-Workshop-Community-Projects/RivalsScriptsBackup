//init_shader.gml

//Changes the pink to blue
if (RedMode == false) {
    //Default Skin
    if (get_player_color(player) == 0) {
        set_character_color_slot( 6, 0, 161, 230 ); //Blue
    }
    //BluAxolotl
    if (get_player_color(player) == 1) {
        set_character_color_slot( 6, 1, 238, 255 ); //Blue
    }
    //Ans
    if (get_player_color(player) == 2) {
        set_character_color_slot( 6, 44, 121, 255 ); //Blue
    }
    //Shujo
    if (get_player_color(player) == 3) {
        set_character_color_slot( 6, 1, 238, 255 ); //Blue
    }
    //Neptendo
    if (get_player_color(player) == 4) {
        set_character_color_slot( 6, 0, 103, 214 ); //Blue
    }
    //Subi
    if (get_player_color(player) == 5) {
        set_character_color_slot( 6, 0, 242, 255 ); //Blue
    }
    //Bingy
    if (get_player_color(player) == 6) {
        set_character_color_slot( 6, 0, 161, 230 ); //Blue
    }
    //Troll
    if (get_player_color(player) == 7) {
        set_character_color_slot( 6, 1, 238, 255 ); //Blue
    }
    //Abyss
    if (get_player_color(player) == 8) {
        set_character_color_slot( 6, 1, 254, 253 ); //Blue
    }
    //Nega
    if (get_player_color(player) == 9) {
        set_character_color_slot( 6, 0, 161, 230 ); //Blue
    }
    //KAWAII
    if (get_player_color(player) == 10) {
        set_character_color_slot( 6, 102, 249, 255 ); //Blue
    }
}
//Changes the pink to red
if (RedMode == true) {
    //Default Skin
    if (get_player_color(player) == 0) {
        set_character_color_slot( 6, 234, 29, 35 ); // Red
    }
    //BluAxolotl
    if (get_player_color(player) == 1) {
        set_character_color_slot( 6, 255, 43, 89 ); //Red
    }
    //Ans
    if (get_player_color(player) == 2) {
        set_character_color_slot( 6, 255, 43, 89 ); //Red
    }
    //Shujo
    if (get_player_color(player) == 3) {
        set_character_color_slot( 6, 255, 43, 89 ); //Red
    }
    //Neptendo
    if (get_player_color(player) == 4) {
        set_character_color_slot( 6, 255, 69, 193 ); //Red
    }
    //Subi
    if (get_player_color(player) == 5) {
        set_character_color_slot( 6, 255, 43, 89 ); //Red
    }
    //Bingy
    if (get_player_color(player) == 6) {
        set_character_color_slot( 6, 234, 29, 35 ); //Red
    }
    //Troll
    if (get_player_color(player) == 7) {
        set_character_color_slot( 6, 255, 43, 89 ); //Red
    }
    //Abyss
    if (get_player_color(player) == 8) {
        set_character_color_slot( 6, 255, 43, 89 ); //Red
    }
    //Nega
    if (get_player_color(player) == 9) {
        set_character_color_slot( 6, 234, 29, 35 ); //Red
    }
    //KAWAII
    if (get_player_color(player) == 10) {
        set_character_color_slot( 6, 255, 69, 193 ); //Red
    }
}

//Changes eye colour if facing right
if (spr_dir == 1) {
    //Default Skin
    if (get_player_color(player) == 0) {
        set_character_color_slot( 5, 234, 29, 35 ); //Left Eye
        set_character_color_slot( 7, 0, 161, 230 ); //Right Eye
    }
    //BluAxolotl
    if (get_player_color(player) == 1) {
        set_character_color_slot( 5, 255, 43, 89 ); //Left Eye
        set_character_color_slot( 7, 1, 238, 255 ); //Right Eye
    }
    //Ans
    if (get_player_color(player) == 2) {
        set_character_color_slot( 5, 255, 43, 89 ); //Left Eye
        set_character_color_slot( 7, 44, 121, 255 ); //Right Eye
    }
    //Shujo
    if (get_player_color(player) == 3) {
        set_character_color_slot( 7, 1, 238, 255 ); //Left Eye
        set_character_color_slot( 5, 255, 43, 89 ); //Right Eye
    }
    //Neptendo
    if (get_player_color(player) == 4) {
        set_character_color_slot( 5, 255, 69, 193 ); //Red
        set_character_color_slot( 7, 0, 103, 214 ); //Blue
    }
    //Subi
    if (get_player_color(player) == 5) {
        set_character_color_slot( 5, 255, 43, 89 ); //Red
        set_character_color_slot( 7, 0, 242, 255 ); //Blue
    }
    //Bingy
    if (get_player_color(player) == 6) {
        set_character_color_slot( 5, 234, 29, 35 ); //Red
        set_character_color_slot( 7, 0, 161, 230 ); //Blue
    }
    //Troll
    if (get_player_color(player) == 7) {
        set_character_color_slot( 5, 255, 43, 89 ); //Red
        set_character_color_slot( 7, 1, 238, 255 ); //Blue
    }
    //Abyss
    if (get_player_color(player) == 8) {
        set_character_color_slot( 5, 255, 43, 89 ); //Red
        set_character_color_slot( 7, 1, 254, 253 ); //Blue
    }
    //Nega
    if (get_player_color(player) == 9) {
        set_character_color_slot( 5, 234, 29, 35 ); //Red
        set_character_color_slot( 7, 0, 161, 230 ); //Blue
    }
    //KAWAII
    if (get_player_color(player) == 10) {
        set_character_color_slot( 5, 255, 69, 193 ); //Red
        set_character_color_slot( 7, 102, 249, 255 ); //Blue
    }
    
}

//Changes eye colour if facing left
if (spr_dir == -1) {
    //Default Skin
    if (get_player_color(player) == 0) {
        set_character_color_slot( 5, 0, 161, 230 ); //Left Eye
        set_character_color_slot( 7, 234, 29, 35 ); //Right Eye
    }
    //BluAxolotl
    if (get_player_color(player) == 1) {
        set_character_color_slot( 5, 1, 238, 255 ); //Blue
        set_character_color_slot( 7, 255, 43, 89 ); //Red
    }
    //Ans
    if (get_player_color(player) == 2) {
        set_character_color_slot( 5, 44, 121, 255 );
        set_character_color_slot( 7, 255, 43, 89 );
    }
    //Shujo
    if (get_player_color(player) == 3) {
        set_character_color_slot( 7, 255, 43, 89 );
        set_character_color_slot( 5, 1, 238, 255 );
    }
    //Neptendo
    if (get_player_color(player) == 4) {
        set_character_color_slot( 7, 255, 69, 193 ); //Red
        set_character_color_slot( 5, 0, 103, 214 ); //Blue
    }
    //Subi
    if (get_player_color(player) == 5) {
        set_character_color_slot( 7, 255, 43, 89 ); //Red
        set_character_color_slot( 5, 0, 242, 255 ); //Blue
    }
    //Bingy
    if (get_player_color(player) == 6) {
        set_character_color_slot( 7, 234, 29, 35 ); //Red
        set_character_color_slot( 5, 0, 161, 230 ); //Blue
    }
    //Troll
    if (get_player_color(player) == 7) {
        set_character_color_slot( 7, 255, 43, 89 ); //Red
        set_character_color_slot( 5, 1, 238, 255 ); //Blue
    }
    //Abyss
    if (get_player_color(player) == 8) {
        set_character_color_slot( 7, 255, 43, 89 ); //Red
        set_character_color_slot( 5, 1, 254, 253 ); //Blue
    }
    //Nega
    if (get_player_color(player) == 9) {
        set_character_color_slot( 7, 234, 29, 35 ); //Red
        set_character_color_slot( 5, 0, 161, 230 ); //Blue
    }
    //KAWAII
    if (get_player_color(player) == 10) {
        set_character_color_slot( 7, 255, 69, 193 ); //Red
        set_character_color_slot( 5, 102, 249, 255 ); //Blue
    }
}

//Maid Outfit >:)
if (get_player_color(player) == 0) {
    set_character_color_slot( 4, 255, 255, 255 ); //Maid Oufit Light
}