//hitbox_update

if (attack == AT_NSPECIAL) {
    if (hbox_num == 3) {
        can_hit_self = true;
        
        with (oPlayer) {
            if (player != other.player) {
                other.can_hit[player] = false;
            }
        }
    }
    
}