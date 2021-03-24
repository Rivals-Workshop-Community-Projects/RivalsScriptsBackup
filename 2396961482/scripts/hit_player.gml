switch (my_hitboxID.attack)
{
	case AT_DSPECIAL:
		if (my_hitboxID.hbox_num == 1) hit_player_obj.barrierLockout = {timer: 15, anglara: player};
		break;
}