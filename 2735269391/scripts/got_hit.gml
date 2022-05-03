/// my_hitboxID.attack
 with (asset_get("pHitBox")) {
        if player_id == other.id && attack == AT_DSPECIAL{
          destroyed = true;
        }
 }

 hurtsprite += 1+random_func(1,3,true)