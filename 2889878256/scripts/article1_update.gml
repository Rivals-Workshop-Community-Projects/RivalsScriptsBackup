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

if (type_1 > 18){
	type_1 = 1;
}

if (type_2 > 18){
	type_2 = 1;
}

//randomizing stuff

if get_gameplay_time() == 60 {
	with oPlayer {
		other.random_number_1 = other.random_number_1 + char_height + jump_start_time + x;
		other.random_number_2 = other.random_number_2 + dash_turn_time + prat_land_time + attack;
	}
}

with oPlayer {
	if (player == 1 && ((window_timer == 1) || (state_timer mod 154 = 0))){
		other.random_number_1 = other.random_number_1 + 1;
	}

	if (player == 1 && ((state_timer == 1) || (state_timer mod 77 = 0))){
		other.random_number_2 = other.random_number_2 + 1;
	}
}

//setting stages

switch(stage){

	case 1:
	{
		//transformation staying in place

		transformation_duration--;

		//summoning warning
		if (transformation_duration == 180) {
			instance_create(room_width/2, room_height/2 - 100, "obj_stage_article", 2);
		}
		
		if (transformation_duration <= 0){
			stage = 2;
			transformation_duration = transformation_duration_default;

			with oPlayer {
				other.players_x = other.players_x + x;
				other.players_damage = other.players_damage + get_player_damage(player);
			}
		}
	}

	break;

	case 2:
	{
		//fade out

		//randomizing the next one
		if (transformation_transition == transformation_transition_default/2){
			last_stage_type_1 = round(next_stage_type_1);
			last_stage_type_2 = round(next_stage_type_2);
			next_stage_type_1 = round((get_gameplay_time() + random_number_1 + players_damage) mod 18 + 1);
			next_stage_type_2 = round((get_gameplay_time() + random_number_2 + players_x) mod 18 + 1);
			//next_stage_type_1 = 19;
			//next_stage_type_2 = 19;

			if (next_stage_type_1 == last_stage_type_1){
				next_stage_type_1 = last_stage_type_1 + 1;
			}

			if (next_stage_type_2 == last_stage_type_2){
				next_stage_type_2 = last_stage_type_2 + 1;
			}

			if (next_stage_type_1 >= 19){
				next_stage_type_1 = 1;
			}

			if (next_stage_type_2 >= 19){
				next_stage_type_2 = 1;
			}
		}


		transformation_transition--;
		
			obj_stage_main.delete_pwt_logo = 1;
			type_1++;
		
		if(type_1 > 18){
			type_2++;
		}

		if (transformation_transition <= 0){
			transformation_transition = transformation_transition_default;
			stage = 3;

			with oPlayer {
				other.players_x = 0;
				other.players_damage = 0;
			}
		}
	}
	break;

	case 3:
	{
		//fade in

		transformation_transition--;
		type_1 = next_stage_type_1;
		type_2 = next_stage_type_2;

		if (transformation_transition <= 0){
			stage = 1;
			transformation_transition = transformation_transition_default;
		}
	}
	break;

}

//setting sprite and image indexes

switch(type_1){

	case 1:
	{
		sprite_index = sprite_get("normal");
	}
	break;

	case 2:
	{
		sprite_index = sprite_get("fighting");
	}
	break;

	case 3:
	{
		sprite_index = sprite_get("flying");
	}
	break;

	case 4:
	{
		sprite_index = sprite_get("poison");
	}
	break;

	case 5:
	{
		sprite_index = sprite_get("ground");
	}
	break;

	case 6:
	{
		sprite_index = sprite_get("rock");
	}
	break;

	case 7:
	{
		sprite_index = sprite_get("bug");
	}
	break;

	case 8:
	{
		sprite_index = sprite_get("ghost");
	}
	break;

	case 9:
	{
		sprite_index = sprite_get("steel");
	}
	break;

	case 10:
	{
		sprite_index = sprite_get("fire");
	}
	break;

	case 11:
	{
		sprite_index = sprite_get("water");
	}
	break;

	case 12:
	{
		sprite_index = sprite_get("grass");
	}
	break;

	case 13:
	{
		sprite_index = sprite_get("electric");
	}
	break;

	case 14:
	{
		sprite_index = sprite_get("psychic");
	}
	break;

	case 15:
	{
		sprite_index = sprite_get("ice");
	}
	break;

	case 16:
	{
		sprite_index = sprite_get("dragon");
	}
	break;

	case 17:
	{
		sprite_index = sprite_get("dark");
	}
	break;

	case 18:
	{
		sprite_index = sprite_get("fairy");
	}
	break;
}

switch(type_2){

	case 1:
	{
		image_index = 0;
	}
	break;

	case 2:
	{
		image_index = 1;
	}
	break;

	case 3:
	{
		image_index = 2;
	}
	break;

	case 4:
	{
		image_index = 3;
	}
	break;

	case 5:
	{
		image_index = 4;
	}
	break;

	case 6:
	{
		image_index = 5;
	}
	break;

	case 7:
	{
		image_index = 6;
	}
	break;

	case 8:
	{
		image_index = 7;
	}
	break;

	case 9:
	{
		image_index = 8;
	}
	break;

	case 10:
	{
		image_index = 9;
	}
	break;

	case 11:
	{
		image_index = 10;
	}
	break;

	case 12:
	{
		image_index = 11;
	}
	break;

	case 13:
	{
		image_index = 12;
	}
	break;

	case 14:
	{
		image_index = 13;
	}
	break;

	case 15:
	{
		image_index = 14;
	}
	break;

	case 16:
	{
		image_index = 15;
	}
	break;

	case 17:
	{
		image_index = 16;
	}
	break;

	case 18:
	{
		image_index = 17;
	}
	break;
}