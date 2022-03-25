//Gain fuel upon attacking opponent
if (motorbike == false)
{
	fuel++;
	if (fuel >=40)
	{
		fuel = 40;
	}
	if (fuel >=40 && bikeReady = 0)
	{
		bikeReady = 1;
	}
}

//Reset bike hit timer
if ((state == PS_WALK || state = PS_DASH_START || state=PS_DASH) && motorbike == true)
{
	bike_hit_timer = 0;
	bike_hit = true;
}

//This code is specifically for if Lilac is hit
switch (hit_player_obj.url)
{
	case "2697174282":
	case "1870616155":
	case "1897152603":
		if (voice == 1)
		{
			var tease = random_func(12, 32, 1);
			if (tease == true)
			{
				sound_stop(sound_get("wittle_wiwac"));
				sound_play(sound_get("wittle_wiwac"));
			}
		}
	break;
	default:
	break;
}