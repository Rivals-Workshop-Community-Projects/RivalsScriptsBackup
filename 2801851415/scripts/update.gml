//Check other players with freeze state.
with(oPlayer)
{
    if(player != other.player)
    {
        if(frostineFreeze)
        {
                    
            outline_color = [100,200,200];
            init_shader();
            if(frostineTimerStart+300 < get_gameplay_time() || state == PS_RESPAWN)
            {
                outline_color = [0,0,0];
                frostineFreeze = false;
                init_shader();
            }
            if(hitpause && state_cat == SC_HITSTUN) //if hurt, delay
                frostineTimerStart++;
        }
    }
}
