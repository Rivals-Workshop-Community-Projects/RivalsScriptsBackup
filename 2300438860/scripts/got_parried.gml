
if (my_hitboxID.attack == AT_JAB) {
    parry_lag = 0;
}  


if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.type == 2) {
    
    my_hitboxID.hitbox_timer = 0;
    parry_lag = 0;
    
    with (asset_get("pHitBox")) {
     if attack == AT_FSPECIAL{
         hsp *= -1
         spr_dir *= -1
         can_hit_self = true
     }   
        
    }

}


     dmgmul = 0
attackbar = 0