user_event(13);

if burst = 1 && attack == AT_FSTRONG {
    attack = AT_FSTRONG_2;
}

if (attack == AT_DSPECIAL){
	if free {
		attack = AT_DSPECIAL_AIR;
	}
}


//rioku - Strong visual effects
switch (attack){
	case AT_FSTRONG_2:
	case AT_DSTRONG:
	case AT_USTRONG:
   	case AT_DSPECIAL:
   	case AT_DSPECIAL_AIR:
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_USPECIAL:
		for(var i = 0; i < demon_trail_size; i++){
			demon_trail[i] = 
    		{x:x, y:y, sprite_index:sprite_index, image_index:0, color:c_white, spr_dir:spr_dir, life:0};
		}
	break;
}