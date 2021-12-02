//got_parried.gml

if ("my_hitboxID" in self)
{
	if (my_hitboxID.type == 1)
	{
		var parriedOWs = random_func(0, 15, true);
		switch(parriedOWs) 
		{
			case 0:
			sound_play(sound_get("sfx_regparrymistake1"));
			break;

			case 1:
			sound_play(sound_get("sfx_regparrymistake2"));
			break;

			case 2:
			sound_play(sound_get("sfx_regparrymistake3"));
			break;
		}
	}    
}

if (attack == AT_FSPECIAL)
{
	if (free)
	{
		set_state(PS_PRATFALL);
	}
}