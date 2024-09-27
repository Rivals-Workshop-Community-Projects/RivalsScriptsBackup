//whe nyoi shader

if (get_player_color(player) == 0){
    set_character_color_slot(0, 255, 255, 255);
    set_character_color_slot(1, 0, 0, 0);
    set_character_color_slot(2, 255, 255, 255);
    set_character_color_slot(3, 255, 255, 255);
    set_character_color_slot(4, 255, 255, 255);
    set_character_color_slot(5, 255, 255, 255);
    set_character_color_slot(6, 0, 0, 0);
}

if (get_player_color(player) == 1){
	set_character_color_slot(5, 255, 255, 255, 0);
}

if (get_player_color(player) == 2){
	set_character_color_slot(4, 255, 255, 255, 0);
	set_character_color_shading(2, 0.75);
	set_character_color_shading(5, 0.75);
	base_shade[0] = 1;
	base_shade[1] = 1;
	base_shade[2] = 0.75;
	base_shade[3] = 1;
	base_shade[4] = 1;
	base_shade[5] = 0.75;
	base_shade[6] = 1;
	base_shade[7] = 1;
} else
if (get_player_color(player) == 3){
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
	base_shade[0] = 0;
	base_shade[1] = 0;
	base_shade[2] = 0;
	base_shade[3] = 0;
	base_shade[4] = 0;
	base_shade[5] = 0;
	base_shade[6] = 0;
	base_shade[7] = 0;
} else
if (get_player_color(player) == 4){
	set_character_color_shading(0, -1);
	set_character_color_shading(1, -1);
	set_character_color_shading(2, -1);
	set_character_color_shading(3, -1);
	set_character_color_shading(5, -1);
	set_character_color_shading(6, -1);
	base_shade[0] = -1;
	base_shade[1] = -1;
	base_shade[2] = -1;
	base_shade[3] = -1;
	base_shade[4] = -1;
	base_shade[5] = -1;
	base_shade[6] = -1;
	base_shade[7] = 1;
} else
if (get_player_color(player) == 6){
	set_character_color_shading(2, 0.75);
	set_character_color_shading(5, 0.75);
	base_shade[0] = 1;
	base_shade[1] = 1;
	base_shade[2] = 0.75;
	base_shade[3] = 1;
	base_shade[4] = 1;
	base_shade[5] = 0.75;
	base_shade[6] = 1;
	base_shade[7] = 1;
} else
if (get_player_color(player) == 7){
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
	base_shade[0] = 0;
	base_shade[1] = 0;
	base_shade[2] = 0;
	base_shade[3] = 0;
	base_shade[4] = 0;
	base_shade[5] = 0;
	base_shade[6] = 0;
	base_shade[7] = 0;
} else
if (get_player_color(player) == 8){
	if (get_synced_var(player) == 2){
		// shajb
		set_color_profile_slot( 8, 0, 249, 223, 193 ); //skin
		set_color_profile_slot( 8, 1, 0, 0, 0 ); //face
		set_color_profile_slot( 8, 2, 0, 0, 255 ); //coat
		set_color_profile_slot( 8, 3, 195, 163, 109 ); //exess
		set_color_profile_slot( 8, 4, 0, 0, 0 ); //mouth
		set_color_profile_slot( 8, 5, 0, 255, 0 ); //white
		set_color_profile_slot( 8, 6, 0, 0, 255 ); //black
	} else
	if (get_synced_var(player == 1)){
		// shajb
		set_color_profile_slot( 8, 0, 249, 223, 193 ); //skin
		set_color_profile_slot( 8, 1, 0, 0, 0 ); //face
		set_color_profile_slot( 8, 2, 255, 0, 0 ); //coat
		set_color_profile_slot( 8, 3, 43, 43, 43 ); //exess
		set_color_profile_slot( 8, 4, 255, 255, 255 ); //mouth
		set_color_profile_slot( 8, 5, 0, 255, 0 ); //white
		set_color_profile_slot( 8, 6, 0, 0, 255 ); //black
	}
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);	
	set_character_color_slot(7, 255, 255, 255, 0);
	base_shade[0] = 0;
	base_shade[1] = 0;
	base_shade[2] = 0;
	base_shade[3] = 0;
	base_shade[4] = 0;
	base_shade[5] = 0;
	base_shade[6] = 0;
	base_shade[7] = 0;
} else{
	base_shade[0] = 1;
	base_shade[1] = 1;
	base_shade[2] = 1;
	base_shade[3] = 1;
	base_shade[4] = 1;
	base_shade[5] = 1;
	base_shade[6] = 1;
	base_shade[7] = 1;
}