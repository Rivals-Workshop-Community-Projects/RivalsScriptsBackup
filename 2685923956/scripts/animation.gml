switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if (state==PS_IDLE_AIR){
	image_index = 6
}
if (state==PS_SPAWN){
	var timemax = 90;
	if (state_timer<timemax){
		sprite_index = sprite_get("intro")
		image_index = 0 + state_timer * 10 / timemax;
	}
}