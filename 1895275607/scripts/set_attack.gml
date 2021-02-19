//set_attack

if (attack == AT_USPECIAL && birdOut){
    attack = AT_USPECIAL_2;
}

if(attack == AT_USTRONG){
    if(parryUpSmashModifier){
        set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 35);
        parryUpSmashModifier = false;
    }
    else{
        reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);
    }
}
if(attack == AT_DATTACK){
    reverseDir = true;
}
if(attack == AT_DAIR){
    can_fast_fall = false;
    dairDamageTimer = 0;
}

if (attack == AT_FSPECIAL && birdOut){
    attack = AT_FSPECIAL_2;
}

if (attack == AT_NSPECIAL && !birdOut){
    attack = AT_NSPECIAL_2;
}

//if (attack == AT_DSPECIAL && canShoot == 0){
//    attack = AT_DSPECIAL_2;
//}