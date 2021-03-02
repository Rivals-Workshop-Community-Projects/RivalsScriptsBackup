//article1 update

//a modified version of feri's nspecial

if (init == 0){
    init = 1;
    
	//when it detects that there's a plant ready already:
    with (asset_get("obj_article1")){
		//makes sure it's my own plant/article:
        if (id != other.id && player_id == other.player_id){
			if (state < 2){ //if it's not in exploding states:
				state = 2; //go to disappearing state
				state_timer = 0; //reset timer manually
			}
        }
    }
}

state_timer++;

// // // // STATE 0 - START

var summon_time = 10; //how long it takes for the plant to be ready
if (state == 0){ //growing
    image_index = 0 + state_timer * 3 / summon_time;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//if it can go down a bit:
	/*if (!position_meeting(x, y+1, asset_get("par_block"))&&!position_meeting(x,y+1,asset_get("par_jumpthrough"))){
		y++; //go 1 pixel down
	}*/
	//play sound
    if (state_timer == floor(summon_time*.55)){
		sound_play(asset_get("sfx_plant_ready"));
	}
    if (state_timer == summon_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 1 - IDLE

var idle_time = 40; //how long one idle animation loop is
if (state == 1){ //idle
	image_index = 2

	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//this will remove the plant when it detects clairen field
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 4; //go to exploding state
		state_timer = 0; //reset timer manually
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
	
	//idle looping
    if (state_timer == idle_time){
        state_timer = 0; //reset timer manually
		image_index = 2; //reset anim frame manually too
		idle_cycle = idle_cycle+1; //counting for IDLE EXPIRED below
    }
}

// // IDLE EXPIRED
var idle_max = 14; //amount of idle loop it can do until it ends
if (idle_cycle == idle_max && state == 1){
	state = 2; //go to disappearing state
	state_timer = 0; //reset timer manually
	sound_play(asset_get("sfx_syl_dspecial_plantaway"));
}


// // // // STATE 2 - DISAPPEARING
var poof_time = 15; //how long it takes for the plant to poof
if (state == 2){ //disappearing
	if (use_left == 2){ //if it has 2 uses left
    image_index = 8 + state_timer * 3 / poof_time;
	} else if (use_left == 1){ //if it has 1 use left
		image_index = 8 + state_timer * 3 / poof_time;
	}
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == poof_time){
        instance_destroy();
        exit;
    }
}

// // // // STATE 3 - CHARGING
var charge_time = 3; //how long it takes to charge //14
if (state == 3){ //charging
	if (use_left == 2){ //if it has 2 uses left
		image_index = 19 + state_timer * 2 / charge_time;
	} else if (use_left == 1){ //if it has 1 use left
		image_index = 3 + state_timer * 2 / charge_time;	
	}
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//make sound
	if (state_timer == 1){
		sound_play( asset_get( "sfx_shop_close" ) );
	}
	
	//when it's done charging;
    if (state_timer == charge_time){
		//stop the chargey sound
		sound_stop( asset_get( "sfx_shop_close" ) );
		//then make new sound
		sound_play( asset_get( "sfx_clairen_arc_lose" ) );
		
		//the explosion hitbox is defined in nspecial
		//at hitbox number 2
		create_hitbox(AT_NSPECIAL, 2, x+8, y-5);
		
		state = 4; //go to exploding state
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 4 - EXPLODE
var boom_time = 19; //how long it takes for explosion to end
if (state == 4){ //explosion
	if (use_left == 2){ //if it has 2 uses left
		image_index = 21 + state_timer * 3 / (boom_time+1);
	} else if (use_left == 1){ //if it has 1 use left
		image_index = 5 + state_timer * 3 / (boom_time+1);
	}
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//when the explosion ends
    if (state_timer == boom_time){
		if (use_left == 2){ //if it has 2 uses left
			state = 1; //go to idle state
			state_timer = 0; //reset timer manually
			idle_cycle = 0; //reset idle cycle count
			use_left = 1; //reset idle cycle count
		} else if (use_left == 1){ //if it has 1 use left
			instance_destroy();
			exit;
		}
    }
}