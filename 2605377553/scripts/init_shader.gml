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

//madeline alt.
if (get_player_color( player ) == 8){ 
	set_character_color_slot( 6, 0, 0, 0, 0); 
	
	set_character_color_shading(0, 0.3);
	set_character_color_shading(2, 1.2);
	
	if bluehairandpronouns = true {
		set_character_color_slot(2,79, 172, 233 ); //Hair //hair goes blue!!!
		set_article_color_slot(2,79, 172, 233 ); //Hair //hair goes blue!!!
	}
}

//MARI alt.
if (get_player_color( player ) == 9){ 
set_character_color_shading(0, 0);
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[153, 19, 255]
init_shader();
}
else if (outline_color[0] == 153 && outline_color[1] == 19 && outline_color[2] == 255) and extra_col==6{
outline_color=[0, 0, 0]

}


if extra_col == 6 {
	for(i = 0; i < 8; i++) if i != 6{
		set_character_color_shading(i, 0);
	}
}

}

//bocchi
if (get_player_color( player ) == 11){ 
	set_character_color_shading(6, 0);
}

//subway midnight
if (get_player_color( player ) == 12){ 
	set_character_color_shading(3, 0.5);
	set_character_color_shading(1, 0.5);
	set_character_color_shading(6, 0);
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

//genesis
if (get_player_color( player ) == 23){ 
	set_character_color_shading(6, 0.7);
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

if (variable_instance_exists(id, "extra_col")){
if (extra_col==7){//Urban Magic
// shade, r, g, b, alpha

set_character_color_slot( 0, 153, 177, 255 ); //Hoodie Pink
set_character_color_slot( 1, 255, 210, 189 ); //Skin
set_character_color_slot( 2, 62, 13, 17 ); //Hair
set_character_color_slot( 3, 68, 68, 71 ); //Hoodie Purp
set_character_color_slot( 4, 12, 19, 93 ); //Skirt
set_character_color_slot( 5, 255, 255, 255 ); //Eyes/Socks
set_character_color_slot( 6, 189, 138, 210 ); //Smog
set_character_color_slot( 7, 110, 44, 138 ); //Smog Outline

set_article_color_slot( 0, 153, 177, 255 ); //Hoodie Pink
set_article_color_slot( 1, 255, 210, 189 ); //Skin
set_article_color_slot( 2, 62, 13, 17 ); //Hair
set_article_color_slot( 3, 68, 68, 71 ); //Hoodie Purp
set_article_color_slot( 4, 12, 19, 93 ); //Skirt
set_article_color_slot( 5, 255, 255, 255 ); //Eyes/Socks
set_article_color_slot( 6, 189, 138, 210 ); //Smog
set_article_color_slot( 7, 110, 44, 138 ); //Smog Outline
}
}

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

if (variable_instance_exists(id, "extra_col_key")){
	switch (extra_col_key){
	case 2://Nuzl Viola
	set_color_profile_slot( 24, 0, 80, 57, 49 ); //Hoodie Pink
	set_color_profile_slot( 24, 1, 218, 173, 154 ); //Skin
	set_color_profile_slot( 24, 2, 154, 80, 71 ); //Hair
	set_color_profile_slot( 24, 3, 173, 63, 62 ); //Hoodie Purp
	set_color_profile_slot( 24, 4, 173, 63, 62 ); //Skirt
	set_color_profile_slot( 24, 5, 62, 25, 21 ); //Eyes/Socks
	set_color_profile_slot( 24, 6, 198, 162, 228 ); //Smog
	set_color_profile_slot( 24, 7, 177, 87, 207 ); //Smog Outline
	
	set_article_color_slot( 0, 80, 57, 49 ); //Hoodie Pink
	set_article_color_slot( 1, 218, 173, 154 ); //Skin
	set_article_color_slot( 2, 154, 80, 71 ); //Hair
	set_article_color_slot( 3, 173, 63, 62 ); //Hoodie Purp
	set_article_color_slot( 4, 173, 63, 62 ); //Skirt
	set_article_color_slot( 5, 62, 25, 21 ); //Eyes/Socks
	set_article_color_slot( 6, 198, 162, 228 ); //Smog
	set_article_color_slot( 7, 177, 87, 207 ); //Smog Outline
	break;
	
	case 3://Doge
	set_color_profile_slot( 24, 0, 130, 255, 251 ); //Hoodie Pink
	set_color_profile_slot( 24, 1, 255, 250, 222 ); //Skin
	set_color_profile_slot( 24, 2, 255, 13, 241 ); //Hair
	set_color_profile_slot( 24, 3, 255, 87, 251 ); //Hoodie Purp
	set_color_profile_slot( 24, 4, 255, 102, 247 ); //Skirt
	set_color_profile_slot( 24, 5, 255, 69, 227 ); //Eyes/Socks
	set_color_profile_slot( 24, 6, 0, 238, 255 ); //Smog
	set_color_profile_slot( 24, 7, 0, 238, 255 ); //Smog Outline
	
	set_article_color_slot( 0, 130, 255, 251 ); //Hoodie Pink
	set_article_color_slot( 1, 255, 250, 222 ); //Skin
	set_article_color_slot( 2, 255, 13, 241 ); //Hair
	set_article_color_slot( 3, 255, 87, 251 ); //Hoodie Purp
	set_article_color_slot( 4, 255, 102, 247 ); //Skirt
	set_article_color_slot( 5, 255, 69, 227 ); //Eyes/Socks
	set_article_color_slot( 6, 0, 238, 255 ); //Smog
	set_article_color_slot( 7, 0, 238, 255 ); //Smog Outline
	break;
	
	case 7://Urban Magic
	set_color_profile_slot( 24, 0, 153, 177, 255 ); //Hoodie Pink
	set_color_profile_slot( 24, 1, 255, 210, 189 ); //Skin
	set_color_profile_slot( 24, 2, 62, 13, 17 ); //Hair
	set_color_profile_slot( 24, 3, 68, 68, 71 ); //Hoodie Purp
	set_color_profile_slot( 24, 4, 12, 19, 93 ); //Skirt
	set_color_profile_slot( 24, 5, 255, 255, 255 ); //Eyes/Socks
	set_color_profile_slot( 24, 6, 189, 138, 210 ); //Smog
	set_color_profile_slot( 24, 7, 110, 44, 138 ); //Smog Outline
	
	set_article_color_slot( 0, 153, 177, 255 ); //Hoodie Pink
	set_article_color_slot( 1, 255, 210, 189 ); //Skin
	set_article_color_slot( 2, 62, 13, 17 ); //Hair
	set_article_color_slot( 3, 68, 68, 71 ); //Hoodie Purp
	set_article_color_slot( 4, 12, 19, 93 ); //Skirt
	set_article_color_slot( 5, 255, 255, 255 ); //Eyes/Socks
	set_article_color_slot( 6, 189, 138, 210 ); //Smog
	set_article_color_slot( 7, 110, 44, 138 ); //Smog Outline
	break;
	
	case 97://The legend lives on, Homestuck alt.
	set_color_profile_slot( 24, 0, 30, 64, 31 ); //Hoodie Pink
	set_color_profile_slot( 24, 1, 252, 252, 255 ); //Skin
	set_color_profile_slot( 24, 2, 58, 58, 59 ); //Hair
	set_color_profile_slot( 24, 3, 14, 20, 16 ); //Hoodie Purp
	set_color_profile_slot( 24, 4, 42, 71, 38 ); //Skirt
	set_color_profile_slot( 24, 5, 163, 134, 75 ); //Eyes/Socks
	set_color_profile_slot( 24, 6, 0, 0, 0 ); //Smog
	set_color_profile_slot( 24, 7, 48, 104, 0 ); //Smog Outline
	
	set_article_color_slot( 0, 30, 64, 31 ); //Hoodie Pink
	set_article_color_slot( 1, 252, 252, 255 ); //Skin
	set_article_color_slot( 2, 58, 58, 59 ); //Hair
	set_article_color_slot( 3, 14, 20, 16 ); //Hoodie Purp
	set_article_color_slot( 4, 42, 71, 38 ); //Skirt
	set_article_color_slot( 5, 163, 134, 75 ); //Eyes/Socks
	set_article_color_slot( 6, 0, 0, 0 ); //Smog
	set_article_color_slot( 7, 48, 104, 0 ); //Smog Outline
	break;
	
	case 98://is that maya from blace blattorney????
	set_color_profile_slot( 24, 0, 111, 75, 130 ); //Hoodie Pink
	set_color_profile_slot( 24, 1, 244, 215, 211 ); //Skin
	set_color_profile_slot( 24, 2, 25, 33, 51 ); //Hair
	set_color_profile_slot( 24, 3, 236, 214, 219 ); //Hoodie Purp
	set_color_profile_slot( 24, 4, 150, 58, 94 ); //Skirt
	set_color_profile_slot( 24, 5, 111, 75, 130 ); //Eyes/Socks
	set_color_profile_slot( 24, 6, 200, 149, 68 ); //Smog
	set_color_profile_slot( 24, 7, 79, 34, 118 ); //Smog Outline
	
	set_article_color_slot( 0, 111, 75, 130 ); //Hoodie Pink
	set_article_color_slot( 1, 244, 215, 211 ); //Skin
	set_article_color_slot( 2, 25, 33, 51 ); //Hair
	set_article_color_slot( 3, 236, 214, 219 ); //Hoodie Purp
	set_article_color_slot( 4, 150, 58, 94 ); //Skirt
	set_article_color_slot( 5, 111, 75, 130 ); //Eyes/Socks
	set_article_color_slot( 6, 200, 149, 68 ); //Smog
	set_article_color_slot( 7, 79, 34, 118 ); //Smog Outline
	break;
	
	case 99://cool character, can you make her a bit more saturated?
	set_color_profile_slot( 24, 0, 255, 0, 203 ); //Hoodie Pink
	set_color_profile_slot( 24, 1, 255, 184, 0 ); //Skin
	set_color_profile_slot( 24, 2, 154, 0, 255 ); //Hair
	set_color_profile_slot( 24, 3, 69, 0, 255 ); //Hoodie Purp
	set_color_profile_slot( 24, 4, 78, 0, 255 ); //Skirt
	set_color_profile_slot( 24, 5, 0, 64, 255 ); //Eyes/Socks
	set_color_profile_slot( 24, 6, 135, 0, 255 ); //Smog
	set_color_profile_slot( 24, 7, 188, 0, 255 ); //Smog Outline
	
	set_article_color_slot( 0, 255, 0, 203 ); //Hoodie Pink
	set_article_color_slot( 1, 255, 184, 0 ); //Skin
	set_article_color_slot( 2, 154, 0, 255 ); //Hair
	set_article_color_slot( 3, 69, 0, 255 ); //Hoodie Purp
	set_article_color_slot( 4, 78, 0, 255 ); //Skirt
	set_article_color_slot( 5, 0, 64, 255 ); //Eyes/Socks
	set_article_color_slot( 6, 135, 0, 255 ); //Smog
	set_article_color_slot( 7, 188, 0, 255 ); //Smog Outline
	}
}
