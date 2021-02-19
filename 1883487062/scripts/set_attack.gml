//set_attack
if (attack == AT_NSPECIAL && tickCount >= 5){
    attack = AT_NSPECIAL_2;
}

if (attack == AT_FSPECIAL && tickCount > 0){
    attack = AT_FSPECIAL_2;
}