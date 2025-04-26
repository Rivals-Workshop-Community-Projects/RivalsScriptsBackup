
if(instance_exists(cursor_id))
{
	var cur_x = get_instance_x(cursor_id);
	var cur_y = get_instance_y(cursor_id);
	
    if(cur_x > 178 + x) && (cur_x <= 208 + x) && (cur_y > 32 + y) && (cur_y <= 56 + y)//Button Coordinates
    {
        suppress_cursor = true;
        if(menu_a_pressed == true)
        {
            if(get_synced_var(player) == 0)
            {
                snd_rng = random_func(0, 8, true);
                if(snd_rng == 0)
                    sound_play(sound_get("spy_yes01"));
                else if(snd_rng == 1)
                    sound_play(sound_get("spy_yes02"));
                else if(snd_rng == 2)
                    sound_play(sound_get("spy_yes03"));
                else if(snd_rng == 3)
                    sound_play(sound_get("Spy_battlecry02"));
                else if(snd_rng == 4)
                    sound_play(sound_get("Spy_battlecry04"));
                else if(snd_rng == 5)
                    sound_play(sound_get("Spy_highfive07"));
                else if(snd_rng == 6)
                    sound_play(sound_get("Spy_taunt_int_16"));
                else if(snd_rng == 7)
                    sound_play(sound_get("Spy_autocappedintelligence03"));
                // else if(snd_rng == 6)
                //     sound_play(sound_get("Spy_highfive13"));//TODO: maybe after x changes
                    
                set_synced_var(player, 1);
            }
            else
                set_synced_var(player, 0);

            sound_play(asset_get("mfx_option"));
            menu_a_pressed = false;
        }
    }
}