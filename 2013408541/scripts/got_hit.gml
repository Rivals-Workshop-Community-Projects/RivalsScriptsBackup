if ("offense_state" in self) // ai
{
	offense_state = false;
    offense_timer = 0;
}

if (waryowl > 0)
{
	if has_rune("J")
	{
		waryowl -= 25;
		if helmet == 1
		{
			waryowl -= 25;
		}
	}
	else
	{
		waryowl -= 50;
		if helmet == 1
		{
			waryowl -= 100;
		}
	}
}

if has_rune("K") and window == 1 and window_timer >= 20
{
	waryowl += 750;
}

if (attack == AT_TAUNT && helmet == 0) and taunting = 1 
{
    helmet = 1;
    spawn_hit_fx( x-48*spr_dir, y-48, hit_fx_create( sprite_get( "helmet_knock_off" ), 40 ));
}

if (attack == AT_NSPECIAL)
{
	if has_rune("K") and window == 1 and window_timer >= 20
	{
		waryowl += 500;
	}
	else
	{
		nspec_charge = 0;
		waryowl = 0;	
	}
}