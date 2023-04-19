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

if (x < obj_stage_main.midpoint){

	spr_dir = -1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_left) {

		case 3:
			//flying
			type = 3;
			sprite_index = sprite_get("plat_flying_2");
			depth = 24;
		break;

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("plat_poison_2");
		break;

		case 7:
			//bug
			type = 7;
			sprite_index = sprite_get("plat_bug_2");
		break;

		case 8:
			//ghost
			type = 8;
			sprite_index = sprite_get("nothing");
			depth = 26;
		break;

		case 9:
			//steel
			type = 9;
			sprite_index = sprite_get("plat_steel_2");
		break;

		case 10:
			//fire
			type = 10;
			sprite_index = sprite_get("plat_fire_2");
		break;

		case 11:
			//water
			type = 11;
			sprite_index = sprite_get("plat_water");
		break;

		case 12:
			//grass
			type = 12;
			sprite_index = sprite_get("plat_grass_2");
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("plat_psychic");
			initial_x = x;
		break;

		case 16:
			//dragon
			type = 16;
			sprite_index = sprite_get("plat_dragon_2");
		break;

		case 17:
			//dark
			type = 17;
			sprite_index = sprite_get("plat_dark_2");
		break;
	}

} else if (x > obj_stage_main.midpoint){

	spr_dir = 1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_right) {

		case 3:
			//flying
			type = 3;
			sprite_index = sprite_get("plat_flying_2");
			depth = 24;
		break;

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("plat_poison_2");
		break;

		case 7:
			//bug
			type = 7;
			sprite_index = sprite_get("plat_bug_2");
		break;

		case 8:
			//ghost
			type = 8;
			sprite_index = sprite_get("nothing");
			depth = 26;
		break;

		case 9:
			//steel
			type = 9;
			sprite_index = sprite_get("plat_steel_2");
		break;

		case 10:
			//fire
			type = 10;
			sprite_index = sprite_get("plat_fire_2");
		break;

		case 11:
			//water
			type = 11;
			sprite_index = sprite_get("plat_water");
		break;

		case 12:
			//grass
			type = 12;
			sprite_index = sprite_get("plat_grass_2");
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("plat_psychic");
			initial_x = x;
		break;

		case 16:
			//dragon
			type = 16;
			sprite_index = sprite_get("plat_dragon_2");
		break;

		case 17:
			//dark
			type = 17;
			sprite_index = sprite_get("plat_dark_2");
		break;
	}
}

image_index = 0;

// position stuff
midpoint = obj_stage_main.midpoint
tile = obj_stage_main.tile
quarter = obj_stage_main.quarter
ground_level = obj_stage_main.ground_level