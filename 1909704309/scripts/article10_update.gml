timer_freeze--;

if(timer_freeze<=0){
	state_timer++;
	//Bounce logic
	if(y >= initial_y){
		bounce_time++;
		vsp = 0;
		if(bounce_time >= bounce_wait){
			image_index++;
			bounce_time = -1;
			vsp = bounce_vsp;
		}
		image_yscale -= 0.05
		image_xscale += 0.05
	} else {
		vsp += 0.4;
		image_xscale = 2;
		image_yscale = 2;
	}
	//Turnaround logic
	if(state_timer >= turn_back_time){
		sprite_index = sprite_get("ostro")
		hsp = standard_hsp;
		if(x >= turn_around_pos){
			state_timer = 0;
		}
	} else {
		sprite_index = sprite_get("ostro_turn")
		hsp = -standard_hsp;
	}
} else {
	hsp = 0;
	vsp = 0;
}
//print(x)