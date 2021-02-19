
//death statements
if (replacedcount > maxarticles){
    shoulddie = true;
}

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}




//state 0: Freshly Spawned

if(state == 0){
    if(!free && vsp == 0){
		state = 1;
	}
}

if(free){
	vsp += article_gravity;
}

//state 1: Idle
if(state == 1){
	
    if place_meeting(x, y-49, player_id) {
        player_id.jump_speed = 17;
    }else if place_meeting(x+47, y-49, player_id) {
    	player_id.jump_speed = 17;
    }else{
    	player_id.jump_speed = 13;	
    }
    
    
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    
	if (shoulddie == true){
		state = 2;
		state_timer = 0;
	}
	
	if(player_id.bl_select == 7 && player_id.attack == AT_DSPECIAL){
		shoulddie = true;
	}

	if(player_id.attack == AT_FSPECIAL && player_id.window_timer == 2){
		instance_destroy();
	}
	
}

//state 2: Dying

if (state == 2){
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}


state_timer++;