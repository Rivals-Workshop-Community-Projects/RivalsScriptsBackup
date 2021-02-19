if (orb != noone && move_cooldown[AT_NSPECIAL] > 0 && attack == AT_NSPECIAL){
    attack = AT_NSPECIAL_2;
}

if (attack == AT_FSPECIAL && can_blue == false){
    attack = AT_FSPECIAL_2;
}