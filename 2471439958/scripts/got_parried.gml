if(my_hitboxID.attack == AT_JAB){
    if window == 3{
    parry_lag = 0;
    }
    if window == 4{
        parry_lag = 30;
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2) {
    
    my_hitboxID.hitbox_timer = 0;
    parry_lag = 0;
    
    with (asset_get("pHitBox")) {
    if player_id == other.id {	
     if attack == AT_NSPECIAL{
         hsp *= -1
         spr_dir *= -1
         can_hit_self = true
         length = 20
         ice_mark = 0;
        ice_mark_cont = 0;
        ice_cont = 0
     }   
    }
    }

}
if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.type == 2) {
    
    my_hitboxID.hitbox_timer = 0;
    parry_lag = 0;
    
    with (asset_get("pHitBox")) {
    if player_id == other.id {	
     if attack == AT_NSPECIAL_2{
         hsp *= -1
         spr_dir *= -1
         can_hit_self = true
         length = 20
         ice_mark = 0;
        ice_mark_cont = 0;
        ice_cont = 0
     }   
        
    }
    }

}
