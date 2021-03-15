//got_hit

if (jizo)
{
    if (should_make_shockwave)
    {
        jizo -= 1;
        
        move_cooldown[AT_NSPECIAL] = 0;
        
        with (obj_article1)
        {
            if (player_id == other)
            {
                state = 1;
            }
        }
        
        set_attack(AT_NSPECIAL);
        window = 2
        
        counter = true;
        counter_wait = counter_wait_ref;
        counter_opp = hit_player_obj;
        counter_type = 2
    }
}


fspe_stall = 0;