if(my_hitboxID.type != 2)
{
    with(obj_article1)
    {
        if(player_id == other.id)
        {
            state = 2;
            state_timer = 0;
            spawn_hit_fx(x,y, disappear_fx); sound_play(asset_get("sfx_absa_cloud_crackle"));
        }
    }
}
if(my_hitboxID.type == 2)
{
    my_hitboxID.vsp *= 2;
    my_hitboxID.hsp *= 2;
    my_hitboxID.hitbox_timer = 0;
}