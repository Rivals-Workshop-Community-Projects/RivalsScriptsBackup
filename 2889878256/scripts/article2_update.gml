timer --;

if (timer == 60 || timer == 120 || timer == 180 || timer == 240){
	image_index++;
}

if (timer == 0){
	instance_destroy(self);
}