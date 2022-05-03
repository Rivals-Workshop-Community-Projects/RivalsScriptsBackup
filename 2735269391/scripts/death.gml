/// my_hitboxID.attack


 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
 }