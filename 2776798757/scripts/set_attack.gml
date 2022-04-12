if(attack == AT_USPECIAL && !free){
    attack = AT_USPECIAL_GROUND;
}

//sslicer
if(attack == AT_FSPECIAL && current_weapon == 1){
    attack = AT_FSPECIAL_2;
}

//sblade
if(attack == AT_FSPECIAL && current_weapon == 2){
    attack = AT_DSPECIAL_2;
}

//fshield
if(attack == AT_FSPECIAL && current_weapon == 3){
    attack = AT_NSPECIAL_2;
}

//ghunter
if(attack == AT_FSPECIAL && current_weapon == 4){
    attack = AT_FSTRONG_2;
}

//sball
if(attack == AT_FSPECIAL && current_weapon == 5){
    attack = AT_DSTRONG_2;
}

//sburner
if(attack == AT_FSPECIAL && current_weapon == 6){
    attack = AT_USTRONG_2;
}

//espark
if(attack == AT_FSPECIAL && current_weapon == 7){
    attack = AT_EXTRA_1;
}
