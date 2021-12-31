///

inkshield = 0

my_hitboxID.hitbox_timer = 0
my_hitboxID.hsp *= 2

if (my_hitboxID.attack == AT_NSPECIAL) {
    set_state (PS_PRATFALL)
    parry_lag = 60;
}  


if (my_hitboxID.attack == AT_DSPECIAL) {
     with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
    
    set_state (PS_PRATFALL)
    parry_lag = 120;
    
    
}