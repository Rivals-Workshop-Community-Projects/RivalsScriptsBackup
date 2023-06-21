var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

//shading changes
if (alt_cur != 21)set_character_color_shading(5, 1.5);
//stronger shading on the main part of the mech
if (alt_cur == 3 || alt_cur == 4 || alt_cur == 5 || alt_cur == 8 || alt_cur == 9 || alt_cur == 10 || alt_cur == 11 || alt_cur == 12 || alt_cur == 19 || alt_cur == 20 || alt_cur == 21 || alt_cur == 22 
|| alt_cur == 23 || alt_cur == 25 || alt_cur == 26 || alt_cur == 29 || alt_cur == 30){
	
	if (alt_cur == 5 || alt_cur == 9 || alt_cur == 10 || alt_cur == 12 || alt_cur == 19 || alt_cur == 20 || alt_cur == 21 || alt_cur == 22 || alt_cur == 25 || alt_cur == 26){ //not too much
		set_character_color_shading(7, 2);
	}else{
		set_character_color_shading(7, 3);
	}
}
//stronger shading on the dark part of the mech
if (alt_cur == 1 || alt_cur == 2 || alt_cur == 6 || alt_cur == 8 || alt_cur == 19 || alt_cur == 29 || alt_cur == 30){
	set_character_color_shading(5, 4);
}
else if (alt_cur == 5){ //less lol
	set_character_color_shading(5, 3);
}

//stronger shading on the glasses
if (alt_cur == 1 || alt_cur == 2 || alt_cur == 3 || alt_cur == 4 || alt_cur == 8 || alt_cur == 9 || alt_cur == 19 || alt_cur == 21 || alt_cur == 23){
	set_character_color_shading(6, 3);
}else if (alt_cur == 10 || alt_cur == 12 || alt_cur == 13 || alt_cur == 18 || alt_cur == 29){ //stronger
	set_character_color_shading(6, 9);
}else if (alt_cur == 17){ //inverted
	set_character_color_shading(6, -16);
}

//transparency
if (alt_cur == 14){
	var alpha = 0.4;
    if("playtesting" not in self || playtesting){
    	alpha = 0.8;
    }else{
    	
    }
	for (var slot_num = 0; slot_num < 8; slot_num++){
		if(slot_num != 3 && slot_num != 6){
			// reset the color to default
			var temp_r = get_color_profile_slot_r(alt_cur, slot_num);
			var temp_g = get_color_profile_slot_g(alt_cur, slot_num);
			var temp_b = get_color_profile_slot_b(alt_cur, slot_num);
			set_character_color_slot(slot_num, temp_r, temp_g, temp_b, alpha);
			set_article_color_slot(slot_num, temp_r, temp_g, temp_b, alpha);
		}
	}
	set_character_color_shading(0, 1.5);set_character_color_shading(1, 2);set_character_color_shading(2, 2);set_character_color_shading(4, 2);
	set_character_color_shading(5, 2);set_character_color_shading(6, 2);set_character_color_shading(7, 2);
}


if (alt_cur == 31){ //starved
	set_character_color_shading(0, 3);set_character_color_shading(1, 2);
	set_character_color_shading(2, 5);set_character_color_shading(3, 5);
	set_character_color_shading(4, 3);set_character_color_shading(5, 5);
	set_character_color_shading(6, 0);set_character_color_shading(7, 5);
}

if(object_index == asset_get("stage_HUD") && get_synced_var(player) == 0 && get_color_profile_slot_r(0,0) == 225){
    sound_play(sound_get("adv_what_stage"),false,noone,1.5);
    set_color_profile_slot(0, 0, 226, 28, 28);
}
