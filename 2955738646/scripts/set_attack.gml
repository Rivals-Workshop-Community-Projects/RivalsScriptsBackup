//set_attack

if (attack == AT_DSPECIAL && free == false && window < 2){
    attack = AT_DSPECIAL_2;
    window = 1;
    window_timer = 0;
}
if (attack == AT_DSPECIAL && free == false && has_hit == false && window == 2){
    attack = AT_DSPECIAL_2;
    window = 4;
    window_timer = 0;
}

if (attack == AT_USPECIAL && !free){
    attack = AT_USPECIAL_2;
}

if (attack == AT_FSPECIAL && !free){
    attack = AT_FSPECIAL_2;
    window = 1;
    window_timer = -1;
}

if (attack == AT_TAUNT && down_down){ //Yeah
    attack = AT_FTHROW;
}

if (attack == AT_TAUNT && special_down && attack_down){
    //attack = AT_TAUNT_2;
}

if (attack == AT_USPECIAL_2 && move_cooldown[AT_USPECIAL_2] > 0){
    //So he doesn't jump whenever it's on cooldown
    attack = AT_USPECIAL;
    window = 1;
    window_timer = 0;
    clear_button_buffer( PC_UP_STICK_PRESSED );
    clear_button_buffer( PC_SPECIAL_PRESSED );
    clear_button_buffer( PC_JUMP_PRESSED );
}

//if (SuperMech == true){
    //if (attack == AT_DSPECIAL){
        //attack = AT_DSPECIAL_2;
    //}
//}

if (attack == AT_NSPECIAL && air_special == true){
    window = 6;
    window_timer = 0;
} else if (attack == AT_NSPECIAL && (window == 6 || window == 7) && air_special == false){
    window = 9;
}
/*
if (attack == AT_NSPECIAL && telepunch == 1){
    window = 10;
    window_timer = 0;
}
if (attack == AT_USPECIAL && telepunch == 1){
    window = 7;
    window_timer = 0;
    telepunch = 3;
}
if (attack == AT_DSPECIAL && telepunch == 1){
    window = 7;
    window_timer = 0;
}