if (my_hitboxID.player != my_hitboxID.orig_player) exit;


if my_hitboxID.attack == AT_NSPECIAL {
    my_hitboxID.hitbox_timer = 0
    my_hitboxID.transcendent = true
}

if my_hitboxID.attack == AT_DSPECIAL {
    my_hitboxID.destroyed = true
}