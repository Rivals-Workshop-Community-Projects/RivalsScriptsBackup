//
switch(attack) {
	case AT_DAIR:
		dair_bounce = false;
		vsp = 0;
		hsp = 0;
		if (left_down) {
			spr_dir = -1;
		} else if (right_down) {
			spr_dir = 1;
		}
	break;
	case AT_FSPECIAL:		
		wall_tether = false;
		tether_x = 0;
		tether_to_x = 0;
		tether_y = 0;
		mic_special = true;
	break;
	case AT_DSPECIAL:
		invincible = true;
		invince_time = 25;
	break;
	case AT_USPECIAL:
		sound_play(asset_get("sfx_burnapplied"))
		vsp = 0;
		hsp = 0;
	break;
	case AT_NSPECIAL:
		if (instance_exists(clam_ball) && !clam_ball.disabled) {
			sound_play(sound_get("mirorb"));
			thrillers_left = 1;
			attack = AT_NSPECIAL_2;
			clam_ball.disabled = true;
		}
	break;
}