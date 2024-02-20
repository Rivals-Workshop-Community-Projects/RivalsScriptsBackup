//ui

if (init = false){
	sprite_index = sprite_get("soul")
	image_index = random_func( 7, 5, true ); //0-4
	
	init = true;
}

var timer_max = 160;
timer++;
vsp+=0.02;
image_alpha = ease_quartIn( 100, 0, timer, timer_max )/100
if (timer > timer_max){
	instance_destroy();
    exit;
}


//print(string(image_alpha))