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
    if (hit_player_obj.hitpause)
    {
        hit_player_obj.hitstop += 25;
        hit_player_obj.hitstop_full += 25;
    }
    // considered making hologram reflect projectiles; no longer
    /*if (enemy_hitboxID.type == 2 && !enemy_hitboxID.does_not_reflect)
    {
        with (enemy_hitboxID)
        {
            reflected = true;
            destroyed = false;
            destroyed_next = false;
            last_player_id = other;
            player = other.player;
            hsp = -hsp;
            vsp = -vsp;
        }
    }*/
    user_event(3);
}