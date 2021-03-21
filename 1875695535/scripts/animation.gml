switch (state){
    case PS_IDLE:
    if (ragemode == 1) {
        checkcurrent = image_index
        sprite_index = (sprite_get("idlerage"));
        idle_anim_speed = .2;
        image_index = checkcurrent;
    }
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}