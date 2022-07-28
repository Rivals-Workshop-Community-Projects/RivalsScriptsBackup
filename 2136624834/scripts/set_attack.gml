
if attack == AT_NAIR {
    move_cooldown[AT_FTHROW] = 0
    attack = AT_FTHROW
    window = 1
    window_timer = 0 
}


if attack == AT_FAIR {
    move_cooldown[AT_NAIR] = 0
    attack = AT_NAIR
    window = 1
    window_timer = 0 
}

if attack == AT_FSPECIAL && free {
    set_attack_value(AT_FAIR, AG_CATEGORY, 2);
    move_cooldown[AT_FAIR] = 0
    attack = AT_FAIR
    window = 1
    window_timer = 0 
}