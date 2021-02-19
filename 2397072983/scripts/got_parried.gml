///

sound_play(sound_get("gothit"),false,noone,2);

if (my_hitboxID.type == 2) {
    
    my_hitboxID.hitbox_timer = 0;
    
    with (asset_get("pHitBox")) {
        if player_id == other.id {
         hsp *= -2
         spr_dir *= -1
         can_hit_self = true
        }
     }   
        
    

}