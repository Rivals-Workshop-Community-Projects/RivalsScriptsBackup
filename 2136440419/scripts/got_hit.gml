// HODAN'S GOT HIT

if (enemy_hitboxID.orig_player == player && enemy_hitboxID.hbox_num == 1 && (enemy_hitboxID.attack == AT_NSPECIAL || enemy_hitboxID.attack == AT_FSPECIAL) && enemy_hitboxID.kb_value == 1) {
    // Set sweatwhirl hitpause to be true if hit by a parried sweatwhirl
    parried_sweatwhirl_hitpause = true;
    parry_sweatwhirl_hit = true;
}