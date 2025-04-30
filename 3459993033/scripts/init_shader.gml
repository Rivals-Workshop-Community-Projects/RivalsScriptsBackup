//init shader

/*
//Image Mask
if  (get_player_color(player) == 1) { 
    if("start_predraw" in self) && start_predraw{
    set_character_color_slot( 0, 0, 0, 0, 0); 
    set_article_color_slot( 0, 0, 0, 0, 0); 
    }
}*/

if (get_player_color(player) == 0){
    set_character_color_slot( 5, 246, 212, 43 );
    set_article_color_slot( 5, 246, 212, 43 );
    set_article_color_slot( 6, 255, 45, 45 );
}

//toady
switch (get_player_color(player)){
    case 1:
    case 2:
    case 3:
    case 7:
    set_article_color_slot( 6, 255, 45, 45 );
    break;
}

//shading
switch (get_player_color(player)){
    case 6: //teal
    set_character_color_shading(1, 0.6);
    break;
    case 14: //nes
        for (var i = 0; i < 8; i++){
            set_character_color_shading(i, 0.0);
        }
    break;
    case 15: //black mage
    set_character_color_shading(4, 0.2);
    break;
}