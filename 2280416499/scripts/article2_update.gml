//ground sides

if move_timer && !obj_stage_main.death_timer{
	x = ease_cubeInOut(round(new_x), round(old_x), move_timer, move_timer_max);
	move_timer--;
	if !move_timer x = new_x;
}

if (width != prev_width){
	old_x = x;
	new_x = owner.x - width * spr_dir;
	move_timer = move_timer_max;
}






prev_width = width;
width = owner.width;