var alt = get_player_color(player);

//colormapping
if (alt == 0){
    set_character_color_slot(3, 38, 38, 38, 1); //shirt
    set_character_color_slot(4, 29, 29, 29, 1); //shirt shade
    
    set_character_color_slot(5, 38, 38, 38, 1); //shoes
    
    set_character_color_slot(6, 248, 242, 247, 1); //shorts
    set_character_color_slot(7, 188, 183, 189, 1); //shorts shade
}

//early access alt
if (alt == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}

/*
switch (emotion){
        
        case 0: //neutral
            if (alt == 7){
            	outline_color = [35, 67, 49];
            }
            else{
            	outline_color = [0, 0, 0];
            }
        break;
        
        case 1: //happy
        	outline_color = [184, 140, 53];
        break;
        
        case 2: //sad
            outline_color = [53, 68, 184];
        break;
        
        case 3: //angry
            outline_color = [184, 53, 53];
        break;
        
   }
*/