if(my_hitboxID.attack == AT_NSPECIAL){
    my_hitboxID.was_parried = false;
    //my_hitboxID.proj_angle += 180;
}

if(my_hitboxID.attack == AT_DSPECIAL){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 1.5;
    my_hitboxID.proj_angle += 180;
}