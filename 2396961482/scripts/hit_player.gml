switch (my_hitboxID.attack)
{
	case AT_DSPECIAL:
		if (my_hitboxID.hbox_num == 1) hit_player_obj.barrierLockout = {timer: 15, anglara: player};
		break;
	case AT_DSTRONG:
		if(my_hitboxID.hbox_num == 1 && hitpause)
			{ hit_player_obj.x = x+30*spr_dir; hit_player_obj.y = y; }
		if(my_hitboxID.hbox_num == 2 && hitpause)
			{ hit_player_obj.x = x-30*spr_dir; hit_player_obj.y = y; }
		if(my_hitboxID.hbox_num == 3 && hitpause)
			{ hit_player_obj.x = x+30*spr_dir; hit_player_obj.y = y; }
	break;
	case AT_FSPECIAL:
		if(my_hitboxID.hbox_num == 1 && hitpause)
			{ hit_player_obj.x = x+60*spr_dir; hit_player_obj.y = y; }
		break;
			case AT_USPECIAL_2:
		if(my_hitboxID.hbox_num < 3 && hitpause)
			{ hit_player_obj.x = x+30*spr_dir; hit_player_obj.y = y; }
}



//if(my_hitboxID.attack == AT_FSPECIAL && window == 3){
//    old_vsp = 0;
//    old_hsp = 1;
///}







