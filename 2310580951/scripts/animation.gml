//animation

if state == PS_FIRST_JUMP {
        if jumps == 2 {
		sprite_index = sprite_get("jumptwo");
		} else
		if jumps == 3 {
		sprite_index = sprite_get("jumpthree");
		} else if jumps < 2 {
		sprite_index = sprite_get("jump");		
		}
}

if attack == AT_USPECIAL {
	if window == 5 {
		if 2 > vsp > -2 && !hitpause { 
			spr_angle = -vsp*6*spr_dir;
		} else if hitpause {
			spr_angle = -old_vsp*6*spr_dir;
		} else {
			spr_angle = 0;
		}
		
		if flyingTime < 40 {
			if flyingTime mod 5 == 0 || flyingTime mod 5 == 1 {
				image_index = 18;
			} else {
				image_index = 17;
			}
		}
	}
}	else {
	spr_angle = 0;
}