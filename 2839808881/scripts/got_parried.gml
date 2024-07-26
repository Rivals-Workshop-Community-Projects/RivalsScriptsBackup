//got_parried.gml

if (my_hitboxID.attack == AT_NSPECIAL){
	window = 3;
	window_timer = 0;
	destroy_hitboxes();
}

if (my_hitboxID.attack == AT_COPY_ESP){
	esp_parried = true;
	move_cooldown[AT_COPY_ESP] = 60;
}

if (my_hitboxID.attack == AT_COPY_TORNADO){
	if (my_hitboxID.hbox_num < 10){//>
		window = 3;
		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		sound_stop(sound_get("sfx_krdl_tornado"));
		sound_play(asset_get("sfx_bird_sidespecial"));
		vsp = -5.2;
	}
}
if (my_hitboxID.attack == AT_COPY_DRILL){
	if (my_hitboxID.hbox_num < 3){//>
		set_state(PS_PRATFALL);
	} else {
		window = 9;
		window_timer = 0;
	}
	destroy_hitboxes();
	set_window_value(AT_COPY_DRILL, 8, AG_WINDOW_TYPE, 7);
}

if (my_hitboxID.attack == AT_FSPECIAL){
	destroy_hitboxes();
	window = 6;
	window_timer = 0;
}