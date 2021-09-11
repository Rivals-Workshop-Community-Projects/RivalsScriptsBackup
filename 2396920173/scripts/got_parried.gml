//got-parried

if my_hitboxID.attack == AT_JAB {
    parry_lag = 0;
}

if pawn_meter > 0 {
    pawn_meter -= 1;
}

if my_hitboxID.attack == AT_NSPECIAL_2 {
    my_hitboxID.hitbox_timer = 0;
}