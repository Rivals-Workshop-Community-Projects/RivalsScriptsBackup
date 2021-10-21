// code for kamehameha

if (my_hitboxID.attack == AT_FSPECIAL){
	if(bike_level = 3 || bike_level = 0){
	window = 4;
	window_timer = 0;
	destroy_hitboxes();
	}if(bike_level = 1 || bike_level = 2){
	window_timer = 24;
	destroy_hitboxes();
	}
}

if (my_hitboxID.attack == AT_NSPECIAL){
	if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
		window = 4;
		window_timer = 0;
		destroy_hitboxes();
	}if(my_hitboxID.hbox_num == 5){
		nspecial_grab_failed = 1;
    hit_player_obj.x = x + spr_dir * 60
    hit_player_obj.y = y
	}if(my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 8 || my_hitboxID.hbox_num == 9 || my_hitboxID.hbox_num == 10){
		nspecial_projectile_var = 1;
	}
}
