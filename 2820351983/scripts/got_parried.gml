if (my_hitboxID.attack == AT_FSPECIAL){
    state = PS_PRATFALL;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
    state = PS_PRATFALL;
}