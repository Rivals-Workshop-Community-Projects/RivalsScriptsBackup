//got_parried
if (my_hitboxID.attack == AT_FTILT){
	if (my_hitboxID.hbox_num == 1){
		window = 5;
		if (has_hit) window_timer = 4;
		else window_timer = 6;
		destroy_hitboxes();
	}
	if (my_hitboxID.hbox_num == 2){
		window = 5;
		if (has_hit) window_timer = 2;
		else window_timer = 3;
		destroy_hitboxes();
	}
	if (my_hitboxID.hbox_num == 3){
		window = 5;
		window_timer = 0;
		destroy_hitboxes();
	}
}

if (my_hitboxID.attack == AT_DAIR){
	if (my_hitboxID.hbox_num == 1){
	    set_state( PS_PRATFALL );
	}
}

if (my_hitboxID.attack == AT_FSPECIAL){
	if (my_hitboxID.hbox_num == 2){
		window = 5;
		window_timer = 6;
		destroy_hitboxes();
	}
	if (my_hitboxID.hbox_num == 3){
		window = 5;
		window_timer = 3;
		destroy_hitboxes();
	}
	if (my_hitboxID.hbox_num == 4){
		window = 5;
		window_timer = 0;
		destroy_hitboxes();
	}
}

if (my_hitboxID.attack == AT_USPECIAL_2){
    with obj_article1 if player_id == other.id {
		state = 2
		state_timer = 0
	}
}