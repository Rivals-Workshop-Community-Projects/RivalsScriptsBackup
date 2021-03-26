switch(state)
{
    case PS_SPAWN:
		if (state_timer % 4 == 0) introTimer++;
		sprite_index = sprite_get(introTimer<11&&introTimer>=0?"taunt":"idle");
		if (introTimer < 0) image_index = 0;
		else if (introTimer < 11) image_index = introTimer;
		break;
	case PS_PRATFALL:
        image_index = lerp(0, image_number - 1, (vsp + fast_fall) / (fast_fall * 2));
		break;
}