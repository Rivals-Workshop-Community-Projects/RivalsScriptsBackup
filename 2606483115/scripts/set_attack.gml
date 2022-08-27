//set_attack

if(attack == AT_DSPECIAL && free){
    attack = AT_DSPECIAL_AIR
}

if(attack == AT_TAUNT){
    if(not_moved){
        state = PS_IDLE
    }
    if(window == 1 && window_timer < 2){
        if(down_down){
            attack = AT_TAUNT_2
        }
    }
}

if(attack == AT_FSTRONG && tired && window == 1){
    attack = AT_FSTRONG_2
}
if(attack == AT_DSTRONG && tired && window == 1){
    attack = AT_DSTRONG_2
}
if(attack == AT_USTRONG && tired && window == 1){
    attack = AT_USTRONG_2
}