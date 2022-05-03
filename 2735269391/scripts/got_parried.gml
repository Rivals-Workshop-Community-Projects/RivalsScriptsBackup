/// my_hitboxID.attack
 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
 }
 
 
 if my_hitboxID.type == 2 { 
     move_cooldown[AT_DTHROW] = 300
 }