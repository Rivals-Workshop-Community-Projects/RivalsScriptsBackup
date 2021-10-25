//EA
//if (get_player_color(player) == 7){
//	for(i = 0; i < 8; i++) if i != 8{
//		set_character_color_shading(i, 0);
//	}
//}



///color map main alt
//make normal alt have color mapped be the right color
if get_player_color(player) == 0 {
    set_character_color_slot(2,188, 177, 255 ); //blouse (is it a blouse? or skin :0)
}

if (variable_instance_exists(id, "extra_col")){
if (extra_col==1){//RagingBagon
// shade, r, g, b, alpha
set_character_color_slot( 0, 96, 186, 205 ); //Skin
set_character_color_slot( 1, 209, 81, 103 ); //Hat
set_character_color_slot( 2, 224, 227, 240 ); //Body
set_character_color_slot( 3, 164, 64, 179 ); //Liquid
set_character_color_slot( 4, 209, 81, 103 ); //Tips
set_character_color_slot( 5, 161, 17, 184 ); //Broom Anemone
set_character_color_slot( 6, 209, 81, 103 ); //Broom
set_character_color_slot( 7, 224, 227, 229 ); //Eye

set_article_color_slot( 0, 96, 186, 205 ); //Skin
set_article_color_slot( 1, 209, 81, 103 ); //Hat
set_article_color_slot( 2, 224, 227, 240 ); //Body
set_article_color_slot( 3, 164, 64, 179 ); //Liquid
set_article_color_slot( 4, 209, 81, 103 ); //Tips
set_article_color_slot( 5, 161, 17, 184 ); //Broom Anemone
set_article_color_slot( 6, 209, 81, 103 ); //Broom
set_article_color_slot( 7, 224, 227, 229 ); //Eye
}
}