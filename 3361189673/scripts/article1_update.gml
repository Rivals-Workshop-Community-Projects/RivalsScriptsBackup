//screens

tvread = obj_stage_main.monitors[tvnum]; //this will return current status of corresponding array

//monitors are right-facing so if
//left: 2
//right: 1
//up: 3
//down: 1
//but if it is flipped i flip it
if (state==2){
	with(obj_stage_main.focus_id){
		if (x*other.spr_dir < (other.x*other.spr_dir)-0){//if present to left
				other.tvdir = 2
		}else{//if present to right
				other.tvdir = 1
		}
		if (other.tvdir = 2){//if "2"
			if (x*other.spr_dir < (other.x*other.spr_dir)-60){//if present to left
			}else{//if not this condition
				if (y > other.y+30){//if below
					other.tvdir = 1
				}
			}
		}
		if (other.tvdir = 1){//if "1"
			if (y < other.y+30){//if above
				other.tvdir = 3
			}
		}
	}
}
	
state_timer++;

// // // // STATE 0 - INACTIVE
if (state == 0){
	state_end = 0;
    image_index = 0;
}

// // // // STATE 1 - START
if (state == 1){
	state_end = 20;
    image_index = 1 + state_timer * 3 / state_end;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == state_end){
        state = 2;
        state_timer = 0;
    }
}

// // // // STATE 2 - FACE
if (state == 2){
	state_end = 16;
	
    if (state_timer == state_end){
        state_timer = 0;
    }
	switch (tvdir){
		case 1://forward/down
			image_index = 5 + state_timer * 2 / state_end;
		break;
		case 2://backward
			image_index = 7 + state_timer * 2 / state_end;
		break;
		case 3://up
			image_index = 9 + state_timer * 2 / state_end;
		break;
		default: break;
	}
	if (obj_stage_main.ko_timer>0){
		state = 3;
		state_timer = 0;
	}
}
// // // // STATE 3 - LAUGH
if (state == 3){
	state_end = obj_stage_main.ko_timer_max;
	image_index = 11 + (state_timer%16) * 2 / 16;
	
    if (state_timer == state_end){
        state = 1;
        state_timer = 0;
    }
}

// // // // STATE 4 - LAUGH-LOOP
if (state == 4){
	state_end = 16;
    if (state_timer == state_end){
        state_timer = 0;
    }
	image_index = 11 + state_timer * 2 / state_end;
	
}



// // // // STATE 5 - END1
if (state == 5){
	state_end = 7;
	image_index = 4;
	
    if (state_timer == state_end){
        state = 6;
        state_timer = 0;
    }
}
// // // // STATE 6 - END2
if (state == 6){
	state_end = 6;
	image_index = 1;
	
    if (state_timer == state_end){
        state = 0;
        state_timer = 0;
    }
}

// // // // STATE 7 - START BEFORE LAUGH LOOP
if (state == 7){
	state_end = 20;
    image_index = 1 + state_timer * 3 / state_end;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == state_end){
        state = 4;
        state_timer = 0;
    }
}














