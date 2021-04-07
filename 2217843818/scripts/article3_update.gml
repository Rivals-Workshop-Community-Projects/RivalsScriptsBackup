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


lifetime++;





//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
    
    hsp = 2.5*spr_dir;
    
    with (asset_get("oPlayer")){
	    if (place_meeting(x, y, other)){
	    	if (player != other.player_id.player){
	    		other.shoot = true;
	    	}
	    }
    }
    
    if (shoot){
    	state = 1;
    	state_timer = 0;
    	with (player_id){
	    	move_cooldown[AT_FSPECIAL] = 85;
    	}
    }
    
}


if (player_id.state == PS_RESPAWN){
	shoot = true;
}



//State 1: Idle

if (state == 1){
	
    hsp = 0;
    
    if (state_timer mod shoot_mod == 0 && state_timer != shoot_final){
    	spawn_hit_fx( x, y - 5, 21 );
    	sound_stop(sound_get("amongus_weapon_fire"));
    	sound_play(sound_get("amongus_weapon_fire"));
    	create_hitbox(AT_FSPECIAL, 1, floor(x), floor(y-5));
    }
    if (state_timer == shoot_final){
    	spawn_hit_fx( x, y - 5, 197 );
    	sound_stop(sound_get("amongus_weapon_fire"));
    	sound_play(asset_get("sfx_absa_harderhit"));
    	create_hitbox(AT_FSPECIAL, 2, floor(x), floor(y-5));
    	instance_destroy();
    	exit;
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
        new_sprite = sprite_get("laser");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("laser");
        animation_type = 2;
        break;
    case 2:
        new_sprite = sprite_get("laser");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("laser")
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


//destroy
if (lifetime > 120){
	if (y < 0 || y > room_height){
	    instance_destroy();
	    exit;
	}
	
	if (x < 0 || x > room_width){
	    instance_destroy();
	    exit;
	}
}


//Make time progress
state_timer++;