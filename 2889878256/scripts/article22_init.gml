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

if (x < obj_stage_main.midpoint){

	spr_dir = -1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_left) {

		case 2:
			//fighting
			type = 2;
			sprite_index = sprite_get("bg_fighting_2");
		break;

		case 3:
			//flying
			type = 3;
			sprite_index = sprite_get("bg_flying_2");
			rotate = 0;
		break;

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("bg_poison_2");
		break;

		case 5:
			//ground
			type = 5;
			sprite_index = sprite_get("bg_ground_2");
		break;

		case 6:
			//rock
			type = 6;
			sprite_index = sprite_get("bg_rock_2");
		break;

		case 8:
			//ghost
			type = 8;
			sprite_index = sprite_get("bg_ghost_2");
		break;

		case 9:
			//steel
			type = 9;
			sprite_index = sprite_get("bg_steel_2");
			image_index = 0;
		break;

		case 10:
			//fire
			type = 10;
			sprite_index = sprite_get("nothing");
		break;

		case 11:
			//water
			type = 11;
			sprite_index = sprite_get("bg_water_2");
		break;

		case 12:
			//grass
			type = 12;
			depth = 26;
			sprite_index = sprite_get("bg_grass_2");
		break;

		case 13:
			//electric
			type = 13;
			depth = 25;
			sprite_index = sprite_get("bg_electric_2");
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("bg_psychic_2");
		break;

		case 15:
			//ice
			type = 15;
			sprite_index = sprite_get("bg_ice_2");
		break;

		case 16:
			//dragon
			type = 16;
			sprite_index = sprite_get("bg_dragon_2");
		break;
	}

} else if (x > obj_stage_main.midpoint){

	spr_dir = 1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_right) {

		case 2:
			//fighting
			type = 2;
			sprite_index = sprite_get("bg_fighting_2");
		break;

		case 3:
			//flying
			type = 3;
			sprite_index = sprite_get("bg_flying_2");
			rotate = 0;
		break;

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("bg_poison_2");
		break;

		case 5:
			//ground
			type = 5;
			sprite_index = sprite_get("bg_ground_2");
		break;

		case 6:
			//rock
			type = 6;
			sprite_index = sprite_get("bg_rock_2");
		break;

		case 8:
			//ghost
			type = 8;
			sprite_index = sprite_get("bg_ghost_2");
		break;

		case 9:
			//steel
			type = 9;
			sprite_index = sprite_get("bg_steel_2");
			image_index = 0;
		break;

		case 10:
			//fire
			type = 10;
			sprite_index = sprite_get("nothing");
		break;

		case 11:
			//water
			type = 11;
			sprite_index = sprite_get("bg_water_2");
		break;

		case 12:
			//grass
			type = 12;
			depth = 26;
			sprite_index = sprite_get("bg_grass_2");
		break;

		case 13:
			//electric
			type = 13;
			depth = 25;
			sprite_index = sprite_get("bg_electric_2");
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("bg_psychic_2");
		break;

		case 15:
			//ice
			type = 15;
			sprite_index = sprite_get("bg_ice_2");
		break;

		case 16:
			//dragon
			type = 16;
			sprite_index = sprite_get("bg_dragon_2");
		break;
	}
}

// position stuff
midpoint = obj_stage_main.midpoint
tile = obj_stage_main.tile
quarter = obj_stage_main.quarter
ground_level = obj_stage_main.ground_level