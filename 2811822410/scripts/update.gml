//Miku Trailer!
/*
with oPlayer {
	if (player != other.player) {
		if (url == CH_KRAGG) {
			if state == PS_IDLE {
				spr_dir *= -1;
				state = PS_WALK_TURN;
			}
		} else {
			if state == PS_IDLE {
				set_attack(AT_TAUNT)
			}
		}
		if get_gameplay_time() > 600 {
			set_player_damage(player, 150)
		}
	}
}
*/

if (!custom_clone) {
	#region //Rioku's Strong Buffer for neutral strong input-----------------------------
	if(strong_down and strong_buffer <= 0 and !strong_was_pressed){
		strong_buffer = 6;
		strong_pressed = true;
		strong_was_pressed = true;
	} else if(!strong_down){
		strong_was_pressed = false;
	} else if (strong_buffer > 0){
		strong_buffer--;
		if(strong_buffer <= 0){
			strong_pressed = false;
		}
	}
	#endregion
	
	if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
		move_cooldown[AT_FSPECIAL] = 0;
	}	

	//Dspecial
	if (object_index != oTestPlayer){ //Code to stop crashing in test player
		if (instance_exists(miku_clone)) {
			if (clone_player.state != PS_ATTACK_AIR) {
				clone_player.spr_dir = miku_clone.spr_dir;
			}
			clone_player.vsp = 0;
			clone_player.hsp = 0;
			clone_player.x = miku_clone.x + miku_clone.spr_dir * 2;
			clone_player.y = miku_clone.y - 32;
			if (miku_clone.state == 2) {
				clone_player.clone_active = true;
			} else {
				clone_player.clone_active = false;
			}
			if (!clone_attack_hold) {
				if !(attack == AT_DSPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL) {
					clone_player.clone_attack = attack
				} else {
					clone_player.clone_attack = 0
				}
			}
			if (!clone_attack_hold && clone_player.clone_attack &&
				(attack_down || up_strong_down || right_strong_down || down_strong_down || left_strong_down || up_stick_down || right_stick_down || down_stick_down || left_stick_down || strong_down || taunt_down)
				&& clone_player.state != PS_ATTACK_AIR)
			{
				if (attack_down) {
					clone_attack_hold_type = 1;
				} else if (up_strong_down) {
					clone_attack_hold_type = 2;
				}	else if (right_strong_down) {
					clone_attack_hold_type = 3;
				} else if (down_strong_down) {
					clone_attack_hold_type = 4;
				} else if (left_strong_down) {
					clone_attack_hold_type = 5;
				} else if (up_stick_down) {
					clone_attack_hold_type = 6;
				}	else if (right_stick_down) {
					clone_attack_hold_type = 7;
				} else if (down_stick_down) {
					clone_attack_hold_type = 8;
				} else if (left_stick_down) {
					clone_attack_hold_type = 9;
				} else if (strong_down) {
					clone_attack_hold_type = 10;
				} else if (taunt_down) {
					clone_attack_hold_type = 11;
				}
				
				clone_attack_hold = true;
			}
			if (
				(clone_attack_hold) && 
					(
						(!attack_down && clone_attack_hold_type == 1) ||
						//Strongs
						(!up_strong_down && clone_attack_hold_type == 2) ||
						(!right_strong_down && clone_attack_hold_type == 3) ||
						(!down_strong_down && clone_attack_hold_type == 4) ||
						(!left_strong_down && clone_attack_hold_type == 5) ||
						//Stick
						(!up_stick_down && clone_attack_hold_type == 6) ||
						(!right_stick_down && clone_attack_hold_type == 7) ||
						(!down_stick_down && clone_attack_hold_type == 8) ||
						(!left_stick_down && clone_attack_hold_type == 9) ||
						//Neutrla strong
						(!strong_down && clone_attack_hold_type == 10) ||
						//Tautns
						(taunt_down && clone_attack_hold_type == 11) 
					)
				) {
				clone_attack_hold = false;
				with (clone_player) {
					set_attack(clone_attack);				
				}			
			}
		} else {
			clone_player.x = x;
			clone_player.y = y - 32;
			clone_player.clone_active = false;
		}
	}

	if (instance_exists(leak_proj)) {
		with (leak_proj) {
			if (was_parried) {
				leak_state = 3
				leak_state_timer = 0
			}
			leak_state_timer += 1;
			//print(leak_state)
			switch(leak_state) {
				case 0: //init
					hsp = lerp(hsp, 0, .05)
					if (abs(hsp) <= 1) {
						hsp = 0;
						leak_state = 1;
						leak_state_timer = 0;
					}
					image_index += .34
					if (image_index  >= 6) {
						image_index = 2;
					}
					for (i = 0; i < 4; i++) {
						if (i != other.player) {
							can_hit[i] = 1;
						}
					}
				break;
				case 1: //Constant
					if (other.special_down) {
						image_index += .34
						if (image_index  >= 6) {
							image_index = 2;
						}
						for (i = 0; i < 4; i++) {
							if (i != other.player) {
								can_hit[i] = 1;
							}
						}
					} else {
						for (i = 0; i < 4; i++) {
							can_hit[i] = 0;
						}
						image_index = 6
						leak_state = 2;
						leak_state_timer = 0;
						image_xscale = 0.01;
						image_yscale =  0.01;
					}
				break;
				case 2: //Swing
					//print(leak_state_timer)
					if (leak_state_timer == 1) { //Hitbox init
						with (other) {
							other.damage = get_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
							other.kb_angle = get_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE);
							other.kb_value = get_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK);
							other.kb_scale = get_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING);
							other.hitpause = get_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE);
							other.hitpause_growth = get_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING);
							other.hit_effect =  HFX_MAY_LEAF_HUGE;
						}

					}
					if (leak_state_timer % 6 == 5) {
						image_index += 1;
					}
					if (leak_state_timer == 5) {
						image_xscale = 0.4;
						image_yscale =  0.3;
						sound_play(asset_get("sfx_swipe_medium1"))
						for (i = 0; i < 4; i++) {
							if (i != other.player) {
								can_hit[i] = 1;
							}
						}
					} 
					if (image_index == 8) {
						for (i = 0; i < 4; i++) {
							can_hit[i] = 0;
						}
						image_xscale = .1;
						image_yscale =  .1;
					}
					if (leak_state_timer == 24) {
						leak_state = 3;
						leak_state_timer = 0;
					}
				break;
				case 3: //Return
					for (i = 0; i < 4; i++) {
						can_hit[i] = 0;
					}
					image_index = 10
					image_angle = point_direction(x, y, other.x, other.y - (other.char_height / 2))
					x = lerp(x, other.x, .2)
					y = lerp(y, other.y - (other.char_height / 2), .2)
					if (place_meeting(x, y, other)) {
						print("Leak Died")
						hitbox_timer = length;
					}
				break;
				default:
				break;
			}
		}
	}
} else { //Clone Stuff
	//have_collision = false;
	force_depth = true;
	depth = 0;
	free = false;
	go_through = true;
	fall_through = true;
	draw_indicator = false;
	if (clone_active) {
		invincible = false;
		visible = true;
	} else {
		invincible = true;
		visible = false;
		set_state(PS_IDLE);
	}
}

if (state == PS_PRATFALL || state == PS_PRATLAND) {
	destroy_hitboxes();
}

if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	attack = 0;
}

//Debug code

/*
with pHitBox {
	print("Can: " + string(can_hit) + ", Attack: " + string(attack) + ", Num: " + string(hbox_num))
}	
*/
//print(attack);

#region //Rainbow Alt Stuff
init_shader();
if (get_gameplay_time() % color_timer == 0) {
	switch(color_type) {
		case 0: //Red Stay, Green Up
			color_g += 1;
			if (color_g >= 255) {
				color_g = 255;
				color_type += 1;
			}
		break;
		case 1: //Green Stay, Red Down
			color_r -= 1;
			if (color_r <= 0) {
				color_r = 0;
				color_type += 1;
			}
		break;
		case 2: //Green Stay, Blue Up
			color_b += 1;
			if (color_b >= 255) {
				color_b = 255;
				color_type += 1;
			}
		break;
		case 3: //Blue Stay, Green Down  
			color_g -= 1;
			if (color_g <= 0) {
				color_g = 0;
				color_type += 1;
			}
		break;
		case 4: //Blue Stay. Red Up
			color_r += 1;
			if (color_r >= 255) {
				color_r = 255;
				color_type += 1;
			}
		break;
		case 5: //Red Stay, Blue Down
			color_b -= 1;
			if (color_b <= 0) {
				color_b = 0;
				color_type = 0;
			}
		break;
		default:
		break;
	}
}
//print(string(color_r) + ", " + string(color_g) + ", " + string(color_b))
#endregion