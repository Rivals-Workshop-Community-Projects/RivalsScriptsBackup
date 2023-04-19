if (custom_clone) {
	//command grab protection
	soft_armor = 999;
	//Inputs
	if (!clone_owner.rune_sentience) {
		reset_inputs();
	}
}


if (temp_level > 0 && !custom_clone) { //Cpu and Not Clone AI stuff
	//General
	dist_x = abs(x - ai_target.x);
	dist_y = abs(y - ai_target.y);
	dist_total = point_distance(x, y, ai_target.x, ai_target.y);
	level_skill_check = (random_func_2(6, 9 - temp_level, 0) == 0)
	kill_form = get_kb_formula(get_player_damage(ai_target.player), ai_target.knockback_adj, 1.0, 10, 9, 1);
	going_for_kill = (get_kb_formula(get_player_damage(ai_target.player), ai_target.knockback_adj, 1.0, 10, 9, 1) >= 27);
	//Advantage
	if (in_advantage && ai_target.state_cat != SC_HITSTUN) {
		in_advantage -= 1;
	}
	//Camping
	has_less_percent = (get_player_damage(player) < get_player_damage(ai_target.player));
	has_even_stocks = (get_player_stocks(player) == get_player_stocks(ai_target.player));
	has_more_stocks = (get_player_stocks(player) > get_player_stocks(ai_target.player));
	//
	if (state_cat == SC_HITSTUN) { //Damaged Resets
		force_jump = false;
	}
	if ai_recovering { //Recovering Resets and Sets
		ai_state = 2;
	} else if (ai_state == 2) {
		ai_state = 1;
	}
	switch(ai_state) {
		case 0: //AS_WAIT
			ai_attack_timer = 0
			ai_attack_time = 12 - temp_level;
			reset_inputs()
			if (dist_total < 160) {
				ai_state = 1;
			}
			try_parry_proj(temp_level);
		break;		
		case 1:
			/*
			if place_meeting(x, y + 64, asset_get("par_jumpthrough")) && free && state != PS_JUMPSQUAT && has_airdodge && y < ai_target.y { //Waveland
				shield_pressed = true;
				down_down = true;
				print("Waveland")
			}
			*/
			if (dist_total > 196 && ((has_even_stocks && has_less_percent) || (has_more_stocks)) && !in_advantage) {
				ai_state = 0;
			}
			if ((ai_attack_time >= ai_attack_timer) && going_for_kill) {
				reset_inputs();
				if (place_meeting(x, y, ai_target)) { //USPECIAL KILL
					special_pressed = true;
					up_down = true;
				} else if (dist_x <= 128) { //DACUS
					if (x < ai_target.x) {
						right_down = true;
					} else {
						left_down = true;
					}
					attack_pressed = true;
				}
			}
			if (dist_x > 256 && (ai_attack_time >= ai_attack_timer)) { //Close the gap
				//print("FSPECIAL GAP CLOSE")
				reset_inputs();
				if (x < ai_target.x) {
					right_down = true;
				} else {
					left_down = true;
				}
				special_pressed = true;
			}

			switch(attack) {
				case AT_JAB:
					if (window == 3 && level_skill_check) { //Cancel Window
						//print("TILT CANCEL")
						reset_inputs();
						if (dist_x <= 32) { //Utilt
							up_down = true;
							attack_pressed = true;
						} else if (dist_x <= 64 || dist_x > 128) { //Jab 2
							attack_pressed = true;	
						} else {
							down_down = true; //Dtilt
							attack_pressed = true;
						}
					}
				break;
				case AT_DATTACK:
					if (level_skill_check) {
						print("DACUS")
						reset_inputs();
						up_strong_down = true;
						up_strong_pressed = true;	
					}
				break;
				case AT_USPECIAL:
					if (spr_dir == -1 && x < room_width / 2) {
						right_down = true;
					} else if (spr_dir == 1 && x > room_width / 2) {
						left_down = true;
					}
				break;
				case AT_FSPECIAL:
					if (!free) {
						reset_inputs();
						if (level_skill_check) {
							//print("FSPECIAL CANCEL")
							if !going_for_kill {
								if (dist_x <= 32) { //Utilt
									up_down = true;
									attack_pressed = true;
								} else if (dist_x <= 64 || dist_x > 128) { //Jab 1
									attack_pressed = true;	
								} else if (dist_x <= 128) {
									down_down = true;
									attack_pressed = true;	
								} 
							} else {
								if (dist_x >= 32 && dist_x <= 256) {
									print("DATTACK")
									if (x < ai_target.x) {
										right_hard_pressed = true;
									} else {
										left_hard_pressed = true;
									}
								} else {
									print("FTILT")
									if (x < ai_target.x) {
										right_down = true;
									} else {
										left_down = true;
									}
								}
								attack_pressed = true;	
							}
						}
					}
				break;
			}
		break;
		case 2:
			if (!move_cooldown[AT_FSPECIAL] && !djumps) {
				//print("RECOVERY FSPECIAL")
				reset_inputs()
				if (x < room_width / 2) {
					right_down = true;
				} else {
					left_down = true;
				}
				special_pressed = true;
				force_jump = true;
			}
			if (force_jump && state == PS_IDLE_AIR) {
				jump_pressed = true;
				force_jump = false;
			}
		break;
		default:
			
		break;
	}
}

#define reset_inputs() {
	attack_pressed = 0;
	attack_down = 0;
	special_pressed = 0;
	special_down = 0;
	left_strong_pressed = 0;
	left_strong_down = 0;
	right_strong_pressed = 0;
	right_strong_down = 0;
	up_strong_pressed = 0;
	up_strong_down = 0;
	down_strong_pressed = 0;
	down_strong_down = 0;
	left_stick_pressed = 0;
	left_stick_down = 0;
	right_stick_pressed = 0;
	right_stick_down = 0;
	up_stick_pressed = 0;
	up_stick_down = 0;
	down_stick_pressed = 0;
	down_stick_down = 0;
	left_pressed = 0;
	left_down = 0;
	left_hard_pressed = 0;
	right_pressed =0;
	right_down = 0;
	right_hard_pressed = 0;
	up_pressed = 0;
	up_down = 0;
	up_hard_pressed = 0;
	down_pressed = 0;
	down_down = 0;
	down_hard_pressed = 0;
	jump_pressed = 0;
	jump_down = 0;
	shield_pressed = 0;
	shield_down = 0;
}

#define try_parry_proj(_level) {
	if random_func_2(5, (9 - _level), true) == 0 {
		with pHitBox {
			if (type == 2 && player_id != other.id) {
				//print("Watching")
				for (i = 3; i <= 10; i++) {
					if place_meeting(x + (hsp * i), y + (vsp * i), other) {
						other.shield_pressed = true;
					}
				}
			}
		}
	}
}