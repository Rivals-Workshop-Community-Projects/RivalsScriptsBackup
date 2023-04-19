//article1 hit

//shadowtier++; //just fror testing

if (state==1 || state==3){
	if (enemy_hitboxID.player_id == player_id && enemy_hitboxID.attack == AT_DSPECIAL){
		
	}else{
		/*if (enemy_hitboxID.player_id == player_id && enemy_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.hbox_num == 1){
			if (state==1){
				state = 3;
				state_timer = 0;
				if (player_id.has_hit_player == false){
					player_id.window = 1;
					player_id.window_timer = -6;
				}
			}
		}*/
		if (hit_player_obj == player_id){
			hit_player_obj.hsp = hit_player_obj.old_hsp;
			hit_player_obj.vsp = hit_player_obj.old_vsp;
			hit_player_obj.hitpause = false;
			hit_player_obj.hitstop = 0;
			hit_player_obj.hitstop_full = 1;
		}
		//shadowtier++; //just fror testing
		//if (hit_player_obj == player_id){
		//	if (hit_player_obj.pratfall_queue){
				//this is for fspecial.
		//		hit_player_obj.pratfall_queue = false;
		//	}
		//}
	}

	if (hit_player_obj != player_id){
		if (enemy_hitboxID.type != 2){
			if (hit_lockout_duration==0){
				player_id.move_cooldown[AT_DSPECIAL] = 40; //DOOR HIT COOLDOWN AMOUNT
				spawn_hit_fx( x, y-36, enemy_hitboxID.hit_effect )
				sound_play(enemy_hitboxID.sound_effect)
				hit_player_obj.has_hit = true;
				if (doorhealth > 0){
					doorhealth--;
				}else{
					state = 2;
					state_timer = 0;
					state_end = enemy_hitboxID.hitpause;
				}
			}else{
				hit_player_obj.hsp = hit_player_obj.old_hsp;
				hit_player_obj.vsp = hit_player_obj.old_vsp;
				hit_player_obj.hitpause = false;
				hit_player_obj.hitstop = 0;
				hit_player_obj.hitstop_full = 1;
			}
			hit_lockout_duration = hit_lockout_duration_set+enemy_hitboxID.hitpause; //check article1_init.gml
		}
	}
}
