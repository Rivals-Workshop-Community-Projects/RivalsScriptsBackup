// update - called every game tick
if (state == "taunt")
{
	if (state_timer == 34) 
	{
		if (random_func(0, 11, 1) == 3)
		{
			sound_play(sound_get("sfx_dialup"));
		}
		else
		{
			sound_play(sound_get("sfx_bluh"));
		}
	}
}

if (state == "idle" && waiting) 
{
	if (state_timer == 1) sound_play(sound_get("sfx_sleep"));
	if (state_timer == 70) sound_play(sound_get("sfx_notice"));
}