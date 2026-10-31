timer_freeze--;

if(timer_freeze<=0){
	if(x > 1200){
		x = -3200;
		var ychanger = -50 + (random_func(0, 100, true));
		y = ychanger + initialy;
	}
	hsp = 1.5
	image_index+=0.4
} else {
	hsp = 0;
}