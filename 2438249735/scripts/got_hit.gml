////

if invitimer > 0 && enemy_hitboxID.type == 1{
    
    visible = true
    
    with (asset_get("pHitBox")) {
if(player_id == other.id) {
    hitbox_timer = 294
}
}

invitimer = 0

    hitstop += 10
    hit_player_obj.hitstop += 5
    
                      spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 40, shit5)  
                  spawn_hit_fx(x  , y - 30, lighten)  
    move_cooldown[AT_NSPECIAL_2] = 40
    sound_play(sound_get("tstrong"),false,noone,1)
}