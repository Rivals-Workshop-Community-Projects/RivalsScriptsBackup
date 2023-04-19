if(my_hitboxID.attack == AT_EXTRA_1){
    my_hitboxID.length = my_hitboxID.length + my_hitboxID.hitbox_timer;
}

if(my_hitboxID.attack == AT_EXTRA_3){
    my_hitboxID.length = my_hitboxID.length + my_hitboxID.hitbox_timer;
    if(hit_player_obj == self){
        my_hitboxID.destroyed = true;
    }
}

if(my_hitboxID.attack == AT_NSPECIAL_2){
    my_hitboxID.length = my_hitboxID.length + my_hitboxID.hitbox_timer;
}

if(my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.type == 2){
    my_hitboxID.destroyed = true;
}