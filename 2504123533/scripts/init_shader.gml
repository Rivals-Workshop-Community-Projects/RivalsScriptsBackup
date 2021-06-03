//EA
if (get_player_color(player) == 7){
	for(i = 0; i < 8; i++) if i != 6{
		set_character_color_shading(i, 0);
	}
}

///color map main alt
//make normal alt have color mapped be the right color
if get_player_color(player) == 0 {
    set_character_color_slot(2,188, 177, 255 ); //left arm
}