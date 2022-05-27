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

if(my_hitboxID.attack == AT_DSPECIAL){
    saw_blade.state = 4
    saw_blade.state_timer = 0
}