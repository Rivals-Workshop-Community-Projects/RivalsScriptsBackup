///

sound_stop(asset_get("sfx_death1"))
sound_stop(asset_get("sfx_death2"))

sound_stop(sound_get("ssl_death"))
sound_play(sound_get("ssl_death"),false,noone,1,1)

if brage >= 95 {
brage = 95
}
bragesub = 0
ragemode = 0

 with (asset_get("pHitBox")) {
        if player_id == other.id {
            spawn_hit_fx(x,y - 30,306)
          destroyed = true;
        }
    }
    
    

GearX = -1
GearXlv = 1
GearB = 6
GearBcd = 0
GearBcd2 = 0
GearAir = 0
GearO = 0
GearOcd = 0    