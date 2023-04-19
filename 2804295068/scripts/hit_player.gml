if (my_hitboxID.attack == AT_USPECIAL_2){
    take_damage (player, -1, 3)
}

if (my_hitboxID.attack == AT_DSTRONG){
	if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4){
		hit_player_obj.split_grabbed1 = id;
	}
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
		hit_player_obj.split_grabbed2 = id;
	}
}