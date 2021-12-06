//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;

 case AT_TAUNT:
  if attack == AT_TAUNT && spr_dir == -1 {
     window = 3;
 }
         break;
	
	
	
	case AT_USPECIAL:
		if  right_down && special_pressed {
			set_attack(AT_FSPECIAL);
		}
		can_move = false;
		
			if  left_down && special_pressed {
			set_attack(AT_FSPECIAL);
		}
		can_move = false;
		break;
		
		
	case AT_FSPECIAL:
		if  left_down {
            spr_dir = -1;
        }
	if  right_down {
            spr_dir = 1;
        }
        	if  up_down && special_pressed {
			set_attack(AT_USPECIAL);
		}
			{
			can_jump = true;
			can_walljump = true;
			can_crouch = true;
			can_shield = true;
			can_fast_fall = true;
		}
		break;
	
	
	case AT_DSPECIAL:
		if (window == 1) {
        	counter_active = true;
    	} else {
        	counter_active = false;
    	}
    	if (!counter_stored) {
	        can_fast_fall = false;
	        if (window == 2 && window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH) && has_hit_player == false) {
	            iasa_script();
	            set_state(PS_IDLE);
	        }
	    } else {
	        if (window == 1) {
	            window = 3;
	            window_timer = 0;
	            counter_stored = false;
	            counter_active = false;
	            vsp = stored_knockback_y;
	            hsp = stored_knockback_x;
	            stored_knockback_x = 0;
	            stored_knockback_y = 0;
	        }
	    }
	    break;
	
	
	
	case AT_TAUNT:
		if window_timer == 1{
			clear_button_buffer(PC_SHIELD_PRESSED);
		}
		if shield_pressed && window == 1 && window_timer < 16{
			attack_end();
			set_attack(AT_TAUNT_2);
		}
		break;
	
	
	
	case AT_TAUNT_2:
		if !(shield_down || taunt_down){
			attack_end();
			set_state(PS_IDLE);
		}
		if window_timer == phone_window_end - 32{
			spawn_hit_fx(x + 16 * spr_dir, y - 44, 113);
			sound_play(asset_get("mfx_star"));
		}
		if window_timer == phone_window_end - 4{
			spawn_hit_fx(x, y - 32, 143);
		}
		break;
}


