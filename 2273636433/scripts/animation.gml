switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;

	case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*8));
		if(state_timer==1)&&(!hitpause){sound_play(sound_get("se_mariod_appear"));}		//112
		if(timer_intro<20)&&(timer_intro>=0){
			intro_done=1;
			sprite_index = sprite_get("intro");
			image_index = timer_intro;
		} else if (timer_intro < 0) {
			sprite_index = sprite_get("intro");
			image_index = 0;
		} else {
		sprite_index = sprite_get("idle");
        image_index = floor(image_number*state_timer/(image_number*10));
		}
	break;
    
	case PS_PRATLAND:
        sprite_index = sprite_get("landinglag");
    break;

    default: break;


}