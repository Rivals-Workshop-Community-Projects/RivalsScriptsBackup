if (ai == 0) {
	ai = 1;
}

//aiplaceholder = random_func( 0, 4, true)

/*
if(!instance_exists(hurricane)){
	hurricane = instance_create(x + (spr_dir*85),y - 90,"obj_article1");
	hurricane.holding_bomb = true
}
*/

if(buffer > 0){
	can_special = false
	can_jump = false
	can_attack = false
	can_shield = false
}

if(attack == AT_USPECIAL && state == PS_ATTACK_AIR && ai_recovering){
	jump_down = true
	if(ai_debug_var != "OOR Uspecial" && ai_debug_var != "Bad WB OOR Uspecial" && ai_debug_var != "Panic Uspecial" && !instance_exists(waterBomb)){
		if(double_jump_timer <= 0){
			set_state(PS_IDLE_AIR)
		}else{
			set_state(PS_DOUBLE_JUMP)
		}
		move_cooldown[AT_USPECIAL] = 20
	}
}

if(ai_recovering && buffer <= 0){
	if(!hitpause && distance_to_object(oPlayer) < 60 && can_attack && (djumps < 1 || double_jump_timer > 0)){
		if(double_jump_timer > 0){
			jump_down = true
		}else if(djumps < 1){
			if(vsp > 2){
				sound_play(asset_get("sfx_bubblemouth"))
				double_jump_timer = 20
				vsp = 2
				djumps += 1
			}
		}
		if(ai_target.y > player.y + 40){
			if(ai_target.x > player.x + 40){
				if(spr_dir = 1){
					set_attack(AT_UAIR)
				}else{
					set_attack(AT_BAIR)
				}
			}else if(ai_target.x < player.x - 40){
				if(spr_dir = 1){
					set_attack(AT_BAIR)
				}else{
					set_attack(AT_UAIR)
				}
			}else{
				set_attack(AT_UAIR)
			}
		}else if(ai_target.y < player.y - 40){
			if(ai_target.x > player.x + 40){
				if(spr_dir = 1){
					set_attack(AT_DAIR)
				}else{
					set_attack(AT_NAIR)
				}
			}else if(ai_target.x < player.x - 40){
				if(spr_dir = 1){
					set_attack(AT_NAIR)
				}else{
					set_attack(AT_DAIR)
				}
			}else{
				set_attack(AT_DAIR)
			}
		}else{
			set_attack(AT_NAIR)
		}
		ai_debug_var = "Panic Attack"
	}
	if(state_cat == SC_AIR_NEUTRAL || state == PS_TUMBLE || attack == AT_USPECIAL && state_timer < 1 && window > 0){
		if(y < room_height - 120){
			if(!instance_exists(waterBomb)){
				if(can_special && move_cooldown[AT_NSPECIAL] <= 0 && djumps < 1){
					sound_play(asset_get("sfx_bubblemouth"))
					set_state(PS_DOUBLE_JUMP)
					double_jump_timer = 20
					vsp = 2
					buffer = 30
					djumps += 1
					move_cooldown[AT_USPECIAL] = 25
					ai_debug_var = "Comfy DJ"
					exit;
				}else if(can_special && !has_used_fspecial){
					set_attack(AT_FSPECIAL)
					ai_debug_var = "Comfy Fspecial"
				}else if(has_used_fspecial && can_special && move_cooldown[AT_NSPECIAL] <= 0){
					set_attack(AT_NSPECIAL)
					ai_debug_var = "Comfy Nspecial"
				}else if(has_used_fspecial && can_special && move_cooldown[AT_NSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] <= 0){
					if(instance_exists(waterBomb) && waterBomb.state == 1){
						set_attack(AT_USPECIAL)
						ai_debug_var = "Comfy Uspecial"
					}else{
						if(has_airdodge){
							set_state(PS_AIR_DODGE)
							ai_debug_var = "Uncomfy Airdodge"
						}else{
							set_attack(AT_USPECIAL)
							ai_debug_var = "Uncomfy Uspecial"
						}
					}
				}else if(can_special && has_used_fspecial && move_cooldown[AT_NSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] > 0){
					set_attack(AT_USPECIAL)
					state_timer = 1
					ai_debug_var = "OOR Uspecial"
				}
			}else{
				if(can_special && waterBomb.state == 1 && waterBomb.current_owner = player){
					set_attack(AT_USPECIAL)
					ai_debug_var = "WB Uspecial"
				}else if(can_special && waterBomb.state != 1 && !has_used_fspecial){
					set_attack(AT_FSPECIAL)
					ai_debug_var = "Bad WB Fspecial"
				}else if(can_special && waterBomb.state != 1 && has_used_fspecial && move_cooldown[AT_DSPECIAL] <= 0){
					set_attack(AT_DSPECIAL)
					ai_debug_var = "Bad WB Dspecial"
				}else{	
					set_attack(AT_USPECIAL)
					ai_debug_var = "Bad WB OOR Uspecial"
				}
			}
		}else{
			if(can_special){
				if(djumps < 1){
					sound_play(asset_get("sfx_bubblemouth"))
					set_state(PS_DOUBLE_JUMP)
					double_jump_timer = 20
					vsp = 2
					buffer = 30
					ai_debug_var = "Panic DJ"
					move_cooldown[AT_USPECIAL] = 20
					exit;
				}
					
				if(!instance_exists(waterBomb) && move_cooldown[AT_NSPECIAL] <= 0){
					set_attack(AT_NSPECIAL)
					ai_debug_var = "Panic Nspecial"
				}else{
					set_attack(AT_USPECIAL)
					ai_debug_var = "Panic Uspecial"
					if(teleport && can_teleport){
						if(y < room_height - 20){
							vsp /= 2
						}else{
							vsp /= 4
						}
					}
				}
			}
		}
	}
	if(attack == AT_NSPECIAL){
		if(x < room_width / 2){
			spr_dir = 1
		}else{
			spr_dir = -1
		}
		if(state_timer < 30){
			special_down = true
		}
	}
	if(attack == AT_DSPECIAL){
		if(state_timer > 40){
			shield_pressed = true
		}
	}
	if(attack == AT_FSPECIAL){
		if(window_timer > 4 && (window == 1 || window == 2)){
			jump_pressed = true
		}
		if(x < room_width / 2){
			spr_dir = 1
		}else{
			spr_dir = -1
		}
	}
}

//Mechanics
if(last_attack != attack){
	last_attack = attack
}

if(run_jump > 0){
	can_jump = false
	can_move = false
	can_attack = false
	can_special = false
	can_strong = false
	can_shield = false
	can_ustrong = false
	if(run_jump > 10){
		if(state != PS_DASH_START && state != PS_DASH && state != PS_DASH_TURN){
			set_state(PS_DASH_START)
		}
		if(ai_target.x + 20 > x){
			right_down = true
			if(spr_dir == -1 && !free && state == PS_DASH){
				set_state(PS_DASH_TURN)
			}
		}else if(ai_target.x - 20 < x){
			left_down = true
			if(spr_dir == 1 && !free && state == PS_DASH){
				set_state(PS_DASH_TURN)
			}
		}else{
			run_jump = 7
		}
	}else if(run_jump == 7){
		if(state != PS_JUMPSQUAT && !free){
			set_state(PS_JUMPSQUAT)
		}else if(state != PS_DOUBLE_JUMP && free){
			set_state(PS_DOUBLE_JUMP)
		}
	}else if(run_jump < 7 && !free){
		if(state != PS_JUMPSQUAT && !free){
			set_state(PS_JUMPSQUAT)
		}
	}
	
	//10 frames before end of runjump they jump
	//10+ frames before they run
	//1 frame before end of runjump they attack with runjump move
}

if(last_hit_timer <= 0){
	last_move_hit = 0
}

if(free && run_jump > 0){
	run_jump = 0
}

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if(last_move != attack){
		last_move = attack
	}
	if(last_move != last_move_hit || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL){
		last_move_hit = 0
	}
}

if(on_edge > 0){
	if(distance_to_object(oPlayer) < 50 && can_attack){
		if(state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL)
		attack_pressed = true
	}
}

//Onstage
if(can_attack && !hitpause && !ai_recovering){
	
	if(last_move_hit == AT_DTILT || last_move_hit == AT_DAIR){
		if(abs(x - ai_target.x) < 40 && abs(y - ai_target.y) < 90){
			if(!free){
				set_attack(AT_USTRONG)
			}else{
				set_attack(AT_UAIR)
			}
			last_move_hit = 0
		}else if(abs(x - ai_target.x) < 60 && abs(y - ai_target.y) >= 90){
			if(!free){
				on_edge = 60
				jump_pressed = true
				jump_down = true
			}else{
				up_down = true
				if(ai_target.x > x){
					right_down = true
				}else{
					left_down = true
				}
			}
		}else if(can_move){
			run_jump = 20
			last_move_hit = 0
			on_edge = 60
		}
		
	}
	
	if(last_move_hit == AT_JAB){
		var randomizer = round(random_func_2(1, 3, false))
		if(randomizer == 0){
			set_attack(AT_DTILT)
		}else if(randomizer == 1){
			set_attack(AT_UTILT)
		}else if(randomizer == 2){
			set_attack(AT_FTILT)
		}else if(randomizer == 3){
			window = 4
			window_timer = 0
		}
	}
	
	if(last_move_hit == AT_FTILT && last_move == AT_FTILT || last_move_hit == AT_DSTRONG && last_move == AT_DSTRONG ||
	last_move_hit == AT_DATTACK && last_move == AT_DATTACK || last_move_hit == AT_FSPECIAL && last_move == AT_FSPECIAL ||
	last_move_hit == AT_UTILT && last_move == AT_UTILT){
		if(distance_to_object(ai_target) > 80){
			if(move_cooldown[AT_NSPECIAL] <= 0){
				set_attack(AT_NSPECIAL)
			}
		}else{
			on_edge = 20
		}
	}
	
	if(last_move == AT_NSPECIAL){
		if(instance_exists(waterBomb)){
			if(pointing_direction == 270){
				if(!free){
					if(waterBomb.x > x){
						spr_dir = 1
					}else{
						spr_dir = -1
					}
					var randomizer = round(random_func_2(4, 2, false))
					if(randomizer == 0){
						set_attack(AT_UTILT)
					}else if(randomizer == 1){
						set_attack(AT_FTILT)
					}else if(randomizer == 2){
						set_attack(AT_DSTRONG)
					}
				}else{
					if(djumps < 1){
						set_attack(AT_FAIR)
						double_jump_timer = 20
						djumps += 1
						sound_play(asset_get("sfx_bubblemouth"))
					}
				}
			}else if(pointing_direction == 90){
				jump_pressed = true
				attack_pressed = true
				up_down = true
				last_move = 0
			}
		}
	}
}

if(attack == AT_NSPECIAL && !ai_recovering){
	if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		if(window == 1){
			var randomizer = round(random_func_2(2, 1, false))
			var randomizer_2 = round(random_func_2(3, 1, false))
			if(ai_target.x > x){
				spr_dir = 1
			}else{
				spr_dir = -1
			}
		}
		if(distance_to_object(ai_target) < 150){
			if(randomizer == 1){
				if(ai_target.x - 80 > x){
					right_down = true
				}else if(ai_target.x + 80 < x){
					left_down = true
				}
			}
			if(ai_target.y + 80 < y){
				up_down = true
			}
		}else{
			right_down = false
			left_down = false
			up_down = false
			down_down = true
		}
	
		if(left_down || left_stick_down){
	        spr_dir = -1
	        if(up_down  || up_stick_down){
	            if(pointing_direction != 135){
	                pointing_direction = 135
	            }
	        }else if(down_down || down_stick_down){
	            if(pointing_direction != 225){
	                pointing_direction = 225
	            }
	        }else{
	            if(pointing_direction != 180){
	               pointing_direction = 180
	            }
	        }
	    }else if(right_down || right_stick_down){
	        spr_dir = 1
	        if(up_down || up_stick_down){
	            if(pointing_direction != 45){
	              pointing_direction = 45
	            }
	        }else if(down_down || down_stick_down){
	            if(pointing_direction != 315){
	               pointing_direction = 315
	            }
	        }else{
	            if(pointing_direction != 0){
	               pointing_direction = 0   
	            }
	        }
	    }else if(up_down || up_stick_down){
	        if(pointing_direction != 90){
	          pointing_direction = 90
	        }
	    }else if(down_down || down_stick_down){
	        if(pointing_direction != 270){
	           pointing_direction = 270
	        }
	    }
	}
}

if(instance_exists(waterBomb) && waterBomb.state == 1){
	neutral_attacks[4] = AT_DSPECIAL;
}else{
	neutral_attacks[4] = AT_NSPECIAL;
}

if(state == PS_DASH){
	if(random_func_2(5, 30, true) > 28){
		if(spr_dir == 1){
			set_state(PS_JUMPSQUAT)
			waveland = true
		}else{
			set_state(PS_JUMPSQUAT)
			waveland = true
		}
	}else if(random_func_2(5, 30, true) > 27 && distance_to_object(ai_target) < 60){
		set_state(PS_PARRY_START)
		if(spr_dir == 1){
			right_down = true
		}else{
			left_down = true
		}
	}
}

if(last_move_hit == AT_NAIR){
	if(attack == AT_NAIR && state == PS_ATTACK_AIR){
		if(window == 3 && !hitpause && has_hit_player){
			if(distance_to_object(ai_target) < 30 && vsp < 5){
				attack_pressed = true
			}
		}
	}
}

if(state == PS_ROLL_FORWARD){
	if(ai_target.x > x){
		right_down = true
	}else{
		left_down = true
	}
	attack_pressed = true
	waveland = false
}

if(state == PS_JUMPSQUAT || state == PS_FIRST_JUMP){
	if(waveland == true){
		if(spr_dir == 1){
			left_down = true
		}else{
			right_down = true
		}
		shield_pressed = true
	}
}

if(ai_target.state == PS_PARRY){
	if(ai_target.state_timer > 8){
		on_edge = 20
	}
}

if(state == PS_WAVELAND){
	if(waveland){
		waveland = false
		if(spr_dir == 1){
			hsp = -8
		}else{
			hsp = 8
		}
	}
}

if(instance_exists(hurricane)){
	if(hurricane.grabbedid != noone){
		if(distance_to_object(ai_target) > 50 && !ai_recovering){
			can_attack = false
			can_special = false
			can_strong = false
			can_ustrong = false
		}
		on_edge = 20
	}
}

if(attack == AT_DSPECIAL && !ai_recovering && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	if(distance_to_object(ai_target) > 70){
		if(ai_target.x > x){
			shield_pressed = true
			left_down = true
		}else{
			shield_pressed = true 
			right_down = true 
		}
	}else{
		if(super_armor){
			var randomizer = round(random_func_2(7, 30, false))
			if(randomizer > 28){
				if(ai_target.x > x){
					shield_pressed = true
					right_down = true
				}else{
					shield_pressed = true 
					left_down = true 
				}
				
			}
		}else{
			if(ai_target.x > x){
				shield_pressed = true
				left_down = true
			}else{
				shield_pressed = true 
				right_down = true 
			}
		}
			
	}
}

if(last_move_hit == AT_NSPECIAL){
	on_edge = 80
	last_move_hit = 0
}

if(ai_target.was_parried){
	if(ai_target.state == PS_PRATLAND){
		if(distance_to_object(ai_target) < 30 && can_strong && !ai_target.free){
			set_attack(AT_DSTRONG)
		}
	}
}

if(distance_to_object(ai_target) < 60){
	if(ai_target.state == PS_ATTACK_AIR && ai_target.state_timer > 2 || ai_target.state == PS_ATTACK_GROUND && ai_target.state_timer > 2){
		if(state != PS_PARRY_START && state != PS_PARRY && can_shield && !free){
			var randomizer = random_func_2(2, 50, true)
			if(randomizer > 45){
				set_state(PS_PARRY_START)
			}
		}
	}
}
if(state == PS_WALK && state_timer > 2){
	set_state(PS_DASH_START)
}

if(dtilt_waver < 0){
	dtilt_cooldown = round(random_func_2(1, 800, false))
	dtilt_waver += 2
}
if(dattack_waver < 0){
	dattack_cooldown = round(random_func_2(1, 800, false))
	dattack_waver += 2
}
if(fspecial_waver < 0){
	fspecial_cooldown = round(random_func_2(1, 800, false))
	fspecial_waver += 2
}

if(dtilt_cooldown > 0){
	far_side_attacks[2] = AT_JAB;
	mid_side_attacks[2] = AT_JAB;
	close_up_attacks[2] = AT_JAB;
	neutral_attacks[1] = AT_JAB;
}else{
	far_side_attacks[2] = AT_DTILT;
	mid_side_attacks[2] = AT_DTILT;
	close_up_attacks[2] = AT_DTILT;
	neutral_attacks[1] = AT_DTILT;
}
if(dattack_cooldown > 0){
	close_side_attacks[1] = AT_JAB;
	neutral_attacks[2] = AT_JAB;
	move_cooldown[AT_DATTACK] = 20
}else{
	close_side_attacks[1] = AT_DATTACK;
	neutral_attacks[2] = AT_DATTACK;
}
if(fspecial_cooldown > 0){
	far_side_attacks[0] = AT_JAB
	mid_side_attacks[1] = AT_JAB
}else{
	far_side_attacks[0] = AT_FSPECIAL;
	mid_side_attacks[1] = AT_FSPECIAL;
}

on_edge--
run_jump--
last_hit_timer--
buffer--