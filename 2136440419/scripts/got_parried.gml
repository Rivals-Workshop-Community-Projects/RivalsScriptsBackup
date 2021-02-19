// HODAN'S GOT PARRIED
if (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_NSPECIAL) {
    my_hitboxID.hitbox_timer = 0;
}

// Parrying parries the original attack too
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 4) {
    with (pHitBox) if (player_id == other.id && player == other.player && (attack == AT_NSPECIAL || attack == AT_FSPECIAL)) {
        was_parried = true;
        hsp *= -1.5;
        vsp *= -1;
        spr_dir *= -1;
        can_hit_self = true;
        hitbox_timer = 0;
    }
    my_hitboxID.can_hit_self = true;
} else if (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_FSPECIAL) {
    my_hitboxID.hsp *= 1.5;
}