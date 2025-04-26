// ai_update

// recovery
if (ai_recovering == true) {
	// set up torchwood for boosted uspecial
	if (x-200 < ai_target.x && ai_target.x < x+200) 
	&& (ai_target.y < y-40) {
		if (torchwood_recharge >= 292) {
			up_down = false;
			down_down = true;
			special_pressed = true;
		}
	}
	
	// dair ride
	/*
	if (move_cooldown[AT_DAIR] == 0) && (has_walljump) {
		down_down = true;
		attack_pressed = true;
	}
	*/
	if (state == PS_ATTACK_AIR) && (attack == AT_DAIR) {
		if (collision_line(x-50, y, x+50, y, asset_get("par_block"), false, false)) {
			if (has_walljump){
				jump_pressed = true;
			}
		}
	}
}

// fight
ai_attack_time = (9-temp_level)*8;
if (get_training_cpu_action() == CPU_FIGHT){
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		// the rest of the jab
		if (attack == AT_JAB) && (window == 3 || window == 6)
		&& (window_timer >= (9-temp_level)*2){
			up_down = false;
			down_down = false;
			if (window == 6){
				if (x > ai_target.x) left_down = true;
				else right_down = true;
				ai_attack_timer = 0;
			} else {
				left_down = false;
				right_down = false;
			}
			attack_pressed = true;
		}
		
		// repeater or split pea
		if (attack == AT_FTILT && window == 3)
		&& (window_timer >= 9-temp_level){
			up_down = false;
			down_down = false;
			if (x > ai_target.x) left_down = true;
			else right_down = true;
			attack_pressed = true;
			ai_attack_timer = 0;
		}
	
		// dair spike
		if (attack == AT_DAIR && window == 2){
			if (x-16 < ai_target.x && ai_target.x < x+16 
			&& y-24 < ai_target.y && ai_target.y < y){
				down_down = true;
				attack_pressed = true;
			}
		}
	
		// charging nspecial
		if (attack == AT_NSPECIAL && window == 2){
			if (nspecial_charge >= 4) 
			|| ((x-120 < ai_target.x && ai_target.x < x+120) && !(y-32 < ai_target.y && ai_target.y < y+32)) {
				special_down = false;
				shield_pressed = true;
				print("store neutral special");
			} else if (point_distance(x,y,ai_target.x,ai_target.y) > 300){
				special_down = true;
			}
		}
		
		// charging fstrong
		if (attack == AT_FSTRONG && window == 1){
			if (y < ai_target.y) && (ai_target.free){
				strong_down = true;
			}
		}
	}
	
	if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) 
	&& (ai_attack_timer >= ai_attack_time){
		// start nspecial
		if (point_distance(x,y,ai_target.x,ai_target.y) > 300){
			if (nspecial_charge < 4) && (move_cooldown[AT_NSPECIAL] == 0) && (ai_recovering == false)
			&& !((x-120 < ai_target.x && ai_target.x < x+120) || !(y-64 < ai_target.y && ai_target.y < y+64)){
				up_down = false;
				down_down = false;
				left_down = false;
				right_down = false;
				special_pressed = true;
				special_down = true;
				print("neutral special");
				ai_attack_timer = 0;
			}
		} else {
		
			// place torchwood
			if torchwood_recharge >= 292
			&& (collision_point(floor(x+56*spr_dir),floor(y),asset_get("par_block"),1,1)
			|| collision_point(floor(x+56*spr_dir),floor(y),asset_get("par_jumpthrough"),1,1)){
				if (y-80 < ai_target.y){
					if (!torchwood_exists){
						if (x > ai_target.x) left_down = true;
						else right_down = true;
						up_down = false;
						down_down = true;
						special_pressed = true;
						print("down special");
						ai_attack_timer = 0;
					}
					with (obj_article1) if (player_id == other.id){
						if (state == 2) || (point_distance(x,y,other.ai_target.x,other.ai_target.y) 
						> point_distance(other.x,other.y,other.ai_target.x,other.ai_target.y)){
							with (other){
								if (x > ai_target.x) left_down = true;
								else right_down = true;
								up_down = false;
								down_down = true;
								special_pressed = true;
								print("replace down special");
								ai_attack_timer = 0;
							}
						}
					}
				}
			}
			if (point_distance(x,y,ai_target.x,ai_target.y) < 300){
				// summon bean
				if bean_bomb_recharge >= 434 && torchwood_recharge >= 240 
				&& (ai_recovering == false){
					up_down = false;
					down_down = false;
					if (x > ai_target.x) left_down = true;
					else right_down = true;
					special_pressed = true;
					print("forward special");
					ai_attack_timer = 0;
				}
			}
		}
		
		
		//with torchwood
		var torchwood_exists = false;
		with (obj_article1) if (player_id == other.id){
			torchwood_exists = true;
			if (state != 2){
				with other{
					
					// uspecial
					if (x-32 < other.x && other.x < x+32
					&& y-200 < other.y && other.y < y+32)
					&& ((other.x-48 < ai_target.x && ai_target.x < other.x+48 
					&& ai_target.y < other.y-40) || (ai_recovering == true)){
						up_down = true;
						special_pressed = true;
						print("torchwood up special");
						ai_attack_timer = 0;
						
					} else if (x-64 < other.x && other.x < x+64)
					&& (y-16 < other.y && other.y < y+16)
					&& (point_distance(x,y,ai_target.x,ai_target.y) 
					> point_distance(other.x,other.y,ai_target.x,ai_target.y)){
						if (y-40 < ai_target.y && ai_target.y < y+8){	
						
							// nspecial
							if (nspecial_charge >= 4) 
							&& ((x-300 < ai_target.x && ai_target.x < x && spr_dir == -1) 
							|| (x < ai_target.x && ai_target.x < x+300 && spr_dir == 1)){
								up_down = false;
								down_down = false;
								left_down = false;
								right_down = false;
								special_pressed = true;
								special_down = true;
								print("torchwood neutral special");
								ai_attack_timer = 0;
							
							// fstrong
							} else if (x-256 < ai_target.x && ai_target.x < x+256){
								up_down = false;
								down_down = false;
								up_strong_pressed = false;
								down_strong_pressed = false;
								if (x > ai_target.x) left_strong_pressed = true;
								else right_strong_pressed = true;
								strong_down = false;
								print("torchwood forward strong");
								ai_attack_timer = 0;
								
							// ftilt
							} else if (x-384 < ai_target.x && ai_target.x < x+384) 
							&& (move_cooldown[AT_FTILT] == 0) && !(ai_target.free){
								up_down = false;
								down_down = false;
								if (x > ai_target.x) left_down = true;
								else right_down = true;
								special_pressed = false;
								special_down = false;
								attack_pressed = true;
								print("torchwood forward tilt");
								ai_attack_timer = 0;
							}
						
						// fair
						} else if (y-200 < ai_target.y && ai_target.y < y+40) 
						&& (x-192 < ai_target.x && ai_target.x < x+192){
							up_down = false;
							down_down = false;
							if (x > ai_target.x) left_down = true;
							else right_down = true;
							jump_pressed = true;
							jump_down = false;
							special_pressed = false;
							special_down = false;
							attack_pressed = true;
							print("torchwood forward aerial");
							ai_attack_timer = 0;
						}
					}
				}
			}
		}
		
		// with bean
		with (pHitBox) {
			if (player_id == other.id) && (attack == AT_FSPECIAL && hbox_num == 1){
				with other{	
				
					// dtilt popup
					if (other.y-200 < ai_target.y){
						if (x-90 < other.x && other.x < x+90)
						&& (y-16 < other.y && other.y < y+16)
						&& (other.hitbox_timer >= 120){
							if (x > ai_target.x) left_down = true;
							else right_down = true;
							down_down = true;
							attack_pressed = true;
							print("bean down tilt");
							ai_attack_timer = 0;
						}
						
					// torchwood detonate
					} else if (x-56 < other.x && other.x < x+56)
					&& (y-16 < other.y && other.y < y+16)
					&& (point_distance(other.x,other.y,ai_target.x,ai_target.y) < 80)
					&& (other.hitbox_timer >= 60){
						if torchwood_recharge >= 292{
							if (x > ai_target.x) left_down = true;
							else right_down = true;
							up_down = false;
							down_down = true;
							special_pressed = true;
							print("bean down special");
							ai_attack_timer = 0;
						}
					}
				}
			}
		}	
	}
}