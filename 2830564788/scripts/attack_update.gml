// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
	case AT_NSPECIAL: {
		can_fast_fall = false;
		can_wall_jump = true;
		
		if (window == 1) vsp /= 2;
		
		if (window == 2) {
			used_nspecial = true;
			
			if (!hitpause && window_timer % 4 == 0) create_hitbox(AT_NSPECIAL, 1, x + 32 * spr_dir, y - 36);
			
			var tornado_hsp_max = 6;
			var tornado_hsp_accel = 0.45;
			var tornado_vsp_accel = 0.25;
			
			if (!joy_pad_idle) hsp += lengthdir_x(tornado_hsp_accel, joy_dir);
			else hsp /= 1 + tornado_hsp_accel;
			
			hsp = clamp(hsp, -tornado_hsp_max, tornado_hsp_max);
			
			if (down_down) vsp = fast_fall;
			else if (special_down) vsp -= tornado_vsp_accel;
		}
		
		if (window == 3 && window_timer == 1) vsp /= 2;
		//if (window_timer == 9) move_cooldown[AT_NSPECIAL] = 75;
	} break;
	case AT_FSPECIAL: {
		if (window_timer == 7) move_cooldown[AT_FSPECIAL] = 60;
	} break;
	case AT_DSPECIAL: {
		if (window_timer == 12) move_cooldown[AT_DSPECIAL] = 60;
	} break;
}
