//manually changing shade values to (somewhat) unfuck up colors that don't work well with the regular
//roa alt system
switch(get_player_color(player)) {
    case 0: //default
        set_character_color_slot(2, 232, 242, 250);
        set_character_color_slot(5, 38, 38, 51);
        //set_character_color_shading(2,1);
        break;
    case 1: //yosafire
        change_shade_values(1, 1, 1, -2, 3, 3);
        break;
    case 2: //froze
        change_shade_values(1, 1, 1, 1, 1, 1);
        break;
    case 3: //macarona
        change_shade_values(1, 1, 1, 1, 1, 1);
        break;
    case 4: //dialo
        change_shade_values(1, 1, 1, 1, 0.5, 1.5);
        break;
    case 5: //etihw
        change_shade_values(1, 1, 1, 1, 0, 1.5);
        break;
    case 6: //kcalb
        change_shade_values(1, 1, 1, 1, 1, 1);
        break;
    case 7: //wadanohara
        change_shade_values(1, 1, 1, 1, 1, 1);
        break;
    case 8: //yonaka
        change_shade_values(1, 1, 1, 1, 0, 1.75);
        break;
    case 9: //rumia
        change_shade_values(1, 1.5, 1, 1, 1, 1);
        break;
    case 10: //cerebella
        change_shade_values(1, 2, 1, 1, 1, 1);
        break;
    case 11: //aquamarine
        change_shade_values(1, -2, 1.5, 1.5, 2, 1.5);
        break;
    case 12: //vaporwave
        change_shade_values(1, 1, 1, 1, 1, 1);
        break;
}
//default: change_shade_values(1, 1, 1, 1, 1, 1);

#define change_shade_values(_1,_2,_3,_4,_5,_6)
set_character_color_shading(0,_2); //eye
set_character_color_shading(1,_1); //skin
set_character_color_shading(2,_3); //dresslight
set_character_color_shading(5,_4); //wings
set_character_color_shading(6,_5); //hairlight
set_character_color_shading(7,_6); //hairshade