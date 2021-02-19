//
timer++;
state_timer++;

switch (platSize) {
	case 0: //small
	sprite_index = sprite_get("platform_small");
	mask_index = sprite_get("platform_small_mask");
	break;
	
	case 1: //medium
	sprite_index = sprite_get("platform_medium");
	mask_index = sprite_get("platform_medium_mask");
	break;
	
	case 2: //large1
	sprite_index = sprite_get("platform_large1");
	mask_index = sprite_get("platform_large1_mask");
	break;
	
	case 3: //large2
	sprite_index = sprite_get("platform_large2");
	mask_index = sprite_get("platform_large2_mask");
	break;
}

if (!controlled) && (platSpeed != 0) {
	hsp = platSpeed;
}

//print_debug(string(hsp));


/*
switch state {
	case 0: //stationary
	hsp = 0;
	break;
	
	case 1: //moving
	hsp = platSpeed;
	break;
}
*/