//ground sides

if move_timer{
	x = ease_cubeInOut(round(new_x), round(old_x), move_timer, move_timer_max);
	move_timer--;
	if !move_timer x = new_x;
}

if (width != prev_width){
	old_x = x;
	new_x = owner.x - width * spr_dir;
	move_timer = move_timer_max;
}

with oPlayer if "url" in self && url == CH_SYLVANOS{
	if state == PS_ATTACK_AIR && attack == AT_USPECIAL && window == clamp(window, 2, 3) && place_meeting(x+hsp, y+vsp, other){
		// window = 5;
		// window_timer = 0;
		
		// better than nothing but still not good
		// var old_sylv_x = x;
		// x = clamp(x, 365, 917);
		// tt_changed_x = x - old_sylv_x;
		// training_town_sylv_check = 1;
	}
	
	// print(window)
	// print(window_timer)
	
	// if "training_town_sylv_check" in self && training_town_sylv_check{
	// 	if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND{
	// 		if attack == AT_USPECIAL && window == 10{
	// 			training_town_sylv_check = 0;
	// 			x -= tt_changed_x;
	// 		}
	// 	}
	// }
}



prev_width = width;
width = owner.width;