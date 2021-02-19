switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_IDLE_AIR:
    if (attack == AT_NAIR){
    image_index = 5;
}
    
    default: break;
}
