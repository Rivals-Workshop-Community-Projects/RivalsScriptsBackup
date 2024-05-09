if (attack == AT_NSPECIAL && hbox_num == 5)
{
if (!free)
{
    if spr_dir == 1
    {
    sound_play(asset_get("sfx_ice_shatter"));
    var bio = instance_create(x, y, "obj_article1"); //iron ball
    //article.player_id = player_id;
    instance_destroy();
    }
    if spr_dir == -1
    {
    sound_play(asset_get("sfx_ice_shatter"));
    var bio = instance_create(x + (50 *spr_dir), y, "obj_article1"); //iron ball
    //article.player_id = player_id;
    instance_destroy();
    }
}    
}




