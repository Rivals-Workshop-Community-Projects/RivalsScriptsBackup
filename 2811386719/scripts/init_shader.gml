
switch(get_player_color(player)){
  case 5:
    if(modifier == 3){
      for(var i = 0; i < 8; i++){
        set_character_color_shading( i, 0.4 );
      }
    }
    break;
  case 9:
    for(var i = 0; i < 8; i++){
      set_character_color_shading( i, 0 );
    }
    break;
  case 19:
    switch(modifier){
    	case 0:
    		set_character_color_shading( 2, -0.6 );
    	break
    	case 1:
    		set_character_color_shading( 7, 0.4 );
  		break
  		case 2:
  			set_character_color_shading( 6, 0.4 );
  		break
  		case 3:
  			set_character_color_shading( 5, 0.4 );
  			set_character_color_shading( 6, 0.4 );
  		break
    }
}
  

