///

if (my_hitboxID.attack == AT_FSTRONG) {
    parry_lag = 70;
}    

 with (asset_get("pHitBox")) {
        if player_id == other.id {
            if attack != AT_NSPECIAL {    
              destroyed = true;
            }
            if attack == AT_NSPECIAL && hbox_num > 3 {    
              destroyed = true;
            }
        }
    }
    
    
timestop -= 4




    ncharge = 0
    


