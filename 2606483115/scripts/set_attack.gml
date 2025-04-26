//set_attack

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

if(attack == AT_DSPECIAL && free){
    attack = AT_DSPECIAL_AIR
}