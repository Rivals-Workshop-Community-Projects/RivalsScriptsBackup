//Gain fuel upon attacking opponent
if (motorbike == false && my_hitboxID.attack != 43)
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

//If Carol is hit by her own bike, get back on the bike
if (fuel > 0 && hit_player_obj.player == player && my_hitboxID.attack == 43 && my_hitboxID.hbox_num == 1 && my_hitboxID.can_hit_self == true)
{
	if (my_hitboxID.orig_player == player)
	{
    	my_hitboxID.destroyed = true;
		my_hitboxID.damage = 0;
		hit_player_obj.orig_knock = 0;
		hit_player_obj.hitpause = false;
		hit_player_obj.hitstun = false;
		hit_player_obj.hitstop = 0;
    	hit_player_obj.hitstop_full = 0;
    	hit_player_obj.hsp = 0;
    	hit_player_obj.vsp = 0;
    	take_damage( player, -1, -999)
    	hit_player_obj.tsprite_index = -1;
		thrownBike = noone;
    	set_attack(AT_EXTRA_1);
	}
}
