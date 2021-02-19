//wall

if "death_timer" in obj_stage_main && obj_stage_main.death_timer exit;

if move_timer{
	var old_x = on ? hidden_x : reveal_x;
	var new_x = on ? reveal_x : hidden_x;
	x = ease_cubeInOut(round(new_x), round(old_x), move_timer, move_timer_max);
	move_timer--;
	if !move_timer x = new_x;
}

if (on != prev_on){
	move_timer = move_timer_max;
}

visible = on || move_timer;
mask_index = visible ? mask_index_solid : mask_index_invis;






prev_on = on;
on = owner.walls[spr_dir == -1];