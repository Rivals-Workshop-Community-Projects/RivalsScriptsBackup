//hitbox_update

if(attack == AT_DSPECIAL && hbox_num == 1)
{
    damage = ease_linear(7, 14, player_id.dspecialTimer, player_id.dspecialTimerMax) 
    + floor(ease_linear(0, 10, player_id.dspecialAirTimer, 15)); 
}

if(attack == AT_FSPECIAL)
{
    var dir = sign(hsp);
    if(dir == 0 && startUp)
        dir = startDir;
    proj_angle -= 10 * dir;
    
    if(lastVsp > 0 && vsp < 0 && free)
    {
        hsp *= 0.5;
        vsp *= 0.5;
        if(hsp == 0)
            destroy();
    }
    //TODO: sound on bounce
 
    if(hbox_num == 1 && hitbox_timer == 119)//hitbox_timer == get_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME)-1)
        destroy();
}

if(attack == AT_USTRONG)
{
    if(hbox_num == 3 && hitbox_timer == 29)
    {
        destroyed = 1;
        sound_play(asset_get("sfx_leafy_hit3"));
    }
}

if(attack == AT_BAIR && hbox_num == 3)
{
    //TODO: instead fade?
    if(hitbox_timer == 64)
    {
        destroyed = 1;
        sound_play(asset_get("sfx_leaves"));
    }   
}

lastVsp = vsp;

#define destroy()
{
    sound_play(asset_get("sfx_ell_fist_explode"));//sfx_ell_dspecial_explosion_1
    create_hitbox(AT_FSPECIAL, 2, x, y);
    destroyed = 1;
}