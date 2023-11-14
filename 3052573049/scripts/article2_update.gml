timer++;

if (timer > 120 || initialized_by_stage){
	vsp = move_speed;
}

if (y < -40){
	instance_destroy();
	exit;
}