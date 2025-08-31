
if (get_player_color( player ) == 5) { //mi ao
set_character_color_shading( 4, 2 );
}
if (get_player_color( player ) == 10) { //lesgooooo
set_character_color_shading( 4, 0 );
}
if (get_player_color( player ) == 7) { //early
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}

//new age
if (get_player_color( player ) == 2) { //red
set_character_color_shading( 0, 0.5 );
set_character_color_shading( 5, 0.5 );
}
if (get_player_color( player ) == 4) { //bw
set_character_color_shading( 1, 0.5 );
set_character_color_shading( 4, 0.5 );
}
if (get_player_color( player ) == 9) { //eotl
set_character_color_shading( 5, 2 );
}
if (get_player_color( player ) == 11) { //nb
set_character_color_shading( 4, 0.3 );
set_character_color_shading( 5, 2 );
}
if (get_player_color( player ) == 12) { //crysta
set_character_color_shading( 4, 2 );
set_character_color_shading( 5, 1.5 );
}
if (get_player_color( player ) == 13) { //AR
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0.5 );
}
}
if (get_player_color( player ) == 15) { //clearingfog
set_character_color_shading( 0, 0.5 );
set_character_color_shading( 4, 2 );
set_character_color_shading( 5, 0.5 );
}
if (get_player_color( player ) == 16) { //oblivion1(dilemma)
set_character_color_shading( 0, 0.5 );
}
if (get_player_color( player ) == 17) { //oblivion2
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0.5 );
}
}
if (get_player_color( player ) == 18) { //ranked
set_character_color_shading( 0, 1.5 );
set_character_color_shading( 4, 2 );
set_character_color_shading( 5, 2 );
}
if (get_player_color( player ) == 19) { //aol
set_character_color_shading( 4, 0.5 );
}
if (get_player_color( player ) == 20) { //w
set_character_color_shading( 1, 0.5 );
set_character_color_shading( 5, -1 );
}
if (get_player_color( player ) == 21) { //antefn
set_character_color_shading( 0, -0.5 );
set_character_color_shading( 4, 0.5 );
set_character_color_shading( 5, -1 );
}
if (get_player_color( player ) == 22) { //sundews
set_character_color_shading( 0, 0.5 );
set_character_color_shading( 5, -1 );
}
if (get_player_color( player ) == 26) { //durian
set_character_color_shading( 4, 1.5 );
set_character_color_shading( 5, 0.5 );
}



if(variable_instance_exists(id,"mode")){
if(mode=="B"){
if(get_player_color( player ) == 0){
	set_character_color_slot(6,86,209,151)
	set_article_color_slot(6,86,209,151)
}else{
	set_character_color_slot(6,get_color_profile_slot_r(get_player_color(player),7),get_color_profile_slot_r(get_player_color(player),7),get_color_profile_slot_r(get_player_color(player),7))
	set_article_color_slot(6,get_color_profile_slot_r(get_player_color(player),7),get_color_profile_slot_r(get_player_color(player),7),get_color_profile_slot_r(get_player_color(player),7))
}
}
}

/*
if (get_player_color( player )==0){
// Default
set_character_color_shading( 0, 0.55 );//shade
set_character_color_slot( 0, 95, 99, 126 ); //limb end
set_character_color_slot( 1, 95, 99, 126 ); //shoulder
set_character_color_slot( 2, 255, 255, 255 ); //waist
set_character_color_slot( 3, 95, 99, 126 ); //chest
set_character_color_slot( 4, 255, 255, 255 ); //crotch
set_character_color_slot( 5, 255, 255, 255 ); //arms
set_character_color_slot( 6, 255, 255, 255 ); //legs
set_character_color_slot( 7, 255, 255, 255 ); //head
}*/