///

 if crossout == 3 {
                 spawn_hit_fx(crossx,crossy,302)
 }
 
 redP /= 2
 
    if crossout != 0 {
                 spawn_hit_fx(crossx,crossy,302)
                 crossout = 0
                 crossx = -1
                 crossy = -1
    }
    
    move_cooldown[AT_USPECIAL_GROUND] = 22
    
    if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.type == 1 {
        
        parry_lag = 60
        set_state(PS_PRATFALL)
        
    }