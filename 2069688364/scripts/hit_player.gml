if attack=AT_DAIR
{
    sound_play(asset_get("sfx_blow_heavy2"))
}
if free
{
    if radius!=noone
    {
        radius+=20
    }
}
paralyze=true
/*
if attack=AT_NAIR
{
    hsp=(hit_player_obj.x-x)/2
    vsp+=(hit_player_obj.y-y)/2
}