//referencely stolen from the documents

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