if (get_player_color(player) == 0)
{
    set_character_color_slot( 0, 92, 147, 249 ); //body blue
    set_character_color_slot( 1, 210, 218, 232 ); //body white
    set_character_color_slot( 2, 50, 50, 57 ); //hat black
    set_character_color_slot( 3, 210, 218, 232 ); //hat white
    set_character_color_slot( 4, 210, 218, 232 ); //tamb white
    set_character_color_slot( 5, 33, 33, 40 ); //tamb black
    
    set_article_color_slot( 0, 92, 147, 249 ); //body blue
    set_article_color_slot( 1, 210, 218, 232 ); //body white
    set_article_color_slot( 2, 50, 50, 57 ); //hat black
    set_article_color_slot( 3, 210, 218, 232 ); //hat white
    set_article_color_slot( 4, 210, 218, 232 ); //tamb white
    set_article_color_slot( 5, 33, 33, 40 ); //tamb black
}

if (get_player_color(player) == 23){
    outline_color = [32, 32, 32];
}

switch (get_player_color(player)){
    case 4: //bw
    case 10: //eidolon
        set_character_color_shading(0, 0.5);
    break;
    case 22: //genesis
        set_character_color_shading(0, 0.5);
        set_character_color_shading(5, 0.5);
    break;
    case 2: //red
    case 18: //dalamadur
    case 24: //pan-african
        set_character_color_shading(5, 0.5);
    break;
}

