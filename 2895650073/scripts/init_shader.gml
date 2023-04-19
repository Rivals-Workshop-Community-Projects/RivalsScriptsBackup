
if (get_player_color( player ) == 7) { //early
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}

if (get_player_color( player ) == 8) { //early
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}
if (get_player_color( player ) == 20) {
set_character_color_shading( 2, 0.7 );
set_character_color_shading( 4, 0.6 );
}
if (get_player_color( player ) == 24) {
set_character_color_shading( 4, 0.7 );
}
if (get_player_color( player ) == 25) {
set_character_color_shading( 2, 0.7 );
}


//extra col stuff
if (variable_instance_exists(id, "extra_col")){
if (extra_col==1){//transformed (nuzl)
// shade, r, g, b, alpha
set_character_color_slot( 0, 225, 229, 230 ); //clothe
set_character_color_slot( 1, 186, 200, 201 ); //clothe.2
set_character_color_slot( 2, 237, 104, 157 ); //hair
set_character_color_slot( 3, 181, 74, 151 ); //hair.2
set_character_color_slot( 4, 131, 223, 230 ); //skirt
set_character_color_slot( 5, 109, 227, 214 ); //bw
set_character_color_slot( 6, 230, 137, 232 ); //red
set_character_color_slot( 7, 255, 233, 217 ); //skin
set_article_color_slot( 0, 225, 229, 230 ); //clothe
set_article_color_slot( 1, 186, 200, 201 ); //clothe.2
set_article_color_slot( 2, 237, 104, 157 ); //hair
set_article_color_slot( 3, 181, 74, 151 ); //hair.2
set_article_color_slot( 4, 131, 223, 230 ); //skirt
set_article_color_slot( 5, 109, 227, 214 ); //bw
set_article_color_slot( 6, 230, 137, 232 ); //red
set_article_color_slot( 7, 255, 233, 217 ); //skin
}
}











/*
 
There are two pictures of a
door.
 
In the first picture, the door is
closed.
 
In the second picture, taken
later, the door is open.
 
Nobody opened the door.
 
The door did not open itself.
 
The door, in fact, did not open at
all.
 
What happened?

*/