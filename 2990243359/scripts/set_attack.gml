//
if (attack == AT_NSPECIAL && instance_exists(trident)){
    attack = AT_NSPECIAL_2;
}

if (attack == AT_FSPECIAL && !instance_exists(trident) && !free && move_cooldown[AT_NSPECIAL] == 0){
    attack = AT_FSPECIAL_2;
}

if (attack == AT_FSPECIAL && !instance_exists(trident) && free && move_cooldown[AT_NSPECIAL] == 0){
    attack = AT_FSPECIAL_2_AIR;
}

if (attack == AT_FSPECIAL && instance_exists(trident) && free){
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_DSPECIAL && !instance_exists(trident)){
    attack = AT_DSPECIAL_2;
}