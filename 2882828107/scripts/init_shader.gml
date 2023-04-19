//early access alt
if (get_player_color(player) == 7){
    outline_color = [35, 67, 49];
}

//seethrough alt
if (get_player_color(player) == 17){
	set_character_color_slot( 0, 238, 250, 253, .5 ); //pepper
	set_character_color_slot( 1, 143, 171, 183, .5 ); //pepper 2
	set_character_color_slot( 2, 238, 250, 253, .5 ); //face
	set_character_color_slot( 3, 238, 250, 253, .5 ); //sheet
	set_character_color_slot( 4, 143, 171, 183, .5 ); //sheet 2
	set_character_color_slot( 5, 238, 250, 253, .5 ); //stem
	set_character_color_slot( 6, 238, 250, 253, .5 ); //stem 2
	set_character_color_slot( 7, 143, 171, 183, .5 ); //stem 3
}