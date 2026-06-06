//
//
if (!is_oc) {
	if  (get_player_color(player) == 0) {
		set_ui_element( UI_CHARSELECT, sprite_get( "charselect_color" ));
	} else {
		set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));
	}
}

/*
print(hsp)


if (state_cat == SC_AIR_NEUTRAL && free) {
	if (abs(hsp) > air_max_speed) {
		hsp -= sign(hsp) * air_friction * 4;
	}
}
*/
if (!custom_clone) {
	//Respawn Plat
	if should_show_plat {
		if (hsp != 0 || vsp != 0) {
			should_show_plat = false;
		}
	}
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
	//if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
	if (!free || state == PS_WALL_JUMP) {
		if !fspecial_reset {
			move_cooldown[AT_FSPECIAL] = 0;
		} else {
			fspecial_reset -= 1
		}
	}	

	//Dspecial
	if (object_index != oTestPlayer && instance_exists(clone_player)) { //Code to stop crashing in test player
		if (instance_exists(miku_clone)) {
			if (!is_training_mode) { //training mode has no cooldown
				move_cooldown[AT_DSPECIAL] = 180;
			}
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
			//
			if (miku_clone.state == 3) { 
				clone_player.clone_active = true;
				clone_player.clone_die = true;
			}
			//
			if (clone_player.clone_die) {
				clone_attack_hold = false;	
				clone_player.clone_active = miku_clone.state_timer % 20 < 15;
				clone_player.invincible = true;
				clone_player.invince_time = 2;				
			} else {
				if !(clone_hit_timer) { //Not allowing clone to attack while on cooldown
					if (!clone_attack_hold) {
						if !((attack == AT_TAUNT_2 && is_oc) || attack == AT_DSPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_GRAB || attack == AT_GRAB_HOLD || attack == AT_PUMMEL || attack == AT_FTHROW_2 || attack == AT_BTHROW_2 || attack == AT_DTHROW_2 || attack == AT_UTHROW_2) {
							clone_player.clone_attack = attack
						} else {
							clone_player.clone_attack = 0
						}
					}
					if (!clone_attack_hold && !hitpause && clone_player.clone_attack &&
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
					/*
					clone_hit_timer -= 1;
					if (!clone_hit_timer) {
						spawn_hit_fx(clone_player.x, clone_player.y + 20, HFX_SHO_GEAR_BREAK);
						with clone_player {
							sound_play(asset_get("sfx_abyss_hazard_burst"));
						}
						clone_player.visible = false;
						clone_player.clone_active = false;
						instance_destroy(miku_clone)
						move_cooldown[AT_DSPECIAL] = 180 //120
						clone_attack_hold = false;
					}
					*/
				}
			}
		} else {
			clone_player.x = x;
			clone_player.y = y - 32;
			clone_player.clone_active = false;
		}
	} else {
		//OTestPlayer Hitbox View
		//custom_frame_advance();
	}
	
	
} else { //Clone Stuff
	//have_collision = false;
	//Leek Throw Clone
	#region Runes
	if (rune_rethrow && instance_exists(clone_owner.leak_proj) && place_meeting(x, y, clone_owner.leak_proj) && (clone_owner.leak_proj.leak_state == 1 || clone_owner.leak_proj.leak_state == 0)  && attack != AT_NSPECIAL && !clone_owner.clone_attack_hold && !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
		//instance_destroy(clone_owner.leak_proj)
		clone_owner.leak_proj.y += 2000;
		set_attack(AT_NSPECIAL)
	}
	#endregion
	/*
	if (clone_owner.clone_attack_hold) { //Has Attack or not
		outline_color = [100, 100, 100];
	} else {
		outline_color = [0, 0, 0];
	}
	*/
	soft_armor = 999;
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
	if (clone_owner.clone_hit_timer) {
		invincible = true;
		visible = true;
	}
}

if (state == PS_PRATFALL || state == PS_PRATLAND) {
	destroy_hitboxes();
}



if (instance_exists(grabbed_obj) && grabbed_obj != -4) {
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !(attack == AT_GRAB ||attack == AT_GRAB_HOLD || attack == AT_PUMMEL || attack == AT_FTHROW_2 || attack == AT_DTHROW_2 || attack == AT_BTHROW_2 || attack == AT_UTHROW_2)) {
		grabbed_obj = -4;
	} else {
		grabbed_obj.can_tech = false;
		grabbed_obj.can_wall_tech = false;
		grabbed_obj.hitpause = true;
		grabbed_obj.hitstop = true;
	}
}

if !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
	grabbed_obj = -4;
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
if (!custom_clone && !is_oc) {
	if (state == PS_IDLE && state_timer >= fspecial_once_cooldown) {
		if (state_timer == fspecial_once_cooldown) {
			sound_play(sound_get("veg_heaviest"))
		}
		suppress_stage_music( 0, 0.01 );
	} else {
		sound_stop(sound_get("veg_heaviest"))
	}
}
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


#region Cosmetic Stuff
//set_victory_theme( sound_get( "victory2" ));
if (get_training_cpu_action() != CPU_FIGHT) {
	is_training_mode = true;
	with oPlayer {
		if (url == "2561479115") {
			with other {
				if (instance_exists(clone_player) && clone_player) {
					instance_destroy(clone_player);
				}
			}
		}
	}
	//Rokesha Taunt
	if (!is_oc) {
		with oPlayer { //Miku
			if "reg_contents" in self {
				reg_contents[0,1] = t_prefixes[@ 0]+"HATSUNE MIKU";
				reg_contents[0,2] = t_prefixes[@ 1]+"ILLEGAL USE OF TECHNOLOGY";
				reg_contents[0,3] = t_prefixes[@ 2]+"CONFISCATE PROJECTOR";
				reg_contents[0,4] = "";
			}
		}
	} else {
		with oPlayer { //Brook
			if "reg_contents" in self {
				reg_contents[0,1] = t_prefixes[@ 0]+"BROOK LYNN";
				reg_contents[0,2] = t_prefixes[@ 1]+"DELIVERING A PIZZA 31 MINUTES AFTER ORDER";
				reg_contents[0,3] = t_prefixes[@ 2]+"GET A REFUND";
				reg_contents[0,4] = "";
			}
		}
	}
}

//Pizza Minigame
if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	pizza_game = false;
}
#endregion

//DELETE THIS
//custom_frame_advance();
/*
#define custom_frame_advance() {
	if (taunt_pressed) {
		clear_button_buffer( PC_TAUNT_PRESSED)
		test_frame_advance = !test_frame_advance;
		if (test_frame_advance) {
			old_hsp = hsp;
			old_vsp = vsp;
		} else {
			hsp = old_hsp;
			vsp = old_vsp;
		}
	}
	if test_frame_advance {
		vsp = 0;
		hsp = 0;
		if state_timer > 0 {
			state_timer -= 1;
		}
		if (window_timer > 0) {
			window_timer -= 1;
		} else {
			if (window > 1 && window_reset == true) {
				//set_num_hitboxes(attack, 0);
				//reset_num_hitboxes(attack);
				set_num_hitboxes(attack, 0);
				window_timer = get_window_value(attack, window - 1, AG_WINDOW_LENGTH) - 1;
				window -= 1;
				with pHitBox {
					if (hitbox_timer > 0) {
						hitbox_timer -= 1;
					}
				}
			}
		}
		with pHitBox {
			if (hitbox_timer > 0) {
				hitbox_timer -= 1;
			}
			hsp = 0;
			vsp = 0;
		}
	}
	if (shield_pressed) {
		clear_button_buffer( PC_SHIELD_PRESSED);
		x += old_hsp;
		y += old_vsp;
		old_vsp += gravity_speed;
		window_timer += 1;
		state_timer += 1; 
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			reset_num_hitboxes(attack);
			window_reset = false;
			window += 1;
			window_timer = 0;
			with pHitBox {
				length += 1;
				print(length);
			}
		} else {
			window_reset = true;
		}
		with pHitBox {
			hitbox_timer += 1;
		}
	}
}
*/
#define collect_leek() {
	sound_play(asset_get("sfx_diamond_small_collect"))
	spawn_hit_fx( x, y,  other.leak_vfx_big );
	//other.move_cooldown[AT_FSPECIAL] = 0;
	instance_destroy(self);
}