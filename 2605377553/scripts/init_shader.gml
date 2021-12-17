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

if (variable_instance_exists(id, "extra_col")){
if (extra_col==2){//Nuzl Viola
// shade, r, g, b, alpha
set_character_color_slot( 21, 0, 80, 57, 49 ); //Hoodie Pink
set_character_color_slot( 21, 1, 218, 173, 154 ); //Skin
set_character_color_slot( 21, 2, 154, 80, 71 ); //Hair
set_character_color_slot( 21, 3, 173, 63, 62 ); //Hoodie Purp
set_character_color_slot( 21, 4, 173, 63, 62 ); //Skirt
set_character_color_slot( 21, 5, 62, 25, 21 ); //Eyes/Socks
set_character_color_slot( 21, 6, 198, 162, 228 ); //Smog
set_character_color_slot( 21, 7, 177, 87, 207 ); //Smog Outline

set_article_color_slot( 21, 0, 80, 57, 49 ); //Hoodie Pink
set_article_color_slot( 21, 1, 218, 173, 154 ); //Skin
set_article_color_slot( 21, 2, 154, 80, 71 ); //Hair
set_article_color_slot( 21, 3, 173, 63, 62 ); //Hoodie Purp
set_article_color_slot( 21, 4, 173, 63, 62 ); //Skirt
set_article_color_slot( 21, 5, 62, 25, 21 ); //Eyes/Socks
set_article_color_slot( 21, 6, 198, 162, 228 ); //Smog
set_article_color_slot( 21, 7, 177, 87, 207 ); //Smog Outline
}
}

if (variable_instance_exists(id, "extra_col")){
if (extra_col==3){//Doge
// shade, r, g, b, alpha
set_character_color_slot( 0, 130, 255, 251 ); //Hoodie Pink
set_character_color_slot( 1, 255, 250, 222 ); //Skin
set_character_color_slot( 2, 255, 13, 241 ); //Hair
set_character_color_slot( 3, 255, 87, 251 ); //Hoodie Purp
set_character_color_slot( 4, 255, 102, 247 ); //Skirt
set_character_color_slot( 5, 255, 69, 227 ); //Eyes/Socks
set_character_color_slot( 6, 0, 238, 255 ); //Smog
set_character_color_slot( 7, 0, 238, 255 ); //Smog Outline

set_article_color_slot( 0, 130, 255, 251 ); //Hoodie Pink
set_article_color_slot( 1, 255, 250, 222 ); //Skin
set_article_color_slot( 2, 255, 13, 241 ); //Hair
set_article_color_slot( 3, 255, 87, 251 ); //Hoodie Purp
set_article_color_slot( 4, 255, 102, 247 ); //Skirt
set_article_color_slot( 5, 255, 69, 227 ); //Eyes/Socks
set_article_color_slot( 6, 0, 238, 255 ); //Smog
set_article_color_slot( 7, 0, 238, 255 ); //Smog Outline
}
}



