switch(state)
{
    case PS_SPAWN:
		if (state_timer % 5 == 0) introTimer++;
		sprite_index = sprite_get(introTimer<17?"dspecial":"idle");
		if (introTimer < 16)
		{
			image_index = (introTimer < 0)?1:(introTimer%4)+1;
			draw_y = (cos(state_timer/16)-1)*8;
		}
		else if (introTimer < 17)
		{
			image_index = 0;
			draw_y = 0;
		}
		break;
    //case PS_IDLE:
    //case PS_RESPAWN:
	//	if (floor(state_timer*idle_anim_speed/6)%6 == 5)
	//	{
	//		sprite_index = sprite_get("idle2");
	//		image_index = floor(image_number*state_timer/(image_number/idle_anim_speed));
	//	}
	//	break;
	case PS_AIR_DODGE:
		if (!free) break;
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
		rollSpr = sprite_index;
		if (image_index<3) rollArray[image_index]={rollX:x,rollY:y,rollDir:spr_dir,rollAlpha:16};
		break;
	case PS_PRATFALL:
        image_index = lerp(0, image_number - 1, (vsp + fast_fall) / (fast_fall * 2));
		break;
}