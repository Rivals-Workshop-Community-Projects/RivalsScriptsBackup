//init_shader.gml

if (get_player_color(player) == 7 || get_player_color(player) == 12 || get_player_color(player) == 15){
    for(i = 0; i < 20; i++){
		set_character_color_shading(i, 0);
    }
}

if (get_player_color(player) == 7){
    for(i = 0; i < 6; i++){
		outline_color = [35, 67, 49];
    }
}

if (get_player_color(player) == 12){
    for(i = 0; i < 6; i++){
		outline_color = [20, 20, 20];
    }
}

if (get_player_color(player) == 17){
    for(i = 0; i < 6; i++){
		outline_color = [76, 53, 0];
    }
}

//colors.gml OR init_shader.gml:
switch (get_match_setting(SET_SEASON)) {
  case 1:
    //Valentines' Day
	
    break;
  case 2:
	//Summer
	
    break;
  case 3: 
    //Halloween
	
    break;
  case 4:
    //Christmas
	
    break;
}