switch(state)
{
    case PS_SPAWN:
		var length = 17;
		var spd = 4;
		if (state_timer % spd == 0) introTimer++;
		sprite_index = sprite_get(introTimer<length&&introTimer>=0?"intro":"idle");
		if (introTimer < 0) image_index = 0;
		else if (introTimer < length) image_index = introTimer;
		break;
}