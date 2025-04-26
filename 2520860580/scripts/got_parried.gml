///

parry_lag = 0
parried = true

if justparried == 0{
if my_hitboxID.type == 1{
style += my_hitboxID.damage*6
motivation -= min(80,floor(my_hitboxID.damage*8))
}
} else {
style += my_hitboxID.damage*3
motivation -= min(10,floor(my_hitboxID.damage*4))
}
if my_hitboxID.type == 2{
motivation -= max(4,floor(my_hitboxID.damage*5))
style += my_hitboxID.damage*4
}
sound_stop(sound_get("RI"))
sound_play(sound_get("RI"))
spawn_hit_fx(x,y,lighten)

with (asset_get("pHitBox")) {
    if(player_id == other.id && attack != AT_DSPECIAL && attack != AT_FSPECIAL && attack != AT_EXTRA_2 ) {
        destroyed = true
    }
}

if my_hitboxID.attack == AT_EXTRA_2 {
    with (asset_get("pHitBox")) {
    if(player_id == other.id && attack == AT_EXTRA_2 ) {
        destroyed = true
    }
}    
}

if my_hitboxID.type == 1{
justparried = 20
}