//article3_post_draw.gml
//bypassing projectile shader logic

if ("start_shader" not in self) exit;

if (start_shader) //set up new tolerance to ignore projectiles
{
    with (player_id)
    {
        old_ranges = static_colorT;
        if ("ranges_copy" not in self) ranges_copy = array_clone(static_colorT);
        static_colorT = ranges_copy;

        tempvar = 0;
        repeat (array_length(static_colorT))
        {
            static_colorT[tempvar] = 0;
            tempvar ++;
        }
    }
}
else //set back tolerance to the proper values again
{
    if ("old_ranges" in player_id) player_id.static_colorT = player_id.old_ranges;
}

//////////////////////////////////////////////////////////////////////

//super sonic music
//it needs to be in an article so it will have full stereo play
//it also needs to be in a draw script so the timer will run on pause

if ("super_theme_player" not in self) exit;

if (super_theme_player)
{
    var volume = get_local_setting(3) * 2.5;

    //compatibility with bar's theikos music and other super sonics
    with (oPlayer)
    {
        if ("theikos_theme" in self) //bar reygard theikos
        {
            sound_volume(theikos_theme, (other.player_id.super_theme_loop_start == other.player_id.super_theme_loop_start_set), 0);
        }
        if ("is_bar_sonic" in self) //other super sonics
        {
            sound_volume(super_theme, (bar_ss_array[0] == self) * volume, 0);

            if ((state == PS_RESPAWN || state == PS_DEAD || rings_cur <= 0) && super_theme_playing)
            {
                super_theme_loop_start = super_theme_loop_start_set;
                super_theme_loop_started = false;
                sound_volume(super_theme, 0, 0);
                if (bar_ss_array[1] == self) bar_ss_array[1] = -4;
                if (bar_ss_array[0] == self)
                {
                    bar_ss_array[0] = bar_ss_array[1];
                    bar_ss_array[1] = noone;
                }
                super_theme_playing = false;
            }
            if (!super_theme_playing) sound_stop(super_theme);
        }

        if ("super_theme_playing" in self && super_theme_playing) suppress_stage_music(0, 1); //check
    }

    //setup, runs on the frame sonic goes super
    if (player_id.is_attacking && player_id.super_transform_time == 28 && !player_id.super_theme_playing)
    {
        //player history
        player_id.bar_ss_array[1] = player_id.bar_ss_array[0];
        player_id.bar_ss_array[0] = player_id;
        player_id.super_theme_playing = true;

        player_id.super_theme = sound_play(sound_get("mus_super_intro"), false, 0, volume); //play music
    }

    if (player_id.super_theme_loop_start != player_id.super_theme_loop_start_set && player_id.bar_ss_array[0] == noone) sound_stop(player_id.super_theme);

    //loop countdown
    if (player_id.super_theme_playing) player_id.super_theme_loop_start -= delta_time / 1000000;
    if (player_id.super_theme_loop_start <= 0 && !player_id.super_theme_loop_started)
    {
        sound_stop(player_id.super_theme);
        player_id.super_theme = sound_play(sound_get("mus_super_loop"), true, 0, volume);
        player_id.super_theme_loop_started = true;
    }
}