//init_shader.gml

//Color Mapping
if (get_player_color(player) == 0) {
	set_character_color_slot(4, 243, 233, 57, 1);
	set_character_color_slot(5, 243, 233, 57, 1);
	set_character_color_slot(6, 255, 255, 0, 1);
}

//Early Access Thing + NES Alt
if (get_player_color(player) == 7 || get_player_color(player) == 15){
    for(i = 0; i < 24; i++){
		set_character_color_shading(i, 0);
		if (get_player_color(player) == 7){
			outline_color = [35, 67, 49];
		}
    }
}

if (get_player_color(player) == 23){
    for(i = 0; i < 24; i++){
		set_character_color_shading(i, 0.6);
    }
}

//Gold Outline
if (get_player_color(player) == 17){
	outline_color = [76, 53, 0];
}

//Fixing Shading on Body
if (get_player_color(player) == 4){
	set_character_color_shading( 0, 0.5 );
}
if (get_player_color(player) == 9){
	set_character_color_shading( 0, 0.5 );
	//set_character_color_shading( 1, 1 );
}
if (get_player_color(player) == 14){
	set_character_color_shading( 0, 0.5 );
}
if (get_player_color(player) == 19){
	set_character_color_shading( 0, 0.5 );
}

if (get_player_color(player) == 20){
	set_character_color_shading( 0, 0.5 );
}

if (get_player_color(player) == 21){
	set_character_color_shading( 0, 0.5 );
}

if (get_player_color(player) == 22){
	set_character_color_shading( 0, 0.5 );
}