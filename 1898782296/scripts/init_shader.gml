//referencely stolen from the documents from Acid Rainbows
if (get_player_color( player ) >= 13) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

var char_color = get_player_color(player);

//if(variable_instance_exists(id, "outline_color")){
	set_article_color_slot(7, outline_color[0], outline_color[1], outline_color[2]);
//}

switch (char_color){
	default:
		//set_article_color_slot(7, 0, 0, 0);
	break;
    case 1: //Blue
        set_character_color_shading(2, 1.1); //Shoes
        //set_article_color_slot(7, 0, 0, 0);
    break
    case 2: //Pink
        set_character_color_shading(2, 1.2); //Shoes
        //set_article_color_slot(7, 0, 0, 0);
    break
    case 3: //Green
        set_character_color_shading(2, 1.2); //Shoes
        set_character_color_shading(6, 1.2); //Pogo
        //set_article_color_slot(7, 0, 0, 0);
    break
    case 4: //Yellow
		set_character_color_shading(2, 1.3); //Shoes
        set_character_color_shading(6, 1.2); //Pogo
        //set_article_color_slot(7, 0, 0, 0);
    break
    case 6: //Orange
		set_character_color_shading(2, 0.9); //Shoes
        set_character_color_shading(6, 1.3); //Pogo
        //set_article_color_slot(7, 0, 0, 0);
    break
    case 9: //Classic
		set_character_color_shading(2, 0.9); //Shoes
		set_character_color_shading(4, 0.6); //Mask Strap
		set_character_color_shading(4, 1.2); //Belt Buckle
		//set_article_color_slot(7, 0, 0, 0);
    break
    case 10: //Anti Guy
        set_character_color_shading(2, 1.2); //Shoes
		set_character_color_shading(4, 0.9); //Mask Strap
		//set_article_color_slot(7, 0, 0, 0);
    break
    case 11: //Machine
        set_character_color_shading(2, 1.1); //Shoes
		set_character_color_shading(4, 0.7); //Mask Strap
        set_character_color_shading(6, 1.2); //Pogo
	
		outline_color = [60, 60, 60];
		//set_article_color_slot(7, 60, 60, 60);
    break
    case 12: //Waluigi
        set_character_color_shading(2, 1.1); //Shoes
        //set_article_color_slot(7, 0, 0, 0);
    break
    case 17: //GB
		outline_color = [15, 56, 15];
		//set_article_color_slot(7, 15, 56, 15);
    break
}