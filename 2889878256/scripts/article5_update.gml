timer_1++;

if (timer_1 > 5 && timer_2 == 0){

	if (x > obj_stage_main.midpoint){
		image_index = obj_stage_main.type_to_spawn_right;
	} else {
		image_index = obj_stage_main.type_to_spawn_left;
		}
}

if (obj_stage_main.stage == 2){
	timer_2++;

	if (timer_2 < 6 ){
		image_index = 0;
	}
}

if (timer_2 == 6){
	instance_destroy(self);
}


