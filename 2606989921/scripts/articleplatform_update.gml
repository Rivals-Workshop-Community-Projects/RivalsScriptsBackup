//microplatform update

visible = get_match_setting(SET_HITBOX_VIS);

var should_die = false;

if (instance_exists(client_id))
{
    switch (die_condition)
    {
        //=======================================================
        case 2: //Exist only as long as player is on it
            should_die = (client_id.free);
        break;
        //=======================================================
        case 1: //Exist for Hitstun
            should_die = (!client_id.hitpause) 
                      && (client_id.state_cat != SC_HITSTUN);
        break;
        //=======================================================
        default:
        case 0: //None. uses lifetime only.
            should_die = !(lifetime > 0);
        break;
        //=======================================================
    }
}
else
{
    should_die = !(lifetime > 0);
}


if (should_die || external_should_die) && !(lifetime > 0)
{
    instance_destroy(); exit;
}
lifetime--;

x = client_id.x;
image_xscale = client_id.hsp + 4*sign(client_id.hsp + 0.00001);

if (act_as_solid)
{
    if (client_id.y == y)
    {
        with (client_id) 
        {
            clear_button_buffer(PC_DOWN_HARD_PRESSED);
            ground_type = 1;

            //needed?
            do_a_fast_fall = false;
            check_fast_fall = false;
            fast_falling = false;
            falls_through = false;
        }
    }
    else if (client_id.y > y)
    {
        //attempted fallthrough
        //swap might cause issue there in the future.
        //currently fixed by swap itself, but... how would one detect false positives here?
        if (free) client_id.y = y;


        with (client_id) 
        {
            clear_button_buffer(PC_DOWN_HARD_PRESSED);
            free = false;
            ground_type = 1;

            //needed?
            do_a_fast_fall = false;
            check_fast_fall = false;
            fast_falling = false;
            falls_through = false;
        }


        //Nart's Notes
        /*
        - untechable hitbox grid index value that etalus u-air uses (can tech, but forces you to fall through platforms)
           will cause you to slide along the platform until hitstun ends
        unless you dont touch vsp
        - needs a special exception for sylvanos u-spec
           they get stuck in the looping window lol (they can still shield cancel)
        */

    }
}