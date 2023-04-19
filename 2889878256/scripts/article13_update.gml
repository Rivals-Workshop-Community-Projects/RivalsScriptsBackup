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
					x = x_initial + spr_dir*32*sin(get_gameplay_time()/13)
				break;	

				case 8:
				//ghost
					if (y != ground_level - 2.5*tile){
						vsp = -1;
						hsp = dir;
					} else {
						vsp = 0;
						hsp = 0;
					}
				break;

				case 14:
				//psychic
					if (y != ground_level - 4*tile){
						vsp = -2;
					} else vsp = 0;
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
						x = x_initial + spr_dir*32*sin(get_gameplay_time()/13);
					}


				break;	

				case 8:
				//ghost

					switch (stay_state){
						
						case 1: 
							hsp = -dir;
							
							if (stay_time mod 3 = 0){
								vsp = -1
							} else vsp = 0;

							if (x == midpoint + dir*7*tile){
								stay_state = 2;
								stay_time = 0;
							}
						break;

						case 2: 
							hsp = 0;
							vsp = 0;

							if (stay_time > 308){
								stay_state = 3;
								stay_time = 0;
							}
						break;

						case 3: 
							hsp = dir;

							if (stay_time mod 3 = 0){
								vsp = 1;
							} else vsp = 0;

							if (x == midpoint + dir*12.25*tile){
								stay_state = 4;
								stay_time = 0;
							}
						break;

						case 4: 
							hsp = 0;
							vsp = 0;

							if (stay_time > 308){
								stay_state = 1;
								stay_time = 0;
							}
						break;
					}
			
					break;

				break;

				case 14:
				//psychic
					switch (stay_state){
						case 1:

							if (stay_time <= 70) {
								hsp = -dir;
							} else {
								stay_state = 4;
								stay_time = 0;
							}

						break;

						case 2:
							if (stay_time <= 70) {
								hsp = -dir;
								vsp = -2;
							} else {
								stay_state = 3;
								stay_time = 0;
							}
						break;

						case 3:

							if (stay_time <= 70) {
								hsp = -dir;
								vsp = 2;
							} else {
								stay_state = 4;
								stay_time = 0;
							}
						break;


						case 4:
							if (stay_time <= 70) {
								hsp = 2*dir;
								vsp = 0;
							} else {
								stay_state = 2;
								stay_time = 0;
							}
						break;

					}

				break;

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

				case 8:
				//ghost
					hsp = 0;
					vsp = 1;

					if (x > (midpoint + 7*tile) || x < (midpoint - 7*tile)){
						hsp = -dir;
					}
				break;

				case 14:
				//psychic

					if(x > initial_x){
						hsp = -1;
					} else if(x < initial_x){
						hsp = 1;
					} else 	hsp = 0;

					vsp = 2;
				break;
			}

		break;
}


if (y > 900 || y < -160){
	instance_destroy(self);
}