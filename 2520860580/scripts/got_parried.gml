///

parry_lag = 0

motivation -= floor(100 - (phase*10))

sound_stop(sound_get("RI"))
sound_play(sound_get("RI"))
spawn_hit_fx(x,y,lighten)
 with (asset_get("pHitBox")) {
        if(player_id == other.id && attack != AT_DSPECIAL ) {
           destroyed = true
        }
}