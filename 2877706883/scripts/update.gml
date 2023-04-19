//
//Tap Jump Support
if (state == PS_CROUCH) {
	tap_jump_crouch_timer = 8;
} else {
	if (tap_jump_crouch_timer) {
		tap_jump_crouch_timer -= 1;
	}
}

if (item_disp != -4) { //Practice Mode
	if (taunt_pressed && down_down) { //Show Item Rates
		item_disp = !item_disp;
		sound_play(asset_get("mfx_option"));	
		clear_button_buffer( PC_TAUNT_PRESSED );	
	}
	if (taunt_down) { //Force Item
		if (item_force == -4) {
			item_force = 0;
		}
		if (left_pressed) {
			if (item_force == 0) {
				item_force = items_max;
			} else {
				item_force--
			}
			clear_button_buffer( PC_LEFT_STICK_PRESSED );	
			if (allow_sounds) { 
				sound_play(sound_get("PageFlip"));	
			} else {
				sound_play(asset_get("mfx_option"));	
			}
		}
		if (right_pressed) {
			if (item_force == items_max) {
				item_force = 0;
			} else {
				item_force++
			}
			clear_button_buffer( PC_RIGHT_STICK_PRESSED );	
			if (allow_sounds) { 
				sound_play(sound_get("PageFlip"));	
			} else {
				sound_play(asset_get("mfx_option"));	
			}
		}
	}
}
//Plat
if should_show_plat {
	if (hsp != 0 || vsp != 0) {
		should_show_plat = false;
	}
}

#region Float
if (djumps && ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) || (state == PS_DOUBLE_JUMP && state_timer >= 3))) {
	djump_protection = true;	
}
if (!(state_cat == SC_AIR_NEUTRAL || state == PS_ATTACK_AIR || (state == PS_AIR_DODGE && state_timer <= 1)) && in_flight) {
	in_flight = false;
	can_fly = false;
}
if (!free) {
	if  !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
		flight_fuel = flight_fuel_max;
		can_fly = true;
		has_flown = false;
		in_flight = false;
		djump_protection = false;
	}
} else {
	if (((jump_down || (can_tap_jump() && up_down)) && state_timer >= 2) && can_fly && state_cat != PS_HITSTUN && flight_fuel && ((vsp >= 0) || down_down || (can_tap_jump() && (tap_jump_crouch_timer || down_hard_pressed))) && (state_cat == SC_AIR_NEUTRAL || state == PS_ATTACK_AIR) && !hitpause) {
		in_flight = true;
		can_fly = false;
		if ((jump_pressed || (tap_jump_pressed && can_tap_jump())) && (down_down || (can_tap_jump() && (tap_jump_crouch_timer || down_hard_pressed))) && !djump_protection) { //Get djump back on float
			djumps = 0;
		}
	}
	if (in_flight && state != PS_AIR_DODGE && !(attack == AT_USPECIAL && window <= 3 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))) {
		if !has_flown {
			fly_sfx();
		}
		has_flown = true;
		flight_fuel  -= 1;
		vsp = 0;
	}
}

if (in_flight && !(jump_down || (can_tap_jump() && up_down))) || (!flight_fuel) {
	in_flight = false;
	can_fly = false;
}

if (!in_flight) {
	sound_stop(sound_get("BeeFly"));
	sound_stop(sound_get("BeeFly2"));
	sound_stop(asset_get("sfx_clairen_tip_loop"));
}
#endregion

if (!free) {
	needle_once_per = 0;
}

//vi_uspecial_set_di_time = 0;
//vi_uspecial_set_player_id = 0;
//USPECIAL SET DIRECTION AND KNOCKBACK
with oPlayer {
	// && last_attack == AT_USPECIAL && last_player == other.player && last_hbox_num == 1
	if (id != other.id) { 
		//print(vi_uspecial_set_player_id)
		//print(other.id)
		if (vi_uspecial_set_player_id == other.id) {
			if (!hitpause) {
				hsp = other.spr_dir * 3.5;	
				vsp = -13;	
				vi_uspecial_set_player_id = -4;
				//print("DI DI DI")			
			} 
		}
	}
}

//Item
if (item_regrab_timer) {
	item_regrab_timer--;
}
if (has_item) {
	item_regrab_timer = 15;
} 

if ((hsp != 0 || vsp != 0) || !free) {
	z_hsp = hsp;
	z_vsp = vsp;	
}	 

//Glide toss


if (has_item && (state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) && state_timer <= 6) {
	if (attack_pressed || special_pressed || left_stick_pressed || up_stick_pressed || right_stick_pressed || down_stick_pressed || left_strong_pressed || up_strong_pressed || right_strong_pressed || down_strong_pressed) {
		hurtboxID.dodging = false;
		//Directional Throws (They aren't throws cause rivals has a bug where setting it to FTHROW doesn't remove my airdodge invincibility)
		if ((left_down && attack_pressed || special_pressed) || left_stick_pressed || left_strong_pressed) {
			if (spr_dir == 1) {
				set_attack(AT_BAIR);	
			} else {
				set_attack(AT_FAIR);	
			}
		}
		if ((right_down && attack_pressed || special_pressed) || right_stick_pressed || right_strong_pressed) {
			if (spr_dir == 1) {
				set_attack(AT_FAIR);	
			} else {
				set_attack(AT_BAIR);	
			}
		}
		if ((up_down && attack_pressed || special_pressed) || up_stick_pressed || up_strong_pressed) {
			set_attack(AT_UAIR);			
		}
		if ((down_down && attack_pressed || special_pressed) || down_stick_pressed || down_strong_pressed) {
			set_attack(AT_DAIR);			
		}
		//
		invince_timer = 0;
		if (free) {
			has_airdodge = false;
		}
	}
}

if (shield_pressed && has_item && !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND || state_cat == SC_HITSTUN)) {
	if (!joy_pad_idle) {//Prevents parry drops
		if (free) {
			if (state == PS_FIRST_JUMP) {
				var item_thrown = create_hitbox(AT_DSPECIAL, has_item, x, y - 24);
				item_thrown.image_index = has_item - 1;
				//	
				has_item = false;	
				sound_play(sound_get("item_desert"))
			}
		}
	} else if (free && state != PS_JUMPSQUAT) { //Z-Drop
		var item_thrown = create_hitbox(AT_DSPECIAL, has_item, x, y - 24);
		item_thrown.image_index = has_item - 1;
		//	
		has_item = false;	
		sound_play(sound_get("item_desert"))
		
		hsp = z_hsp;
		vsp = z_vsp;
		//print(prev_state);
		//print(PS_FIRST_JUMP);
		if (state == PS_AIR_DODGE) {
			set_state( PS_IDLE );
		} 
		
		
		clear_button_buffer( PC_SHIELD_PRESSED );
		clear_button_buffer( PC_JUMP_PRESSED );
		sound_stop(asset_get("sfx_quick_dodge"));
	}
}


switch(has_item) {
	case 0: //Holding Nothing
		if (walk_speed != 3 && !item_regrab_timer) {
			if (!hitpause) {
				if (allow_sounds) {
					sound_play(sound_get("StatDown"))
				} else {
					sound_play(asset_get("sfx_shop_close"))
				}
			}
			dust_down = spawn_dust_fx( x + spr_dir * 40, y - 80, sprite_get("StatDown"), 12 );
			dust_down.timer = 0;
			
			walk_speed = 3; 
			walk_accel = .5;
			initial_dash_speed = 5.5;
			dash_speed = 6;	
			
			leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
			max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
			air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
			jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
			air_accel = .4; //.25
			knockback_adj = 1.1;
		}
	break;
	case 5:
		if (walk_speed != 5) {
			if (!hitpause) {
				if (allow_sounds) {
					sound_play(sound_get("StatUp"))
				} else {
					sound_play(asset_get("sfx_shop_buy"))
				}
			}
			dust_up = spawn_dust_fx( x + spr_dir * 40, y - 80, sprite_get("StatUp"), 12 );
			dust_up.timer = 0;
			
			walk_speed = 5; 
			walk_accel = .75;
			initial_dash_speed = 8;
			dash_speed = 10;	
			
			leave_ground_max = 9; //the maximum hsp you can have when you go from grounded to aerial without jumping
			max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
			air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
			jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
			air_accel = .7; //.25
			knockback_adj = 1.2;
		}
	break;
	case 9: //Mistake
		if !(state_cat == SC_HITSTUN || ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) && attack == AT_DSPECIAL) {
			has_item = false;
			was_parried = true;
			parry_lag = 60;
			set_state(PS_PRATFALL)	
		}
	break;
}

with oPlayer {
	if (vi_poison_id == other.id) {
		if (vi_poison_timer > 0) {
			vi_poison_timer--;
			if (vi_poison_timer % other.vi_poison_stack_per == 0) {
				take_damage(player, other.player, 1);
			}
		}
	}
	if (state == PS_RESPAWN) {
		vi_poison_id = -4;
		vi_poison_timer = 0;
	}
}

//Funny Easter Egg
if (free && can_fly && !vbreak_error_sfx && taunt_pressed) {
	vbreak_error_sfx = true;	
	sound_play(sound_get("ViBreak"))
	print("ViBreak isn't REAL")
	var _test = spawn_hit_fx( x, y, 111 );
	_test.depth = -5;
}

//VFX
if (instance_exists(dust_up)) {
	if (dust_up.timer <= 3) {
		dust_up.x = x + spr_dir * 40
		dust_up.y = y - 80
		dust_up.spr_dir = 1.5
		dust_up.image_yscale = .75;
	} else {
		dust_up.x = x + spr_dir * 40
		dust_up.y = y - 80 - ((dust_up.timer - 3 * -6))
		dust_up.spr_dir = .75
		dust_up.image_yscale = 1.5;
	}
	dust_up.timer += 1;
}

if (instance_exists(dust_down)) {
	if (dust_down.timer <= 3) {
		dust_down.x = x - spr_dir * 40
		dust_down.y = y - 80
		dust_down.spr_dir = 1.5
		dust_down.image_yscale = .75;
	} else {
		dust_down.x = x - spr_dir * 40
		dust_down.y = y - 80 + ((dust_down.timer - 3) * 6)
		dust_down.spr_dir = .75
		dust_down.image_yscale = 1.5;
	}
	dust_down.timer += 1;
}

//SFX
if ((state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_WALL_TECH) && state_timer == 2) {
	if (allow_sounds) {
		sound_play(sound_get("Jump"));
	}
}

if (state == PS_WALK && state_timer % 15 == 0) || (state == PS_DASH && state_timer % 10 == 0) {
	if (allow_sounds) {
		sound_play(sound_get("Footstep"));
	}
}



#define fly_sfx() {
	if (allow_sounds) {
		if random_func(1, 2, true) {
			sound_play(sound_get("BeeFly"));
		} else {
			sound_play(sound_get("BeeFly2"));	
		}
	} else {
		sound_play(asset_get("sfx_clairen_tip_loop"), true, noone, .5, 2);
	}
}