//article2_update

if (state == 0)
{
	image_alpha = 1 - (state_timer / 20);
	if (state_timer >= 20)
	{
		state = 2;
		state_timer = 0;
	}
}

if (state == 2)
{
	instance_destroy();
	exit;
}

++state_timer;