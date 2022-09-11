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



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
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
		
		if (hitbox_hit.damage > min_damage_hit && state != 1){
			
			/*
			with (player_id){
				move_cooldown[AT_DSPECIAL] = 200;
			}
			*/
			
			destroy_self = true;
			
			sound_play(hitbox_hit.sound_effect);
			spawn_hit_fx(floor(hitbox_hit.x),floor(hitbox_hit.y),hitbox_hit.hit_effect);
			
			/*
			hitbox_hit.player_id.hitpause = 1;
			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
			*/
			hitbox_hit.player_id.has_hit = true
			/*
			hitstop = hitbox_hit.hitpause;
			*/
			
			
			hitby = hitbox_hit.player_id;
		
		}
	}
}
else{
	hitbox_hit = noone;
}





//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



var grass_lifetime = player_id.grass_lifetime;
var flash_time = 2;
var petal_small = player_id.petal_small;

//State 0: idle

if (state == 0){
    sprite_index = sprite_get("grass_idle");
    
    if (state_timer > grass_lifetime){
    	destroy_self = true;
    }
    
    if (state_timer > grass_lifetime - 60 && hsp == 0){
		visible = !(flash_time && state_timer % 10 < 5);
	}
	
	//attack when ready
	if (player_id.attack == AT_DSPECIAL_AIR && player_id.window == 2 && player_id.window_timer == 1 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
		state = 1;
		state_timer = 0;
		sprite_index = sprite_get("grass_spike");
		image_index = 0;
	}
	
	if (state_timer > 4){
		if !(position_meeting(x, y+1, asset_get("par_block")) || position_meeting(x, y+1, asset_get("par_jumpthrough"))) { 
			destroy_self = true;
		}
	}
	
}

if (destroy_self){
	sound_stop(destroy_sfx);
	sound_play(destroy_sfx);
    spawn_hit_fx( x + 14*spr_dir, y + 0, destroy_vfx);
    instance_destroy();
    exit;
}

//image_index

//State 1: attack

var attack_anim_rate = 6;

if (state == 1){
	
	visible = true;
	
	if (state_timer mod attack_anim_rate == 0 && state_timer != 0){
		image_index++;
	}
	
	if (image_index == 4){
		destroy_self = true;
	}
	
	if (image_index == 1 && !attacked){
		attack_anim_rate = 4;
		sound_stop(asset_get("sfx_swipe_medium1"));
		sound_play(asset_get("sfx_swipe_medium1"));
		create_hitbox(AT_DSPECIAL, 2, floor(x + 6*spr_dir), floor(y - 30));
		attacked = true;
	}
	
    
    
}






//State 2: Dying

if (state == 2){
    if (state_timer == die_time){
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

/*
//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("grass_idle");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("your_sprite2");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("your_sprite3");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("your_sprite4")
    	animation_type = 1;
        break;
}
*/

/*
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
*/


//Make time progress
state_timer++;