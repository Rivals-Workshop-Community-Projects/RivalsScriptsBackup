switch (state){
    case PS_IDLE:
      image_index = floor(image_number*state_timer/(image_number*10));
    break;
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
	
	case PS_PRATFALL:
        image_index = floor(image_number*state_timer/(image_number*6));
    break;
	
	case PS_PRATLAND:
        sprite_index = sprite_get("pratland");
		image_index = floor(image_number*state_timer/(image_number*7));
    break;
	
	case PS_ATTACK_GROUND:{
        if (attack == AT_TAUNT)
        {sprite_index = sprite_get("taunt");
		image_index = floor(image_number*state_timer/(image_number*7));
}
}
    break;
}

