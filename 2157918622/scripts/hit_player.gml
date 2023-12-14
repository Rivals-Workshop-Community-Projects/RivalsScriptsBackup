if ((my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1)
	|| (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 1)
	|| (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2)
	|| (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3)) // spawn field
{
	sound_play(sound_get("hittttttttttt"));
	sound_play(sound_get("hittttttttttt"));
	instance_create(floor(my_hitboxID.x), floor(my_hitboxID.y)-30, "obj_article1");
}

with (hit_player_obj) // if in field, take less kb
{
	if ((other.singleton_field != noone && point_distance(x,y-char_height/2,other.singleton_field.x,other.singleton_field.y)<=other.singleton_field.size)
		// && !(other.my_hitboxID.attack == AT_FSTRONG && other.my_hitboxID.hbox_num == 1)
		// && !(other.my_hitboxID.attack == AT_FSTRONG && other.my_hitboxID.hbox_num == 1)
		// && !(other.my_hitboxID.attack == AT_FSTRONG && other.my_hitboxID.hbox_num == 1)
		// && !(other.my_hitboxID.attack == AT_FSTRONG && other.my_hitboxID.hbox_num == 1) // these moves have normal kb
		)
	{
		if ((other.my_hitboxID.attack == AT_FSTRONG && (other.my_hitboxID.hbox_num == 2 || other.my_hitboxID.hbox_num == 3))
			|| other.my_hitboxID.attack == AT_DSTRONG || (other.my_hitboxID.attack == AT_USTRONG && other.my_hitboxID.hbox_num == 4)
			|| (other.my_hitboxID.attack == AT_USPECIAL && other.my_hitboxID.hbox_num == 2))
		{
			// do nothing
		}
		else
		{
			if (get_player_damage(player) <= 25)
			{
				orig_knock *= 0.75 + (get_player_damage(player) / 100);
			}
			else
			{
				orig_knock *= 0.75;
			}
		}
	}
}

if ((my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)) || my_hitboxID.attack == AT_DSTRONG || (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 4) || (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2))
{
	if (singleton_field != noone && point_distance(x,y-char_height/2,singleton_field.x,singleton_field.y)<=singleton_field.size)
	{
		sound_play(sound_get("oh_shit_you_gon_die"));
		sound_play(sound_get("oh_shit_you_gon_die"));
		singleton_field.state = 3;
		hit_player_obj.hitstop *= 2;
		hit_player_obj.hitstop_full *= 2;
		hitstop *= 2;
		hitstop_full *= 2;
	}
}

if (my_hitboxID.attack == AT_DAIR) // haha dair go boingggg
{
	old_vsp = -8.75;
	can_fast_fall = true;
}

if (hit_player_obj.wraptimer < 48)
{
	if ((my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1) || (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num != 4) || (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num != 2) /*|| (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 1)*/)
	{
		hit_player_obj.wraptimer = 0;
	}
	else
	{
		hit_player_obj.wraptimer = 48;
		orig_knock *= 0.8;
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) // tether detection
{
	if (hit_player_obj.soft_armor <= 5 && !hit_player_obj.super_armor && my_hitboxID.hbox_num == 1 /*&& (hit_player_obj.prev_state == PS_HITSTUN || hit_player_obj.prev_state == PS_HITSTUN_LAND || (singleton_field != noone && point_distance(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,singleton_field.x,singleton_field.y)<=singleton_field.size))*/)
	{
		if (my_hitboxID.hbox_num == 1)
		{
	    	if (hit_player_obj.free)
			{
		    	hit_player_obj.wraptimer = 5;
	    	}
	    	else
			{
		    	hit_player_obj.wraptimer = 15;
	    	}
	    	hit_player_obj.orig_knock = 0;
	    	delay_pull = 0;
		}
		if (!hit_player_obj.clone && !whip_cancel)
		{
			whip_tether = true;
			whip_player = true;
		}
		if(!(hit_player_obj.prev_state == PS_HITSTUN || hit_player_obj.prev_state == PS_HITSTUN_LAND
		|| (singleton_field != noone && point_distance(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,singleton_field.x,singleton_field.y)<=singleton_field.size)))
		{
			whip_cancel = true;
			//whip_tether = false;	
		}
	}
	else
	{
		has_hit_player = true;
		//sound_play(sound_get("hittttttttttt"));
		//sound_play(sound_get("hittttttttttt"));
		//instance_create(floor(my_hitboxID.x), floor(my_hitboxID.y)-30, "obj_article1");
		//whip_cancel = true;
		//whip_tether = false;
	}
}
