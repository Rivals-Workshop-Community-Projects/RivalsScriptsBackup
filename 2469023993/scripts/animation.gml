switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}
switch (state){
    case PS_WALL_JUMP:
    if clinging {
        image_index = clamp(floor(state_timer/4), 0, 1)
    } else if state_timer > 4 {
        image_index = 2 + floor(walljump_timer/8)
    }
    break;
    
    default: break;
}