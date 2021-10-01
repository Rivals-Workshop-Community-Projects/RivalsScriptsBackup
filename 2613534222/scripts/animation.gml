if((attack == AT_JAB or attack == AT_NAIR) and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)){
    if(window == 2){
        if(floor(window_timer/4%2) == 0){
            image_index = proj_size;
        } else {
            image_index = max(1,proj_size-1);
        }
    }
}