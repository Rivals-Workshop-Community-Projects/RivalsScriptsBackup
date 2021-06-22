if state == PS_WALL_JUMP || (state_cat == SC_HITSTUN || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED) {
	move_cooldown[AT_DSPECIAL] = 0;
}

if (state == PS_DASH_TURN && !free) {
    
    if (state_timer > 3 && state_timer < 20) super_armor = true;
    
    if (state_timer == 1) {
        hsp *= 2.5;
    }
    else
    if (state_timer == 11) {
        hsp += 30 * spr_dir;
    }
}

if (waterfalling && state_cat == SC_HITSTUN) {
	with (oPlayer) {
		waterfalled = false;
	}
	waterfalling = false;
}