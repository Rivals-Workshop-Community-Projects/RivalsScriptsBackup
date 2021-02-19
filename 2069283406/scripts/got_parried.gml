
    


if (my_hitboxID.attack == AT_DSTRONG) {
    set_state (PS_PRATFALL)
    parry_lag = 60;
}   


if (my_hitboxID.attack == AT_NSPECIAL) {
    set_state (PS_PRATFALL)
    parry_lag = 60;
}   

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2) {
    parry_lag = 60;
}   


if (my_hitboxID.attack == AT_FSPECIAL) {
    my_hitboxID.hitbox_timer = 0;
}


fireon = 0
firerange = -100
if "fp" in self {
fp.destroyed = true
}