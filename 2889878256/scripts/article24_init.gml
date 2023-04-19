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
sprite_index = sprite_get("nothing");
stay_time = 0;
stay_state = 1;
depth = 27;
image_index = 0;
transparency = 1;

midpoint = room_width/2;
tile = 32;
quarter = 176;
ground_level = 528;

if (x < obj_stage_main.midpoint){

	spr_dir = -1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_left) {

		case 3:
			//flying
			type = 3;
			sprite_index = sprite_get("bg_flying_air");
		break;

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("nothing");
			x_initial = x;
			x_bubble = x + 32;
			y_bubble = ground_level;
			scale_bubble = 1;
			sprite_bubble = sprite_get("bg_poison_air");
			depth = 25;
		break;

		case 7:
			//bug
			type = 7;
			sprite_index = sprite_get("bg_bug_air");
		break;

		case 9:
			//steel
			type = 9;
			sprite_index = sprite_get("bg_steel_2");
			image_index = 1;
			depth = 28;
		break;

		case 11:
			//water
			type = 11;
			sprite_index = sprite_get("bg_water_air");
		break;

		case 13:
			//electric
			type = 13;
			sprite_index = sprite_get("bg_electric_air");
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("bg_psychic_air");
			depth = 20;
		break;

		case 17:
			//dark
			type = 17;
			sprite_index = sprite_get("bg_dark_air");
			image_index = 1;
		break;

		case 18:
			//fairy
			type = 18;
			sprite_index = sprite_get("bg_fairy_air");
			image_index = 0;
		break;
	}

} else if (x > obj_stage_main.midpoint){

	spr_dir = 1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_right) {

		case 3:
			//flying
			type = 3;
			sprite_index = sprite_get("bg_flying_air");
		break;

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("nothing");
			x_initial = x;
			x_bubble = x + 32;
			y_bubble = ground_level;
			scale_bubble = 1;
			sprite_bubble = sprite_get("bg_poison_air");
			depth = 25;
		break;

		case 7:
			//bug
			type = 7;
			sprite_index = sprite_get("bg_bug_air");
		break;

		case 9:
			//steel
			type = 9;
			sprite_index = sprite_get("bg_steel_2");
			image_index = 1;
			depth = 28;
		break;

		case 11:
			//water
			type = 11;
			sprite_index = sprite_get("bg_water_air");
		break;

		case 13:
			//electric
			type = 13;
			sprite_index = sprite_get("bg_electric_air");
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("bg_psychic_air");
			depth = 20;
		break;

		case 17:
			//dark
			type = 17;
			sprite_index = sprite_get("bg_dark_air");
			image_index = 0;
		break;

		case 18:
			//fairy
			type = 18;
			sprite_index = sprite_get("bg_fairy_air");
			image_index = 0;
		break;
	}
}


// position stuff
midpoint = obj_stage_main.midpoint
tile = obj_stage_main.tile
quarter = obj_stage_main.quarter
ground_level = obj_stage_main.ground_level