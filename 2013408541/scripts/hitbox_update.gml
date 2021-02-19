if (attack == AT_FSPECIAL && hbox_num == 1)
{
    if (window == 3)
        destroyed = true;
    else if (place_meeting(x+sign(hsp)*12,y,asset_get("par_block")))
    {
        player_id.fspec_wall = true;
        player_id.fspec_wallpos[0] = x;
        player_id.fspec_wallpos[1] = y;
        sound_play(asset_get("sfx_ice_on_player"));
        destroyed = true;
    }
}