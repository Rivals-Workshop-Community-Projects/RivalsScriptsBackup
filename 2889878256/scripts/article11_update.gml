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
				case 1:
				//normal
					 if (y != ground_level - 3*tile){
						vsp = -1;
					} else vsp = 0;
				break;

				case 2:
				//fighting
					 if (y != ground_level - 3*tile){
						vsp = -1;
					} else vsp = 0;
				break;

				case 3:
				//flying
					 if (y != ground_level - 3.5*tile){
						vsp = -1;
					} else vsp = 0;
				break;

				case 4:
				//poison
					 if (y != ground_level - 2.5*tile){
						vsp = -1;
					} else vsp = 0;
				break;

				case 5:
				//ground
					 if (x != midpoint + 13*dir*tile - dir*17){
						hsp = dir;
					} else hsp = 0;
				break;

				case 6:
				//rock
					if (y != ground_level - 5.5*tile){
						vsp = -2;
					} else vsp = 0;
				break;

				case 7:
				//bug
					if (y != ground_level - 3*tile){
						vsp = -1;
					} else vsp = 0;
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

				case 9:
				//steel
					if (y != ground_level - 4*tile){
						vsp = -1;
					} else vsp = 0;
				break;

				case 10:
				//fire
					if (y != ground_level - 5.5*tile){
						vsp = -2;
					} else vsp = 0;
				break;

				case 11:
				//water
					if (y != ground_level - 2.5*tile){
						vsp = -1;
					} else vsp = 0;

					image_index = get_gameplay_time()/3;
				break;

				case 12:
				//grass
					if (y != ground_level - 5*tile){
						vsp = -2;
					} else vsp = 0;
				break;

				case 13:
				//electric
					if (y != ground_level - 2*tile){
						vsp = -2;
					} else vsp = 0;
				break;

				case 14:
				//psychic
					if (y != ground_level - 4*tile){
						vsp = -2;
					} else vsp = 0;
				break;

				case 15:
				//ice
					if (y != ground_level - 2*tile){
						vsp = 4;
					} else vsp = 0;
				break;

				case 16:
				//dragon
					if (y != ground_level - 3*tile){
						vsp = -1;
					} else vsp = 0;
				break;

				case 17:
				//dark
					if (y != ground_level - 3*tile){
						vsp = -1;
					} else vsp = 0;
				break;

				case 18:
				//fairy
					if (y != ground_level - 3*tile){
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

			//just put the moving ones here. normal is a placeholder, you can replace it later

			switch (type){

				case 2:
				//fighting

					switch (stay_state){
						
						case 1: 
							hsp = -dir;

							if (x == midpoint + dir*2*tile){
								stay_state = 2;
								stay_time = 0;
							}
						break;

						case 2: 
							hsp = 0;

							if (stay_time > 300){
								stay_state = 3;
								stay_time = 0;
							}
						break;

						case 3: 
							hsp = dir;

							if (x == midpoint + dir*14*tile){
								stay_state = 4;
								stay_time = 0;
							}
						break;

						case 4: 
							hsp = 0;

							if (stay_time > 300){
								stay_state = 1;
								stay_time = 0;
							}
						break;
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

							if (stay_time > 216) {
								if (stay_time mod 4 = 0){
									image_index++;
								}
							}

							if (stay_time > 300){
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


							if (stay_time > 216) {
								if (stay_time mod 4 = 0){
									image_index++;
								}
							}

							if (stay_time > 300){
								stay_state = 1;
								stay_time = 0;
							}
						break;
					}
			
				break;

				case 9:
				//steel

					switch (stay_state){
						
						case 1: 
							vsp = 1;

							if (y == ground_level - 1){
								stay_state = 2;
								stay_time = 0;
							}
						break;

						case 2: 
							vsp = 0;

							if (stay_time > 300){
								stay_state = 3;
								stay_time = 0;
							}
						break;

						case 3: 
							vsp = -1;

							if (y == ground_level - 4*tile){
								stay_state = 4;
								stay_time = 0;
							}
						break;

						case 4: 
							vsp = 0;

							if (stay_time > 300){
								stay_state = 1;
								stay_time = 0;
							}
						break;
					}
			
				break;


				case 11:
				//water

					image_index = get_gameplay_time()/3;

					switch (stay_state){
						
						case 1: 
							vsp = -1;

							if (y <= ground_level - 6.5*tile){
								vsp = 0;
								stay_state = 2;
								stay_time = 0;
							}

						break;

						case 2: 

							vsp = 0;

							if (stay_time > 300){
								stay_state = 3;
								stay_time = 0;
							}

						break;

						case 3: 

							vsp = 1;

							if (y >= ground_level - 2.5*tile){
								vsp = 0;
								stay_state = 4;
								stay_time = 0;
							}

						break;

						case 4: 
							if (stay_time > 300){
								stay_state = 1;
								stay_time = 0;
							}
						break;
					}
			
				break;


				case 13:
				//electric

					switch (stay_state){
						
						case 1: 
							hsp = 0;
							vsp = -1;

							if (y == ground_level - 6*tile){
								stay_state = 2;
								stay_time = 0;
							}
						break;

						case 2: 
							hsp = dir;
							vsp = 0;

							if (x == midpoint + dir*9*tile){
								stay_state = 3;
								stay_time = 0;
							}
						break;

						case 3: 
							hsp = 0;
							vsp = 1;

							if (y == ground_level - 2*tile){
								stay_state = 4;
								stay_time = 0;
							}
						break;

						case 4: 
							hsp = -dir;
							vsp = 0;

							if (x == midpoint + dir*2*tile){
								stay_state = 1;
								stay_time = 0;
							}
						break;
					}
			
				break;

				case 14:
				//psychic
					switch (stay_state){
						case 1:

							if (stay_time <= 70) {
								hsp = dir;
							} else {
								stay_state = 2;
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

				case 15:
				//ice

					switch (stay_state){
						
						case 1: 
							hsp = dir;
							
							if (stay_time mod 2 = 0){
								vsp = -1
							} else vsp = 0;

							if (x == midpoint + dir*10*tile){
								stay_state = 2;
								stay_time = 0;
							}
						break;

						case 2: 
							hsp = 0;
							vsp = 0;

							if (stay_time > 300){
								stay_state = 3;
								stay_time = 0;
							}
						break;

						case 3: 
							hsp = -dir;

							if (stay_time mod 2 = 0){
								vsp = 1;
							} else vsp = 0;

							if (x == midpoint + dir*2.25*tile){
								stay_state = 4;
								stay_time = 0;
							}
						break;

						case 4: 
							vsp = 0;
							hsp = 0;

							if (stay_time > 300){
								stay_state = 1;
								stay_time = 0;
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
				case 1:
				//normal
					vsp = 1;
				break;

				case 2:
				//fighting
					hsp = 0;
					vsp = 1;

					if (x > (midpoint + 9*tile) || x < (midpoint - 9*tile)){
						hsp = -dir;
					}
				break;

				case 3:
				//flying
					vsp = 1;
				break;

				case 4:
				//poison
					vsp = 1;
				break;

				case 5:
				//ground;
					vsp = 1;
					hsp = -dir;
				break;

				case 6:
				//rock
					vsp = 2;
				break;

				case 7:
				//bug
					vsp = 1;
				break;

				case 8:
				//ghost
					hsp = 0;
					vsp = 1;

					if (x > (midpoint + 7*tile) || x < (midpoint - 7*tile)){
						hsp = -dir;
					}
				break;

				case 9:
				//steel
					hsp = 0;
					vsp = 1;

					if (x > (midpoint + 9*tile) || x < (midpoint - 9*tile)){
						hsp = -dir;
					}
				break;

				case 10:
				//fire
					vsp = 2;
				break;


				case 11:
				//water
					image_index = get_gameplay_time()/3;
					vsp = 2;
				break;

				case 12:
				//grass
					vsp = 2;
				break;

				case 13:
				//electric
					hsp = 0;
					vsp = 2;
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

				case 15:
				//ice
					hsp = 0;
					vsp = -2;
				break;

				case 16:
				//dragon
					vsp = 1;
				break;

				case 17:
				//dark
					vsp = 1;
				break;

				case 18:
				//fairy
					vsp = 1;
				break;

			}

		break;
}


if (y > 900 || y < -160){
	instance_destroy(self);
}