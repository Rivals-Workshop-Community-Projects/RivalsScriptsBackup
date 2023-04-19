//
if (my_hitboxID.attack == AT_FSTRONG)
{
    if (my_hitboxID.hbox_num == 1 and my_hitboxID.in_hitpause == false)
    {
        window_timer = get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH) - 2;
        destroy_hitboxes();
        if (abs(x - hit_player_obj.x) < 35)
        {
        	hit_player_obj.x += 25 * spr_dir;
        }
        if (abs(y - hit_player_obj.y) > 35)
        {
        	hit_player_obj.y += 20 * sign(y - hit_player_obj.y);
        }
    }
    if (my_hitboxID.hbox_num == 2)
    {
    	if (abs(x - hit_player_obj.x) < 35)
        {
        	hit_player_obj.x += 20 * spr_dir;
        }
        if (abs(y - hit_player_obj.y) > 15)
        {
        	hit_player_obj.y += 20 * sign(y - hit_player_obj.y);
        }
		hit_player_obj.knock_dir = point_direction(x + 45, (y + 20), hit_player_obj.x, hit_player_obj.y);
    }
}

if (my_hitboxID.attack == AT_FSPECIAL and ex == 1)
{
   hit_player_obj.x = x + (60 * spr_dir);
   hit_player_obj.y = y - 0;
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR and ex == 1)
{
   hit_player_obj.x = x + (50 * spr_dir);
   hit_player_obj.y = y + 10;
}

ex_meter += my_hitboxID.damage
/* For next patch
if (meter_build == true)
{
	ex_meter += my_hitboxID.damage
}*/