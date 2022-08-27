//set_attack

if(attack == AT_TAUNT && down_down){
    attack = AT_TAUNT_2
}
if(attack == AT_TAUNT_2 && attack_down){
    attack = AT_EXTRA_1
}

if(attack == AT_TAUNT){
    if(not_moved){
        state = PS_IDLE
    }
}