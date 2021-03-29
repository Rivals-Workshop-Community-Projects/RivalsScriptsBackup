infernal2 -= floor(infernal2/3)


triggered = 1

 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }