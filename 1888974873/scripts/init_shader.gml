//gameboy alt
if (get_player_color(player) == 14){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
	outline_color = [35, 67, 49];
}

//nes alt
if (get_player_color(player) == 15){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
	outline_color = [51, 32, 2];
}

//fix shading on barbershop remix alt
if (get_player_color(player) == 2) {
	set_character_color_shading(0, -1);
	set_character_color_shading(1, -1);
}



 //seasonal palettes
switch ( seasonal_override ? color_overriden : get_match_setting(SET_SEASON) ) {
  case 1: // valentines
	set_color_profile_slot( 12, 0, 255, 155, 211 ); //blue
	set_color_profile_slot( 12, 1, 225, 73, 73 ); //yellow
	set_color_profile_slot( 12, 2, 255, 238, 247 ); //red
	set_color_profile_slot( 12, 3, 255, 255, 255 ); //white
	
	set_article_color_slot( 0, 255, 155, 211, 1);
    break;
  case 2: // summer
    set_color_profile_slot( 12, 0, 89, 204, 233 ); //blue
	set_color_profile_slot( 12, 1, 255, 166, 40 ); //yellow
	set_color_profile_slot( 12, 2, 255, 246, 140 ); //red
	set_color_profile_slot( 12, 3, 255, 255, 255 ); //white
	
	set_article_color_slot( 0, 89, 204, 233, 1);
    break;
  case 3: // halloween
	set_color_profile_slot( 12, 0, 95, 85, 41 ); //blue
	set_color_profile_slot( 12, 1, 241, 98, 35 ); //yellow
	set_color_profile_slot( 12, 2, 255, 255, 255 ); //red
	set_color_profile_slot( 12, 3, 255, 255, 255 ); //white
	
	set_article_color_slot( 0, 95, 85, 41, 1);
    break;
  case 4: // christmas
    set_color_profile_slot( 12, 0, 109, 194, 83 ); //blue
	set_color_profile_slot( 12, 1, 207, 0, 0 ); //yellow
	set_color_profile_slot( 12, 2, 246, 232, 232 ); //red
	set_color_profile_slot( 12, 3, 255, 255, 255 ); //white
	
	set_article_color_slot( 0, 109, 194, 83, 1);
    break;
}


/*  //seasonal alts:

//valentines
set_color_profile_slot( 10, 0, 255, 155, 211 ); //blue
set_color_profile_slot( 10, 1, 225, 73, 73 ); //yellow
set_color_profile_slot( 10, 2, 255, 238, 247 ); //red
set_color_profile_slot( 12, 3, 255, 255, 255 ); //white

//summer
set_color_profile_slot( 10, 0, 89, 204, 233 ); //blue
set_color_profile_slot( 10, 1, 255, 166, 40 ); //yellow
set_color_profile_slot( 10, 2, 255, 246, 140 ); //red
set_color_profile_slot( 10, 3, 255, 255, 255 ); //white

//halloween
set_color_profile_slot( 10, 0, 95, 85, 41 ); //blue
set_color_profile_slot( 10, 1, 241, 98, 35 ); //yellow
set_color_profile_slot( 10, 2, 255, 255, 255 ); //red
set_color_profile_slot( 10, 3, 255, 255, 255 ); //white

//christmas
set_color_profile_slot( 10, 0, 109, 194, 83 ); //blue
set_color_profile_slot( 10, 1, 207, 0, 0 ); //yellow
set_color_profile_slot( 10, 2, 246, 232, 232 ); //red
set_color_profile_slot( 10, 3, 255, 255, 255 ); //white