if (attack == AT_EXTRA_2)  {
switch(hbox_num) {
	case 3:
		if squashHitpause == 0 {
			vsp = 12
		} else {
			vsp = 0
			squashHitpause -= 1
			hitbox_timer -= 1
			break;
		}
	
		//if hitbox_timer > 10 {
		//	kb_angle = 90
		//}
		
		if !free {
			if hitbox_timer < 80 {
				hitbox_timer = 80
				mask_index = sprite_get("empty")
			}
			image_index = ((hitbox_timer / 5) % 2) + 2
		} else {
			image_index = ((hitbox_timer / 5) % 2)
		}
		
	break;
	case 9:
	if !free {
		hsp = 0
		vsp = 0
	} else {
		vsp += .25
	}
	with oPlayer {
		if place_meeting(x, y, other) {
			with other {
				sound_play(sound_get("points"))
			}
			if "plantSun" in self {
				if plantSun < 3 {
					plantSun += 1
				}
			}
			with other {
				instance_destroy();
			}
		}
	}
	break;
	case 13:
	spr_dir = 1
	break;
}
}