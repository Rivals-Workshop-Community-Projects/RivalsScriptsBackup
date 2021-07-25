
if (init == 0){
	if (char == 1){
		sprite_index = sprite_get("margret");
	}else if(char == 2){
		sprite_index = sprite_get("arry");
	}
    init = 1;
}
if (init == 1){
state_timer++;

// // // // STATE 0 - TELE-IN
var summon_time = 18; //how long it takes
if (state == 0){ //start
    image_index = 4 + state_timer * 2 / summon_time;
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//play sound
    if (state_timer == char){
		sound_play(sound_get("tp_in"), false, -4, 0.8, (char==1)?1:0.9);
	}
    if (state_timer == summon_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 1 - IDLE
var idle_time = 40; //how long it takes
if (state == 1){ //idle
	image_index = 0
}

// // // // STATE 2 - TELE-OUT
var poof_time = 32; //how long it takes
if (state == 2){ //disappearing
	image_index = 1 + state_timer * 4 / poof_time;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == char){
		sound_play(sound_get("tp_out"), false, -4, 0.8, (char==1)?1:0.9);
	}
    if (state_timer == poof_time){
		if (warp && warp_marker != -4){
			x = get_marker_x(warp_marker);
			y = get_marker_y(warp_marker);
			state = 0;
			state_timer = 0;
		}else{
			if (char == 1){
			obj_stage_main.margret = -4;
			}else if(char == 2){
			obj_stage_main.arry = -4;
			}
			instance_destroy();
			exit;
		}
    }
}

// // // // STATE 3 - POSE
var pose_time = 64; //how long it takes
if (state == 3){ //pose
	if (state_timer<4){
		image_index = 6;
	}else{
		image_index = 7;
	}
	
    if (state_timer == char){
		sound_play(sound_get("peace"), false, -4, 0.8, (char==1)?1:0.9);
	}
    if (state_timer == pose_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 4 - ATTACK_SIDE
var attack_side_time = 10; //how long it takes
if (state == 4){ //attack side
	image_index = 8;
	
    if (state_timer == attack_side_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 5 - ATTACK_UP
var attack_up_time = 10; //how long it takes
if (state == 5){ //attack up
	image_index = 9;
	
    if (state_timer == attack_side_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}







}//init1