if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.effect == 69) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.vsp = 3.5 * my_hitboxID.shotbounces;
}

if(my_hitboxID.attack == AT_JAB && (window == 1 || window == 3)){
    was_parried = false;
}

if((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_1 || my_hitboxID.attack == AT_FSPECIAL_2) && was_parried){
    hsp = 0;
}