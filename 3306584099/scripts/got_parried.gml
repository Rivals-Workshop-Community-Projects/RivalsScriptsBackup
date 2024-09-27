
//Destroy walls
with (obj_article_solid) {
	if (player == other.player && player_id == other.id) {
	    if (state == 1) {
            state = 2;
            state_timer = 0;
            window = 1;
            window_timer = 0;
	    }
	}
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1) {
	was_parried = true;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	was_parried = true;
}

if (lang != 0) parry_voice = 2;