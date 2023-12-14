//animation
switch (state)
{
	case PS_WRAPPED:
		if (!free) sprite_index = sprite_get("hurtground");
		break;
	case PS_PRATFALL:
		if (wrappedfall) sprite_index = sprite_get("wrappedfall");
		break;
	case PS_PRATLAND:
		if (wrappedfall) sprite_index = sprite_get("wrappedland");
		break;
}