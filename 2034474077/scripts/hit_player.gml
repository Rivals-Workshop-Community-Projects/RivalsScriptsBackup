switch(my_hitboxID.attack){

	//Shotput
	case AT_NSPECIAL:
		if(my_hitboxID.effect == 69){
		    if(hit_player_obj.clone == false){
				my_hitboxID.in_hitpause = true;
				my_hitboxID.hitpause_timer = hit_player_obj.hitstop - 1;
		    }
		}
		break;

	//Soaring Axe Kick
	case AT_USPECIAL_GROUND:
		if(hit_player_obj.clone == false){
			if(window == 2){
				multihit = hit_player_obj;
				if(runeH){
					set_window_value(AT_USPECIAL_1, 3, AG_WINDOW_TYPE, 1);
				}
			}
		}
		break;

	//Helicopter Kick
	case AT_USPECIAL:
		if(hit_player_obj.clone == false){
			multihit = hit_player_obj;
			if(window < 8){
				hit_player_obj.should_make_shockwave = false;
			}
			//hit_player_obj.x = lerp(hit_player_obj.x, (x + (40 * spr_dir) + hsp), 0.1)
			//hit_player_obj.y = lerp(hit_player_obj.y, (y - 10 + vsp), 0.1)
		}
		break;

	//Thrust Uppercut
	case AT_USPECIAL_2:
		if(hit_player_obj.clone == false){
			multihit = hit_player_obj;
			if(window < 4){
				hit_player_obj.should_make_shockwave = false;
			}
		}
		break;

	//Onslaught
	case AT_FSPECIAL_AIR:
		if(hit_player_obj.clone == false){
			if(window == 2){
				destroy_hitboxes();
				set_attack_value(AT_FSPECIAL_1, AG_NUM_WINDOWS, 13);
				window = 6;
				window_timer = 0;
			}
		}
		break;

	//Burning Dropkick
	case AT_FSPECIAL_2:
		if(hit_player_obj.clone == false){
			multihit = hit_player_obj;
		}
		break;

	//Suplex
	case AT_FSPECIAL:
		if(hit_player_obj.clone == false){
			if(window == 2){
				multihit = hit_player_obj;
				if(!multihit.super_armor){
					multihit.hitpause = true;
					multihit.hitstop = 75;
					destroy_hitboxes();
					window = 4;
					window_timer = 0;
					set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
				}
			}
		}
		break;

	/*//Head-On-Assault
	case AT_DSPECIAL_AIR:
		if(window < 5){
			if(hit_player_obj.clone == false && hit_player_obj.super_armor == false){
				multihit = hit_player_obj;
				multihit.vsp = -4;
				multihit.hsp = 2 * spr_dir;
			}
		}
		break;*/

	//Counter Throw
	case AT_DSPECIAL_2:
		if(window == 5){
			multihit = hit_player_obj;
			if(!multihit.super_armor){
				multihit.hitpause = true;
				multihit.hitstop = 30;
			}
		}else if(window == 6){
			multihit = noone;
		}
		break;

}