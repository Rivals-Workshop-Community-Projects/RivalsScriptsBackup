//	Falling Platform

if (is_aether_stage())
{
	sprite_index 	= sprite_get("plat_fall");
	mask_index 		= sprite_get("plat_mask");
	
	posY 			= y-16;
	y 				= posY;

	timer 			= 0;
	state 			= 0;
}

else
{
	sprite_index 	= sprite_get("plat_basic");
	mask_index 		= sprite_get("plat_mask");
}