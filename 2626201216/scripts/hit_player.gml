
if (attack == AT_BAIR)
{
    //sound_play(sound_get("hit_s06_r"));
}

if (attack == AT_FAIR)
{
    if (window_timer = 2)
    {
        sound_play(sound_get("hit_s07_a"));
    }
    else
    {
        sound_play(sound_get("hit_s06_r"));
    }
}

if (attack == AT_USTRONG)
{
    sound_play(asset_get("sfx_blow_heavy1"));
}