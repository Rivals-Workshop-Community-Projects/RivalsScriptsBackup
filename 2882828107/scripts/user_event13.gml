if (my_hitboxID.attack == AT_DATTACK){
	if (my_hitboxID.hbox_num <= 4){
		hit_player_obj.dattack_drag = id;
	}
	if (my_hitboxID.hbox_num == 5){
		hit_player_obj.dattack_flick = id;
	}
}