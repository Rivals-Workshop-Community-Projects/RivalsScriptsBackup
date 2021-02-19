switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
	{
		if (image_index == 0)
		{
			sprite_index = sprite_get("idle_3");
			image_index = floor(image_number*state_timer/(image_number*5));
		}
		else if (image_index > 0 &&  image_index < 18)
		{
			sprite_index = sprite_get("idle_2");
			image_index = floor(image_number*state_timer/(image_number*4));
		}
		else if (image_index == 18)
		{
			sprite_index = sprite_get("idle_3");
			image_index = 1;
		}
	}
    break;
}