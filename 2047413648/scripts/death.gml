 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
    
    sound_play(sound_get("RI"));
    fcharge = 3