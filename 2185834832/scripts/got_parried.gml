if(attack == AT_FSTRONG){
    window = 3
    window_timer = 20
}

if(attack == AT_DTILT){
    window = 6
    window_timer = 24
}

if(waterCharges > 0){
waterCharges -= 1
}

if(attack == AT_FSPECIAL){
    if(free){
        state = PS_PRATFALL
    }else{
        state = PS_PRATLAND
    }
    prat_land_time = 6
}

if(my_hitboxID.attack == AT_DSPECIAL){
    saw_blade.state = 4
    saw_blade.state_timer = 0
}