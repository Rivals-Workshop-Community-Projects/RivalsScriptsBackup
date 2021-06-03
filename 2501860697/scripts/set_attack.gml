user_event(13);

if venom_timer > 0 && attack == AT_FSPECIAL && venom_stack = 3{
    attack = AT_FSPECIAL_2;
}

if  venom_timer > 0 && attack == AT_FSPECIAL && (venom_stack == 0 || venom_stack == 1 || venom_stack == 2) {
attack = AT_FSPECIAL_AIR;
}

if venom_current != 1 && attack == AT_FSPECIAL && short = 0  {
    attack = AT_FSPECIAL_AIR;
}