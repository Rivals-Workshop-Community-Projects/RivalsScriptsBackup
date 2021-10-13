///


with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}

    sound_play(sound_get("vdeath"))  
    if rank > 0 {
    sound_play(sound_get("rankd"),false,noone,1) 
    }
    
    if get_player_color(player) == 9  {

      sound_play(sound_get("hoo"))

    } 
    
    rank = 0
    rankm = 0
    prevrank = 0
    
DT = 6
triggered = 0
weapon = -1
exheld = -1