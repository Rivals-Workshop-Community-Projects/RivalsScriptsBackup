///#args attack // this line makes code editors not freak out for some reason



/*
if (remap_specials) {
    switch (attack) {
        case AT_NSPECIAL :
            attack = AT_USPECIAL
            break;
        case AT_FSPECIAL :
            attack = AT_NSPECIAL
            break;
        case AT_USPECIAL :
            attack = AT_FSPECIAL
            break;
        default :
            break;
    }
}
*/

if (forbidden_tech_activated) {
	/*
	if (attack == AT_NSPECIAL) {
	    attack = AT_NSPECIAL_2;
	    window = 1;
	    window_timer = 0;
	}
	if (attack == AT_FSPECIAL) {
	    attack = AT_FSPECIAL_2;
	    window = 1;
	    window_timer = 0;
	}
	*/
	if (attack == AT_FSPECIAL) {
	    attack = AT_NSPECIAL_2;
	    window = 1;
	    window_timer = 0;
	}
}

if (!tournament_legal_mode_active) {
	// Special Taunt
	if (attack == AT_TAUNT) && (down_down) {
	    attack = AT_TAUNT_2;
	    window = 1;
	    window_timer = 0;
	}
	
	// If playing as Emerl, play a sound if attacking during the leap
	if (codename_emerl_active) {
	    if (afterimage_countdown > 0) {
	        if ((attack == AT_NAIR)
	            || (attack == AT_UAIR)
	            || (attack == AT_FAIR)
	            || (attack == AT_BAIR)
	            || (attack == AT_DAIR)) {
	            sound_play(sound_get("emerl_dash_followup"));
	        }
	    }
	}
}

// Fizzle out if a rush move is used without charges
//if (attack == AT_FSPECIAL) {
    //if (rocket_fuel >= booster_rush_cost) {
    //    rocket_fuel -= booster_rush_cost;
    //}
    /*
    if (booster_rush_charges > 0) {
        // Don't consume a charge if we're on the ground
        if (free) {
            booster_rush_charges--;
        }
    }*//* else {
        // Do the 'bad' version of the move since we're out of charges
        if (attack == AT_FSPECIAL) {
            attack = AT_FSPECIAL_2;
        } else if (attack == AT_USPECIAL) {
            attack = AT_USPECIAL_2;
        }
    }*/
//}

if (attack == AT_USPECIAL) {
	if (rocket_fuel <= 0) {
		attack = AT_USPECIAL_2;
	}
	
	if (djumping_prev) {
		if (djumps < max_djumps) {
			djumps++;
		}
	}
}

// Halt fuel recovery after uspecial/fspecial is used
if (((attack == AT_USPECIAL) && (move_cooldown[AT_USPECIAL] == 0))
	|| ((attack == AT_USPECIAL_2) && (move_cooldown[AT_USPECIAL_2] == 0))
    || ((attack == AT_FSPECIAL) && (move_cooldown[AT_FSPECIAL] == 0)))
{
    fuel_recovery_active = false;
}

// Can skip turning into a car if already a car, but don't incur that penalty
if (attack == AT_DSPECIAL) {
    dspecial_grounded = false;
	dspecial_dust_deployed = false;
    if (free) {
        window = 1;
    } else {
        window = 2;
    }
    
    /*
	if (window >= 5) {
    	if (down_down && attack_down) {
    		attack_end();
    		set_attack(AT_DTILT);
    	}
	}
	*/
}

/*
	if ((window == 5) && (window_timer == 1)) {
		// Only allow dtilt and dstrong
		move_cooldown[AT_USTRONG] = dspecial_duration;
		move_cooldown[AT_FSTRONG] = dspecial_duration;
		move_cooldown[AT_JAB] = dspecial_duration;
		move_cooldown[AT_DATTACK] = dspecial_duration;
		move_cooldown[AT_FTILT] = dspecial_duration;
		move_cooldown[AT_UTILT] = dspecial_duration;
		move_cooldown[AT_FAIR] = dspecial_duration;
		move_cooldown[AT_UAIR] = dspecial_duration;
		move_cooldown[AT_BAIR] = dspecial_duration;
		move_cooldown[AT_DAIR] = dspecial_duration;
		move_cooldown[AT_NAIR] = dspecial_duration;
	}
*/

// Ability to do ustrong/fstrong in the air
if (free
    && aerial_fstrong_enabled
    && (rocket_fuel >= booster_rush_cost))
{
    if (up_strong_down || (strong_down && up_down)) {
        attack = AT_USTRONG;
        if (!infinite_energy) {
            rocket_fuel -= booster_rush_cost;
        }
        fuel_recovery_active = false;
    } else if (strong_down || left_strong_down || right_strong_down) {
        attack = AT_FSTRONG;
        if (!infinite_energy) {
            rocket_fuel -= booster_rush_cost;
        }
        fuel_recovery_active = false;
        if (((left_strong_down || left_down) && (spr_dir > 0))
            || ((right_strong_down || right_down) && (spr_dir < 0)))
        {
            spr_dir *= -1;
        }
    }
}
/*
if (free
    && aerial_fstrong_enabled
    && (booster_rush_charges > 0))
{
     if (up_strong_down) {
        attack = AT_USTRONG;
        booster_rush_charges--;
    } else if (strong_down || left_strong_down || right_strong_down) {
        attack = AT_FSTRONG;
        booster_rush_charges--;
        if (((left_strong_down || left_down) && (spr_dir > 0))
            || ((right_strong_down || right_down) && (spr_dir < 0)))
        {
            spr_dir *= -1;
        }
    }
}
*/

// Incur a small penalty for being in car form
if (penalty_frames > 0) {
	if ((attack == AT_JAB)
		|| (attack == AT_DATTACK)
		|| (attack == AT_FTILT)
		|| (attack == AT_UTILT)
		|| (attack == AT_FSTRONG)
		|| (attack == AT_USTRONG)
		|| (attack == AT_USTRONG_2)
		|| (attack == AT_NSPECIAL)
		|| (attack == AT_FSPECIAL)
		|| (attack == AT_USPECIAL)
		|| (attack == AT_USPECIAL_2)
		|| (attack == AT_TAUNT))
	{
		window = penalty_window;
		//window_timer = max_penalty_frames - penalty_frames;
	}
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
if (enable_munophone) {
    muno_event_type = 2;
    user_event(14);
}