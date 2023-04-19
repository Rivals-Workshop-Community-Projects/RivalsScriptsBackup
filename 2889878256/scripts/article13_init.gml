//1 - normal
//2 - fighting
//3 - flying
//4 - poison
//5 - ground
//6 - rock
//7 - bug
//8 - ghost
//9 - steel
//10 - fire
//11 - water
//12 - grass
//13 - electric
//14 - psychic
//15 - ice
//16 - dragon
//17 - dark
//18 - fairy

state = 1;
type = 1;
sprite_index = sprite_get("plat_normal");
stay_time = 0;
stay_state = 1;
depth = 25;
transparency = 1;

midpoint = room_width/2;
tile = 32;
quarter = 176;
ground_level = 528;

if (x < obj_stage_main.midpoint){

	spr_dir = -1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_left) {

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("nothing");
			x_initial = x;
			x_bubble = x - 32;
			y_bubble = ground_level;
			scale_bubble = 1;
			sprite_bubble = sprite_get("bg_poison_air");
			depth = 25;
		break;

		case 8:
			//ghost
			type = 8;
			sprite_index = sprite_get("nothing");
			depth = 26;
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("plat_psychic");
			initial_x = x;
		break;
	}

} else if (x > obj_stage_main.midpoint){

	spr_dir = 1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_right) {

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("nothing");
			x_initial = x;
			x_bubble = x - 32;
			y_bubble = ground_level;
			scale_bubble = 1;
			sprite_bubble = sprite_get("bg_poison_air");
			depth = 25;
		break;

		case 8:
			//ghost
			type = 8;
			sprite_index = sprite_get("nothing");
			depth = 26;
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("plat_psychic");
			initial_x = x;
		break;
	}
}

image_index = 0;

// position stuff
midpoint = obj_stage_main.midpoint
tile = obj_stage_main.tile
quarter = obj_stage_main.quarter
ground_level = obj_stage_main.ground_level