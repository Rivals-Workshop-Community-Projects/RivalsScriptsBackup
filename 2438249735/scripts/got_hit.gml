////

if invitimer > 0 && enemy_hitboxID.type == 1{
    move_cooldown[AT_FTHROW] = 0

    with (asset_get("pHitBox")) {
       if(player_id == other.id) {
           hitbox_timer = 294
       }
    }
    
    invitimer = 0

    hitstop += 15
    hit_player_obj.hitstop += 15
    
                  spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 40, shit5)  
    move_cooldown[AT_NSPECIAL_2] = 40
    sound_play(sound_get("tstrong"),false,noone,1)
}