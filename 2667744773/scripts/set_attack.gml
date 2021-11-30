//set_attack


//if (attack == AT_NSPECIAL){
//    attack = 49;
//}


if(attack == AT_JAB){
    clear_button_buffer(PC_ATTACK_PRESSED)
}



if (attack == AT_TAUNT && down_down && shield_down){
    attack = AT_TAUNT_2;
}

