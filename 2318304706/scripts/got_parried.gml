switch (my_hitboxID.attack) {
	case AT_USPECIAL:
		if (my_hitboxID.hbox_num == 2) {
			flash.gotParried = 1;
			flash.parriedPlayer = hit_player;
		}
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