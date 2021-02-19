//
timer = 0;
distance = undefined;

switch (spawn_variables[0]) {
	case 0:
	spr_dir = 1;
	break;
	
	case 1:
	spr_dir = -1;
	break;
}

dimensionX = 0;
dimensionY = 0;

sprite_index = sprite_get("wall");
mask_index = sprite_get("wall_mask");

moveDir = 0; //0 = stationary, 1 = in, -1 = out

mask_dir = spr_dir;

widthExtra = 0;