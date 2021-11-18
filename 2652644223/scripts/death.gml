//Reset bullets
bullets = 6;
hud_bullet = 6;
hud_enhanced = 0;

with(obj_article1)
{
    if(player_id == other.id)
    {
        state = 2;
        state_timer = 0;
        spawn_hit_fx(x,y, disappear_fx); sound_play(asset_get("sfx_absa_cloud_crackle"));
    }
}