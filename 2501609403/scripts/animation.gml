switch(state)
{
    case PS_SPAWN:
        if (state_timer % int_spd == 0) introTimer++;
        sprite_index = sprite_get(introTimer<int_length&&introTimer>=0?"intro":"idle");
        if (introTimer < 0) image_index = 0;
        else if (introTimer < int_length) image_index = introTimer;
        break;
}

switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}


//Crawl
if (state == PS_CROUCH){
    if (spr_dir == 1){
	    if(right_down)
	    {
            sprite_index = sprite_get("crouchroll");
            image_index = floor(image_number*state_timer/(image_number*5));
    	}
    	if(left_down)
    	{
            sprite_index = sprite_get("crouchroll_backward");
            image_index = floor(image_number*state_timer/(image_number*5));
	    }
    }
    if (spr_dir == -1){
        if(right_down)
	    {
            sprite_index = sprite_get("crouchroll_backward");
            image_index = floor(image_number*state_timer/(image_number*5));
    	}
    	if(left_down)
    	{
            sprite_index = sprite_get("crouchroll");
            image_index = floor(image_number*state_timer/(image_number*5));
	    }
    }
}

if (state == PS_LANDING_LAG){
	sprite_index = sprite_get("land");
    image_index = floor(image_number*state_timer/(image_number*5));
}

//Djump

if (state == PS_DOUBLE_JUMP && djumps == 1){
	sprite_index = sprite_get("jump");
}

if (state == PS_DOUBLE_JUMP && djumps == 2){
	sprite_index = sprite_get("doublejump");
}