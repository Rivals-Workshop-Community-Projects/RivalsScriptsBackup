//setting attack

if (attack == AT_DSPECIAL && free == false && window < 2 && SuperMecha == false){
    attack = AT_DSPECIAL_2;
    window = 1;
    window_timer = 0;
}
if (attack == AT_DSPECIAL && free == false && has_hit == false && window == 2 && SuperMecha == false){
    attack = AT_DSPECIAL_2;
    window = 4;
    window_timer = 0;
}
if (attack == AT_DSPECIAL && free == false && has_hit == false && window < 2 && SuperMecha == true){
    attack = AT_DSPECIAL_2;
    window = 10;
    window_timer = 0;
}

if (attack == AT_DSPECIAL && free == true && window <= 9 && SuperMecha == true){
    window = 10;
    window_timer = 0;
}

if (attack == AT_DSPECIAL && free == false && window == 10){
    attack = AT_DSPECIAL_2;
    window = 10;
    window_timer = 0;
}

if (attack == AT_USPECIAL && window < 3 && SuperMecha == true && free){
    window = 10;
    window_timer = 0;
}

if (attack == AT_USPECIAL && !free){
    if (SuperMecha == false){
    attack = AT_USPECIAL_2;
    }
    if (window == 1 && SuperMecha == true){
    attack = AT_USPECIAL_GROUND;
    //window = 10;
    //window_timer = 0;
    }
}

if (attack == AT_USPECIAL_2){
    if (window == 1 && SuperMecha == true){ attack = AT_USPECIAL_GROUND; window = 1; window_timer = 0; }
}

if (attack == AT_FSPECIAL && !free && SuperMecha == false){
    attack = AT_FSPECIAL_2;
    window = 1;
    window_timer = -1;
}

if (attack == AT_FSPECIAL && SuperMecha == true){
    attack = AT_FSPECIAL_AIR;
    window = 1;
    window_timer = -1;
}

if (attack == AT_TAUNT && down_down){ //Yeah
    attack = AT_FTHROW;
}

if (attack == AT_TAUNT && up_down){ //Yeah
    //attack = AT_TAUNT_2;
}

if (attack == AT_TAUNT && EmeraldAmount >= 7){
    //attack = AT_TAUNT_2;
}
if (attack == AT_TAUNT && EmeraldAmount > 0){
    //attack = AT_TAUNT_2;
    //window = 1;
    //window_timer = 0;
}

if (attack == AT_USPECIAL_2 && move_cooldown[AT_USPECIAL_2] > 0 && SuperMecha == false){
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

if (attack == AT_NSPECIAL){
    if (free == false && window < 2 && SuperMecha == true){
    window = 10;
    window_timer = 0;
    }
    if (air_special == true && SuperMecha == false){
    window = 6;
    window_timer = 0;
    }
    if ((window == 6 || window == 7) && air_special == false && SuperMecha == false){
    window = 9;
    window_timer = 0;
    }
    if (free == true && window <= 1 && SuperMecha == true){
    window = 1;
    window_timer = 0;
    attack = AT_NSPECIAL_2;
    }
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