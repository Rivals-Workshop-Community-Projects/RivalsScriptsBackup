//hit_player - called when one of your hitboxes hits a player\

if (my_hitboxID.type == 2){
	switch(my_hitboxID.hbox_num) {
		case 1:
		case 2:
	        sound_play(sound_get("sfx_soul_damage"));
		break;
		
		case 7:
		case 8:
		case 9:
		case 10:
			sound_play(sound_get("sfx_soul_damage"));
		break;
	}
}
if (my_hitboxID.type == 1) {
    if (my_hitboxID.attack == AT_DSTRONG) {
    	switch(my_hitboxID.hbox_num) {
    		case 1:
    		case 2:
				sound_play(sound_get("sfx_sans_critical"));
			break;
    	}
    }
    if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1) {
        sound_play(sound_get("sfx_sans_critical"));
    }
}
if (my_hitboxID.attack == AT_FSPECIAL) or (my_hitboxID.attack == AT_FSPECIAL_AIR) { //Grab and stuff
	if (my_hitboxID.hbox_num == 1) {
		if (!hit_player_obj.clone && hit_player_obj.hitstun > 0) {
		window = 6;
		window_timer = 0;
		hit_player_obj.grabbed = true;
		hit_player_obj.grabbed_id = id;
		soul_id = hit_player_obj.id;
		}
	} else
		hit_player_obj.grabbed_id = 0;
}