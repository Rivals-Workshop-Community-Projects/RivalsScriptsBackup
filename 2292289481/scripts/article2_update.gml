//article2_update

if (state == 0)
{
	image_alpha = 1 - (state_timer / 15);
	if (state_timer >= 15)
	{
		state = 2;
		state_timer = 0;
	}
}

image_index = 0 + state_timer * 4 / 12;

if (state == 2)
{
	instance_destroy();
	exit;
}

++state_timer;