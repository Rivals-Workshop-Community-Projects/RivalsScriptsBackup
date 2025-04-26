infernal2 /= 1.5

bursted = 0
gunname = 0
Donottaunt = 300

 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
    
    
    
        if rank > 0 && (hunter == 1 or Vrank = 1) {
    sound_play(sound_get("rankd"),false,noone,1) 
    }
    
    rank = 0
    rankm = 220
    prevrank = 0
    
    if tooltip != 0 {
        
        tooltip += 1 + random_func(5,10,true)
        
    } else {
        tooltip = 1
    }