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
    
    
    if  gun != 0 && my_hitboxID.attack == AT_NSPECIAL{
         gun = 0
         spawn_hit_fx (x , y - 10 , 14)
	    spawn_hit_fx (x , y - 10 , 13)
	    sound_stop(sound_get("exp1")); 
	    sound_play(sound_get("exp1"),false,noone,1.4); 
	    my_hitboxID.destroyed = true 
    }
    
    
    if my_hitboxID.type == 2 {
        parry_lag = 30 + floor(abs(x - hit_player_obj.x)/8)
    }