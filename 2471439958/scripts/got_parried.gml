if(my_hitboxID.attack == AT_DAIR){
    set_state( PS_PRATFALL );
}
if(my_hitboxID.attack == AT_FSPECIAL){
    set_state( PS_PRATFALL );
}
if(my_hitboxID.attack == PS_ATTACK_AIR || PS_ATTACK_GROUND){
    ice_cont = 0;
    ice_active = false;
    hit_player_obj.ice_mark = 0;
    ice_active_cont = 0;
    hit_player_obj.outline_color = [0, 0, 0];
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
    ice_cont = -30;
    ice_active = false;
    hit_player_obj.ice_mark = 0;
    ice_active_cont = 0;
    hit_player_obj.outline_color = [0, 0, 0];
     }   
        
    }
    }

}
