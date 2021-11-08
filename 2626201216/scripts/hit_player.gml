
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

if (get_player_color(player) == 9 &&  random_func( 0, 20, true) = 9)
{

spawn_hit_fx(hit_player_obj.x,hit_player_obj.y,jerma_hit);
sound_play(sound_get("sus"));
}