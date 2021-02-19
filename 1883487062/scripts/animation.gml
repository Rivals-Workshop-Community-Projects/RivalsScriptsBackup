switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
        if (tickCount == 5){
            sprite_index = sprite_get("idleLIT");
            image_index = get_gameplay_time() * .25;
        }
        else{
            sprite_index = sprite_get("idle");
        }
    break;
    
    default: break;
}