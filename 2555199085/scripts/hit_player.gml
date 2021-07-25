if (my_hitboxID.attack == AT_EXTRA_2) {
switch(my_hitboxID.hbox_num) {
	case 1:
	case 7:
	case 8:
		plant[0].plantHitpause += round(hit_player_obj.hitstop_full)
	break;
	case 3:
		my_hitboxID.vsp = 0
		my_hitboxID.squashHitpause += round(hit_player_obj.hitstop_full)
	break;
	}
}
