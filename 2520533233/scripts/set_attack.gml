//set_attack
if(free and attack == AT_DSPECIAL){
    attack = AT_DSPECIAL_AIR;
}
if((attack_pressed and special_pressed  or di_input == 5 and special_pressed or attack_pressed and taunt_pressed) and tenshi_magic >= tenshi_magic_max/2 and !dragon_install){
    if(di_input == 5){
        true_input = true;
    } else if (taunt_pressed) {
        true_input2 = true;
    }
    attack = AT_EXTRA_1;
}

if(attack == AT_FSPECIAL ){
    fspecial_jump_cancel = false;
    if(free){
        attack = AT_FSPECIAL_AIR;
    }
}

//Muno Phone
//user_event(13);