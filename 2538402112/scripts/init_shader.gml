var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;

set_color_profile_slot_range(1,9,9,18);//Reset

switch(get_player_color(real_player)){//0 Green|1 Red|2 Eye|3 Leaf|4 Mouth|5 Eye Black|6 Orb/Gear
    case 0://Eye black
        set_character_color_slot(5,0,0,0);
        set_article_color_slot(5,0,0,0);
        break;
    case 1://Celebi
        set_character_color_shading(3,2.0);
        set_character_color_shading(0,1.2);
        break;
    case 2://Dusknoir
        set_character_color_shading(3,2.0);
        set_character_color_shading(5,10.0);
        break;
    case 3://Wigglytuff
        set_character_color_shading(0,1.1);
        set_character_color_shading(3,1.25);
        break;
    case 4://Sableye
        set_character_color_shading(0,1.5);
        set_character_color_shading(3,2.0);
        set_character_color_shading(5,0.0);
        break;
    case 5://Primal Dialga
        set_character_color_shading(1,2.0);
        set_character_color_shading(3,2.0);
        set_character_color_shading(5,10.0);
        break;
    case 6://Manaphy
        set_character_color_shading(0,1.5);
        set_character_color_shading(1,1.5);
        set_character_color_shading(3,2.0);
        break;
    case 7://Darkrai
        set_character_color_shading(3,2.25);
        break;
    case 8://Gengar
        set_character_color_shading(3,1.75);
        break;
    case 9://Ninetales
        set_character_color_shading(3,1.8);
        set_character_color_shading(1,2.0);
        set_character_color_shading(0,1.5);
        break;
    case 10://Absol
        set_character_color_shading(0,1.25);
        set_character_color_shading(3,1.5);
        break;
    case 11://Gardevoir
        set_character_color_shading(0,1.25);
        set_character_color_shading(1,1.5);
        set_character_color_shading(3,2.0);
        break;
    case 12://Early Access
        set_color_profile_slot_range(1,10,82,41); //Recolor white
        set_character_color_shading(0,0);
        set_character_color_shading(1,0);
        set_character_color_shading(2,0);
        set_character_color_shading(3,0);
        set_character_color_shading(4,0);
        set_character_color_shading(6,0);
        break;
    case 13:// Abyss
        set_character_color_shading(3,2.0);
        set_character_color_shading(6,0.8);
        break;
    case 14://Munna
        set_character_color_shading(3,2.0);
        break;
    case 15://Dunsparce
        set_character_color_shading(3,2.0);
        break;
    case 16://Virizion
        set_character_color_shading(3,1.5);
        set_character_color_shading(1,1.5);
        break;
    case 17://Hydregon
        set_character_color_shading(3,2.0);
        set_character_color_shading(5,10.0);
        break;
    case 18://Golden
        set_character_color_shading(0,1.25);
        set_character_color_shading(1,1.5);
        set_character_color_shading(3,2.0);
        break;
    case 19://Slowking
        set_character_color_shading(0,1.25);
        set_character_color_shading(1,1.25);
        set_character_color_shading(3,2.0);
        break;
    case 20://Nuzleaf
        break;
    case 21://Espurr
        set_character_color_shading(3,2.0);
        break;
    case 22://Ampharos
        set_character_color_shading(0,1.5);
        set_character_color_shading(3,1.5);
        break;
    case 23://Krookodile
        set_character_color_shading(5,10.0);
        break;
    case 24://Rescue Team
        set_character_color_shading(0,1.25);
        break;
    case 25://Shiny
        set_character_color_shading(3,1.75);
        break;
}

if variable_instance_exists(self,"grov_gen3") && grov_gen3{
    set_character_color_slot(3,38,112,130);
    set_article_color_slot(3,38,112,130);
    set_character_color_shading(3,1.4);
}