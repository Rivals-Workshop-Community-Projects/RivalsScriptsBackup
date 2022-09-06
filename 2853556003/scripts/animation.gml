//animation

if(attack == AT_DSTRONG && state == PS_ATTACK_GROUND){
    if(window == 2 && strong_charge > 0){
        image_index = 2 + (strong_charge / 4) % 3;
    }
}

if(attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
    if(window == 1 && strong_charge > 0){
        image_index = 1 + (strong_charge / 5) % 3;
    }
}
