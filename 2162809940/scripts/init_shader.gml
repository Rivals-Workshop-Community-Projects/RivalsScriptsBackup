//early access alt
if (get_player_color(player) == 8){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
    outline_color = [35, 67, 49];
}

//no shading alt
if (get_player_color(player) == 3){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}


 //seasonal palettes
switch ( seasonal_override ? color_overriden : get_match_setting(SET_SEASON) ) {
  case 1: // valentines
	set_color_profile_slot( 6, 0, 255, 242, 250 ); //green
    set_color_profile_slot( 6, 1, 255, 133, 193 ); //white
    set_color_profile_slot( 6, 2, 225, 73, 73 ); //bat
    set_color_profile_slot( 6, 3, 225, 73, 73 ); //black
    set_color_profile_slot( 6, 4, 225, 73, 73 ); //UFO middle
    set_color_profile_slot( 6, 5, 255, 133, 193 ); //UFO bottom
    
    set_article_color_slot( 0, 255, 242, 250, 1);
    set_article_color_slot( 1, 255, 133, 193, 1);
    set_article_color_slot( 2, 225, 73, 73, 1);
    set_article_color_slot( 3, 225, 73, 73, 1);
    set_article_color_slot( 4, 225, 73, 73, 1);
    set_article_color_slot( 5, 255, 133, 193, 1 );
    break;
  case 2: // summer
    set_color_profile_slot( 6, 0, 255, 246, 140 ); //green
    set_color_profile_slot( 6, 1, 255, 166, 40 ); //white
    set_color_profile_slot( 6, 2, 89, 204, 233 ); //bat
    set_color_profile_slot( 6, 3, 89, 204, 233 ); //black
    set_color_profile_slot( 6, 4, 255, 166, 40 ); //UFO middle
    set_color_profile_slot( 6, 5, 255, 246, 140 ); //UFO bottom
    
    set_article_color_slot( 0, 255, 246, 140, 1);
    set_article_color_slot( 1, 255, 166, 40, 1);
    set_article_color_slot( 2, 89, 204, 233, 1);
    set_article_color_slot( 3, 89, 204, 233, 1);
    set_article_color_slot( 4, 255, 166, 40, 1 );
    set_article_color_slot( 5, 255, 246, 140, 1 );
    break;
  case 3: // halloween
    set_color_profile_slot( 6, 0, 255, 255, 255 ); //green
    set_color_profile_slot( 6, 1, 246, 146, 29 ); //white
    set_color_profile_slot( 6, 2, 2, 168, 0 ); //bat
    set_color_profile_slot( 6, 3, 59, 52, 42 ); //black
    set_color_profile_slot( 6, 4, 255, 255, 255 ); //UFO middle
    set_color_profile_slot( 6, 5, 255, 255, 255 ); //UFO bottom
    
    set_article_color_slot( 0, 255, 255, 255, .5);
    set_article_color_slot( 1, 255, 255, 255, .5);
    set_article_color_slot( 2, 255, 255, 255, .5);
    set_article_color_slot( 3, 255, 255, 255, .5);
    set_article_color_slot( 4, 255, 255, 255, .5 );
    set_article_color_slot( 5, 255, 255, 255, .5 );
    break;
  case 4: // christmas
    set_color_profile_slot( 6, 0, 246, 232, 232 ); //green
    set_color_profile_slot( 6, 1, 12, 170, 0 ); //white
    set_color_profile_slot( 6, 2, 239, 52, 15 ); //bat
    set_color_profile_slot( 6, 3, 239, 52, 15 ); //black
    set_color_profile_slot( 6, 4, 12, 170, 0 ); //UFO middle
    set_color_profile_slot( 6, 5, 239, 52, 15 ); //UFO bottom
    
    set_article_color_slot( 0, 246, 232, 232, 1);
    set_article_color_slot( 1, 12, 170, 0, 1);
    set_article_color_slot( 2, 239, 52, 15, 1);
    set_article_color_slot( 3, 239, 52, 15, 1);
    set_article_color_slot( 4, 12, 170, 0, 1 );
    set_article_color_slot( 5, 239, 52, 15, 1 );
	break;
}


/*  //seasonal alts:

//valentines
set_color_profile_slot( 6, 0, 255, 242, 250 ); //green
set_color_profile_slot( 6, 1, 255, 133, 193 ); //white
set_color_profile_slot( 6, 2, 225, 73, 73 ); //bat
set_color_profile_slot( 6, 3, 225, 73, 73 ); //black
set_color_profile_slot( 6, 4, 225, 73, 73 ); //UFO middle
set_color_profile_slot( 6, 5, 255, 133, 193 ); //UFO bottom

//summer
set_color_profile_slot( 6, 0, 255, 246, 140 ); //green
set_color_profile_slot( 6, 1, 255, 166, 40 ); //white
set_color_profile_slot( 6, 2, 89, 204, 233 ); //bat
set_color_profile_slot( 6, 3, 89, 204, 233 ); //black
set_color_profile_slot( 6, 4, 255, 166, 40 ); //UFO middle
set_color_profile_slot( 6, 5, 255, 246, 140 ); //UFO bottom

//halloween
set_color_profile_slot( 6, 0, 255, 255, 255 ); //green
set_color_profile_slot( 6, 1, 246, 146, 29 ); //white
set_color_profile_slot( 6, 2, 2, 168, 0 ); //bat
set_color_profile_slot( 6, 3, 59, 52, 42 ); //black
set_color_profile_slot( 6, 4, 255, 255, 255 ); //UFO middle
set_color_profile_slot( 6, 5, 255, 255, 255 ); //UFO bottom

//christmas
set_color_profile_slot( 6, 0, 246, 232, 232 ); //green
set_color_profile_slot( 6, 1, 12, 170, 0 ); //white
set_color_profile_slot( 6, 2, 239, 52, 15 ); //bat
set_color_profile_slot( 6, 3, 239, 52, 15 ); //black
set_color_profile_slot( 6, 4, 12, 170, 0 ); //UFO middle
set_color_profile_slot( 6, 5, 239, 52, 15 ); //UFO bottom