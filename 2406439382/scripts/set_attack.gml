//set_attack
switch (attack)
{
	case AT_USPECIAL:
		can_effect = true;
		set_num_hitboxes(AT_USPECIAL, 1);
		got_uspe_destroyed = false;
	break;
    case AT_NSPECIAL:
         set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
         
         counter = false;
    counter_opp = noone;
    break;
    case AT_USTRONG:
        picture_portrait = true;
        set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 36);
    break;
    case AT_TAUNT:
            var ang_rand = random_func(6,80,true) - 40 + 90;
			
			set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, lengthdir_x(5,ang_rand));
			set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, lengthdir_y(5,ang_rand));
    break;
    case AT_DSPECIAL:
    	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
    break;
    case AT_FSPECIAL:
    	set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
    	
    	
    	fspe_stall += 1;
    	
    	switch(fspe_stall)
    	{
    		case 1:
	    		reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY);//0.5
			break;
			case 2:
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.7);
			break;
			case 3:
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
			break;
    	}
    break;
}
