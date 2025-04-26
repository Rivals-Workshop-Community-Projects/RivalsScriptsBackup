// css_update.gml

alt_cur = get_player_color(player);
// swapping the alt color sound
if (alt_prev != alt_cur){
    //swapping alt sound
    if (menu_rb_pressed || menu_lb_pressed){
        sound_stop(asset_get("mfx_change_color"));
        sound_play(sound_get("sfx_ttydR_menu_move"));
    }
    alt_prev = alt_cur;
}

if (alt_cur <= 23 && alt_cur >= 20){
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect_racer" ));
} else if (alt_cur <= 27 && alt_cur >= 24){	// kooper
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));
} else if (alt_cur <= 31 && alt_cur >= 28){	// koops
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));
} else {
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));
}


if (!instance_exists(curr_alt_costume)){
	// print("HELP ME")
	if (get_player_color(player) == 20
	|| get_player_color(player) == 21
	|| get_player_color(player) == 22
	|| get_player_color(player) == 23){
		curr_alt_costume = 1;
	} else if (get_player_color(player) == 24
	|| get_player_color(player) == 25
	|| get_player_color(player) == 26
	|| get_player_color(player) == 27){
		curr_alt_costume = 2;
	} else if (get_player_color(player) == 28
	|| get_player_color(player) == 29
	|| get_player_color(player) == 30
	|| get_player_color(player) == 31){
		curr_alt_costume = 3;
	} else {
		curr_alt_costume = 0;
	}
}

if (curr_alt_costume == 0 || curr_alt_costume == 1){
	//print("no costume / racer")
	
	// eye whites, pants
	set_color_profile_slot( 0, 6, 249, 249, 240 );
	set_color_profile_slot_range( 6, 6, 4, 22 );

	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 77, 97, 91 );
	set_color_profile_slot_range( 7, 11, 17, 49 );
}

if (curr_alt_costume == 2){
	//print("kooper")
	
	// eye whites, pants
	set_color_profile_slot( 0, 6, 249, 249, 240 );
	set_color_profile_slot_range( 6, 6, 4, 22 );
	
	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 93, 192, 244 );
	set_color_profile_slot_range( 7, 1, 31, 46 );
}

if (curr_alt_costume == 3){
	//print("koops")
	
	// eye whites, pants
	set_color_profile_slot( 0, 6, 0, 81, 184 );
	set_color_profile_slot_range( 6, 1, 1, 30 );

	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 93, 192, 244 );
	set_color_profile_slot_range( 7, 1, 31, 46 );
}

init_shader();