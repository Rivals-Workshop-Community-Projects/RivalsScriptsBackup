//EA
//if (get_player_color(player) == 7){
//	for(i = 0; i < 8; i++) if i != 6{
//		set_character_color_shading(i, 0);
//	}
//}

///color map main alt
//make normal alt have color mapped be the right color
//if get_player_color(player) == 0 {
//    set_character_color_slot(2,188, 177, 255 ); //blouse (is it a blouse? or skin :0)
//}

if (get_player_color( player ) == 9){ //omari
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[153, 19, 255]
init_shader();
}
}
    
if (get_player_color( player ) == 20){ //ghoast
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[57, 82, 82]
init_shader();
}
}    

if (variable_instance_exists(id, "extra_col")){
if (extra_col==1){//sun's special clown alt
// shade, r, g, b, alpha
set_character_color_slot( 0, 255, 255, 255 ); //Hoodie Pink
set_character_color_slot( 1, 255, 255, 255 ); //Skin
set_character_color_slot( 2, 240, 66, 66 ); //Hair
set_character_color_slot( 3, 55, 52, 194 ); //Hoodie Purp
set_character_color_slot( 4, 255, 247, 84 ); //Skirt
set_character_color_slot( 5, 255, 87, 87 ); //Eyes/Socks
set_character_color_slot( 6, 107, 124, 255 ); //Smog
set_character_color_slot( 7, 251, 255, 36 ); //Smog Outline

set_article_color_slot( 0, 255, 255, 255 ); //Hoodie Pink
set_article_color_slot( 1, 255, 255, 255 ); //Skin
set_article_color_slot( 2, 240, 66, 66 ); //Hair
set_article_color_slot( 3, 55, 52, 194 ); //Hoodie Purp
set_article_color_slot( 4, 255, 247, 84 ); //Skirt
set_article_color_slot( 5, 255, 87, 87 ); //Eyes/Socks
set_article_color_slot( 6, 107, 124, 255 ); //Smog
set_article_color_slot( 7, 251, 255, 36 ); //Smog Outline
}
}



