//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

if(alt_cur == 27 || alt_cur == 28){
    set_character_color_shading(0, 0);
    set_character_color_shading(1, 0);
    set_character_color_shading(2, 0);
    set_character_color_shading(3, 0);
    set_character_color_shading(4, 0);
    set_character_color_shading(5, 0);
    set_character_color_shading(6, 0);
    set_character_color_shading(7, 0);
}

//rainbow
if(alt_cur == 26){
if(get_color_profile_slot_r(26, 0) == 0 && get_color_profile_slot_g(26, 0) == 255 && get_color_profile_slot_b(26, 0) < 255){
    set_color_profile_slot( 26, 0, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_article_color_slot( 0, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 1, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_article_color_slot( 1, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 2, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_article_color_slot( 2, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 3, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_article_color_slot( 3, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 4, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_article_color_slot( 4, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 5, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_article_color_slot( 5, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 6, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_article_color_slot( 6, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_color_profile_slot( 26, 7, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
    set_article_color_slot( 7, 0, 255, get_color_profile_slot_b(26, 0) + 5 );
}else if(get_color_profile_slot_r(26, 0) == 0 && get_color_profile_slot_g(26, 0) > 0 && get_color_profile_slot_b(26, 0) == 255){
    set_color_profile_slot( 26, 0, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_article_color_slot( 0, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 1, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_article_color_slot( 1, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 2, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_article_color_slot( 2, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 3, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_article_color_slot( 3, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 4, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_article_color_slot( 4, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 5, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_article_color_slot( 5, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 6, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_article_color_slot( 6, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_color_profile_slot( 26, 7, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
    set_article_color_slot( 7, 0, get_color_profile_slot_g(26, 0) - 5, 255 );
}else if(get_color_profile_slot_r(26,0) < 255 && get_color_profile_slot_g(26, 0) == 0 && get_color_profile_slot_b(26, 0) == 255){
    set_color_profile_slot( 26, 0, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_article_color_slot( 0, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 1, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_article_color_slot( 1, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 2, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_article_color_slot( 2, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 3, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_article_color_slot( 3, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 4, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_article_color_slot( 4, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 5, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_article_color_slot( 5, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 6, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_article_color_slot( 6, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_color_profile_slot( 26, 7, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
    set_article_color_slot( 7, get_color_profile_slot_r(26, 0) + 5, 0, 255 );
}else if(get_color_profile_slot_r(26,0) == 255 && get_color_profile_slot_g(26, 0) == 0 && get_color_profile_slot_b(26, 0) > 0){
    set_color_profile_slot( 26, 0, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_article_color_slot( 0, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 1, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_article_color_slot( 1, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 2, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_article_color_slot( 2, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 3, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_article_color_slot( 3, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 4, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_article_color_slot( 4, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 5, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_article_color_slot( 5, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 6, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_article_color_slot( 6, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_color_profile_slot( 26, 7, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
    set_article_color_slot( 7, 255, 0, get_color_profile_slot_b(26, 0) - 5 );
}else if(get_color_profile_slot_r(26,0) == 255 && get_color_profile_slot_g(26, 0) < 255 && get_color_profile_slot_b(26, 0) == 0){
    set_color_profile_slot( 26, 0, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_article_color_slot( 0, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 1, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_article_color_slot( 1, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 2, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_article_color_slot( 2, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 3, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_article_color_slot( 3, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 4, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_article_color_slot( 4, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 5, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_article_color_slot( 5, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 6, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_article_color_slot( 6, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_color_profile_slot( 26, 7, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
    set_article_color_slot( 7, 255, get_color_profile_slot_g(26, 0) + 5, 0 );
}else if(get_color_profile_slot_r(26,0) > 0 && get_color_profile_slot_g(26, 0) == 255 && get_color_profile_slot_b(26, 0) == 0){
    set_color_profile_slot( 26, 0, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_article_color_slot( 0, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 1, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_article_color_slot( 1, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 2, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_article_color_slot( 2, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 3, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_article_color_slot( 3, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 4, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_article_color_slot( 4, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 5, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_article_color_slot( 5, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 6, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_article_color_slot( 6, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_color_profile_slot( 26, 7, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
    set_article_color_slot( 7, get_color_profile_slot_r(26, 0) - 5, 255, 0 );
}
}

//Galaxy
if alt_cur == 29 && "game_time" in self{
    for(var i = 0; i <= 3; i++){
        set_character_color_slot(i, 0, 0, 0, 0);
    }
    set_character_color_slot(6, 0, 0, 0, 0);
	outline_color = [0, 0, 0];
}
if alt_cur = 29{
	set_character_color_shading(0, 0);
    set_character_color_shading(1, 0);
    set_character_color_shading(2, 0);
    set_character_color_shading(3, 0);
    set_character_color_shading(6, 0);
}