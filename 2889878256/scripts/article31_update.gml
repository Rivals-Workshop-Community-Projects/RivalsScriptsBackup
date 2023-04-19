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

	if (state == 1){
		state_timer++;
	}

	if (obj_stage_main.stage == 1){
		state = 2;
	}

	if (obj_stage_main.stage == 2){
		state = 3;
	}

if (state == 3){
	vsp = 4;
}

if (y > room_height | (state == 3 & size <= 0)){
	instance_destroy(self);
}