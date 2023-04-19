//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if window == 1 && window_timer == 1{
	sc_multihit_controller = [0, 0, 0, 0];
}

switch(attack){
	
	case AT_USTRONG:
		if window == 1{
			grabbed_player_obj = noone;
		}
    	force_depth = true;
    	depth = 0;
	    if grabbed_player_obj != noone{
	    	if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			else if window == 3{
				//keep the grabbed player in hitstop until the grab is complete.
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				//if this is the first frame of a window, store the grabbed player's relative position.
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 0 * spr_dir;
				var pull_to_y = -65;
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				grabbed_player_obj.x = round(x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, 50));
				grabbed_player_obj.y = round(y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, 50));
			}
	    }
		if window == 3 && window_timer == 9 && grabbed_player_obj != noone{
			set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 10 + (round((strong_charge + 6) / 12)));
			set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 7 + (round((strong_charge + 15) / 30)));
			attack_end();
        	set_attack(AT_USTRONG_2);
		}
	break;
    
    case AT_USTRONG_2:
    	force_depth = true;
    	depth = 0;
	    if grabbed_player_obj != noone{
	    	if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			else if window <= 2{
				//keep the grabbed player in hitstop until the grab is complete.
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				//if this is the first frame of a window, store the grabbed player's relative position.
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				switch(window){
					case 1: // startup
						var pull_to_x = 0 * spr_dir;
						var pull_to_y = -65;
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						grabbed_player_obj.x = round(x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, 50));
						grabbed_player_obj.y = round(y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, 50));
					break;
					case 2: // active
						var pull_to_x = 30 * spr_dir;
						var pull_to_y = 0;
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						grabbed_player_obj.x = round(x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, 30));
						grabbed_player_obj.y = round(y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, 30));
					break;
				}
			}
		}
    break;
    
    case AT_DSTRONG:
    	if window == 1{
			grabbed_player_obj = noone;
		}
		force_depth = true;
    	depth = 0;
		if grabbed_player_obj != noone{
	    	if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			else if window == 3{
				//keep the grabbed player in hitstop until the grab is complete.
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				//if this is the first frame of a window, store the grabbed player's relative position.
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = (-window_timer + 60) * spr_dir;
				var pull_to_y = 3 * (window_timer < 7? -window_timer:window_timer - 13) - 30;
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				grabbed_player_obj.x = round(x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, 60));
				grabbed_player_obj.y = round(y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, 60));
			}
	    }
		if window == 3 && window_timer == 9 && grabbed_player_obj != noone{
			set_hitbox_value(AT_DSTRONG_2, 5, HG_DAMAGE, 6 + (round((strong_charge + 5) / 10)));
			set_hitbox_value(AT_DSTRONG_2, 5, HG_BASE_KNOCKBACK, 7 + (round((strong_charge + 15) / 30)));
			attack_end();
        	set_attack(AT_DSTRONG_2);
		}
	break;
    
    case AT_DSTRONG_2:
        if grabbed_player_obj != noone{
        	if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			else if window <= 2{
				//keep the grabbed player in hitstop until the grab is complete.
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				//if this is the first frame of a window, store the grabbed player's relative position.
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				switch(window){
					case 1: // startup
						var pull_to_x = 40 * spr_dir;
						var pull_to_y = 0;
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						grabbed_player_obj.x = round(x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, 80));
						grabbed_player_obj.y = round(y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, 80));
					break;
					case 2: // active
						var pull_to_x = (((window_timer + 2) % 6 < 4? -1:1) * (((window_timer + 2) % 6) * 3)) * spr_dir;
						var pull_to_y = 0;
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						grabbed_player_obj.x = round(x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, 60));
						grabbed_player_obj.y = round(y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, 60));
					break;
				}
			}
        }
    break;
    
    case AT_NSPECIAL: case AT_FSPECIAL:
    	if window == 2 && window_timer == 1{
    		if attack == AT_NSPECIAL{
    			create_hitbox(AT_NSPECIAL, 1, x, y - 500);
    			sound_play(asset_get("sfx_absa_dattack"));
    		}
    		if attack == AT_FSPECIAL{
    			move_cooldown[AT_FSPECIAL] = 60;
    		}
    	}
    break;
    
    case AT_DSPECIAL:
    	if (place_meeting(x + 20, y - 10, asset_get("par_block")) && spr_dir == 1) || (place_meeting(x - 20, y - 10, asset_get("par_block")) && spr_dir == -1){
    		x -= 3 * spr_dir;
    		hsp *= 0.75;
    	}
    	if window == 2 && window_timer == 1{
			if sc_gadget == 0 && sc_coins >= 8{
				create_hitbox(AT_DSPECIAL, 1, x + (16 * spr_dir), y - 50);
				sc_coins -= 8;
			}
			if sc_gadget == 1 && sc_coins >= 10{
				create_hitbox(AT_DSPECIAL, 4, x + (16 * spr_dir), y - 50);
				sc_coins -= 10;
			}
			if sc_gadget == 2 && sc_coins >= 12{
				create_hitbox(AT_DSPECIAL, 8, x + (16 * spr_dir), y - 50);
				sc_coins -= 12;
			}
    	}
    break;
    
    case AT_EXTRA_1:
    	iasa_script();
    	can_fast_fall = false;
        if window == 2{
        	sc_paraglider_meter -= 0.5;
            if hsp >= 3{
                spr_dir = 1;
            }
            else if hsp <= -3{
                spr_dir = -1;
            }
            if !jump_down || sc_paraglider_meter <= 0{
                window = 3;
                window_timer = 0;
            }
        }
    break;
    
}