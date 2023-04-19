switch(state)
{
    case PS_SPAWN:
		if (state_timer % 5 == 0) introTimer++;
		sprite_index = sprite_get(introTimer<20&&introTimer>=0?"intro":"idle");
		if (introTimer < 0) image_index = 0;
		else if (introTimer < 20) image_index = introTimer;
		break;
}