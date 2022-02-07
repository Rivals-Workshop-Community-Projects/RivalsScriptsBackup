switch (state){
	case PS_IDLE_AIR:
		if (special_jump){
			sprite_index = sprite_get("specialjump")
			image_index = floor(image_number*state_timer/(image_number*3));
			if state_timer >= 30 {
				image_index = 11
			}
			
		}
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
        break;
    case PS_DOUBLE_JUMP:
        break;
    default: break;
}

/*
switch (state){
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
            case AT_FSPECIAL:
            case AT_FSPECIAL_2:
				draw_y = - 38
				if (window != 5 && window != 6){
					spr_angle = point_direction(0, 0, lengthdir_x(1, dash_angle) * spr_dir, lengthdir_y(1, dash_angle)) + 180 * (spr_dir == -1);
				} if (window == 6){
					spr_angle = point_direction(0, 0, lengthdir_x(1, dash_angle), lengthdir_y(1, dash_angle)) + 180 * (spr_dir == -1);
				}
                break;
        }
}
*/
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2){
		draw_y = - 38
		if (window != 5 && window != 6){
			spr_angle = point_direction(0, 0, lengthdir_x(1, dash_angle) * spr_dir, lengthdir_y(1, dash_angle)) + 180 * (spr_dir == -1);
		} if (window == 6){
			spr_angle = point_direction(0, 0, lengthdir_x(1, dash_angle), lengthdir_y(1, dash_angle)) + 180 * (spr_dir == -1);
		}
	} else {
		draw_y = 0
	}
}