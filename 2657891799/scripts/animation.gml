switch (state){
    case PS_WALL_JUMP:
    if clinging {
        image_index = clamp(floor(state_timer/4), 0, 1)
    } else if state_timer > 3 {
        image_index = 2 + floor(walljump_timer/8)
    }
    break;
    
    default: break;
}