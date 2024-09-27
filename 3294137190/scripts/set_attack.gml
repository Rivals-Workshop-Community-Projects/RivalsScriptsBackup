//

if attack == AT_NSPECIAL && trick == 1{
    window = 4;
}

if (attack == AT_TAUNT && !down_down){
    attack = AT_QUICKSILVER;
}

if (attack == AT_QUICKSILVER && silver_bullets >= 20){
    attack = AT_TAUNT;
}

if (attack == AT_FSTRONG && can_viceral == true){
    attack = AT_VICERAL;
}

if (trick == 1){
    switch(attack){
        //case AT_JAB: attack = AT_JAB_2; break; Example
        case AT_JAB: attack = AT_JAB_2; break;
        case AT_DATTACK: attack = AT_DATTACK_2; break;
        case AT_FTILT: attack = AT_FTILT_2; break;
        case AT_UTILT: attack = AT_UTILT_2; break;
        case AT_DTILT: attack = AT_DTILT_2; break;
        case AT_FSTRONG: attack = AT_FSTRONG_2; break;
        case AT_USTRONG: attack = AT_USTRONG_2; break;
        case AT_NAIR: attack = AT_NAIR_2; break;
        case AT_FAIR: attack = AT_FAIR_2; break;
        case AT_BAIR: attack = AT_BAIR_2; break;
        case AT_UAIR: attack = AT_UAIR_2; break;
        case AT_DAIR: attack = AT_DAIR_2; break;
    }
}