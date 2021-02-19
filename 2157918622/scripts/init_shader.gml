//init_shader

if (/*get_player_color(player) == 12 ||*/ get_player_color(player) == 13){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0); // jaunted and zetta alts
    }
}
else if (get_player_color(player) == 14){ // champion alt (seggo)
    set_character_color_slot(1, 235, 239, 236, .75);
	set_article_color_slot(1, 235, 239, 236, .75);
	set_character_color_slot(7, 235, 239, 236, .75);
	set_article_color_slot(7, 235, 239, 236, .75);
	set_character_color_slot(3, 201, 201, 220, .75);
	set_article_color_slot(3, 201, 201, 220, .75);
	//set_character_color_shading(3, 0);
}

if ("secretpalette" in self && secretpalette){ // hooter alt (windo)
    set_character_color_slot(0, 255, 102, 59 ); //Pink
    set_character_color_slot(1, 182, 72, 66 ); //Hair
    set_character_color_slot(2, 255, 250, 248 ); //Body
    set_character_color_slot(3, 184, 0, 24 ); //Purple
    set_character_color_slot(4, 236, 237, 232 ); //Eyes
    set_character_color_slot(5, 255, 255, 255 ); //White Stuff
    set_character_color_slot(6, 217, 187, 179 ); //fur.2
    set_character_color_slot(7, 148, 5, 0 ); //hair.2

    set_article_color_slot(0, 255, 102, 59 ); //Pink
    set_article_color_slot(1, 182, 72, 66 ); //Hair
    set_article_color_slot(2, 255, 250, 248 ); //Body
    set_article_color_slot(3, 184, 0, 24 ); //Purple
    set_article_color_slot(4, 236, 237, 232 ); //Eyes
    set_article_color_slot(5, 255, 255, 255 ); //White Stuff
    set_article_color_slot(6, 217, 187, 179 ); //fur.2
    set_article_color_slot(7, 148, 5, 0 ); //hair.2
}

if ("secretpalette2" in self && secretpalette2){ // rem alt (mitch)
    set_character_color_slot(0, 45, 45, 51 ); //Pink
    set_character_color_slot(1, 172, 219, 250 ); //Hair
    set_character_color_slot(2, 248, 249, 255 ); //Body
    set_character_color_slot(3, 241, 140, 214 ); //Purple
    set_character_color_slot(4, 236, 237, 232 ); //Eyes
    set_character_color_slot(5, 255, 255, 255 ); //White Stuff
    set_character_color_slot(6, 179, 187, 217 ); //fur.2
    set_character_color_slot(7, 112, 167, 224 ); //hair.2
    
    set_article_color_slot(0, 45, 45, 51 ); //Pink
    set_article_color_slot(1, 172, 219, 250 ); //Hair
    set_article_color_slot(2, 248, 249, 255 ); //Body
    set_article_color_slot(3, 241, 140, 214 ); //Purple
    set_article_color_slot(4, 236, 237, 232 ); //Eyes
    set_article_color_slot(5, 255, 255, 255 ); //White Stuff
    set_article_color_slot(6, 179, 187, 217 ); //fur.2
    set_article_color_slot(7, 112, 167, 224 ); //hair.2
}

if ("secretpalette3" in self && secretpalette3){ // edgy goat alt (coomba)
    set_character_color_slot(0, 12, 12, 11 ); //Pink
    set_character_color_slot(1, 25, 25, 24 ); //Hair
    set_character_color_slot(2, 101, 101, 100 ); //Body
    set_character_color_slot(3, 255, 141, 2 ); //Purple
    set_character_color_slot(4, 255, 141, 2 ); //Eyes
    set_character_color_slot(5, 255, 255, 255 ); //White Stuff
    set_character_color_slot(6, 72, 77, 60 ); //fur.2
    set_character_color_slot(7, 12, 12, 11 ); //hair.2
    
    set_article_color_slot(0, 12, 12, 11 ); //Pink
    set_article_color_slot(1, 25, 25, 24 ); //Hair
    set_article_color_slot(2, 101, 101, 100 ); //Body
    set_article_color_slot(3, 255, 141, 2 ); //Purple
    set_article_color_slot(4, 255, 141, 2 ); //Eyes
    set_article_color_slot(5, 255, 255, 255 ); //White Stuff
    set_article_color_slot(6, 72, 77, 60 ); //fur.2
    set_article_color_slot(7, 12, 12, 11 ); //hair.2
}

/*// Voidfox
set_color_profile_slot( 11, 0, 63, 242, 110 ); //Pink
set_color_profile_slot( 11, 1, 255, 255, 255 ); //Hair
set_color_profile_slot( 11, 2, 255, 255, 255 ); //Body
set_color_profile_slot( 11, 3, 0, 0, 0 ); //Purple
set_color_profile_slot( 11, 4, 19, 232, 0 ); //Eyes
set_color_profile_slot( 11, 5, 255, 255, 255 ); //White Stuff
set_color_profile_slot( 11, 6, 255, 255, 255 ); //fur.2
set_color_profile_slot( 11, 7, 255, 255, 255 ); //hair.2
just putting this here in case i re-add it somewhere
*/
