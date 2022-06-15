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
else if (outline_color[0] == 153 && outline_color[1] == 19 && outline_color[2] == 255) and extra_col==6{
outline_color=[0, 0, 0]

}
}

//OMORI shading value
if (get_player_color(player) == 9) and extra_col ==6{
	for(i = 0; i < 8; i++) if i != 6{
		set_character_color_shading(i, 0);
	}
}
    
if (get_player_color( player ) == 20){ //ghoast
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[57, 82, 82]
init_shader();
}
else if (outline_color[0] == 57 && outline_color[1] == 82 && outline_color[2] == 82) and extra_col==4{
outline_color=[0, 0, 0]
}
}    

if  (get_player_color(player) == 22) { //change # to the color you wanna change
    set_character_color_slot( 4, 0, 0, 0, 0); //change # to the slot you wanna change
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
set_character_color_slot( 0, 80, 57, 49 ); //Hoodie Pink
set_character_color_slot( 1, 218, 173, 154 ); //Skin
set_character_color_slot( 2, 154, 80, 71 ); //Hair
set_character_color_slot( 3, 173, 63, 62 ); //Hoodie Purp
set_character_color_slot( 4, 173, 63, 62 ); //Skirt
set_character_color_slot( 5, 62, 25, 21 ); //Eyes/Socks
set_character_color_slot( 6, 198, 162, 228 ); //Smog
set_character_color_slot( 7, 177, 87, 207 ); //Smog Outline

set_article_color_slot( 0, 80, 57, 49 ); //Hoodie Pink
set_article_color_slot( 1, 218, 173, 154 ); //Skin
set_article_color_slot( 2, 154, 80, 71 ); //Hair
set_article_color_slot( 3, 173, 63, 62 ); //Hoodie Purp
set_article_color_slot( 4, 173, 63, 62 ); //Skirt
set_article_color_slot( 5, 62, 25, 21 ); //Eyes/Socks
set_article_color_slot( 6, 198, 162, 228 ); //Smog
set_article_color_slot( 7, 177, 87, 207 ); //Smog Outline
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

if (variable_instance_exists(id, "extra_col")){
if (extra_col==4){//Nuzl OJ
// shade, r, g, b, alpha
set_character_color_slot( 0, 200, 219, 232 ); //Hoodie Pink
set_character_color_slot( 1, 254, 230, 211 ); //Skin
set_character_color_slot( 2, 200, 200, 204 ); //Hair
set_character_color_slot( 3, 200, 219, 232 ); //Hoodie Purp
set_character_color_slot( 4, 149, 151, 152 ); //Skirt
set_character_color_slot( 5, 90, 90, 90 ); //Eyes/Socks
set_character_color_slot( 6, 252, 253, 255 ); //Smog
set_character_color_slot( 7, 99, 203, 212 ); //Smog Outline

set_article_color_slot( 0, 200, 219, 232 ); //Hoodie Pink
set_article_color_slot( 1, 254, 230, 211 ); //Skin
set_article_color_slot( 2, 200, 200, 204 ); //Hair
set_article_color_slot( 3, 200, 219, 232 ); //Hoodie Purp
set_article_color_slot( 4, 149, 151, 152 ); //Skirt
set_article_color_slot( 5, 90, 90, 90 ); //Eyes/Socks
set_article_color_slot( 6, 252, 253, 255 ); //Smog
set_article_color_slot( 7, 99, 203, 212 ); //Smog Outline
}
}

if (variable_instance_exists(id, "extra_col")){
if (extra_col==5){//TAG
// shade, r, g, b, alpha
set_character_color_slot( 0, 255, 147, 94 ); //Hoodie Pink
set_character_color_slot( 1, 217, 146, 105 ); //Skin
set_character_color_slot( 2, 192, 227, 165 ); //Hair
set_character_color_slot( 3, 255, 147, 94 ); //Hoodie Purp
set_character_color_slot( 4, 96, 158, 155 ); //Skirt
set_character_color_slot( 5, 248, 219, 94 ); //Eyes/Socks
set_character_color_slot( 6, 248, 232, 166 ); //Smog
set_character_color_slot( 7, 29, 97, 67 ); //Smog Outline

set_article_color_slot( 0, 255, 147, 94 ); //Hoodie Pink
set_article_color_slot( 1, 217, 146, 105 ); //Skin
set_article_color_slot( 2, 192, 227, 165 ); //Hair
set_article_color_slot( 3, 255, 147, 94 ); //Hoodie Purp
set_article_color_slot( 4, 96, 158, 155 ); //Skirt
set_article_color_slot( 5, 248, 219, 94 ); //Eyes/Socks
set_article_color_slot( 6, 248, 232, 166 ); //Smog
set_article_color_slot( 7, 29, 97, 67 ); //Smog Outline
}
}

if (variable_instance_exists(id, "extra_col")){
if (extra_col==6){//OMORI
// shade, r, g, b, alpha
set_character_color_slot( 0, 250, 250, 255 ); //Hoodie Pink
set_character_color_slot( 1, 250, 250, 255 ); //Skin
set_character_color_slot( 2, 0, 0, 0 ); //Hair
set_character_color_slot( 3, 0, 0, 0 ); //Hoodie Purp
set_character_color_slot( 4, 250, 250, 255 ); //Skirt
set_character_color_slot( 5, 250, 250, 255 ); //Eyes/Socks
set_character_color_slot( 6, 250, 250, 255 ); //Smog
set_character_color_slot( 7, 0, 0, 0 ); //Smog Outline

set_article_color_slot( 0, 250, 250, 255 ); //Hoodie Pink
set_article_color_slot( 1, 250, 250, 255 ); //Skin
set_article_color_slot( 2, 0, 0, 0 ); //Hair
set_article_color_slot( 3, 0, 0, 0 ); //Hoodie Purp
set_article_color_slot( 4, 187, 187, 187 ); //Skirt
set_article_color_slot( 5, 248, 219, 94 ); //Eyes/Socks
set_article_color_slot( 6, 250, 250, 255 ); //Smog
set_article_color_slot( 7, 0, 0, 0 ); //Smog Outline
}
}