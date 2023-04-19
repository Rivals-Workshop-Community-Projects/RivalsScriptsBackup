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
plat_index = 0;

if (x < obj_stage_main.midpoint){

	spr_dir = -1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_left) {

		case 1:
			//normal
			type = 1;
			sprite_index = sprite_get("plat_normal");
		break;

		case 2:
			//fighting
			type = 2;
			sprite_index = sprite_get("plat_fighting");
		break;

		case 3:
			//flying
			type = 3;
			sprite_index = sprite_get("plat_flying");
		break;

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("plat_poison");
		break;

		case 5:
			//ground
			type = 5;
			sprite_index = sprite_get("plat_ground");
		break;

		case 6:
			//rock
			type = 6;
			sprite_index = sprite_get("plat_rock");
		break;

		case 7:
			//bug
			type = 7;
			sprite_index = sprite_get("plat_bug");
		break;

		case 8:
			//ghost
			type = 8;
			sprite_index = sprite_get("plat_ghost");
		break;

		case 9:
			//steel
			type = 9;
			sprite_index = sprite_get("plat_steel");
		break;

		case 10:
			//fire
			type = 10;
			sprite_index = sprite_get("plat_fire");
		break;

		case 11:
			//water
			type = 11;
			sprite_index = sprite_get("plat_water");
		break;

		case 12:
			//grass
			type = 12;
			sprite_index = sprite_get("plat_grass");
		break;

		case 13:
			//electric
			type = 13;
			depth = 21;
			sprite_index = sprite_get("plat_electric");
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("plat_psychic");
			initial_x = x;
		break;

		case 15:
			//ice
			type = 15;
			sprite_index = sprite_get("plat_ice");
		break;

		case 16:
			//dragon
			type = 16;
			sprite_index = sprite_get("plat_dragon");
		break;

		case 17:
			//dark
			type = 17;
			sprite_index = sprite_get("plat_dark");
		break;

		case 18:
			//fairy
			type = 18;
			sprite_index = sprite_get("plat_fairy");
		break;
	}

} else if (x > obj_stage_main.midpoint){

	spr_dir = 1;
	dir = spr_dir;

	switch (obj_stage_main.type_to_spawn_right) {

		case 1:
			//normal
			type = 1;
			sprite_index = sprite_get("plat_normal");
		break;

		case 2:
			//fighting
			type = 2;
			sprite_index = sprite_get("plat_fighting");
		break;

		case 3:
			//flying
			type = 3;
			sprite_index = sprite_get("plat_flying");
		break;

		case 4:
			//poison
			type = 4;
			sprite_index = sprite_get("plat_poison");
		break;

		case 5:
			//ground
			type = 5;
			sprite_index = sprite_get("plat_ground");
		break;

		case 6:
			//rock
			type = 6;
			sprite_index = sprite_get("plat_rock");
		break;

		case 7:
			//bug
			type = 7;
			sprite_index = sprite_get("plat_bug");
		break;

		case 8:
			//ghost
			type = 8;
			sprite_index = sprite_get("plat_ghost");
		break;

		case 9:
			//steel
			type = 9;
			sprite_index = sprite_get("plat_steel");
		break;

		case 10:
			//fire
			type = 10;
			sprite_index = sprite_get("plat_fire");
		break;

		case 11:
			//water
			type = 11;
			sprite_index = sprite_get("plat_water");
		break;

		case 12:
			//grass
			type = 12;
			sprite_index = sprite_get("plat_grass");
		break;

		case 13:
			//electric
			type = 13;
			depth = 21;
			sprite_index = sprite_get("plat_electric");
		break;

		case 14:
			//psychic
			type = 14;
			sprite_index = sprite_get("plat_psychic");
			initial_x = x;
		break;

		case 15:
			//ice
			type = 15;
			sprite_index = sprite_get("plat_ice");
		break;

		case 16:
			//dragon
			type = 16;
			sprite_index = sprite_get("plat_dragon");
		break;

		case 17:
			//dark
			type = 17;
			sprite_index = sprite_get("plat_dark");
		break;

		case 18:
			//fairy
			type = 18;
			sprite_index = sprite_get("plat_fairy");
		break;
	}
}

image_index = 0;

// position stuff
midpoint = obj_stage_main.midpoint
tile = obj_stage_main.tile
quarter = obj_stage_main.quarter
ground_level = obj_stage_main.ground_level