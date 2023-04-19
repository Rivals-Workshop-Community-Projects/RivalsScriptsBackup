//Check other players with freeze state.
with(oPlayer)
{
    if(player != other.player)
    {
        if(frostineFreeze)
        {
            outline_color = [100,200,200];
            init_shader();
            outline_color = [0,0,0];    
            if(frostineTimerStart+300 < get_gameplay_time() || state == PS_RESPAWN)
            {
                frostineFreeze = false;
                init_shader();
            }
            if(hitpause && state_cat == SC_HITSTUN) //if hurt, delay
                frostineTimerStart++;
        }
    }
}
//if(nspecCount == 2)
//{
//    outline_color = [abs(ceil(sin(get_gameplay_time()/20)*50)),abs(ceil(sin(get_gameplay_time()/20)*100)),abs(ceil(sin(get_gameplay_time()/20)*100))];
//    init_shader();
//    outline_color = [0,0,0];  
//}

if ((state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) && state_timer == 1)  {
    sound_stop(asset_get("sfx_ice_end"))
    sound_play(asset_get("sfx_ice_end"),false,noone,0.6, 1)
}

if (state == PS_FIRST_JUMP && state_timer == 1)  {
    sound_stop(asset_get("sfx_ice_end"))
    sound_play(asset_get("sfx_ice_end"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if (state == PS_DASH && (state_timer % 10 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_waveland_wra"))
    sound_play(asset_get("sfx_waveland_wra"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

