switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if (state == PS_IDLE_AIR && prev_state == PS_WALL_JUMP){
	image_index = 7;
}