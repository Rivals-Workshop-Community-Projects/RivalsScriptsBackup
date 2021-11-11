if my_hitboxID.attack != AT_DSPECIAL {
        
        
    if my_hitboxID.sound_effect != asset_get("sfx_blow_weak1")    
    && my_hitboxID.sound_effect != asset_get("sfx_blow_weak2") 
    && my_hitboxID.sound_effect != asset_get("sfx_blow_medium1") 
    && my_hitboxID.sound_effect != asset_get("sfx_blow_medium2") 
    && my_hitboxID.sound_effect != asset_get("sfx_blow_medium3") 
    && my_hitboxID.sound_effect != asset_get("sfx_blow_heavy1") 
    && my_hitboxID.sound_effect != asset_get("sfx_blow_heavy2"){
    
                sound_stop(sound_get("slicew1") )
                sound_stop(sound_get("slicew2") )
                sound_stop(sound_get("slice") )
                
       if get_gameplay_time() % 2 == 0 {
            sound_play(sound_get("slicew1"),false,noone,.5 + my_hitboxID.damage/15 , 2 - min((hitstop*hitstop)/150 , 1) )
           
       } else {
           
            sound_play(sound_get("slicew2"),false,noone,.5 + my_hitboxID.damage/15 , 2 - min((hitstop*hitstop)/150 , 1) )
       
       }
    
                sound_play(sound_get("slice"),false,noone,.4 + my_hitboxID.damage/20 , 1.4 - min((hitstop*hitstop)/300 , .4) )
       
       if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_USTRONG {

         sound_stop(sound_get("slice"))
                sound_play(asset_get("sfx_blow_heavy2"),false,noone,.5 + my_hitboxID.damage/15 , 2 - min((hitstop*hitstop)/120 , 1) )
                sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,.5 + my_hitboxID.damage/15)
       
       
       
       }
    }

}