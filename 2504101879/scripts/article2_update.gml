//article1_update - who knew not using an array for this would be a bad idea? :P

/*STATE LIST

- 0 Freshly spawned
- 1 Idle pre-hatch
- 2 Dying
- 3 Idle post-hatch
- 4 Thrown
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/

//i may be quite the fool for this system, i see a recode in the near future after the jam

//Are there too many articles? If so, I should die

if (babyid < 0 || babyid > 3){
    shoulddie = true;
}

if (state != 5) {
	depth = player_id.depth+1;
}

//check the babycount that was stored on last loop
if (player_id.babycount < storedbabycount) {
	//subtract the babies that have died from baby id
	//var diff = storedbabycount - player_id.babycount;
	if (decrementid == true) {
		babyid--;
		decrementid = false;
	}
	storedbabycount = player_id.babycount;
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



//State 0: Freshly spawned

if (state == 0){
	if (state_timer == 1) {
		player_id.babycount++;
		babydmgcooldown = 0;
	}
    //slow down the egg and pull it to the ground
    if (hsp > 0) { hsp -= .3; }
    if (hsp < 0) { hsp += .3; }
    vsp += .6
    
    //if out of room bounds die with no animation
    if (y < 0 || y > room_height || x < 0 || x > room_width){
	    player_id.babycount--;
	    with (obj_article2) {
	    	if (player_id == other.player_id) {
	    		storedbabycount = player_id.babycount; //make the baby count equal here so the difference will not be subtracted from other babies ids
	    	}
	    }
	    instance_destroy();
		exit;
	}
	
	//bounce off of other eggs
	with (obj_article2){
	    if (place_meeting(x,y,other.id) && state < 2){
	        other.vsp -= 5;
	        other.hsp = -sign(other.hsp)*10;
	    }
	}
	
	//hit enemies
	with (oPlayer){
	    if (place_meeting(x, y, other.id) && other.player_id != id && other.babydmgcooldown == 0) {
	        //sound_play(asset_get("sfx_blow_weak1"), false, false, 1, 1);
	    	//take_damage(player, -1, 3);
	    	//vsp -= 3;
	        //hsp = sign(other.hsp)*3;
	        var egg = other;
	    	with(other.player_id) {
	    		create_hitbox(AT_UTILT, 3, egg.x, egg.y);
	    	}
	        other.babydmgcooldown = other.BABYDMGCOOLVAL;
	    }
	}
    
    if (!free){
        state = 1;
        state_timer = 0;
        sound_play(player_id.sfx_eggland);
    }
}

//Die if should die
if shoulddie{
    state = 2;
    state_timer = 0;
}


//State 1: Idle

if (state == 1){
	/*if (!babycounted) {
		player_id.babycount++;
		babycounted = true;
	}*/
    //Stop the movement from state 0
    hsp = 0;
    vsp = 0;
    
    //if out of room bounds DIE
    if (y < 0 || y > room_height || x < 0 || x > room_width){
	    state = 2;
	    state_timer = 0;
	}
    
    if (!place_meeting(x,y, asset_get("par_block")) && !place_meeting(x,y, asset_get("par_jumpthrough"))) {
    	vsp += 7;
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    
    with (obj_article1) {
		if (player_id == other.player_id && image_index > 5) {
		    if (place_meeting(x, y, other)) {
		        other.state = 3;
		        other.state_timer = 0;
		        with (other.player_id) {
			        if (get_player_color(player) == 7){
			        	sound_play(sfx_griffinborn);
					}
					else {
						sound_play(sfx_babyborn);	
					}
		        }
		    }
		}
    }
    
    //KILL egg
    with (obj_article3) {
		if (player_id == other.player_id) {
		    if (place_meeting(x, y, other)) {
		    	if (state != 5 && state != 4   && state != 2) {
			    	state = 4;
			    	state_timer = 0;
			        other.state = 7;
			        other.state_timer = 0;
			        other.spr_dir = spr_dir;
			        sound_play(asset_get("sfx_orcane_dsmash"));
		    	}
		    }
		}
    }
    
    if (state_timer >= 600) {
    	state = 3;
        state_timer = 0;
        if (get_player_color(player_id.player) == 7){
        	sound_play(player_id.sfx_griffinborn);
		}
		else {
			sound_play(player_id.sfx_babyborn);	
		}
    }
}



//State 2: Dying

if (state == 2){
	if (state_timer == 1) {
		sound_play(player_id.sfx_babythrow, false, noone, 1, 1.5);
		hsp = 6 * -spr_dir;
		vsp = -10
		animation_type = 4;
    	player_id.babycount--;
	}
	else {
		if (state_timer < 25) {
			if (hsp > 0) { hsp -= .2; }
			vsp += .7;
		}
		else {
			hsp = 0;
			vsp = 0;
			animation_type = 2;
		}
	}
    with (obj_article2) { //keep any eggs from decrementing their id if the highest baby dies
    	if (player_id == other.player_id && other.babyid < babyid) {
    		decrementid = true;
    	}
    }
	/*if (!place_meeting(x, y, asset_get("par_block")) && !place_meeting(x, y, asset_get("par_jumpthrough"))) {
		hsp += .02*spr_dir;
		vsp += .2;
	}
	else {
		hsp = 0;
		vsp = 0;
	}*/
	
    if (image_index == 10){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}



//State 3: baby idle

if (state == 3){
	free = true;
	spr_dir = player_id.spr_dir;
	if (!babyfollowing) {
		player_id.babyfollowingcount++;
		babyfollowing = true;
	}
	image_angle = 0;
	//positions for each of the 3 babies
	switch (babyid) {
		case 0:
			babyboby = sin(state_timer/10);
			var dist = distance_to_point(player_id.x+50, player_id.y-50);
			var dir = point_direction(x, y, player_id.x+50, player_id.y-50);
			moveblats(dist, dir, 6);
			break;
		case 1:
			babyboby = sin((state_timer-4)/10);
			var dist = distance_to_point(player_id.x, player_id.y-80);
			var dir = point_direction(x, y, player_id.x, player_id.y-80);
			moveblats(dist, dir, 6);
			break;
		case 2:
			babyboby = sin((state_timer-8)/10);
		    var dist = distance_to_point(player_id.x-50, player_id.y-50);
		    var dir = point_direction(x, y, player_id.x-50, player_id.y-50);
			moveblats(dist, dir, 6);
			break;
		default:
	}
	
	//bob up and down
	y += babyboby;
	
	if (isthrown) {
		state = 4;
        state_timer = 0;
        player_id.babyfollowingcount--;
        babyfollowing = false;
        babytempx = player_id.x;
        babytempy = player_id.y;
		tbx = x;
		tby = y;
		
        if (get_player_color(player_id.player) == 7){
        	sound_play(player_id.sfx_griffinthrow);
		}
		else {
			sound_play(player_id.sfx_babythrow);	
		}
	}
}



//State 4: Thrown

if (state == 4) {
	//bring the baby to throw start
	if (state_timer <= 10){
		var dist = distance_to_point(player_id.x+(60*spr_dir), player_id.y-30);
		var dir = point_direction(x, y, player_id.x+(60*spr_dir), player_id.y-30);
		if (dist > 0) {
			hsp = lengthdir_x(.2 * dist, dir);
			vsp = lengthdir_y(.2 * dist, dir);
		}
	}
	else {
		var dist = distance_to_point(babytempx+(400*spr_dir), babytempy-30);
		var dir = point_direction(x, y, babytempx+(400*spr_dir), babytempy-30);
		if (dist > 0) {
			hsp = lengthdir_x(smooth_val * dist, dir);
			vsp = lengthdir_y(smooth_val * dist, dir);
			smooth_val += .01;
		}
	}
	
	with (oPlayer) {
		if (id != other.player_id) {
			if (place_meeting(x, y, other.id)) {
				other.latchedid = id;
				other.state = 5;
				other.state_timer = 0;
				break;
			}
		}
	}

    if (state_timer >= 60 || dist == 0){
    	smooth_val = 0.02;
        state = 3;
        state_timer = 0;
        isthrown = false;
    }
    
	//just in case something goes nasty put the baby back to state 3 after 1.5 seconds
    if (state_timer >= 90) {
    	smooth_val = 0.02;
        state = 3;
        state_timer = 0;
        isthrown = false;
    }
    
	with (asset_get("pHitBox")){
	    if (place_meeting(x,y,other.id) && other.player_id != player_id && hit_priority != 0){
	        smooth_val = 0.02;
	        state = 3;
	        state_timer = 0;
	        isthrown = false;
	    }
	}
}



//State 5: Biting

if (state == 5) {
	ignores_walls = true;
	hsp = 0;
	vsp = 0;
	depth = latchedid.depth-1;
	
	if (babyhealth <= 0) { //kill if dead
		state = 2;
		state_timer = 0;
	}
	
	//positions for each of the 3 babies
	if(state_timer == 1) {
		with (latchedid) {
			var h = sprite_get_height(sprite_get("idle_hurt"));
			var w = sprite_get_width(sprite_get("idle_hurt"));
			other.randyoffset = floor(h/12*(other.babyid+1));
			other.randxoffset = -floor(w/6) + random_func_2(0, floor(w/2)-10, true);
		}
	}
	x =	latchedid.x+randxoffset;
	y = latchedid.y-randyoffset;

	if (x < latchedid.x) {
		spr_dir = 1;
	}
	else {
		spr_dir = -1;
	}
	
	if (player_id.babysucktimer % 60 == 0) {
		player_id.playleechheal = true;
		take_damage(latchedid.player, -1, 1);
		if (get_player_damage(player_id.player) > 0) { take_damage(player_id.player, -1, -1) }
	}

    if (latchedid.state == PS_RESPAWN) {
    	state = 3;
        state_timer = 0;
        depth = player_id.depth+1;
        latchedid = player_id; //reset the player id so the bats dont instant transmission if they touch the owner
        isthrown = false;
    }
    
    with (pHitBox){
	    if (place_meeting(x,y,other.id) && other.player_id != player_id && hit_priority != 0 && other.babydmgcooldown == 0){
	        //other.state = 2;
	        //other.state_timer = 0;
	        other.babyhealth -= damage;
	        other.babydmgcooldown = other.BABYDMGCOOLVAL;
	        break;
	    }
	}
}

if (state == 4) {
	with (oPlayer){
	    if (place_meeting(x,y,other.id) && other.player_id != player && state == PS_PARRY){
	        other.state = 2;
	        other.state_timer = 0;
	        break;
	    }
	}
}


//State 6
//fake thrown for utilt
if (state == 6) {
	free = true;
	ignores_walls = true;
	spr_dir = player_id.spr_dir;
	if (!babyfollowing) {
		player_id.babyfollowingcount++;
		babyfollowing = true;
	}
	
	//just in case something goes nasty put the baby back to state 3 after 1 second
    if (state_timer >= 60) {
    	smooth_val = 0.02;
        state = 3;
        state_timer = 0;
        isthrown = false;
    }
}

//State 7
//a double yoshi exploshi!
if (state == 7) {
	if (state_timer == 1) {
		var hb = create_hitbox(AT_UTILT, 2, floor(x+10*spr_dir), floor(y-60));
		var hb2 = create_hitbox(AT_UTILT, 2, floor(x+35*spr_dir), floor(y-100));
		var hb3 = create_hitbox(AT_UTILT, 2, floor(x+55*spr_dir), floor(y-140));
		hb3.damage = 5;
	}
	if (image_index >= 9) {
		state = 9;
		state_timer = 0;
	}
}

//State 9: death without theatrics

if (state == 9){
	if (state_timer == 1) {
		animation_type = 4;
    	player_id.babycount--;
	}
    with (obj_article2) { //keep any eggs from decrementing their id if the highest baby dies
    	if (player_id == other.player_id && other.babyid < babyid) {
    		decrementid = true;
    	}
    }
    if (state_timer == 5){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("egglaunch");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("egg");
        animation_type = 3;
        break;
    case 2:
        if (get_player_color(player_id.player) == 7){
        	new_sprite = sprite_get("babydiegriffin");
		}
		else {
			new_sprite = sprite_get("babydie");
		}
        break;
    case 3:
        if (get_player_color(player_id.player) == 7){
        	new_sprite = sprite_get("babygriffin");
		}
		else {
			new_sprite = sprite_get("baby");
		}
        animation_type = 1;
        break;
    case 4: 
        if (get_player_color(player_id.player) == 7){
        	new_sprite = sprite_get("babyflygriffin");
		}
		else {
			new_sprite = sprite_get("babyfly");
		}
    	animation_type = 1;
    	break;
    case 5: 
        if (get_player_color(player_id.player) == 7){
        	new_sprite = sprite_get("babyslurpgriffin");
		}
		else {
			new_sprite = sprite_get("babyslurp");
		}
    	animation_type = 1;
    	break;
    case 6: 
        if (get_player_color(player_id.player) == 7){
        	new_sprite = sprite_get("babyflygriffin");
		}
		else {
			new_sprite = sprite_get("babyfly");
		}
    	animation_type = 1;
    	break;
    case 7: 
    	new_sprite = sprite_get("eggsplode");
    	animation_type = 5;
    	break;
    case 8: 
    case 9:
    	new_sprite = sprite_get("utilttrans")
    	animation_type = 1;
        break;
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
        if (state_timer mod egg_anim_rate == 0){
            image_index++;
        }
        break;
    case 4: //freeze at frame 0 for funny leech death
    	image_index = 0;
        break;
    case 5:
        if (state_timer mod sploshi_anim_rate == 0){
            image_index++;
        }
    	break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

//let the baby be able to take damage again
if (babydmgcooldown > 0) {
	babydmgcooldown--;
}
//Make time progress
state_timer++;
//store baby count for comparison
storedbabycount = player_id.babycount;
#define moveblats

var dist = argument0;
var dir = argument1;
var rad = argument2;


if (dist > rad) {
	hsp = lengthdir_x(.08 * dist, dir);
	if (dist > 0) {vsp = lengthdir_y(.08 * dist, dir);}
}
else {
	hsp = 0;
	vsp = 0;
}