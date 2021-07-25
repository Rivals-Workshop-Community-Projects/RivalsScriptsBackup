time++

var anim_rate = 4;

if (time mod anim_rate == 0){
	image_index++;
}

if (time mod 60 == 0){
	train_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
}

if (time == 999){
	time = 0;
}