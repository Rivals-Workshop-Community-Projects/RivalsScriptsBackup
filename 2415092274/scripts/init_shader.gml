
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

if(variable_instance_exists(id,"mode")){
if(mode=="B"){
if(get_player_color( player ) == 0){
	set_character_color_slot(6,86,209,151)
	set_article_color_slot(6,86,209,151)
}else{
	set_character_color_slot(6,get_color_profile_slot_r(get_player_color(player),7),get_color_profile_slot_r(get_player_color(player),7),get_color_profile_slot_r(get_player_color(player),7))
	set_article_color_slot(6,get_color_profile_slot_r(get_player_color(player),7),get_color_profile_slot_r(get_player_color(player),7),get_color_profile_slot_r(get_player_color(player),7))
}
}else{
set_character_color_slot(6,0,0,0)
set_article_color_slot(6,0,0,0)
}
}
