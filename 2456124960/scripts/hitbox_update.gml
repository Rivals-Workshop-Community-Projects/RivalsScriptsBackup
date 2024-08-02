//hi
if (attack == AT_DSPECIAL && hbox_num == 1) {
    with (pHitBox) {
        if (player == other.player && attack == AT_DSPECIAL && hbox_num == 2) {
            y = -1000;
            destroyed = true;
        }
    }
}