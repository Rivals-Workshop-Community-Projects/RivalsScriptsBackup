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

//states

switch (state){

	//rise
		case 1: 
			switch (type){

				case 4:
				//poison
					x = x_initial + spr_dir*32*sin(get_gameplay_time()/3)
				break;	

				case 18:
				//fairy
					vsp = 0;
				break;

			}

			if (obj_stage_main.stage == 1){
				state = 2;
			}
		break;

	//stay
		case 2: 

			stay_time++;

			//just put the moving ones here. normal is a placeholder, you can replace it later

			switch (type){

				case 4:
				//poison

					if (y != ground_level){
						vsp = -1;
					} else {
						vsp = 0;
						x = x_initial + spr_dir*32*sin(get_gameplay_time()/3);
					}
				break;	
			}

			if (obj_stage_main.stage == 2){
				state = 3;
				stay_time = 0;
			}
		break;
		

	//fall
		case 3: 

			switch (type){

				case 4:
				//poison
					vsp = 2;
				break;

				case 18:
				//fairy
					vsp = 0;
				break;
			}

		break;
}


if ((state == 3 && transparency <= 0) || y > room_width){
	instance_destroy(self);
}