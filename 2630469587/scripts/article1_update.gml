//article1_update - runs every frame the article exists

/*

STATE LIST 

- 0 Freshly Spawned
- 1 Following Youmu
- 2 Following Opponent
- 3 Prepare for Throw
- 4 N-Special: Attack
- 5 U-Special: Attack
- 6 Hold Position (Idle Anim)
- 7 Hold Position
- 8 Hold Position > Follow Opponent

*/



//State 0: Freshly spawned

if (state == 0){
	
    state = 1;
    state_timer = 0;
    idle_timer = 0;
    
}



//State 1: Following Youmu

if (state == 1){
    
    spr_dir = player_id.spr_dir;
    
    ignores_walls = true;
    used_for_fly = false;
    
    //Get target
    movement_angle = point_direction(x, y, player_id.x-(player_id.spr_dir*65), player_id.y-60);
    movement_distance = point_distance(x, y, player_id.x-(player_id.spr_dir*65), player_id.y-60);
    
    //Set speed
    current_speed = point_distance(0, 0, vsp, hsp);
    if (movement_distance < 1) {
    	current_speed = 0;
    } else if (movement_distance > 24) {
    	if (current_speed != 7) {
    		current_speed++;
    	}
    } else {
    	if (current_speed > 1) {
    		current_speed--;
    	}
    }
    
    //Apply speed
    hsp = lengthdir_x(current_speed, movement_angle);
    vsp = lengthdir_y(current_speed, movement_angle);
    
    if (current_speed = 0) {
    	idle_timer++;
    	if (idle_timer == 4) {
    		idle_timer = 0;
    		last_state = 1;
    		state = 6; // Go to idle anim
    		state_timer = 0;
    	}
    } else {
    	idle_timer = 0;
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    
}



//State 2: Following Opponent

if (state == 2){
    
    spr_dir = 1;
    
    ignores_walls = true;
    used_for_fly = false;
    
    //Get target
    movement_angle = point_direction(x, y, following.x-(following.spr_dir*45), following.y-60);
    movement_distance = point_distance(x, y, following.x-(following.spr_dir*45), following.y-60);
    
    //Set speed
    current_speed = point_distance(0, 0, vsp, hsp);
    if (movement_distance < 1) {
    	current_speed = 0;
    } else if (movement_distance > 20) {
    	if (current_speed != 20) {
    		current_speed++;
    	}
    } else {
    	if (current_speed > 1) {
    		current_speed--;
    	}
    }
    
    //Apply speed
    hsp = lengthdir_x(current_speed, movement_angle);
    vsp = lengthdir_y(current_speed, movement_angle);
    
    if (current_speed = 0) {
    	idle_timer++;
    	if (idle_timer == 4) {
    		idle_timer = 0;
    		last_state = 2;
    		state = 10; // Go to idle anim
    		state_timer = 0;
    	}
    } else {
    	idle_timer = 0;
    }
    
    //If enemy dies, stop following
    if (following.state == PS_DEAD || following.state == PS_RESPAWN) {
    	state = 7;
    	state_timer = 2;
    }
    
    //If Youmu dies, stop following
    if (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN) {
    	state = 7;
    	state_timer = 5;
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    
}



//State 3: Prepare for Throw

if (state == 3){

	spr_dir = player_id.spr_dir;

	ignores_walls = true;
	used_for_fly = false;

	//Get target
    movement_angle = point_direction(x, y, player_id.x, player_id.y-35);
    movement_distance = point_distance(x, y, player_id.x, player_id.y-35);

	//Set speed;
	if (state_timer < 12) {
		current_speed = floor (movement_distance / (4 - state_timer));
	} else {
		current_speed = movement_distance;
	}
    
    //Apply speed
    hsp = lengthdir_x(current_speed, movement_angle);
    vsp = lengthdir_y(current_speed, movement_angle);
    
    //Failsafe for if interrupted
    if (state_timer > 16) {
		state = 1;
		state_timer = 0;
    }
}



//State 4: N-Special - Attack

if (state == 4){
	
	hsp = 0;
	vsp = 0;
	spr_dir = 1;
	//print_debug(state_timer)
	
	if (state_timer == 5)  {
		create_hitbox(AT_NSPECIAL_2, 1, x, y);
		sound_play( sound_get( "tan" ) );
		//print_debug("spawning hitbox on frame " + string(state_timer));
	}
	
	if (state_timer == 25)  {
		create_hitbox(AT_NSPECIAL_2, 1, x, y);
		sound_play( sound_get( "tan" ) );
		//print_debug("spawning hitbox on frame " + string(state_timer));
	}
	
	if (state_timer == 39) {
		state = 1;
		state_timer = 0;
		//print_debug("returning to idle");
	}
	
}



//State 5: U-Special: Attack

if (state == 5){
	
    ignores_walls = true;
    used_for_fly = false;
    throw_speed = 15;
    player_id.move_cooldown[AT_NSPECIAL_2]=16; // just so you cant do a wack combo
    
    if (state_timer == 0) {
        hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
        hitbox.hsp = lengthdir_x(throw_speed, throw_dir);
        hitbox.vsp = lengthdir_y(throw_speed, throw_dir);
    } 
    
    if (instance_exists(hitbox) && state_timer != 11) {
        hsp = lengthdir_x(throw_speed, throw_dir);
        vsp = lengthdir_y(throw_speed, throw_dir);
    } else {
        hsp = 0;
        vsp = 0;
        state = 7;
        state_timer = 0;
    }
    
    //print_debug(vsp);
    //print_debug(hsp);
    //print_debug(throw_dir);
    //print_debug(hitbox);
	
}

//State 6: Floating

if (state == 6){
	
	if (state_timer == 0) {
		home_x = x;
		home_y = y;
	}
	
	//If Youmu dies, stop following
    if (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN) {
    	state = 7;
    	state_timer = 20;
    }
	
	hsp = 0;
	vsp = (24-abs(48-(state_timer % 96)))/36;	//Inexcusably hacky, but it works I guess
	if (state_timer % 96 = 0) {y = home_y}		//Prevents drifting away
	
	if (last_state == 2) {
		movement_distance = point_distance(home_x, home_y, following.x-(following.spr_dir*65), following.y-60);
	} else {
		movement_distance = point_distance(home_x, home_y, player_id.x-(player_id.spr_dir*65), player_id.y-60);
	}
	
	if (movement_distance > 10) {
		state = last_state;
		state_timer = 0;
		y = home_y;
		vsp = 0;
	}
	
}

//State 7: Hold Position

if (state == 7){
	
	spr_dir = player_id.spr_dir;
	
	hsp = 0;
	vsp = 0;
	
	if (state_timer == 20) {
		state = 1;
		state_timer = 0;
	}
	
}

//State 8: Hold Position > Follow Opponent

if (state == 8){
	
	spr_dir = player_id.spr_dir;
	
	hsp = 0;
	vsp = 0;
	
	if (state_timer == 20) {
		state = 2;
		state_timer = 0;
	}
	
}

//state 9: position for air throw
if (state == 9){

	spr_dir = player_id.spr_dir;

	ignores_walls = true;
	used_for_fly = false;

	//Get target
    movement_angle = point_direction(x, y, player_id.x-(player_id.spr_dir*65), player_id.y-60);
    movement_distance = point_distance(x, y, player_id.x-(player_id.spr_dir*65), player_id.y-60);

	//Set speed;
	if (state_timer < 12) {
		current_speed = floor (movement_distance / (4 - state_timer));
	} else {
		current_speed = movement_distance;
	}
    
    //Apply speed
    hsp = lengthdir_x(current_speed, movement_angle);
    vsp = lengthdir_y(current_speed, movement_angle);
    
    //Failsafe for if interrupted
    if (state_timer > 16) {
		state = 1;
		state_timer = 0;
    }
}

//State 10: Floating (enemy attached)
// needed to differentiate within a throw

if (state == 10){
	
	if (state_timer == 0) {
		home_x = x;
		home_y = y;
	}
	
	//If Youmu dies, stop following
    if (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN) {
    	state = 7;
    	state_timer = 2;
    }
    
    //If enemy dies, stop following
    if (following.state == PS_DEAD || following.state == PS_RESPAWN) {
    	state = 7;
    	state_timer = 5;
    }
	
	hsp = 0;
	vsp = (24-abs(48-(state_timer % 96)))/36;	//Inexcusably hacky, but it works I guess
	if (state_timer % 96 = 0) {y = home_y}		//Prevents drifting away
	
	if (last_state == 2) {
		movement_distance = point_distance(home_x, home_y, following.x-(following.spr_dir*45), following.y-60);
	} else {
		movement_distance = point_distance(home_x, home_y, player_id.x-(player_id.spr_dir*45), player_id.y-60);
	}
	
	if (movement_distance > 10) {
		state = last_state;
		state_timer = 0;
		y = home_y;
		vsp = 0;
	}
	
}

//state 11: myon toss (fthrow downb)
if (state == 11){
	
    ignores_walls = true;
    used_for_fly = false;
    throw_speed = 20;
    player_id.move_cooldown[AT_NSPECIAL_2]=16; // just so you cant do a wack combo
    
    if (state_timer == 0) {
        hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
        hitbox.hsp = lengthdir_x(throw_speed, throw_dir);
        hitbox.vsp = lengthdir_y(throw_speed, throw_dir);
    } 
    
    if (instance_exists(hitbox) && state_timer != 11) {
        hsp = lengthdir_x(throw_speed, throw_dir);
        vsp = lengthdir_y(throw_speed, throw_dir);
    } else {
        hsp = 0;
        vsp = 0;
        state = 7;
        state_timer = 0;
    }
    
    //print_debug(vsp);
    //print_debug(hsp);
    //print_debug(throw_dir);
    //print_debug(hitbox);
	
}

//Sprite and animation handling
//...Really dealt with in article_post_draw; this is just the numbers used for that

//Update coordinates
for (i = 6; i > 0; i--) {
    ds_grid_set(trail_coords, 0, i, ds_grid_get(trail_coords, 0, i-1)); //x
    ds_grid_set(trail_coords, 1, i, ds_grid_get(trail_coords, 1, i-1)); //y
}

ds_grid_set(trail_coords, 0, 0, 2*(floor(x/2)));	//Rounds to Rivals pixels
ds_grid_set(trail_coords, 1, 0, 2*(floor(y/2)));	//Rounds to Rivals pixels

//Make sure coordinates aren't too far apart
outer_width = 14;
for (i = 0; i < 6; i++) {
	last_x = ds_grid_get(trail_coords, 0, i);
	last_y = ds_grid_get(trail_coords, 1, i);
	next_x = ds_grid_get(trail_coords, 0, i+1);
	next_y = ds_grid_get(trail_coords, 1, i+1);
	
    if (point_distance(last_x, last_y, next_x, next_y) > outer_width-(i*2)) {
    	//print_debug("Correcting for: i = " + string(i) + ", coords = " + string(last_x) + ", " + string(last_y) + ", " + string(next_x) + ", " + string(next_y));
    	new_dir = point_direction(last_x, last_y, next_x, next_y);
    	next_x = last_x + lengthdir_x((outer_width-(i*2)), new_dir);
    	next_y = last_y + lengthdir_y((outer_width-(i*2)), new_dir);
    	//print_debug("New coords: " + string(next_x) + ", " + string(next_y));
    	
    	ds_grid_set(trail_coords, 0, i+1, next_x);
    	ds_grid_set(trail_coords, 1, i+1, next_y);
    }
}

//Make time progress
state_timer++;

