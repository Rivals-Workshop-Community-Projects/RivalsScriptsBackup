should_make_shockwave = false;

switch (attack)
{
	case AT_NAIR:
		if (pounce && motorbike == false)
		{
			take_damage(hit_player, player, 1);
			hit_player_obj.orig_knock += 1;	
			pounce = false;
		}
	case 42:
		can_fast_fall = true;
	case 39:
	case AT_FSPECIAL_2:
	case AT_USPECIAL_2:
		sound_play(sound_get("hit_light"));
	break;
	case 43:
		if (my_hitboxid.hbox_num == 2)
		{
			sound_play(asset_get("sfx_heavy_blow_2"), false, noone, 0.8);
		}
	break;
	case AT_DAIR:
		sound_play(sound_get("spring"));
		can_fast_fall = true;
		window = 3;
		window_timer = 0;
	break;
	case AT_FAIR:
	case AT_UAIR:
	case AT_EXTRA_1:
		can_fast_fall = true;
	break;
	case AT_DSPECIAL_AIR:
		if (fps_real > 40)
		{
			var bikeExplode = spawn_hit_fx(x, y +20, explosion);
		    bikeExplode.depth = -100;
		}
	break;
	default:
	break;
}

//Gain fuel upon attacking opponent
if (motorbike == false && bike_stored = false && bike = noone && my_hitboxID.attack != AT_FSPECIAL_AIR)
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
				stopVoice();
				sound_play(sound_get("wittle_wiwac"));
			}
		}
	break;
	default:
	break;
}

//If Carol is hit by her own bike, get back on the bike
if (fuel > 0 && hit_player_obj.player == player && my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.can_hit_self == true)
{
	if (my_hitboxID.orig_player == player)
	{
		move_cooldown[AT_DSPECIAL] = 0;
    	my_hitboxID.destroyed = true;
		my_hitboxID.damage = 0;
		hit_player_obj.orig_knock = 0;
		hit_player_obj.hitpause = false;
		hit_player_obj.hitstun = false;
		hit_player_obj.hitstop = 0;
		hit_player_obj.hitstop_full = 0;
		hit_player_obj.hsp = 0;
		hit_player_obj.vsp = 0;
		take_damage( player, -1, -5)
		hit_player_obj.tsprite_index = -1;
		thrownBike = noone;
    	set_attack(AT_DSPECIAL);
	}
}

#define stopVoice

sound_stop(sound_get("aw_yeah"));
sound_stop(sound_get("feel_my_power"));
sound_stop(sound_get("hold_on_lilac"));
sound_stop(sound_get("im_bored"));
sound_stop(sound_get("parry"));
sound_stop(sound_get("pow_pow"));
sound_stop(sound_get("that_stupid_panda"));
sound_stop(sound_get("try_and_catch_me"));
sound_stop(sound_get("what_you_doing"));
sound_stop(sound_get("why_are_we_stopping"));
sound_stop(sound_get("wittle_wiwac"));