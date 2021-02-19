//article1_update

//most of it is a better version of Acid Rainbows' raincloud code
//which, in turn, is made from Guadua's bamboo code

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

var summon_time = 20; //how long it takes for the plant to be ready
if (state == 0){ //start
    image_index = 0 + state_timer * 3 / summon_time;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	if (store_special){
		hsp=5*spr_dir;
	}else{
		hsp=2.8*spr_dir;
	}
	if (store_up){
		vsp=-2;
	}
	if (store_down){
		vsp=2;
	}
	
	//if it can go down a bit:
	/*if (!position_meeting(x, y+1, asset_get("par_block"))&&!position_meeting(x,y+1,asset_get("par_jumpthrough"))){
		y++; //go 1 pixel down
	}*/
	//play sound
    if (state_timer == floor(summon_time*.55)){
		sound_play(sound_get("lightsummon"));
	}
    if (state_timer == summon_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 1 - IDLE

var idle_time = 14; //how long one idle animation loop is
if (state == 1){ //idle
	image_index = 3 + state_timer * 2 / idle_time;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//this will remove the sentry when it detects clairen field
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 2; //go to disappearing state
		state_timer = 0; //reset timer manually
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
	if (!no_speed){
		hsp=0.99*spr_dir;
		vsp=0;
	}else if(player_id.state != PS_ATTACK_AIR){
		no_speed = false;
	}
	
	//idle looping
    if (state_timer == idle_time){
        state_timer = 0; //reset timer manually
		image_index = 3; //reset anim frame manually too
		idle_cycle = idle_cycle+1; //counting for IDLE EXPIRED below
    }
}

// // IDLE EXPIRED
var idle_max = 25; //amount of idle loop it can do until it ends
if (idle_cycle == idle_max && state == 1 || hit_wall){
	state = 2; //go to disappearing state
	state_timer = 0; //reset timer manually
	sound_play(sound_get("twinkles"));
}

// // // // STATE 2 - DISAPPEARING
var poof_time = 15; //how long it takes for the plant to poof
if (state == 2){ //disappearing
    image_index = 5 + state_timer * 3 / poof_time;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == poof_time){
		if (player_id.latest_light_sentry == id){
			player_id.latest_light_sentry = -4;
		}
		//player_id.move_cooldown[AT_FSPECIAL] = 100;
        instance_destroy();
        exit;
    }
}

// // // // STATE 3 - SHATTER
var boom_time = 20; //how long it takes for shattering to end
if (state == 3){ //boom
	image_index = 8 + state_timer * 3 / boom_time;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	hsp=0.5*spr_dir;
	
    if (state_timer == boom_time){
		if (player_id.latest_light_sentry == id){
			player_id.latest_light_sentry = -4;
		}
		//player_id.move_cooldown[AT_FSPECIAL] = 140;
		instance_destroy();
    }
}












