//article1 update

/*STATE LIST

- 0 Spawned
- 1 Idle
- 2 Dying
- 3 Bite
- 4 Jump
- 5 Killed
- 6 Killed by NSPECIAL
- 7 Killed by USPECIAL

*/

if (init == 0){
    init = 1;
    
	//kill minion and give thara damage if a new one is spawned
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id){
					if (state != 2){ 
						//take_damage(player, -1, 5 ); oh no... it's broken...,,
						sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
						state = 2; // die
						state_timer = 0; 
					}
        }
    }
}

//gravity
if (free && vsp < 10){
		vsp += .5;
	
}

state_timer++;

// // STATE 0 - SPAWNED

var spawn_time = 25;
if (state == 0){ 
	player_id.killarticles = false;
	player_id.minion_poisoned = false;
	sprite_index = sprite_get("minion");
	minion_poisoned = false;
	spr_dir = player_id.spr_dir;
    image_index = 0 + state_timer * 5 / spawn_time;
	hsp = 0;
	
	//go down
	/*if (!position_meeting(x, y+1, asset_get("par_block"))&&!position_meeting(x,y+1,asset_get("par_jumpthrough"))){
		y++; //go 1 pixel down
	}*/
	//play sound
    if (state_timer == floor(spawn_time*.15)){
		sound_play(asset_get("sfx_plant_ready"));
	}
    if (state_timer == spawn_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // STATE 1 - IDLE
player_id.minion_active = true;
var idle_time = 40; //how long one idle animation loop is
if (state == 1){ //idle
	if (minion_poisoned = false) {
		hsp = walkspeed*spr_dir;
	}
	else {
		hsp = (walkspeed+1)*spr_dir;
	}
	if (!collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_block"), 0, 1)
	&& !collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_jumpthrough"), 0, 1)
	&& !free){
		hsp *= -1;
		spr_dir *= -1;
	}
	if hit_wall {
		hsp *= -1;
		spr_dir *= -1;
    }
	
	with (oPlayer){
		with (other.id){
	        var teammate = get_player_team(get_instance_player(other));
	        if (teammate != get_player_team (player) && place_meeting(x, y, other)){
				state = 3;
				state_timer = 0;
	        }
	    }
	}
	
	if (use_left == 2){ //if it has 2 uses left
		image_index = 5 + state_timer * 4 / idle_time;
	} else if (use_left == 1){ //if it has 1 use left
		image_index = 5 + state_timer * 4 / idle_time;
	}
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//Remove if hit by Clairen field
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 2; //die
		state_timer = 0; //reset timer manually
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
	
	//idle looping
    if (state_timer == idle_time){
        state_timer = 0; //reset timer manually
		image_index = 5; //reset anim frame manually too
		idle_cycle = idle_cycle+1; //MAX IDLE LOOPS
    }
	
	if player_id.attack = AT_DSPECIAL_2 && !free && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR) {
		state_timer = 0;
		state = 4;
    }
	
	/*
	if player_id.attack = AT_USPECIAL && !free && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR) {
		state_timer = 0;
		state = 7;
    }
	if player_id.attack = AT_NSPECIAL && (player_id.window == 7 || player_id.window == 4) {
		state_timer = 0;
		state = 6;
    } */
}


// // MAX IDLE LOOPS
var idle_max = 12; 
if (idle_cycle == idle_max && state == 1) && minion_poisoned = false {
	state = 2; 
	state_timer = 0; 
	sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 1.1);
}


// // STATE 2 - DYING
if (state == 2){
	player_id.minion_active = false;
	hsp = 0;    
	spawn_hit_fx( x, y, 14 );
    instance_destroy();
    exit;
}

// // STATE 3 - BITE
if (state == 3){
		sound_play ( asset_get("sfx_crunch"));
		spawn_hit_fx( floor(x), floor(y), 303 );
		if (minion_poisoned) {
			create_hitbox(AT_JAB, 7, x, y);
		}
		else {
			create_hitbox(AT_JAB, 4, x, y);
		}
		player_id.minion_active = false;
		hsp = 0;    
		instance_destroy();
		exit;
	}

// // STATE 4 - EXPLODE
if (state == 4){

		image_index = 9;
		hsp = 0;
		vsp += .5;
		if (state_timer <= 5) { 
			vsp = -5;
		}
		
		if (state_timer = 15) { 
			create_hitbox(AT_JAB, 5, x + 2, y - 5);
			sound_play(asset_get("sfx_abyss_seed_explode"));
			player_id.minion_active = false;    
			spawn_hit_fx( x, y - 5, 117 );
			instance_destroy();
			exit;
		}
}

// // STATE 5 - KILLED BY OTHER PLAYER
var oth = instance_place(x, y, asset_get("pHitBox"));
if (place_meeting(x, y, oth) && oth.player_id != player_id){

	if (minion_poisoned = true) {
			state = 6;
			state_timer = 0; 
	}

	else {

		//take_damage(player, -1, 5 ); take damage machine broke
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
		player_id.minion_active = false;
		hsp = 0;    
		spawn_hit_fx( x, y, 116 );
		instance_destroy();
		exit;

	}

}

// // STATE 6 - POISONED EXPLOSION
if (state == 6){

		if (state_timer = 1) { 
			create_hitbox(AT_JAB, 5, x + 2, y - 5);
			sound_play(asset_get("sfx_abyss_seed_explode"));
			player_id.minion_active = false;    
			spawn_hit_fx( x, y - 5, 117 );
			instance_destroy();
			exit;
	}
}

if (player_id.attack = AT_FSPECIAL) { 
	var tha = instance_place(x, y, asset_get("pHitBox"));
	if (place_meeting(x, y, tha) && tha.player_id = player_id && state == 1){
		player_id.grabbedid = noone;
		create_hitbox(AT_JAB, 6, x + 2, y - 5);
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
		sound_play(asset_get("sfx_abyss_seed_explode"));  
		spawn_hit_fx( x, y - 5, 119 );
		player_id.vsp = -12;
		player_id.djumps = 0;
		player_id.minion_active = false;  
		hsp = 0;    
		instance_destroy();
		exit;
	}
}

if player_id.attack = AT_FTILT && (player_id.window == 2 && player_id.window_timer == 1) { 
	/*	spr_dir *= -1;*/
	if (spr_dir != player_id.spr_dir) {
		sound_play(asset_get("sfx_leaves"));
	}
	spr_dir = player_id.spr_dir;
}

if (player_id.attack = AT_NSPECIAL) && (state == 1) { 
	var tha = instance_place(x, y, asset_get("pHitBox"));
	if (place_meeting(x, y, oth) && tha.player_id == player_id){
		minion_poisoned = true;
		player_id.minion_poisoned = true;
		spawn_hit_fx( x, y, 116 );
		sprite_index = sprite_get("poisonminion");
		sound_play(asset_get("sfx_abyss_seed_explode"));
  		destroyed = true;
	}
}
/*
if (instance_place(x, y, player_id.webzone) != noone) { 
	var tha = instance_place(x, y, player_id.webzone);
	if (place_meeting(x, y, oth) && tha.player_id == player_id){
		minion_poisoned = true;
		player_id.minion_poisoned = true;
		sprite_index = sprite_get("poisonminion");
  		destroyed = true;
	}
}
*/

/*
if player_id.attack = AT_USPECIAL && player_id.window == 2{ 
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
		state = 2;
}
*/

if player_id.killarticles = true {
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
		state = 2;
}

//delete if out of bounds
if (y < 0 || y > room_height) {
	player_id.minion_active = false;
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width) {
	player_id.minion_active = false;
    instance_destroy();
    exit;
}









