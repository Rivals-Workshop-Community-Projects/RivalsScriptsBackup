
if (airdashing && state_cat = SC_AIR_NEUTRAL)
{

	if (dashdir == 1)
	sprite_index=sprite_get("dash");

	if (dashdir == -1)
    sprite_index=sprite_get("airdodge_back");

    if (image_index > 3)
    image_index = 0;
    
    	
    
	var	dashsfxindex = random_func( 1, 3, true ) + 1;
		
		if state_timer = 1 && !hitpause
		{
		
		sound_play(sound_get("airdash_b" + string(dashsfxindex)));
		}
}



switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*8));
    break;
    case PS_WALK_TURN:
        if looking==spr_dir{
        sprite_index=sprite_get("walkturn");
        
    } else {
        set_state(PS_WALK);
        sprite_index=sprite_get("walkback");
        
    }
    break;
    case PS_WALK:
    if looking==spr_dir{
        sprite_index=sprite_get("walk");
        
    } else {
        sprite_index=sprite_get("walkback");
        
    }
    image_index = floor(image_number*state_timer/(image_number*10));
    break;
    
    case PS_TECH_BACKWARD:
    case PS_TECH_FORWARD:
    case PS_TECH_GROUND:
    
    if (state_timer = 1) && voice_lines {
    	var sfxindex;
		sfxindex = random_func( 1, 3, true ) + 1;
		
		sound_play(sound_get("tech" + string(sfxindex)));
    }
    	sprite_index=sprite_get("tech");
    
    break;
    break;
    break;
    
    case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
	sprite_index = sprite_get("roll_backward");
	break;
	break;
    
    case PS_AIR_DODGE:
    if (air_dodge_dir >= 2 && air_dodge_dir <= 4 && spr_dir = 1) || (air_dodge_dir >= 6 && air_dodge_dir <= 8 && spr_dir = -1)
    sprite_index = sprite_get("airdodge_forward");
    else if (air_dodge_dir >= 2 && air_dodge_dir <= 4 && spr_dir = -1) || (air_dodge_dir >= 6 && air_dodge_dir <= 8 && spr_dir = 1)
    sprite_index = sprite_get("airdodge_back");
    
    break;
    
    case PS_DASH:
		if (state_timer % 15 == 0)
			sound_play(sound_get("airdash_b2"));
    break;
    
}

if (phone_attacking && attack = AT_PHONE)
{
	if (window = 2)
	{
		if (attack_down || special_down)
		{
			image_index = 4;
		}
		else
		{
			image_index = 3;
		}
		
	}
	
	
}




