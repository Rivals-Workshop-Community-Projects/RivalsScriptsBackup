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

type_to_spawn_left = roulette.next_stage_type_1;
type_to_spawn_right = roulette.next_stage_type_2;

//timers and stuff from article 1
	stage = roulette.stage;

	transformation_duration_default = roulette.transformation_duration_default;
	transformation_transition_default = roulette.transformation_transition_default;
	transformation_duration = roulette.transformation_duration;
	transformation_transition = roulette.transformation_transition;

//spawning platforms
if (roulette.stage == 3 && (transformation_transition == transformation_transition_default)) { 

turn_off_monitor = 0;
instance_create(room_width/2 + 271, room_height/2 - 76, "obj_stage_article", 5);
instance_create(room_width/2 - 271, room_height/2 - 76, "obj_stage_article", 5);

	switch (type_to_spawn_left) {
		case 1 :
			//normal
			instance_create(midpoint - 6*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 2 :
			//fighting
			instance_create(midpoint - 4*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 3*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 3 :
			//flying
			instance_create(midpoint - 2.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 7*tile - 24, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter, ground_level + 2.5*tile, "obj_stage_article", 21);
			instance_create(midpoint - 13*tile, room_height + 2*tile, "obj_stage_article", 22);
			instance_create(midpoint - quarter, -4 * tile, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 4 :
			//poison
			instance_create(midpoint - 3*tile - 40, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 7.5*tile - 8, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 2.5*tile, "obj_stage_article", 22);
			instance_create(midpoint - 7.5*tile - 8, ground_level, "obj_stage_article", 23);
			instance_create(midpoint - 7.5*tile - 8, ground_level + 2*tile, "obj_stage_article", 24);
			instance_create(midpoint - 7.5*tile - 8, ground_level + 4*tile, "obj_stage_article", 13);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 5 :
			//ground
			instance_create(midpoint - 9*tile, ground_level, "obj_stage_article_solid", 11);
			instance_create(midpoint - quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 2*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 6 :
			//rock
			instance_create(midpoint - 4.5*tile - 28, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - quarter, ground_level + 5*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 3*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 7 :
			//bug
			instance_create(midpoint - 56, ground_level + 5*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 6*tile - 24, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter - 3*tile, - 1* tile, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 8 :
			//ghost
			instance_create(midpoint - 7.75*tile, ground_level + 3.5*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 7.75*tile, ground_level + 3.5*tile, "obj_stage_article", 12);
			instance_create(midpoint - 7.75*tile, ground_level + 3.5*tile, "obj_stage_article", 13);
			instance_create(midpoint - quarter, ground_level + 4*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 2*tile, "obj_stage_article", 22);
			instance_create(midpoint - quarter - 2.75*tile, room_height/2 - 210, "obj_stage_article", 23);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 9 :
			//steel
			instance_create(midpoint - 4*tile, ground_level + 1*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 9*tile, ground_level + 5*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter, ground_level + 6*tile, "obj_stage_article", 22);
			instance_create(midpoint - quarter, ground_level + 6*tile, "obj_stage_article", 24);
			instance_create(midpoint - quarter, ground_level + 5*tile, "obj_stage_article", 21);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 10 :
			//fire
			instance_create(midpoint - 48, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 6.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, room_height + tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 11 :
			//water
			instance_create(midpoint - 2*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 7.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter + 1.5 * tile, ground_level + 3*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 5* tile, "obj_stage_article", 22);
			instance_create(midpoint - quarter, ground_level + 0.5* tile, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 12 :
			//grass
			instance_create(midpoint - 5*tile, ground_level + 6*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 7*tile, ground_level + 3.5*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 2.5*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 13 :
			//electric
			instance_create(midpoint - 2*tile, ground_level + 5*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 4.5*tile, ground_level + 3*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 7*tile, "obj_stage_article", 22);
			instance_create(midpoint - 9*tile, room_height, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 14 :
			//psychic
			instance_create(midpoint - quarter, ground_level + 7*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 5*tile, "obj_stage_article", 22);
			instance_create(midpoint - quarter, ground_level + 7*tile, "obj_stage_article", 24);
			instance_create(midpoint - 218, ground_level + 10*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 218, ground_level + 10*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - 218, ground_level + 10*tile, "obj_stage_article_platform", 13);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 15 :
			//ice
			instance_create(midpoint - 2.25*tile, 0 - 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - quarter, ground_level + 5*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 7*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 16 :
			//dragon
			instance_create(midpoint - 8*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 8.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter, ground_level + 1*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level + 2.5*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 17 :
			//dark
			instance_create(midpoint - 40, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - 11*tile, 0 - 4*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint - quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, - 4* tile, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 18 :
			//fairy
			instance_create(midpoint - 1.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint - quarter, ground_level + 3*tile, "obj_stage_article", 21);
			instance_create(midpoint - quarter, ground_level - 1.5*tile, "obj_stage_article", 23);
			instance_create(midpoint - quarter - 3*tile, - 6*tile, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint - quarter, ground_level, "obj_stage_article", 31);}
		break;
	}

	switch (type_to_spawn_right) {
		case 1 :
			//normal
			instance_create(midpoint + 6*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 2 :
			//fighting
			instance_create(midpoint + 4*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 3*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 3 :
			//flying
			instance_create(midpoint + 2.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 7*tile + 24, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter, ground_level + 2.5*tile, "obj_stage_article", 21);
			instance_create(midpoint + 13*tile, room_height + 2*tile, "obj_stage_article", 22);
			instance_create(midpoint + quarter, -4 * tile, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 4 :
			//poison
			instance_create(midpoint + 3*tile + 40, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 7.5*tile + 8, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 2.5*tile, "obj_stage_article", 22);
			instance_create(midpoint + 7.5*tile + 8, ground_level, "obj_stage_article", 23);
			instance_create(midpoint + 7.5*tile + 8, ground_level + 2*tile, "obj_stage_article", 24);
			instance_create(midpoint + 7.5*tile + 8, ground_level + 4*tile, "obj_stage_article", 13);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 5 :
			//ground
			instance_create(midpoint + 9*tile, ground_level, "obj_stage_article_solid", 11);
			instance_create(midpoint + quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 2*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 6 :
			//rock
			instance_create(midpoint + 4.5*tile + 28, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + quarter, ground_level + 5*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 3*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 7 :
			//bug
			instance_create(midpoint + 56, ground_level + 5*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 6*tile + 24, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter + 3*tile, - 1* tile, "obj_stage_article", 24);
			if(is_aether_stage()) {
                var cameo = instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);
                cameo.poke_kabutops = (type_to_spawn_left == 8);
            }
		break;

		case 8 :
			//ghost
			instance_create(midpoint + 7.75*tile, ground_level + 3.5*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 7.75*tile, ground_level + 3.5*tile, "obj_stage_article", 12);
			instance_create(midpoint + 7.75*tile, ground_level + 3.5*tile, "obj_stage_article", 13);
			instance_create(midpoint + quarter, ground_level + 4*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 2*tile, "obj_stage_article", 22);
			instance_create(midpoint + quarter + 2.75*tile, room_height/2 - 210, "obj_stage_article", 23);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 9 :
			//steel
			instance_create(midpoint + 4*tile, ground_level + 1*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 9*tile, ground_level + 5*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter, ground_level + 6*tile, "obj_stage_article", 22);
			instance_create(midpoint + quarter, ground_level + 6*tile, "obj_stage_article", 24);
			instance_create(midpoint + quarter, ground_level + 5*tile, "obj_stage_article", 21);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 10 :
			//fire
			instance_create(midpoint + 48, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 6.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, room_height + tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 11 :
			//water
			instance_create(midpoint + 2*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 7.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter - 1.5 * tile, ground_level + 3*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 5* tile, "obj_stage_article", 22);
			instance_create(midpoint + quarter, ground_level + 0.5* tile, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 12 :
			//grass
			instance_create(midpoint + 5*tile, ground_level + 6*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 7*tile, ground_level + 3.5*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 2.5*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 13 :
			//electric
			instance_create(midpoint + 2*tile, ground_level + 5*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 4.5*tile, ground_level + 3*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 7*tile, "obj_stage_article", 22);
			instance_create(midpoint + 9*tile, room_height, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 14 :
			//psychic
			instance_create(midpoint + quarter, ground_level + 7*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 5*tile, "obj_stage_article", 22);
			instance_create(midpoint + quarter, ground_level + 7*tile, "obj_stage_article", 24);
			instance_create(midpoint + 218, ground_level + 10*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 218, ground_level + 10*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + 218, ground_level + 10*tile, "obj_stage_article_platform", 13);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 15 :
			//ice
			instance_create(midpoint + 2.25*tile, 0 - 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + quarter, ground_level + 5*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 7*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 16 :
			//dragon
			instance_create(midpoint + 8*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 8.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter, ground_level + 1*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level + 2.5*tile, "obj_stage_article", 22);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 17 :
			//dark
			instance_create(midpoint + 40, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + 11*tile, 0 - 4*tile, "obj_stage_article_platform", 12);
			instance_create(midpoint + quarter, ground_level + 2*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, -3* tile, "obj_stage_article", 24);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;

		case 18 :
			//fairy
			instance_create(midpoint + 1.5*tile, ground_level + 3*tile, "obj_stage_article_platform", 11);
			instance_create(midpoint + quarter, ground_level + 3*tile, "obj_stage_article", 21);
			instance_create(midpoint + quarter, ground_level - 1.5*tile, "obj_stage_article", 23);
			if(is_aether_stage()){instance_create(midpoint + quarter, ground_level, "obj_stage_article", 31);}
		break;
	}
}