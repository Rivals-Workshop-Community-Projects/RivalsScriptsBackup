//set_attack

//in_effect_tracker_prev = in_effect_tracker;
//in_effect_tracker = true;

hit_only_once_storage = false;
if (attack==AT_TAUNT){
	if (down_down){
		attack = AT_TAUNT_2
	}
}

if (attack==AT_DSPECIAL){
	dsp_phase1 = false;
	dsp_orig_y = 0;
	if (/*free ||*/ move_cooldown[AT_DSPECIAL]>0){
		attack = AT_DSPECIAL_2;
	}
}

if (door_storage != -4){
	if (attack==AT_NSPECIAL && !free){
		if (point_distance(door_storage.x, door_storage.y, x, y) <= 40){
			if (door_storage.state==1){
				attack = AT_NSPECIAL_2;
				if (sign( door_storage.x - x )!=0){
					spr_dir = sign( door_storage.x - x );
				}
			}
		}
	}
}