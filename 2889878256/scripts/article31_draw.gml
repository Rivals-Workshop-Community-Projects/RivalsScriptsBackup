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

//Sprite movement

switch(state){

	case 1:
	//rise

		if (state_timer >= 60){

			if(transparency >= 0){
				transparency = transparency - 0.02;
			}

			if(size < 1){
				size = size + 0.05;
			} else { size = 1}
		}
	break;

	case 3:
	//fall
		if(transparency <= 1){
			transparency = transparency + 0.02;
		}

		if(size >= 0){
			size = size - 0.05;
		}
	break;

}

//Pokémon sprites

if (dir = -1){

	switch(type){

		case 1:
		//normal
			depth = 27;
			poke_x = midpoint - 9*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_regigigas");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 6*tile;
			poke_y = ground_level;
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_lopunny");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 3*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_egg");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 2:
		//fighting
			poke_x = midpoint - 10*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_riolu");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 6.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 5;
			poke_sprite_2 = sprite_get("pkmn_blaziken");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 2*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 8;
			poke_sprite_3 = sprite_get("pkmn_croagunk");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

		break;

		case 3:
		//flying
			poke_x = midpoint - 9.5*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_archen");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 1.5*tile;
			poke_y = ground_level;
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_emolga");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - quarter;
			poke_y = ground_level + 8*sin(get_gameplay_time()/16);
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_minior");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 4:
		//poison
			poke_x = midpoint - quarter;
			poke_y = ground_level + tile + 3*sin(get_gameplay_time()/20);
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_koffing");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 2*tile;
			poke_y = ground_level;
			poke_speed = 8;
			poke_sprite = sprite_get("pkmn_swalot");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 9*tile;
			poke_y = ground_level;
			poke_speed = 7;
			poke_sprite = sprite_get("pkmn_vileplume");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 5:
		//ground
			poke_x = midpoint - 2*tile;
			poke_y = ground_level;
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_palossand");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 5.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 10;
			poke_sprite_2 = sprite_get("pkmn_mega_swampert");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 9*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 9;
			poke_sprite_3 = sprite_get("pkmn_dugtrio");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 6:
		//rock
			poke_x = midpoint - 6.5*tile;
			poke_y = ground_level;
			poke_speed = 9;
			poke_sprite = sprite_get("pkmn_cradily");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 9*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_shuckle");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 2*tile;
			poke_y = ground_level;
			poke_speed = 7;
			poke_sprite = sprite_get("pkmn_golem");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 7:
		//bug
			poke_x = midpoint - 3*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_accelgor");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 6*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 11;
			poke_sprite_2 = sprite_get("pkmn_beedrill");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 9*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 7;
			poke_sprite_3 = sprite_get("pkmn_swadloon");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 8:
		//ghost
			depth = 25;
			poke_x = midpoint - 2*tile;
			poke_y = ground_level;
			poke_speed = 7;
			poke_sprite = sprite_get("pkmn_yamask");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 5.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 12;
			poke_sprite_2 = sprite_get("pkmn_cofagrigus");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 8.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 8;
			poke_sprite_2 = sprite_get("pkmn_gengar");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 9:
		//steel
			poke_x = midpoint - 1.5*tile;
			poke_y = ground_level;
			poke_speed = 5;
			poke_sprite = sprite_get("pkmn_lucario");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 6.5*tile;
			poke_y = ground_level;
			poke_speed = 7;
			poke_sprite = sprite_get("pkmn_scizor");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 11*tile;
			poke_y = ground_level - 6*sin(get_gameplay_time()/30);
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_jirachi");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 10:
		//fire
			poke_x = midpoint - 2.5*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_litleo");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 9*tile;
			poke_y = ground_level;
			poke_speed = 8;
			poke_sprite = sprite_get("pkmn_braixen");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - quarter;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_incineroar");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 11:
		//water
			poke_x = midpoint - 3*tile;
			poke_y = ground_level;
			poke_speed = 9;
			poke_sprite = sprite_get("pkmn_greninja");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 6*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 6;
			poke_sprite_2 = sprite_get("pkmn_wooper");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 8*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 8;
			poke_sprite_3 = sprite_get("pkmn_quagsire");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 12:
		//grass
			depth = 20;
			poke_x = midpoint - 8*tile;
			poke_y = ground_level;
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_tsareena");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint - 5*tile;
			poke_y = ground_level;
			poke_speed = 8;
			poke_sprite = sprite_get("pkmn_grovyle");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 2*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 9;
			poke_sprite_2 = sprite_get("pkmn_bellsprout");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 13:
		//electric
			depth = 22;
			poke_x = midpoint - 1.5*tile;
			poke_y = ground_level;
			poke_speed = 5;
			poke_sprite = sprite_get("pkmn_plusle");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 10*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 6;
			poke_sprite_2 = sprite_get("pkmn_tapu_koko");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 5*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 10;
			poke_sprite_2 = sprite_get("pkmn_voltorb");
			draw_sprite_ext(poke_sprite_2, 7 + get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, 7 + get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 14:
		//psychic
			depth = 19;
			poke_x = midpoint - quarter;
			poke_y = ground_level;
			poke_speed = 8;
			poke_sprite = sprite_get("pkmn_reuniclus");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 11*tile;
			poke_y_2 = ground_level + 5*sin(get_gameplay_time()/17);
			poke_speed_2 = 12;
			poke_sprite_2 = sprite_get("pkmn_azelf");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 14*tile;
			poke_y_3 = ground_level - 6*tile + 7*sin(get_gameplay_time()/25);
			poke_speed_3 = 1;
			poke_sprite_2 = sprite_get("pkmn_unown");
			draw_sprite_ext(poke_sprite_2, 0, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, 0, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 12.5*tile;
			poke_y_3 = ground_level - 6*tile - 7*sin(get_gameplay_time()/25);
			poke_speed_3 = 1;
			draw_sprite_ext(poke_sprite_2, 1, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, 1, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 11*tile;
			poke_y_3 = ground_level - 6*tile + 7*sin(get_gameplay_time()/25);
			poke_speed_3 = 1;
			draw_sprite_ext(poke_sprite_2, 2, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, 2, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 15:
		//ice
			poke_x = midpoint - 2.5*tile;
			poke_y = ground_level;
			poke_speed = 30;
			poke_sprite = sprite_get("pkmn_snom");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 7;
			poke_sprite_2 = sprite_get("pkmn_spheal");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 8*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 6;
			poke_sprite_3 = sprite_get("pkmn_eiscue");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 16:
		//dragon
			poke_x = midpoint - 1.5*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_goomy");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 7;
			poke_sprite_2 = sprite_get("pkmn_garchomp");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 12.5*tile;
			poke_y_3 = ground_level - 2*tile - 5*sin(get_gameplay_time()/20);
			poke_speed_3 = 9;
			poke_sprite_3 = sprite_get("pkmn_regidrago");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 17:
		//dark
			poke_x = midpoint - 6.5*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_sableye");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 2.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 8;
			poke_sprite_2 = sprite_get("pkmn_zoroark");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 9.5*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 9;
			poke_sprite_3 = sprite_get("pkmn_purrloin");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 18:
		//fairy
			poke_x = midpoint - 10*tile;
			poke_y = ground_level - 2*tile - 8*sin(get_gameplay_time()/30);
			poke_speed = 11;
			poke_sprite = sprite_get("pkmn_igglybuff");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint - 4*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 6;
			poke_sprite_2 = sprite_get("pkmn_mimikyu");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint - 6.5*tile;
			poke_y_3 = ground_level - 3*tile - 4*sin(get_gameplay_time()/40);
			poke_speed_3 = 9;
			poke_sprite_3 = sprite_get("pkmn_weezing_g");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);	
		break;
	}

} else if (dir = 1){

	switch(type){

		case 1:
		//normal
			depth = 27;
			poke_x = midpoint + 9*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_regigigas");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 6*tile;
			poke_y = ground_level;
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_lopunny");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 3*tile;
			poke_y = ground_level;
			poke_speed = 11;
			poke_sprite = sprite_get("pkmn_meloetta");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 2:
		//fighting
			poke_x = midpoint + 10*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_riolu");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 6.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 5;
			poke_sprite_2 = sprite_get("pkmn_blaziken");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 2*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 8;
			poke_sprite_3 = sprite_get("pkmn_croagunk");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 3:
		//flying
			poke_x = midpoint + 9.5*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_archen");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 1.5*tile;
			poke_y = ground_level;
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_emolga");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + quarter;
			poke_y = ground_level - 8*sin(get_gameplay_time()/24);
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_minior_2");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 4:
		//poison
			poke_x = midpoint + quarter;
			poke_y = ground_level + tile - 3*sin(get_gameplay_time()/20);
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_koffing");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 2*tile;
			poke_y = ground_level;
			poke_speed = 8;
			poke_sprite = sprite_get("pkmn_swalot");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 9*tile;
			poke_y = ground_level;
			poke_speed = 7;
			poke_sprite = sprite_get("pkmn_vileplume");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 5:
		//ground
			poke_x = midpoint + 2*tile;
			poke_y = ground_level;
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_palossand");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 5.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 10;
			poke_sprite_2 = sprite_get("pkmn_mega_swampert");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 9*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 9;
			poke_sprite_3 = sprite_get("pkmn_dugtrio");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 6:
		//rock
			poke_x = midpoint + 6.5*tile;
			poke_y = ground_level;
			poke_speed = 9;
			poke_sprite = sprite_get("pkmn_cradily");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 9*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_shuckle");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 2*tile;
			poke_y = ground_level;
			poke_speed = 7;
			poke_sprite = sprite_get("pkmn_golem");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;


		case 7:
		//bug
			poke_x = midpoint + 3*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_accelgor");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 6*tile;
			poke_y_2 = ground_level;
			poke_speed = 6;
			poke_sprite_2 = sprite_get("pkmn_beedrill");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 9*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 11;
			poke_sprite_3 = sprite_get("pkmn_swadloon");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

            if (poke_kabutops && poke_speed_2 < 45)
            {
                //using poke_speed_2 as an unstable local-time anim timer 
                poke_speed_2++; 
                if (state == 1) poke_speed_2 = 0;
                poke_x_2 = midpoint + quarter + 3*tile;
			    poke_y_2 = ground_level;
			    poke_sprite_2 = sprite_get("pkmn_kabutops");
                var img_index = 0;

                var rng = random_func_2((current_time + poke_speed_2) % 200, 0xFFFFFFFF, true);
                     if (poke_speed_2 <  2) { img_index = 0; }
                else if (poke_speed_2 <  15) { img_index = 0 + floor((rng / 4) % 2); 
                                               poke_x_2 += (rng % 20) - 10;  }
                else if (poke_speed_2 <  35) 
                {
                    switch (rng % 24)
                    {
                        case 0: with oPlayer { other.poke_sprite_2 = sprite_index; break; } break;
                        case 1: poke_sprite_2 = asset_get("burrito_rock_walkturn"); break;
                        case 2: poke_sprite_2 = asset_get("panda_idle"); break;
                        case 3: poke_sprite_2 = asset_get("orca_fair"); break;
                        case 4: poke_sprite_2 = asset_get("zet_taunt"); break;
                        case 5: poke_sprite_2 = asset_get("gus_jump_flex"); break;
                        default: img_index = 1 + floor((rng / 16) % 3); break;
                    }
			        poke_x_2 += ((rng << 3) % 10)*floor(poke_speed_2/4) + ((rng << 7) % 10) - 15;
			        poke_y_2 -= ((rng << 1) % 10)*floor(poke_speed_2/4) + ((rng << 5) % 10) - 15;
                }
                else { poke_sprite_2 = sprite_get("lmao_i_want_the_error_sprite"); }
                if (poke_speed_2 == 45) print(CoolTrainer);

			    draw_sprite_ext(poke_sprite_2, img_index, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			    draw_sprite_ext(poke_sprite_2, img_index, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
            }
		break;

		case 8:
		//ghost
			depth = 25;
			poke_x = midpoint + 10*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_litwick");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 4*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 6;
			poke_sprite_2 = sprite_get("pkmn_lampent");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 6.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 8;
			poke_sprite_2 = sprite_get("pkmn_gengar");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 9:
		//steel
			poke_x = midpoint + 1.5*tile;
			poke_y = ground_level;
			poke_speed = 5;
			poke_sprite = sprite_get("pkmn_lucario");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 6.5*tile;
			poke_y = ground_level;
			poke_speed = 7;
			poke_sprite = sprite_get("pkmn_scizor");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 11*tile;
			poke_y = ground_level - 6*sin(get_gameplay_time()/30);
			poke_speed = 12;
			poke_sprite = sprite_get("pkmn_jirachi");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 10:
		//fire
			poke_x = midpoint + 2.5*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_litleo");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 9*tile;
			poke_y = ground_level;
			poke_speed = 8;
			poke_sprite = sprite_get("pkmn_braixen");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + quarter;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_incineroar");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 11:
		//water
			poke_x = midpoint + 3*tile;
			poke_y = ground_level;
			poke_speed = 9;
			poke_sprite = sprite_get("pkmn_greninja");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 6.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 7;
			poke_sprite_2 = sprite_get("pkmn_krabby");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 9.5*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 8;
			poke_sprite_3 = sprite_get("pkmn_quagsire");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 12:
		//grass
			depth = 20;
			poke_x = midpoint + 8*tile;
			poke_y = ground_level;
			poke_speed = 16;
			poke_sprite = sprite_get("pkmn_lilligant");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x = midpoint + 5*tile;
			poke_y = ground_level;
			poke_speed = 8;
			poke_sprite = sprite_get("pkmn_leafeon");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 2*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 9;
			poke_sprite_2 = sprite_get("pkmn_bellsprout");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 13:
		//electric
			depth = 22;
			poke_x = midpoint + 1.5*tile;
			poke_y = ground_level;
			poke_speed = 5;
			poke_sprite = sprite_get("pkmn_minun");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 10*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 6;
			poke_sprite_2 = sprite_get("pkmn_tapu_koko");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 5*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 7;
			poke_sprite_2 = sprite_get("pkmn_electrode");
			draw_sprite_ext(poke_sprite_2, 7 + get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, 7 + get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;


		case 14:
		//psychic
			depth = 19;
			poke_x = midpoint + quarter;
			poke_y = ground_level;
			poke_speed = 8;
			poke_sprite = sprite_get("pkmn_reuniclus");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 11*tile;
			poke_y_2 = ground_level - 5*sin(get_gameplay_time()/17);
			poke_speed_2 = 12;
			poke_sprite_2 = sprite_get("pkmn_azelf");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 12*tile;
			poke_y_3 = ground_level - 6*tile - 7*sin(get_gameplay_time()/25);
			poke_speed_3 = 1;
			poke_sprite_2 = sprite_get("pkmn_unown");
			draw_sprite_ext(poke_sprite_2, 3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, 3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 13.5*tile;
			poke_y_3 = ground_level - 6*tile + 7*sin(get_gameplay_time()/25);
			poke_speed_3 = 1;
			draw_sprite_ext(poke_sprite_2, 4, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, 4, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 15:
		//ice
			poke_x = midpoint + 2.5*tile;
			poke_y = ground_level;
			poke_speed = 30;
			poke_sprite = sprite_get("pkmn_snom");
			draw_sprite_ext(poke_sprite, 2 + get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, 2 + get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 7;
			poke_sprite_2 = sprite_get("pkmn_spheal");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 8*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 6;
			poke_sprite_3 = sprite_get("pkmn_eiscue");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 16:
		//dragon
			poke_x = midpoint + 1.5*tile;
			poke_y = ground_level;
			poke_speed = 10;
			poke_sprite = sprite_get("pkmn_goomy");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 7;
			poke_sprite_2 = sprite_get("pkmn_garchomp");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 12.5*tile;
			poke_y_3 = ground_level - 2*tile - 5*sin(get_gameplay_time()/20);
			poke_speed_3 = 9;
			poke_sprite_3 = sprite_get("pkmn_regidrago");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 17:
		//dark
			poke_x = midpoint + 6.5*tile;
			poke_y = ground_level;
			poke_speed = 6;
			poke_sprite = sprite_get("pkmn_sableye");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 2.5*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 8;
			poke_sprite_2 = sprite_get("pkmn_zoroark");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 9.5*tile;
			poke_y_3 = ground_level;
			poke_speed_3 = 9;
			poke_sprite_3 = sprite_get("pkmn_purrloin");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);
		break;

		case 18:
		//fairy
			poke_x = midpoint + 10*tile;
			poke_y = ground_level - 2*tile - 8*sin(get_gameplay_time()/30);
			poke_speed = 11;
			poke_sprite = sprite_get("pkmn_igglybuff");
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite, get_gameplay_time()/poke_speed, poke_x, poke_y, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_2 = midpoint + 4*tile;
			poke_y_2 = ground_level;
			poke_speed_2 = 6;
			poke_sprite_2 = sprite_get("pkmn_mimikyu");
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_2, get_gameplay_time()/poke_speed_2, poke_x_2, poke_y_2, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);

			poke_x_3 = midpoint + 6.5*tile;
			poke_y_3 = ground_level - 3*tile - 4*sin(get_gameplay_time()/40);
			poke_speed_3 = 9;
			poke_sprite_3 = sprite_get("pkmn_weezing_g");
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_white, 1);
			draw_sprite_ext(poke_sprite_3, get_gameplay_time()/poke_speed_3, poke_x_3, poke_y_3, -2*spr_dir*size, 2*size, 0, c_aqua, transparency);	
		break;
	}

} 
