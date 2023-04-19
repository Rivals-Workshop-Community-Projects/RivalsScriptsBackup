// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

var witchhazel_exists = false;
var jackolantern_exists = false;

with (obj_article1){
    if (player_id == other.id){
        var jackolantern_exists = true;
    }
}
with (obj_article2){
    if (player_id == other.id){
        var witchhazel_exists = true;
    }
}

if (attack == AT_DATTACK){
	can_move = false
    if (window == 2){
		if (window_timer >= 4) && (!attack_down || free){
			window = 3;
			window_timer = 0;
			destroy_hitboxes();
		}
		with oPlayer if id != other.id && dattack_drag == other.id {
            x = lerp(x - 8*other.spr_dir, other.x - 8*other.spr_dir, 0.5)
            y = lerp(y, other.y, 0.5)
        }
	}
	if (window == 3){
		with oPlayer if id != other.id && dattack_flick == other.id {
            x = lerp(x + 24*other.spr_dir, other.x + 24*other.spr_dir, 1)
            y = lerp(y, other.y, 0.5)
			dattack_drag = false;
        }
	}
	if (window == 4){
        with oPlayer if id != other.id && dattack_flick == other.id {
			dattack_flick = false;
        }
    }
	if (free){	
		vsp = min(vsp, 1);
		hsp = clamp(hsp, -5,5);
	}
	/*
	if (window == 2 && window_timer >= 4){
		can_jump = true;
		if (shield_down){
			set_state( PS_IDLE );
			clear_button_buffer( PC_SHIELD_PRESSED );
		}
	}
	*/
}

/*
if (attack == AT_UAIR){
    if (window == 2 && window_timer >= 4) || (window == 3 || window == 4){
		vsp -= gravity_speed * 2 / 3;
		vsp = min(vsp, 1.5);
	}
}
*/

if (attack == AT_FSTRONG){
	can_move = false
    if (window == 1 || window == 2){
		if (free){
			vsp = 0
			hsp = 0
			can_move = false
		}
	}
	if (window == 3){
		hsp = (25 + (strong_charge/6))*spr_dir;
	}
}

/*
if (attack == AT_DSTRONG){
    if (window == 3){
		if (left_down){
			hsp = -4
		}
		if (right_down){
			hsp = 4
		}
	}
}
*/

if (attack == AT_NSPECIAL){
	can_move = false;
    if (window == 2 || window == 3){
		if (free){
			vsp = min(vsp, 1.5);
			hsp = clamp(hsp, -5,5);
		}
		if (left_down && spr_dir == 1 && special_down){
			spr_dir = -1
		}
		if (right_down && spr_dir == -1 && special_down){
			spr_dir = 1
		}
	}
	//loop
	if (window == 3 && window_timer == 20){
		attack_end()
		if (special_down){
			window = 3
			window_timer = 0
		}
	}
	//end
	if ((window == 2 && window_timer >= 8) || window == 3){
		if (!special_down){
			window = 4
			window_timer = 0
		}
	}
	if (window == 4){
		can_move = true;
	}
}

if (attack == AT_FSPECIAL){
    if (window == 2){
		if (free){
			vsp = min(vsp, 1.5);
		}
        if (window_timer == 1){
            if (!witchhazel_exists){
			    if (witchhazel_recharge >= 180){
					if !free {
						instance_create(x + (spr_dir*50),y - 0,"obj_article2");
					} else {
						instance_create(x + (spr_dir*25),y - 0,"obj_article2");
					}
					sound_play (sound_get ("plant"));
				    witchhazel_recharge = 0
				} else if (witchhazel_recharge < 180){
				    sound_play (sound_get ("buzzer"));
				}
	    	} else {
                sound_play (sound_get ("buzzer"));
			}
        }
    }
}

if (attack == AT_USPECIAL){
    if (window == 2){
		can_move = false;
	}
	if (window == 3){
		if (window_timer == 1){
			spawn_hit_fx(floor(x),floor(y - 36),195)
			take_damage (player, -1, 3)
		}
	}
}

if (attack == AT_DSPECIAL){
    if (window == 2){
		if (free){
			vsp = min(vsp, 1.5);
			hsp = clamp(hsp, -3,3);
		}
        if (window_timer == 1){
            if (!jackolantern_exists){
			    if (jackolantern_recharge >= 450){
					instance_create(x + (spr_dir*30),y - 0,"obj_article1");
					sound_play (sound_get ("plant"));
				    jackolantern_recharge = 0
				} else if (jackolantern_recharge < 450){
				    sound_play (sound_get ("buzzer"));
				}
	    	} else {
                with (obj_article1){
                    if (player_id == other.id){
                        shovel = true
                    }
                }
			}
        }
    }
}

if (attack == AT_TAUNT){
	if (window == 1){
		if (window_timer == 1){
				sound_play (sound_get ("watering_cannot"));
		}
		if (window_timer > 48){
			iasa_script();
		}
	}
}