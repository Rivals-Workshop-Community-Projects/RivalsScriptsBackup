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
}


//if(my_hitboxID.attack == AT_FSPECIAL && window == 3){
//    old_vsp = 0;
//    old_hsp = 1;
///}





if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL_2 and my_hitboxID.hbox_num < 3){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-30, .35);
    }
}

