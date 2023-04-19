//set_attack


if attack == AT_USTRONG{
	set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
}
if attack == AT_DSTRONG{
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
}
if attack == AT_FSTRONG{
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
	shock_hit=0;
}
if attack == AT_DSPECIAL{
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
	set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
}

if attack == AT_DATTACK{
dust_pos1 = -69; dust_pos2 = -69;
}

//Bug FIX
if attack == AT_FSPECIAL{
	if vsp< 0  {
		cyclone = 0;
	}
	play_sound=0;
	done_reflecting = 0;
	//Array Iniciate
	num3 = 0
	repeat(1000)
	   {
	   done_reflecting_hitbox[num3] = 0;			//Chooses a pill;
	   num3 += 1;
	   }
	done_reflecting_article = 0;
}

if attack == AT_USPECIAL{
	set_num_hitboxes(AT_USPECIAL, 2);
	show_flames = 0;
}



//user_event(13);