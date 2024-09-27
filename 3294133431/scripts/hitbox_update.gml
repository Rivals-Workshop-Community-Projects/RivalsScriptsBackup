
if(attack == AT_TAUNT_2)
{
    if(player_id.chars[player_id.charIndex] == "mouse"
    && hbox_num == 1 && !free)//hitbox_timer == 119)//hitbox_timer == get_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME)-1)
    {
        //sound_play(asset_get("sfx_ell_fist_explode"));//sfx_ell_dspecial_explosion_1
        //create_hitbox(AT_FSPECIAL, 2, x, y);
        destroyed = 1;
    }
    
    if(player_id.chars[player_id.charIndex] == "gus" && free)
        sprite_index = asset_get("chester_air_spr");
}

if(attack == AT_DSTRONG)
{
    var time = hitbox_timer/length;
    // print(time);

    image_xscale -= 0.0075;
    image_yscale -= 0.0075;

    damage -= 0.25;
    kb_value -= 0.25;
    kb_scale -= 0.025;
    hitpause -= 0.25;
    hitpause_growth -= 0.025;
    hitstun_factor -= 0.025;
    
    if(time > 0)
    {
        sound_effect = asset_get("sfx_blow_heavy1");
        hit_effect = 304;
    }
    if(time > 0.25)
    {
        sound_effect = asset_get("sfx_blow_medium1");
        hit_effect = 302;
    }
    if(time > 0.5)
    {
        sound_effect = asset_get("sfx_blow_weak1");
        hit_effect = 301;
    }
}