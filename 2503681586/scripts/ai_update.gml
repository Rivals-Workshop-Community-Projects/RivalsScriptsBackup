/*
Credits to Bernard
Discord: BernardO#8353
Twitter: TrueBRTK
*/
if army_leader.armySpecial = 1 && clownState == 0  {
	move_cooldown[AT_FSPECIAL] = 2
	move_cooldown[AT_DSPECIAL] = 2
	move_cooldown[AT_NSPECIAL] = 2
} 



if nana_state != ai_states.ES_AIRDODGE {
	dodgeTime = 0
}

if is_nana && "is_bubble" !in self {
	
	if get_gameplay_time() < 120 {
		state = PS_IDLE
		x = army_leader.x - army_leader.spr_dir * 48
		y = army_leader.y
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
	} else {
	//imitating inputs
		if is_nana{
			if nana_state != 6 {
				if place_meeting(x, y, army_leader.bubble) && army_leader.bubble.bubbleState = 1 && (clownState == 1 || (attack == AT_FSPECIAL_2 && state == PS_ATTACK_AIR && window > 3) || (attack == AT_DSPECIAL_2 && state == PS_ATTACK_AIR && window = 3)) {
					if attack != AT_DSPECIAL_2 {
						state = PS_IDLE
						clownState = 0
						army_leader.bubble.bubbleState = 0
						sound_play(asset_get("sfx_orca_absorb"))
					} else {
						destroy_hitboxes();
						window = 4
						window_timer = 0	
						army_leader.bubble.bubbleState = 0
					}
				}
				
				if 
				(
				army_leader.attack == AT_USPECIAL 
				&& (army_leader.state == PS_ATTACK_AIR || army_leader.state == PS_ATTACK_GROUND)
				&& free
				&& x < army_leader.x + 128
				&& x > army_leader.x - 128
				&& y < army_leader.y
				&& abs(vsp) < 8
				&& y >  96
				&& !hitpause
				&& !army_leader.down_down
				)
				{
					vsp -= 1
				}
			}
			
			init_shader();
			army_xfollow = army_leader.x * army_leader.spr_dir; //point to follow to
			army_distx = abs(army_leader.x - x);
			army_disty = abs(army_leader.y - y);
			enum ai_states{ //states if nana is close to the player or far away & returning
				ES_ARMY = 1,
				ES_GOBACK = 2,
				ES_AIRDODGE = 3,
				ES_CONTROL = 4,
				ES_RESPAWN = 5,
				ES_DEAD = 6,
			}
			switch(nana_state) {
			case ai_states.ES_ARMY:  //if close, do player's imputs
				//
				if clownState == 0 {
					move_cooldown[AT_USPECIAL] = (!free || (y < army_leader.y + 32) ) * 2
					if !((army_leader.state = PS_ATTACK_AIR || army_leader.state = PS_ATTACK_GROUND) && !(army_leader.attack = AT_NSPECIAL || army_leader.attack = AT_DSPECIAL || army_leader.attack = AT_FSPECIAL || army_leader.attack = AT_USPECIAL)) {
						move_cooldown[AT_FSPECIAL] = 2
						move_cooldown[AT_DSPECIAL] = 2
						move_cooldown[AT_NSPECIAL] = 2
					}
				}
				
				
				if !(army_leader.clownSet == 1 && !(army_leader.attack == AT_TAUNT && army_leader.state == PS_ATTACK_GROUND)) { //Hold Taunt during an attack to make clownfish not attack
					if clownControl == 1 {
						nana_state = ai_states.ES_CONTROL
					}
				
					left_pressed = army_leader.left_pressed;
					left_down = army_leader.left_down;
					left_hard_pressed = army_leader.left_hard_pressed;
					right_pressed = army_leader.right_pressed;
					right_down = army_leader.right_down;
					right_hard_pressed = army_leader.right_hard_pressed;
					up_pressed = army_leader.up_pressed;
					up_down = army_leader.up_down;
					up_hard_pressed = army_leader.up_hard_pressed;
					down_pressed = army_leader.down_pressed;
					down_down = army_leader.down_down;
					down_hard_pressed = army_leader.down_hard_pressed;
					jump_pressed = army_leader.jump_pressed;
					jump_down = army_leader.jump_down;
					if (!free || army_leader.state = PS_ATTACK_AIR || army_leader.state = PS_ATTACK_GROUND) {
						shield_pressed = army_leader.shield_pressed;
						shield_down = army_leader.shield_down;
					}

					//
					if clownState == 1 && !(army_leader.kashControl) {
						nana_state = ai_states.ES_GOBACK;
					}
					
					if 
					!(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR || army_leader.state == PS_ATTACK_AIR|| army_leader.state == PS_ATTACK_GROUND) && ((army_leader.state == PS_CROUCH && army_leader.state_timer > 15) || (y > room_height * army_leader.returnRatio) || (x > room_width * army_leader.returnRatioX) || (x < room_width * (1 - army_leader.returnRatioX)) || (x > army_leader.x + army_leader.returnMoneX) || (x < army_leader.x - army_leader.returnMoneX) ) {
						if army_leader.spr_dir == 1 {
							army_xfollow = army_leader.x - 15 * army_leader.spr_dir
							//x = lerp(x,army_xfollow,0.015);
						} else {
							army_xfollow = army_leader.x - 35 * army_leader.spr_dir
							//x = lerp(x,army_xfollow,0.015);
						}
						if army_disty < 35 {
							y = lerp(y,army_leader.y,0.005);
						}
						if (army_distx > army_return_xdist || army_disty > army_return_ydist) {
							nana_state = ai_states.ES_GOBACK;
						}
					}
				}
		break;
		case ai_states.ES_GOBACK: //move towards player
				
				
				
				if clownState == 0 {
					move_cooldown[AT_USPECIAL] = (!free || (y < army_leader.y - 48) ) * 2
					move_cooldown[AT_FSPECIAL] = 2
					move_cooldown[AT_DSPECIAL] = 2
					move_cooldown[AT_NSPECIAL] = 2
				}
		
				if !(army_leader.kashControl) {
					left_down = army_leader.x < x;
					right_down = !left_down;
					left_hard_pressed = left_down && army_distx > 65;
					right_hard_pressed = right_down && army_distx > 65
					jump_pressed = army_leader.y < y && army_disty > 85;
					down_hard_pressed = army_leader.y > y && army_disty > 25 && !free;
					if !has_airdodge && !has_walljump {
						if  state != PS_ATTACK_AIR && state_cat != SC_HITSTUN && state != PS_PRATFALL && vsp > -1 && !(y < room_height * returnRatio) {
							set_attack(AT_USPECIAL)
							//clownState = 1
						}
					}
					
					if army_distx <= army_return_xdist && army_disty <= army_return_ydist { //return to army mode if close enough
						forcefulRecovery = 0
						nana_state = ai_states.ES_ARMY
					}
			} else {
				nana_state = ai_states.ES_CONTROL
			}
			
			if (state == PS_PRATFALL) || (state_cat == SC_HITSTUN) {
				if (x > room_width / 2) {
					left_down = 1
				} else {
					right_down = 1
				}
			}
		break;
		case ai_states.ES_AIRDODGE: 
			if clownState == 0 {
				move_cooldown[AT_USPECIAL] = (!free || (y < army_leader.y - 48) ) * 2
				move_cooldown[AT_FSPECIAL] = 2
				move_cooldown[AT_DSPECIAL] = 2
				move_cooldown[AT_NSPECIAL] = 2
			}
			if state == PS_AIR_DODGE {
				switch(dodgeDir) {
						case 0:
						vsp = 0
						hsp = 0
					break;
						case 1:
						vsp = -1 * air_dodge_speed * sin(45)
						hsp = air_dodge_speed * sin(45)
					break;
						case 2:
						vsp = 0
						hsp = air_dodge_speed
					break;
						case 3:
						vsp = air_dodge_speed * sin(45)
						hsp = air_dodge_speed * sin(45)
					break;
						case 4:
						vsp = air_dodge_speed
						hsp = 0
					break;
						case 5:
						vsp = air_dodge_speed * sin(45)
						hsp = -1 * air_dodge_speed * sin(45)
					break;
						case 6:
						vsp = 0
						hsp = -1 *  air_dodge_speed
					break;
						case 7:
						vsp = -1 * air_dodge_speed * sin(45)
						hsp = -1 * air_dodge_speed * sin(45)
					break;
						case 8:
						vsp =  -1 *  air_dodge_speed
						hsp = 0
					break;
				}
			}
			dodgeTime -= 1
			if dodgeTime < 0 || !free {
				if clownControl == 1 {
					nana_state = ai_states.ES_CONTROL
				} else {
					nana_state = ai_states.ES_ARMY
				}
				dodgeTime = 0
			}

		break;
		case ai_states.ES_CONTROL:
				if (army_disty > clownRadius ||  army_distx > clownRadius) {
					nana_state = ai_states.ES_GOBACK
				}
				if !(  //Have the ! on the most outside edge of this (Methods of control)
				(army_leader.state = PS_ATTACK_GROUND && army_leader.attack = AT_TAUNT) 
				|| ((army_leader.state = PS_ATTACK_GROUND ||army_leader.state = PS_ATTACK_AIR ) && army_leader.attack = AT_NSPECIAL) 
				)  {
					nana_state = ai_states.ES_GOBACK
					clownControl = 0
					break;
				}
				
				if clownState == 0 {
					if army_leader.attack = AT_NSPECIAL {
						if !army_leader.taunt_down {
							move_cooldown[AT_NSPECIAL] = 7
						} else {
							move_cooldown[AT_NSPECIAL] = 0
						}
					}
				}

				left_pressed = army_leader.left_pressed;
				left_down = army_leader.left_down;
				left_hard_pressed = army_leader.left_hard_pressed;
				right_pressed = army_leader.right_pressed;
				right_down = army_leader.right_down;
				right_hard_pressed = army_leader.right_hard_pressed;
				up_pressed = army_leader.up_pressed;
				up_down = army_leader.up_down;
				up_hard_pressed = army_leader.up_hard_pressed;
				down_pressed = army_leader.down_pressed;
				down_down = army_leader.down_down;
				down_hard_pressed = army_leader.down_hard_pressed;
				jump_pressed = army_leader.jump_pressed;
				jump_down = army_leader.jump_down;
				shield_pressed = army_leader.shield_pressed;
				shield_down = army_leader.shield_down;

		break;
		case ai_states.ES_RESPAWN:
			invincible = 1
			invince_time = 90
			x = army_leader.x
			y = army_leader.y
			vsp = 0
			hsp = 0
			if abs(army_leader.vsp) > .5 || abs(army_leader.hsp) > .5 {
				nana_state = ai_states.ES_GOBACK
			}
			
			attack = 0
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
			down_down = 1;
			down_hard_pressed = 0;
			jump_pressed = 0;
			jump_down = 0;
			shield_pressed = 0;
			shield_down = 0;
			
			
		break;
		case ai_states.ES_DEAD:
			if state != PS_RESPAWN {
				state = PS_IDLE
				attack = 0
			}
			hsp = 0
			vsp = 0
			clownState = 0
			if army_leader.x < 128 {
				x = 128
			} else {
				if army_leader.x > room_width - 128 {
					x = room_width - 128
				} else {
					x = army_leader.x
				}
			}
			
			if army_leader.y < 256 {
				y = 256
			} else {
				if army_leader.y > room_height - 96 {
					y = room_height  - 96
				} else {
					y = army_leader.y - 24
				}
			}			

			attack = 0
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
			down_down = 1;
			down_hard_pressed = 0;
			jump_pressed = 0;
			jump_down = 0;
			shield_pressed = 0;
			shield_down = 0;
			
		break;
		default:
		break;
		}

		if (free) && shield_pressed && dodgeTime = 0 && ((state_cat != SC_HITSTUN && nana_state !=  ai_states.ES_RESPAWN) || (army_leader.state = PS_ATTACK_AIR || army_leader.state = PS_ATTACK_GROUND)) {
			nana_state = ai_states.ES_AIRDODGE
			dodgeTime += 20
			dodgeDir = 
			1 *	(right_down * !left_down * up_down * !down_down) + //Up Right
			2 * 	(right_down * !left_down * !up_down * !down_down) + //Right
			3 * 	(right_down * !left_down * !up_down * down_down) +  //Down Right
			4 * 	(!right_down * !left_down * !up_down * down_down) + //Down
			5 * 	(!right_down * left_down * !up_down * down_down) + //Down Left
			6 * 	(!right_down * left_down * !up_down * !down_down) + //Left
			7 * 	(!right_down * left_down * up_down * !down_down) + //Up Left
			8 * 	(!right_down * !left_down * up_down * !down_down); //Up
		}

			if ((x > room_width * army_leader.returnRatioX) || (x < room_width * (1 - army_leader.returnRatioX))) && !army_leader.kashControl {
				forcefulRecovery = 1
			}
			//attack, specials & strongs inputs
			//
			if nana_state !=  ai_states.ES_RESPAWN && nana_state !=  ai_states.ES_DEAD {
				if forcefulRecovery == 0 {
				attack_pressed = army_leader.attack_pressed;
				attack_down = army_leader.attack_down;
				special_pressed = army_leader.special_pressed;
				special_down = army_leader.special_down;
				left_strong_pressed = army_leader.left_strong_pressed;
				left_strong_down = army_leader.left_strong_down;
				right_strong_pressed = army_leader.right_strong_pressed;
				right_strong_down = army_leader.right_strong_down;
				up_strong_pressed = army_leader.up_strong_pressed;
				up_strong_down = army_leader.up_strong_down;
				down_strong_pressed = army_leader.down_strong_pressed;
				down_strong_down = army_leader.down_strong_down;
				left_stick_pressed = army_leader.left_stick_pressed;
				left_stick_down = army_leader.left_stick_down;
				right_stick_pressed = army_leader.right_stick_pressed;
				right_stick_down = army_leader.right_stick_down;
				up_stick_pressed = army_leader.up_stick_pressed;
				up_stick_down = army_leader.up_stick_down;
				down_stick_pressed = army_leader.down_stick_pressed;
				down_stick_down = army_leader.down_stick_down;
				strong_down = army_leader.strong_down;
				} else {
					if army_leader.kashControl {
						forcefulRecovery = 0
					} else {
						nana_state = ai_states.ES_GOBACK
					}
				}
			}
			//
		}
	}
	
	if army_leader.anemoneGrab == self {
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
	
	
}




if "is_bubble" in self {
	
	if bubbleState == 0 {
		
		if army_leader.x < room_width * (1 - army_leader.returnRatioX) {
			x = room_width * (1 - army_leader.returnRatioX)
		} else {
			if army_leader.x > room_width * (army_leader.returnRatioX) {
				x = room_width * (army_leader.returnRatioX)
			} else {
				x = army_leader.x
			}
		}
		
		if army_leader.y < 256 {
			y = 256
		} else {
			if army_leader.y > room_height - 96 {
				y = room_height  - 96
			} else {
				y = army_leader.y - 24
			}
		}			
				
		spr_dir = 0
		char_height = 1000
	} else {
		spr_dir = 1
		char_height = 64
	}

	knockback_adj = 0
	if y < 360 {
		y += 4
	} else {
		if y > room_height - 32 {
			y -= 4
		}
	}
	
	if x < 64 {
		x += 4
	} else {
		if x > room_width - 64 {
			x -= 4
		}
	}
	
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















/* My Code (Just in case I need it later)

if custom_clone {
	disable_ai = false


	right_down = clones_player_id.right_down
	left_down = clones_player_id.left_down
	down_down = clones_player_id.down_down
	up_down = clones_player_id.up_down
	
	right_pressed = clones_player_id.right_pressed
	left_pressed = clones_player_id.left_pressed
	down_pressed = clones_player_id.down_pressed
	up_pressed = clones_player_id.up_pressed
	

	left_hard_pressed = clones_player_id.left_hard_pressed
	right_hard_pressed = clones_player_id.right_hard_pressed
	up_hard_pressed = clones_player_id.up_hard_pressed
	down_hard_pressed = clones_player_id.down_hard_pressed

	right_down = clones_player_id.right_down
	left_down = clones_player_id.left_down
	down_down = clones_player_id.down_down
	up_down = clones_player_id.up_down

	
	right_strong_pressed = clones_player_id.right_strong_pressed
	left_strong_pressed = clones_player_id.left_strong_pressed
	down_strong_pressed = clones_player_id.down_strong_pressed
	up_strong_pressed = clones_player_id.up_strong_pressed
	
	right_strong_down = clones_player_id.right_strong_down
	left_strong_down = clones_player_id.left_strong_down
	down_strong_down= clones_player_id.down_strong_down
	up_strong_down = clones_player_id.up_strong_down

	right_stick_pressed = clones_player_id.right_stick_pressed
	left_stick_pressed = clones_player_id.left_stick_pressed
	down_stick_pressed = clones_player_id.down_stick_pressed
	up_stick_pressed = clones_player_id.up_stick_pressed
	
	right_stick_down = clones_player_id.right_stick_down
	left_stick_down = clones_player_id.left_stick_down
	down_stick_down = clones_player_id.down_stick_down
	up_stick_down = clones_player_id.up_stick_down
	
	attack_pressed = clones_player_id.attack_pressed
	special_pressed = clones_player_id.special_pressed
	jump_pressed = clones_player_id.jump_pressed
	shield_pressed = clones_player_id.shield_pressed
	taunt_pressed = clones_player_id.taunt_pressed
	
	attack_down= clones_player_id.attack_down
	special_down= clones_player_id.special_down
	jump_down= clones_player_id.jump_down
	shield_down= clones_player_id.shield_down
	taunt_down= clones_player_id.taunt_down

	
}
*/