//animation
switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_IDLE_AIR:
    if (prev_state = PS_WALL_JUMP){
    image_index = 5;
}

    if (prev_state == PS_ATTACK_AIR && attack == AT_FAIR && state_timer < 7){
    image_index = 3;
}


    default: break;
}
