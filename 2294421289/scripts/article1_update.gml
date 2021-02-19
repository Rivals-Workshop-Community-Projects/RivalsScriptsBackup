//article1_update

if (init == 0) { //Init
    init = 1;
    state = 0;
}

if state != prev_state {
    state_timer = 0;
}
state_timer++;
image_alpha = image_alpha - (image_alpha * timer) / 100;
timer++;
prev_state = state;
if (state_timer > 20){
	instance_destroy();
	exit;
}


if(state == 0)
{
	anim_speed = 2;
}

if(state == 1)
{
	anim_speed = 2;
}

if(state == 2)
{
	anim_speed = 2;
}

if(state == 3)
{
	anim_speed = 2;
}