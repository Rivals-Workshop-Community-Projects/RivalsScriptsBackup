//animation

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	if attack == AT_FSPECIAL {
		if window == 4 || window == 5 || window == 6 || window == 7 {
			if 2 > vsp > -2 && !hitpause { 
				spr_angle = -vsp*6*spr_dir;
			} else if hitpause {
				spr_angle = -old_vsp*6*spr_dir;
			}
		}	else {
			spr_angle = 0;	
		}
	}	else 
		if attack == AT_NSPECIAL {
			if window == 3 || window == 4 {
				if !hitpause { 
					spr_angle = point_direction(0,0,hsp*spr_dir,vsp*spr_dir);
				} else if hitpause {
					spr_angle = point_direction(0,0,old_hsp*spr_dir,old_vsp*spr_dir);
				}
			}	else {
			spr_angle = 0;
		}
	}
}