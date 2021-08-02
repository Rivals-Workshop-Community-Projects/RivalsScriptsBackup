//got-parried

if my_hitboxID.attack == AT_DAIR {
    set_state(PS_PRATFALL);
}

if my_hitboxID.attack == AT_DATTACK {
    if free set_state(PS_PRATFALL);
    else set_state(PS_PRATLAND);
}

if my_hitboxID.attack == AT_FSPECIAL {
    magnesisReticleDraw = false;
}