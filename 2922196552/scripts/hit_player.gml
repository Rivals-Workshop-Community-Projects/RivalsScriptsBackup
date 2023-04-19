

if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 1)
{
	rockarmor += 3;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1)
{
	    	hit_player_obj.x = x + 40 * spr_dir ;
		    hit_player_obj.y = y - 6;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num < 5)
{
	    	hit_player_obj.x = x + 20 * spr_dir ;
		    hit_player_obj.y = y;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 5)
{
			hit_player_obj.wrap_time = 50;
	    	hit_player_obj.x = x + 20 * spr_dir ;
		    hit_player_obj.y = y - 4;
}

if (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 1)
{
	    	hit_player_obj.x = x + 1 * spr_dir ;
		    hit_player_obj.y = y - 10;
}

if (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 3)
{
	    	hit_player_obj.x = x + 20 * spr_dir ;
		    hit_player_obj.y = y - 10;
}