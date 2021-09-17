if (attack == AT_FSPECIAL) {
    charge = player_id.fspecial_charge;
} else if (attack == AT_FTILT || attack == AT_DSPECIAL) {
    time_since_reset = -1;
    grabbed = false;
    stun = -1;
    hit_by = 0;
    with (asset_get("pHitBox")) {
        if (self != other && player_id == other.player_id && 
            type == 2 && (attack == AT_FTILT || attack == AT_DSPECIAL)) {
            if (stun < 0 || stun > 20) destroyed = true;
        }
    }
}
