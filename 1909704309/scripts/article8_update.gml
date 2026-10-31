timer_freeze--;

if(timer_freeze<=0){
	if(going_up = true){
		vsp = climb_vsp;
		image_yscale = 2
	} else {
		vsp = -climb_vsp
		image_yscale = -2
	}
	if(y >= initial_y){
		going_up = true;
	} else if (y <= initial_y - 40*2){
		going_up = false;
	}
	image_index+=0.15
} else {
	vsp = 0;
}