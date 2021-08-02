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