image_index = timer / 2;

timer++;

if (timer == frames) visible = 0;

if (timer >= frames * 6){
	visible = 1;
	timer = 0;
	image_index = 0;
}