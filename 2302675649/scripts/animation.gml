small_sprites = true;
switch(state)
{
    case PS_SPAWN:
		if (state_timer % 5 == 0) introTimer++;
		sprite_index = sprite_get(introTimer<19?"intro":"idle");
		if (introTimer < 0) image_index = 0;
		else if (introTimer < 19) image_index = introTimer;
		break;
    case PS_IDLE:
    case PS_RESPAWN:
		if (floor(state_timer*idle_anim_speed/6)%6 == 5)
		{
			if (floor(state_timer%(6/idle_anim_speed)) == 0) idleIndex = random_func(0, array_length_1d(idleList), 1);
			sprite_index = sprite_get(idleList[idleIndex]);
			image_index = floor(image_number*state_timer/(image_number/idle_anim_speed));
		}
		break;
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
		if (image_index<6) rollArray[image_index]={rollX:x,rollY:y,rollDir:spr_dir,rollAlpha:16};
		break;
	case PS_PRATFALL:
        //sprite_index = (uint)Mathf.Lerp(0, spriteLength - 1, 1 - (vsp + fast_fall) / (fast_fall * 2));
        image_index = lerp(0, image_number - 1, (vsp + fast_fall) / (fast_fall * 2));
		break;
	case PS_LANDING_LAG:
		if (attack == AT_UAIR && hitpause)
		{
			sprite_index = sprite_get("uair");
			image_index = 11;
		}
		break;
	case PS_AIR_DODGE:
		draw_y = -3*room_height;
		draw_indicator = false;
		break;
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
			switch (attack)
			{
				case AT_EXTRA_1:
					small_sprites = false;
					break;
				case AT_USPECIAL:
					if (window == 1 && window_timer > uspecStartup/2)
					{
					    image_index = 1;
					}
					break;
			}
		break;
}