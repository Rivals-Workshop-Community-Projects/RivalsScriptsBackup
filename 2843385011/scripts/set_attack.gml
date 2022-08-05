///#args attack // this line makes code editors not freak out for some reason

if (attack == AT_TAUNT && (down_down)){
  attack = AT_TAUNT_2 
}

if (attack == AT_DSPECIAL && dspecial_orb > 0 && (attack_pressed || dspecial_orb == 4)){
    attack = AT_DSPECIAL_2;
}

if (attack == AT_FSPECIAL && instance_exists(minion)){
    attack = AT_FSPECIAL_2; 
}

