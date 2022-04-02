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
if (fuel > 0 && hit_player == player && my_hitboxID.attack == 43 && my_hitboxID.hbox_num == 1 && my_hitboxID.hitbox_timer > 25)
{
	if (my_hitboxID.orig_player == player)
	{
		my_hitboxID.damage = 0;
		hit_player_obj.orig_knock = 0;
		hit_player_obj.hitpause = false;
		hit_player_obj.hitstun = false;
		hit_player_obj.hitstop = 0;
    	hit_player_obj.hitstop_full = 0;
    	hit_player_obj.hsp = 0;
    	hit_player_obj.vsp = 0;
    	hit_player_obj.spr_dir = -hit_player_obj.spr_dir;
    	take_damage( hit_player, -1, -2 )
    	my_hitboxID.destroyed = true;
		bsprite_index = sprite_get("bike_assembly");
		brotation=0;
		bimage_number=8;
		bimage_speed=05.;
		bfront=true;
		bx=-40*spr_dir;
		by=-80;
		bsx=1;
		bsy=1;
    	set_attack(AT_EXTRA_1);
	}
}
