//hit_player - called when one of your hitboxes hits a player

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.type == 1){

    if (!hit_player_obj.free)
    {
        hit_player_obj.sleep = true;
    	hit_player_obj.sleeptimer = 60;
    }

}

if (my_hitboxID.attack != AT_USPECIAL)
{
	hit_player_obj.sleep = false;
	hit_player_obj.sleeptimer = 0;
}






if ((my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_2 || my_hitboxID.attack == AT_EXTRA_1 || my_hitboxID.attack == AT_EXTRA_2) && my_hitboxID.type == 2)
{
	if (laserstaling < 8)
	{
		laserstaling += 1;
	}
}


if (my_hitboxID.attack != AT_NSPECIAL && my_hitboxID.attack != AT_NSPECIAL_2 && my_hitboxID.attack != AT_EXTRA_1 && my_hitboxID.attack != AT_EXTRA_2)
{
		laserstaling = 0;
}

