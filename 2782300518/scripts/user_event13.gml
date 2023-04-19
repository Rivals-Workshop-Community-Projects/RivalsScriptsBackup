should_make_shockwave = false;

switch (attack)
{
	case AT_JAB:
	case 48:
	case AT_FTILT:
	case 47:
	case AT_UTILT:
	case 46:
	case AT_DTILT:
	case 45:
	case AT_BAIR:
	case AT_EXTRA_1:
	case AT_EXTRA_2:
		sound_play(sound_get("hit_deep"));
	break;
	case AT_NAIR:
	case AT_USPECIAL:
	case AT_UAIR:
		if (pounce && motorbike == false)
		{
			take_damage(hit_player, player, 1);
			hit_player_obj.orig_knock += 1;	
			pounce = false;
		}
	case 39:
	case 43:
	case 42:
	case AT_FSPECIAL_2:
	case AT_USPECIAL_2:
		sound_play(sound_get("hit_light"));
	break;
	case AT_DATTACK:
	case 3:
	case 44:
	case AT_DAIR:
	case AT_FSTRONG:
	case AT_FSTRONG_2:
	case AT_USTRONG:
	case AT_USTRONG_2:
	case AT_DSTRONG:
	case AT_DSTRONG_2:
		sound_play(sound_get("hit_heavy"));	
	break;
	case AT_FAIR:
		if (pounce)
		{
			take_damage(hit_player, player, 1);
			hit_player_obj.orig_knock += 1;	
			pounce = false;
		}
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(sound_get("hit_deep"));
		}
		else
		{
			sound_play(sound_get("hit_heavy"));
		}
	break;
	case AT_FSPECIAL:
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(sound_get("hit_light"));
		}
		else
		{
			sound_play(sound_get("hit_heavy"));
		}
	break;	
	

	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
		if (my_hitboxID.hbox_num < 16)
		{
			sound_play(sound_get("hit_light"));
		}
		else
		{
			sound_play(sound_get("hit_heavy"));
		}	
	break;
	case 40:
	case AT_DSPECIAL_AIR:
		if (fps_real > 40)
		{
			var bikeExplode = spawn_hit_fx(x, y , 271);
		    bikeExplode.depth = -100;
		}
	break;
	default:
	break;
}

//Gain fuel upon attacking opponent
if (motorbike == false && my_hitboxID.attack != 43)
{
	fuel = round(fuel); //This is to fix a glitch that causes decimal values
	fuel++;
	if (bikeReady < 2)
	{
		hitConfirm = true;
	}
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
if (motorbike == true)
{
	switch (state)
	{
		case PS_WALK:
		case PS_DASH_START:
		case PS_DASH:
			bike_hit_timer = 0;
			bike_hit = true;
		break;
	}
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
