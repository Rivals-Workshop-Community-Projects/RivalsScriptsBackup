//set_attack

if (attack == AT_DSPECIAL && window != 4 && !free && has_hit == false){
    attack = AT_DSPECIAL_2;
    //window = 3;
}

if (attack == AT_USPECIAL && !free){
    attack = AT_USPECIAL_2;
}

if (attack == AT_TAUNT && down_down){ //Yeah
    attack = AT_FTHROW;
}

if (attack == AT_TAUNT && special_down && attack_down){
    //attack = AT_TAUNT_2;
}

if (attack == AT_USPECIAL && move_cooldown[AT_USPECIAL_2] > 0 && !free){
    //So he doesn't jump whenever it's on cooldown
    //attack = AT_JAB;
    window = 10;
    vsp = 1;
}

if(SuperMech == true){
    if (attack == AT_DSPECIAL){
        //attack = AT_DSPECIAL_2;
    }
}

if (attack == AT_NSPECIAL && air_special == true){
    window = 6;
    window_timer = 0;
} else if (attack == AT_NSPECIAL && (window == 6 || window == 7) && air_special == false){
    window = 9;
}
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