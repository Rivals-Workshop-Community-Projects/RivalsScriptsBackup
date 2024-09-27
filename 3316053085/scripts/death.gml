//death.gml

//reset charges
charge_cur = 0;

//fspec reset
can_fspec = true;
if (fspec_leap_limit > 0 && !free) fspec_leap_limit = 0;

//destroy all runes
for (var i = 0; i < array_length(artc_rune); i++)
{
    if (instance_exists(artc_rune[i]))
    {
        artc_rune[i].state = "inactive";
        artc_rune[i].state_timer = 0;
    }
}

//dspec charge sound stop
if (dspec_loop_sound != noone)
{
    sound_stop(dspec_loop_sound);
    sound_play(sound_get("sfx_dspec_end"));
    dspec_loop_sound = noone;
}

if (!s_alt && alt_cur == 16 && get_match_setting(SET_SEASON) == 3 && get_player_stocks(player) > 1) halloween_costume = true;

//overdrive
if (can_overdrive > 0)
{
    if (using_overdrive <= 1) od_cur /= 2;
    else od_cur = 0;
    using_overdrive = 0;
}