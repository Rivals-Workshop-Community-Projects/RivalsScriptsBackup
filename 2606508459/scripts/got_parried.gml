move_cooldown[AT_NSPECIAL] = 60;

if ("my_hitboxID" not in self){exit;}

switch (my_hitboxID.attack)
{
    case AT_NSPECIAL:
        /*
        print_debug("Ball Parried");
        print_debug(string(hit_player_obj)); //player object who parried your hitbox
        print_debug(string(hit_player)); //player that parried your hitbox
        print_debug(string(my_hitboxID)); //the hitbox that was parried
        */
        can_jump = false;
        break;
    case AT_NSPECIAL_2:
        can_jump = false;
        break;
    case AT_FSPECIAL:
        //special_parried_cool = special_parried_cool_c;
        //set_state(PS_PRATFALL);
        break;
    case AT_USPECIAL:
        //special_parried_cool = special_parried_cool_c;
        //set_state(PS_PRATFALL);
        break;
    case AT_JAB:
        move_cooldown[AT_JAB] = 60;
        //set_state(PS_PRATFALL);
        break;
    case AT_NAIR:
        if (my_hitboxID.hbox_num == 1)
            if(free)
            {
                set_state(PS_PRATFALL);
                parry_lag = 40;
            }
            if(!free) 
            {
                set_state(PS_PRATLAND);
                parry_lag = 40;
            }
        break;
    case 43:
        move_cooldown[43] = 0;
        my_hitboxID.hitbox_timer = 0;
        my_hitboxID.proj_angle = 180;
        /*with (my_hitboxID)
        {
            spr_dir *= -1
        }*/
}
