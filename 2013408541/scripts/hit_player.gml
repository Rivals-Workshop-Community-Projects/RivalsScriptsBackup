//hit_player - called when one of your hitboxes hits a player

if ("offense_state" in self) // ai
	offense_state = true;

if (my_hitboxID.attack == AT_FSPECIAL)
{
	if (window == 1 || window == 2)
	{
		var dir = spr_dir;
		if (right_down)
			dir = 1;
		else if (left_down)
			dir = -1;
		spr_dir = dir;
	    x = hit_player_obj.x-32 * dir;
	    y = hit_player_obj.y;
	    hsp = 0;
	    if ("sworded" in hit_player_obj)
		{
	        hit_player_obj.sworded = 24;
	    }
	}
}

if (runeB && my_hitboxID.sound_effect != asset_get("sfx_metal_hit_strong") && my_hitboxID.sound_effect != asset_get("sfx_ice_on_player"))
	waryowl += 100;

if (my_hitboxID.attack == AT_USPECIAL)
{
	//waryowl += 100;
	if (window < 6)
	{
		hit_player_obj.x = x
		hit_player_obj.y = y
	}
}

/*if (my_hitboxID.attack == AT_USPECIAL_GROUND)
{
	waryowl += 100;
}*/

if (my_hitboxID.attack == AT_FSTRONG && window == 2 && window_timer < 3)
{
	hit_player_obj.x = x
	hit_player_obj.y = y
}

if (my_hitboxID.hbox_num >= 10){
	if has_rune("E") = false
	{
		has_hit = false
	}
	//has_hit = false
}
if (my_hitboxID.hbox_num < 10) and my_hitboxID.attack != AT_NSPECIAL and waryowl < 1000 {
	if helmet == 1
	{
		waryowl += 50
	}
	if has_rune("D")
	{
		waryowl +=50
	}
	waryowl += 50
	//waryowl_up = true
}

if (my_hitboxID.attack == AT_NSPECIAL)
{
	nspec_charge = 0;
	waryowl = 0;
}