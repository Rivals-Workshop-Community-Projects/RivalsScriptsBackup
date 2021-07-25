//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/




var runethingy_n = false;

with (player_id){
	if (has_rune("N")){
		var runethingy_n = true;
	}
}




if (place_meeting(x, y, asset_get("pHitBox")) && can_get_hit) { //makes the pot hittable when can_get_hit is true
	with (asset_get("pHitBox")){
		if (player != other.player_id.player){
			if (place_meeting(x, y, other)){
				other.hitbox_hit = self;
			}
		}
	}
	if (hitbox_hit != noone){
		
		if (hitbox_hit.damage > 7 && state != 2){
			
			with (player_id){
				move_cooldown[AT_NSPECIAL] = 225;
			}
			
			sound_play(sound_get("doink"));
			sound_play(hitbox_hit.sound_effect);
			spawn_hit_fx(floor(hitbox_hit.x),floor(hitbox_hit.y),hitbox_hit.hit_effect);
			
			hitbox_hit.player_id.hitpause = 1;
			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
			hitbox_hit.player_id.has_hit = true
			hitstop = hitbox_hit.hitpause;
			
			
			instance_destroy();
			exit;
			
			
			hitby = hitbox_hit.player_id;
		
		}
	}
}
else{
	hitbox_hit = noone;
}


//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}

if (player_id.state == PS_RESPAWN && player_id.state_timer == 1 && state != 2){
	spawn_hit_fx( x, y - 10, 13 );
    instance_destroy();
    exit;
    player_id.killarticles = false;
}


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



var idle_max = 450;

//State 0: Freshly spawned

if (state == 0){
    //do stuff
    
    if (state_timer == idle_max - 25){
    	//do stuff
    }
    
    if (state_timer == idle_max){
    	spawn_hit_fx(floor(x),floor(y) - 5,304);
    	state = 1;
    	state_timer = 0;
    }
}



//State 1: explode

if (state == 1){
    if (state_timer == 1){
    	with (player_id){
    		move_cooldown[AT_NSPECIAL] = 100 + other.explode_time; //neutral special cooldown
    	}
    	sound_play (asset_get ("sfx_blow_medium3"));
    }
    if (state_timer == explode_time){ //hitbox stuff
    
    	if (!runethingy_n){ //normal
    		
	    	explosion = create_hitbox(AT_NSPECIAL, 1, x, y - 5);
	    	sound_play ( sound_get ( "shoot" ));
	    	spawn_hit_fx(floor(x),floor(y) - 5,139);
	    	instance_destroy();
	    	exit;
	    	
    	}
    	else{ //rune version
    		
	    	explosion = create_hitbox(AT_EXTRA_1, 2, x, y - 5);
	    	sound_play ( sound_get ( "shoot" ));
	    	spawn_hit_fx(floor(x),floor(y) - 5,143);
	    	instance_destroy();
	    	exit;
    		
    	}
    }
}



//State 2: Dying

if (state == 2){
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}



//State 3

if (state == 3){
	//Put something here if you want
}



//State 4

if (state == 4){
	//Put something here if you want
}



//State 5

if (state == 5){
	//Put something here if you want
}



//State 6

if (state == 6){
	//Put something here if you want
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
    
    //11 frames in, create DSPECIAL hitbox 1
    if (state_timer == 11){
    	create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise"));
    }
    
    //11 frames in, create DSPECIAL hitbox 2
    if (state_timer == 15){
    	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise2"));
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == 28){
	    state = 2;
	    state_timer = 0;
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("target");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("target_hurt");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("target");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("target")
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
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;