if owner.state == PS_SPAWN {
	owner.hitstop_full = 2;
	if owner.taunt_down && !true_turbo {
		true_turbo = true;
		sound_play(asset_get("mfx_levelup"));
	}
	if owner.down_down && !limited_turbo {
		limited_turbo = true;
		sound_play(asset_get("mfx_ring_bell2"));
	}
}


if ((true_turbo || owner.has_hit) && !owner.was_parried) && (owner.state == PS_ATTACK_AIR || owner.state == PS_ATTACK_GROUND) 
|| (true_turbo && (owner.state == PS_PARRY || owner.state == PS_ROLL_FORWARD || owner.state == PS_ROLL_BACKWARD 
	|| owner.state == PS_TECH_GROUND || owner.state == PS_TECH_BACKWARD || owner.state == PS_TECH_FORWARD || owner.state == PS_AIR_DODGE)){
    with owner {
        if (other.true_turbo && ((state_timer <= 1 && (state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD 
	|| state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_AIR_DODGE)))) || (window == 1 && window_timer < 2) || hitstop == hitstop_full { 
            clear_button_buffer(PC_SPECIAL_PRESSED);
    		clear_button_buffer(PC_ATTACK_PRESSED);
    		clear_button_buffer(PC_JUMP_PRESSED);
    		clear_button_buffer(PC_UP_STICK_PRESSED);
    		clear_button_buffer(PC_RIGHT_STICK_PRESSED);
    		clear_button_buffer(PC_LEFT_STICK_PRESSED);
    		clear_button_buffer(PC_DOWN_STICK_PRESSED);
    		clear_button_buffer(PC_UP_STRONG_PRESSED);
    		clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
    		clear_button_buffer(PC_LEFT_STRONG_PRESSED);
    		clear_button_buffer(PC_DOWN_STRONG_PRESSED);
    		clear_button_buffer(PC_SHIELD_PRESSED);
    		clear_button_buffer(PC_TAUNT_PRESSED);
        }
	    if jump_pressed || attack_pressed || special_pressed || shield_pressed || taunt_pressed
	    || right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed 
	    || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed {
			if shield_pressed && !(right_pressed || left_pressed|| right_down || left_down) { 
				set_state(PS_PARRY);
			}
			else {
				set_state(PS_PARRY);
				window = 2;
				window_timer = 19;
			}
    	}
    	if other.limited_turbo move_cooldown[attack] = 15;
    	else move_cooldown[attack] = 0;
    }
}


/*
Description:
Go beyond the limit and create impossible combos with Turbo Buddy! How does this bot differ from RoA's Turbo mode? It has THREE modes:
1. Default Turbo: Cancel any hit into anything.
2. Limited Turbo: Cancel any hit into anything that isn't the same move. Activate it by holding down during the game's countdown.
3. True Turbo: Cancel anything into anything any time. Hold taunt to activate.

Enjoy!