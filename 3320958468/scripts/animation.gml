//	animation.gml
//---------------------------------------------------------------------------------------

//	Fight Intro
if (state == PS_SPAWN)
{
	var intro_time = get_gameplay_time();

	if (intro_time <= 52 * 2 - 1) 
	{
		sprite_index = sprite_get("intro");
		image_index = floor(intro_time/2);
	}
}

switch (state)
{    	
	//	A funny Glide fixer upper
	case PS_FIRST_JUMP:
	case PS_DOUBLE_JUMP:
	case PS_IDLE_AIR:
		if (floating == -1)
		{
			sprite_index 	= sprite_get("jump");
			image_index 	= clamp(image_index + 0.80, 5, 6); 	// Sets the image_index to a specific frame between 0 and 6
		}
		break;	
	
	//	From Bar-Kun's Tester, credit goes to them
	//	changes the first sprite of the airdodge for wavelanding
	//	(not neccesary to use but it looks nicer)
	case PS_AIR_DODGE: 
		if (!free && image_index == 0)
		{
			sprite_index 	= sprite_get("jumpstart");
			image_index 	= 1;
		}
		break;
}


//	FSTRONG & USTRONG Animation
if (state== PS_ATTACK_GROUND) 
{ 
	if (attack == AT_FSTRONG && window == 2 && window_timer == 5)
	{
		//	5 is the frame_start, 4 is the number of frames                                         
		//	4 is the in-game frames per animation frame
		image_index = 5 + (strong_charge/4)%4;	
			
		if (get_gameplay_time() mod 7 == 0)
		{
			sound_play(sound_get("sfx_rayman_winduploop"), false, noone, 0.65);	
		}
	}

	if (attack == AT_USTRONG && window == 2 && window_timer == 5)
	{
		//	5 is the frame_start, 4 is the number of frames                                         
		//	4 is the in-game frames per animation frame
		image_index = 5 + (strong_charge/4)%4;	
			
		if (get_gameplay_time() mod 7 == 0)
		{
			sound_play(sound_get("sfx_rayman_winduploop"), false, noone, 0.65);	
		}
	}
}

//	Crawling Mechanic
if (is_crawling && hsp != 0)
{
    sprite_index 		= sprite_get("crawling");
    image_index 		= state_timer / 6;
}

//	Gliding Mechanic
if (floating)
{		
	if (state != PS_ATTACK_AIR)
	{  
		sprite_index 		= sprite_get("float_hover");
		image_index 		= floor(floatAnimTimer/6);
		floatAnimTimer++;
		
		if (floor(floatAnimTimer/6) > 7) 
		{
			floatAnimTimer 	= 0;				
		}
	}	
}

//-----------------Muno stuff------------------------------------------------------------

// make the nametag go higher while ustrong's fist is raised
if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2){
	hud_offset = lerp(hud_offset, 180, 0.5);
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}