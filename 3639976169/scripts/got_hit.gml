if (armor_temp > 0)
{   
    if (state_cat == SC_HITSTUN)
        sound_play(asset_get("sfx_ice_shatter_big"), false, noone, 1.2, 0.9);
    else
        sound_play(asset_get("sfx_abyss_hex_hit"), false, noone, 1, 1);
    spawn_hit_fx(x, y, HFX_ETA_ICE_BIG);
    armor_duration = 0;
    armor_temp = 0;
    soft_armor = 0;
}
if (custom_clone)
{
    sound_play(asset_get("sfx_clairen_tip_weak"), false, noone, 1, 1);
    spawn_hit_fx(x, y, vfx_hologram_vanish);
    instance_destroy(orb1);
    instance_destroy(orb2);
    instance_destroy(orb3);
    instance_destroy(self);
}