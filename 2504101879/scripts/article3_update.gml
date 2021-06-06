//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 latched
- 2 Dying
- 3 pulling opponent
- 4 normal pull back 
- 5 pulling the player
- 6 
- 7 
- 8 
- 9 Attack

*/



//Are there too many articles? If so, I should die
if (replacedcount > 1){
    shoulddie = true;
}

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}

//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}


spr_dir = sign(x - player_id.x);

//State 0: Freshly spawned

if (state == 0){
	ispulled = true;
	player_id.attack = AT_FSPECIAL;
	//player_id.window = 1;
	x = player_id.hookorigin + dsin((state_timer*hookspeed)*spr_dir)*hookrange;
	if (abs(dsin((state_timer*hookspeed)*spr_dir)) >= 1) {
		state = 4;
		state_timer = 0;
	}
	if (state_timer % 6 == 0) {
		sound_play(asset_get("sfx_ell_utilt_loop"), false, false, 1, 1);
	}
	if (state_timer > 30) {
		switch(spr_dir) {
			case 1:
				if (x <= player_id.x) {
					state = 2;
					state_timer = 0;
				}
				break;
			default:
				if (x >= player_id.x) {
					state = 2;
					state_timer = 0;
				}
				break;
		}
	}
	
   	with (oPlayer) {
		if (id != other.player_id) {
			if (place_meeting(x, y, other)) {
				other.latchedid = id;
				other.state = 1;
				other.state_timer = 0;
				break;
			}
		}
	}
	
	if (place_meeting(x, y, asset_get("par_block"))) {
		state = 5;
		state_timer = 0;
	}
}

//Die if should die
if shoulddie{
    state = 2;
    state_timer = 0;
}


//State 1: latched

if (state == 1){
	ispulled = false;
	ignores_walls = true;
	hsp = 0;
	vsp = 0;
	depth = latchedid.depth+1;
	
	var dist = distance_to_point(player_id.x, player_id.y-50);
	//position
	if(state_timer == 1) {
		sound_play(player_id.sfx_hookstick, false, false, 1, 1);
		with (latchedid) {
			var h = sprite_get_height(sprite_get("idle_hurt"));
			var w = sprite_get_width(sprite_get("idle_hurt"));
			other.hyoffset = floor(h/12);
			other.hxoffset = floor(w/12);
		}
	}
	
	//spr_dir = storeddir*latchedid.spr_dir;
	
	x =	latchedid.x;
	y = latchedid.y-hyoffset;
	
	
	if (player_id.babysucktimer % 60 == 0) {
		player_id.playleechheal = true;
		take_damage(latchedid.player, -1, 1);
		if (get_player_damage(player_id.player) > 0) { take_damage(player_id.player, -1, -1) }
	}

	if (dist > hookdespawnrange) {
		state = 4;
		state_timer = 0;
	}

    if (latchedid.state == PS_RESPAWN) {
    	state = 2;
        state_timer = 0;
        depth = player_id.depth+1;
        latchedid = player_id; //reset the player id so the bats dont instant transmission if they touch the owner
    }
}



//State 2: Dying

if (state == 2){
	ispulled = false;
    player_id.killarticles = false;
    player_id.hookattached = true;
    instance_destroy();
    exit;
}



//State 3: pulling a player

if (state == 3) {
	ispulled = false;
	if (state_timer % 6 == 0) {
		sound_play(asset_get("sfx_ell_utilt_retract"), false, false, 1, 1);
	}
	if (state_timer > player_id.hookpulltime) {
		state = 2;
		state_timer = 0;
	}
}



//State 4: getting pulled back normally

if (state == 4) {
	ispulled = false;
	if (state_timer % 6 == 0) {
		sound_play(asset_get("sfx_ell_utilt_retract"), false, false, 1, 1);
	}
	var dist = distance_to_point(player_id.x, player_id.y-10);
	var dir = point_direction(x, y, player_id.x, player_id.y-10);
	if (dist > 20) {
		hsp = lengthdir_x(smooth_val * dist, dir);
		vsp = lengthdir_y(smooth_val * dist, dir);
		smooth_val += .005;
	}
	else {
		state = 2;
		state_timer = 0;
	}
	if (state_timer > 60) {
		state = 2;
		state_timer = 0;	
	}
}



//State 5: pulling the player

if (state == 5) {
	ispulled = false;
	if (state_timer % 6 == 0) {
		sound_play(asset_get("sfx_ell_utilt_retract"), false, false, 1, 1);
	}
	if (state_timer > player_id.hookpulltime) {
		state = 2;
		state_timer = 0;
	}
}

if (state == 4) {
	
}


//State 6
if (state == 6) {

}



//State 7

if (state == 7){
	//Put something here if you want
}



//State 8

if (state == 8){
	//Put something here if you want
}



//State 9: Attack

if (state == 9){

}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("hook");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("hook");
        animation_type = 3;
        break;
    case 2:
    case 3:
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9:
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
    case 3: //Increment image_index at the rate determined by die_anim_rate
        break;
    case 4: //freeze at frame 0 for funny leech death
    	image_index = 0;
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

//Make time progress
state_timer++;