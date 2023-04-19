if (my_hitboxID.attack == AT_NSPECIAL){
	if (my_hitboxID.hbox_num >= 1 && my_hitboxID.hbox_num <= 3){
		hit_player_obj.haunted = id;
	}
}

if (my_hitboxID.attack == AT_DATTACK){
	if (my_hitboxID.hbox_num <= 4){
		hit_player_obj.dattack_drag = id;
	}
	if (my_hitboxID.hbox_num == 5){
		hit_player_obj.dattack_flick = id;
	}
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
		hit_player_obj.puffshroom_timer = 30;
		hit_player_obj.puffshroom_draw_y = draw_y;
	}
}