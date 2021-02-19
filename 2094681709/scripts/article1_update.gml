//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 Fucking Explode
- 4 Turning
- 5 Throwing
- 6 Jumping
- 7 Landing
- 8 Grabbing
- 9 Holding

*/

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}

//gravity
if (free && vsp < 10){
		vsp += .5;
	
}

if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT){
	//make him do stuff when you want if you want to
}

//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

//with (asset_get("pHitBox")){
//    if (place_meeting(x,y,other.id) && other.player_id != player_id){
//        other.shoulddie = true;
//        other.hitstop = 10; //Article freeze frames
//        hitpause = true;    //Player freeze frames
//        hitstop = 10;       //Player freeze frames, cont.
//    }
//}


//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	instance_destroy();
    exit;
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
    if !free {
	state = 1
    }
}



//State 1: Idle

if (state == 1){
    //Drive automatically
    hsp = drivespeed*spr_dir
    if !free and !position_meeting(x+spr_dir*20,y,asset_get("par_block")) and !position_meeting(x+spr_dir*20,y,asset_get("par_jumpthrough")) {
	state = 4
	state_timer = 0
	spr_dir*=-1
    }
	if hit_wall {
	state = 4
	state_timer = 0
	spr_dir*=-1
    }
    if player_id.attack = AT_USPECIAL {
	state = 3
	state_timer = 0
    }
    if player_id.attack = AT_FSPECIAL {
	state = 5
	state_timer = 0
    }
    if player_id.attack = AT_NSPECIAL && !free && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR) {
	state = 6
	state_timer = 0
    }
    if player_id.attack = AT_DSPECIAL && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR) && player_id.state_timer = 1 {
	state = 8
	state_timer = 0
    }
}



//State 2: Dying

if (state == 2){
    if (state_timer == die_time){
    	spawn_hit_fx( x, y, 13 );
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}



//State 3: Exploding.

if (state == 3){
    hsp *= 0.9
    if state_timer = 15 {
	var myx = x
	var myy = y
	with player_id {
		create_hitbox( AT_USPECIAL, 3, myx, myy )
	}
	spawn_hit_fx( x, y, 141 );
	state = 2
	state_timer = 0
    }
}



//State 4: Turning.

if (state == 4){
	hsp = 0
	if state_timer = 12 {
		state = 1
		state_timer = 0
	}	
}



//State 5: Throwing.

if (state == 5){
	hsp *= 0.9
	if state_timer = 15{
		sound_play(sound_get("ancientpowerfast"));
		var myx = x
		var myy = y
		with player_id {
			create_hitbox( AT_FSPECIAL, 2, myx, myy )
		}
		state = 2
		state_timer = 0
	}
}



//State 6: Jumping

if (state == 6){
	if state_timer = 2{
		image_index = 1
	}
	else if state_timer = 5{
		vsp = -12
		sound_play(sound_get("rev1"))
		image_index = 2
	}
	else if state_timer > 5 && !free{
		state = 7
		state_timer = 0
	}
	if player_id.attack = AT_USPECIAL {
	state = 3
	state_timer = 0
    }
    if player_id.attack = AT_FSPECIAL {
	state = 5
	state_timer = 0
    }
    if player_id.attack = AT_DSPECIAL && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR) && player_id.state_timer = 1 {
	state = 8
	state_timer = 0
    }
}



//State 7: Landing

if (state == 7){
	if !position_meeting(x+spr_dir*20,y,asset_get("par_block")) and !position_meeting(x+spr_dir*20,y,asset_get("par_jumpthrough")) {
	state = 4
	state_timer = 0
	spr_dir*=-1
    }
    if hit_wall {
	state = 4
	state_timer = 0
	spr_dir*=-1
    }
	if state_timer = 2{
		image_index = 1
	}
	if state_timer = 5{
		state = 1
		state_timer = 0
	}
}



//State 8: Grabbing

if (state == 8){
	if (state_timer mod 2 == 0){
            image_index++;
    }
    if state_timer = 20{
    	state = 1
    	state_timer = 0
    }
    else if state_timer = 15{
    	var myx = x-spr_dir*20
		var myy = y-32
		with player_id {
			create_hitbox( AT_DSPECIAL, 5, myx, myy )
		}
    }
    else if state_timer > 15{
    	with oPlayer{
    		if place_meeting(x,y,other){
    			if other.player_id != id{
    				grabbed = 1;
    				other.smallgrabbedid = id
					wrap_time = 60
					state = PS_WRAPPED
					visible = false
					other.state = 9
					other.state_timer = 0
    			}
    		}
    	}
    }
}



//State 9: Holding

if (state == 9){
	if state_timer = 1 sound_play(sound_get("acrobatics1"))
	if state_timer = 60{
		image_index = 16
		var myx = x-spr_dir*20
		var myy = y-32
		smallgrabbedid.grabbed = 0
		smallgrabbedid.visible = true
		smallgrabbedid = noone
		with player_id {
			create_hitbox( AT_DSPECIAL, 4, myx, myy )
		}
	}
	else if state_timer > 60{
		smallgrabbedid = noone
		if state_timer mod 6 = 0{
            image_index++;
    	}
    	if state_timer = 80{
    		state = 1
    		state_timer = 0
    	}
	}
	else{
		if state_timer mod 3 = 0{
			if image_index = 16 image_index = 12
            else image_index++;
    	}
    	smallgrabbedid.x = x-spr_dir*20
		smallgrabbedid.y =y-33
		smallgrabbedid.wrap_time = 60
		smallgrabbedid.state = PS_WRAPPED
    	hsp = drivespeed*spr_dir*0.66
	}
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("birdboydrive");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("birdboydrive");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("birdboydrive");
        animation_type = 1;
        break;
    case 3:
    	new_sprite = sprite_get("birdboydrive");
    	animation_type = 1;
    	break;
    case 4:
    	new_sprite = sprite_get("birdboyturn");
    	animation_type = 2;
    	break;
    case 5: 
    	new_sprite = sprite_get("birdboy_fspecial");
    	animation_type = 0;
    	break;
    case 6:
    	new_sprite = sprite_get("birdboy_jump");
    	animation_type = 3;
    	break;
    case 7: 
        new_sprite = sprite_get("birdboy_jump");
    	animation_type = 3;
    	break;
    case 8: 
        new_sprite = sprite_get("birdboy_dspecial")
    	animation_type = 3;
        break;
    case 9:
    	new_sprite = sprite_get("birdboy_dspecial")
    	animation_type = 3;
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
        
	case 3: //Image index is controlled manually.
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

//delete if out of bounds
if (y < 0 || y > room_height){
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
    instance_destroy();
    exit;
}

//destroy on death
if (player_id.state == PS_RESPAWN){
	spawn_hit_fx( x + (spr_dir*30), y + 45, 13 );
	instance_destroy();
    exit;
}

//Make time progress
state_timer++;