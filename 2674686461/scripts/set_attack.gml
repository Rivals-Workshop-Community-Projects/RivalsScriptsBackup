//a


//armored uspecial
if attack == AT_USPECIAL && shields_up {
    attack = AT_USPECIAL_2;
}

//rock fspec
if attack == AT_FSPECIAL && shields_up {
    attack = AT_FSPECIAL_2;
}

//rollout reset
if attack == AT_NSPECIAL {
    nspecial_charge_timer = 0;
    nspecial_charge_looped = false;
    reset_window_value(AT_NSPECIAL,4,AG_WINDOW_HSPEED);
}

if (attack == AT_FSTRONG) or (attack == AT_USTRONG) or (attack == AT_DSTRONG) {
    strong_charge_anim_timer = 0;
    dstrong_loop_num_current = 0;
    dstrong_loop_num_max = 0;
}