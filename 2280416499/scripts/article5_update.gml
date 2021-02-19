//bridge

if "death_timer" in obj_stage_main && obj_stage_main.death_timer exit;

if move_timer{
	var old_y = on ? hidden_y : reveal_y;
	var new_y = on ? reveal_y : hidden_y;
	y = ease_cubeInOut(round(new_y), round(old_y), move_timer, move_timer_max);
	move_timer--;
	if !move_timer y = new_y;
}

if (on != prev_on){
	move_timer = move_timer_max;
}

visible = on || move_timer;
mask_index = visible ? mask_index_solid : mask_index_invis;






prev_on = on;
on = owner.bridges[spr_dir == -1];