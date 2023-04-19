

// buff banner aura effect in front of soldier
if (buff_active || teammate_triggered_buff > 0) {
	
	var dspec_image = get_gameplay_time() / 6;
	
	draw_sprite_ext(sprite_get("dspecial_aura_front"), dspec_image, x, y, 2, 2, 0, c_white, 1);

}
/*
if (draw_dspec_task) {
	var task_timer = 60;
	
	if (task_timer > 0) {
	
	draw_sprite_ext(sprite_get("dspec_fspec_swap"), 0, x, y, 2, 2, 0, c_white, 1);
	
	task_timer--;
	
	}
	else {
	
		draw_dspec_task = false;
	}

}

*/

if (dspec_swap_task_timer > 0) {
	
	if (get_gameplay_time() < 127) {
	
	draw_sprite_ext(sprite_get("dspec_fspec_swap"), 0, x-27, y+3, 2, 2, 0, c_white, 1);
	

	//dspec_swap_task_timer--;
	
	}
}

