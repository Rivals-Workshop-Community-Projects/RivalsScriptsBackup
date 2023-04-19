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

				case 3:
				//flying
					if (y <= room_height/2 - 150){
						vsp = 2;
					} else {
						vsp = 0;
					}
				break;

				case 4:
				//poison
					x = x_initial + spr_dir*32*sin(get_gameplay_time()/7)
				break;	

				case 7:
				//bug
					if (y <= room_height/2 - 150){
						vsp = 2;
					} else {
						vsp = 0;
					}
				break;

				case 9:
				//steel
					if (y != ground_level + 64){
						vsp = -2;
					} else {
						vsp = 0;
					}
				break;

				case 11:
				//water
					if (y != ground_level){
						vsp = -0.5;
					} else {
						vsp = 0;
					}
				break;

				case 13:
				//electric
					if (y != ground_level + 0*tile){
						vsp = -4;
					} else {
						vsp = 0;
					}
				break;

				case 14:
				//psychic
					if (y != ground_level){
						vsp = -2;
					} else {
						vsp = 0;
					}
				break;

				case 17:
				//dark
					if (y <= room_height/2 - 50){
						vsp = 2;
					} else {
						vsp = 0;
					}
				break;

				case 18:
				//fairy
					if (y <= room_height/2 - 80){
						vsp = 2;
					} else {
						vsp = 0;
					}
				break;

			}

			if (obj_stage_main.stage == 1){
				state = 2;
			}
		break;

	//stay
		case 2: 

			stay_time++;

			//just put the moving ones here.

			switch (type){

				case 4:
				//poison

					if (y != ground_level){
						vsp = -1;
					} else {
						vsp = 0;
						x = x_initial + spr_dir*32*sin(get_gameplay_time()/7);
					}

				break;	

				case 9:
				//steel
					switch (stay_state){
						
						case 1:
							vsp = 0;
							if (stay_time >= 4){
								stay_time = 0;
								stay_state = 2;
							}
					
						break;

						case 2:
							vsp = -0.5;
							if (stay_time >= 128){
								stay_time = 0;
								stay_state = 3;
							}
					
						break;

						case 3:
							vsp = 0;
							if (stay_time >= 4){
								stay_time = 0;
								stay_state = 4;
							}
					
						break;

						case 4:

							vsp = 0.5;
							if (stay_time >= 128){
								stay_time = 0;
								stay_state = 1;
							}
					
						break;

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


				case 3:
				//flying
					vsp = -2;
				break;

				case 4:
				//poison
					vsp = 2;
				break;

				case 7:
				//bug
					vsp = -2;
				break;

				case 9:
				//steel
					vsp = 2;
				break;

				case 11:
				//water
					vsp = 0.5;
				break;

				case 13:
				//electric
					vsp = 4;
				break;

				case 14:
				//psychic
					vsp = 1;
				break;

				case 17:
				//dark
					vsp = -2;
				break;

				case 18:
				//dark
					vsp = -2;
				break;
			}

		break;
}


if (y > 900 || y < -200){
	instance_destroy(self);
}