switch (my_hitboxID.attack) {
	case AT_USPECIAL:
		flash.y -= 10;
		flash.gotParried = 1;
		flash.parriedPlayer = hit_player;
		flash.state = 1;
		flash.state_timer = 0;
		flash.lifetime = 26;
		print("reflect pls");
		break;
	case AT_FSPECIAL:
		if (my_hitboxID.hbox_num == 1) {
			whirl.gotParried = 1;
			whirl.parriedPlayer = hit_player;
		}
		break;
	case AT_FSTRONG:
	case AT_DAIR:
		if (my_hitboxID.hbox_num == 1) {
			arms.gotParried = 1;
			arms.parriedPlayer = hit_player;
		}
		break;
}