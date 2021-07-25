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

if (friend.hp == 0){
	die = true;
}

if (friend.state == 3){
	if (friend.state_timer == 1){
		spawn_hit_fx(floor(x),floor(y),0);
	}
}

if (place_meeting(x, y, asset_get("pHitBox")) && friend.state != 4) {
	with (asset_get("pHitBox")){
		if (place_meeting(x, y, other)){
			other.hitbox_hit = self;
		}
	}
	if (hitbox_hit.player_id != player_id && hitbox_hit != noone){
		
		//put box in hit state
		friend.state = 4;
		friend.state_timer = 0;
		
		//play hit sfx/spawn hit vfx
		if (friend.state_timer == 0 && friend.state == 4){
			sound_play(hitbox_hit.sound_effect);
			spawn_hit_fx(floor(x),floor(y),hitbox_hit.hit_effect);
		}
		
		if (friend.state_timer == 0 && friend.state == 4){
			friend.spr_dir = hitbox_hit.player_id.spr_dir;
			friend.hsp = hitbox_hit.kb_value*friend.spr_dir;
		}
		
		//put player in hitstop
		if (friend.state_timer == 0 && friend.state == 4){
			hitbox_hit.player_id.hitpause = 1;
			hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
			hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
			hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
			hitbox_hit.player_id.has_hit = true
			friend.hitstop = hitbox_hit.hitpause;
		}
		
		hitby = hitbox_hit.player_id;
		
	}
}


var hit_time_max = 80;
if (hitby != noone){
	hit_time_thingy++;
	if (hit_time_thingy == hit_time_max){
		hitby = noone;
		hit_time_thingy = 0;
	}
}


lifetime++;


//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	die = true;
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

var help = self;

//State 0: Freshly spawned

if (state == 0){
    if (friend.pushing == true){
    	if (pusher != noone){
	    	with (pusher){
			    if (!place_meeting(x, y, other) && (state != PS_DASH_START || state != PS_DASH || state != PS_WALK)){
			    	help.pushtime = 0;
			    	help.falltimer = -10;
					//help.friend.hsp = hsp;
					help.friend.pushing = false;
					help.pusher = noone;
			    }
	    	}
    	}
	}
}



if (die){
	
	if (pusher_stored != noone || hitby != noone){
		if (pusher_stored != player_id){
			with (player_id){
				move_cooldown[AT_NSPECIAL] = block_cooldown;
			}
		}
	}
	
	if (instance_exists(falling_hitbox)){
		falling_hitbox.destroyed = true;
    }
    
    if (instance_exists(hbo)){
		hbo.destroyed = true;
    }
    
	spawn_hit_fx( x, y, 13 );
	instance_destroy();
	exit;
}


//State 1: Idle

if (friend.state == 0){
	
	spr_dir = friend.spr_dir;
	
    with (friend){
    	if (player_id == other.player_id){
	    	var box_x = x;
	    	var box_y = y;
	    	var boxspeed = vsp;
	    	var freef = free;
    	}
    }
    
    
    x = box_x;
    y = box_y;
    
    
    if (!instance_exists(falling_hitbox)){
		falling_hitbox = noone;
    }
    
    if (!instance_exists(hbo)){
		hbo = noone;
    }
    
    with (asset_get("oPlayer")){
    	

	    if (place_meeting( x, y, other )){
	    	
	    	
	
	    	switch (state){
				case PS_DASH:
				case PS_DASH_START:
						if (x < other.x) { //get which side of the box the player is on, use that to change the speed to match it later on
			    		var flip = 1;
						    help.spr_dir = 1;
						    help.friend.spr_dir = 1;
						} else {
						    var flip = -1;
						    help.spr_dir = -1;
						    help.friend.spr_dir = -1;
						}
					help.friend.pushing = true;
					var zoom = dash_speed;
					help.friend.hsp = zoom*flip;
					help.pusher = id;
					help.pusher_stored = id;
					//with (asset_get("obj_article_solid")){
					//	if (player_id == other.player_id && place_meeting(x, y, other) && id != other.friend){
					//		pushing = true;
					//		hsp = zoom;
					//	}
					//}
				break;
				case PS_WALK:
						if (x < other.x) { //get which side of the box the player is on, use that to change the speed to match it later on
			    		var flip = 1;
						    help.spr_dir = 1;
						    help.friend.spr_dir = 1;
						} else {
						    var flip = -1;
						    help.spr_dir = -1;
						    help.friend.spr_dir = -1;
						}
					help.friend.pushing = true;
					var zoom_slower = walk_speed;
					help.friend.hsp = zoom_slower*flip;
					help.pusher = id;
					help.pusher_stored = id;
					//with (asset_get("obj_article_solid")){
					//	if (player_id == other.player_id && place_meeting(x, y, other) && id != other.friend){
					//		pushing = true;
					//		hsp = zoom_slower;
					//	}
					//}
				break;
			}
			
		
		    
	    }
	    
    }


}

if (!freef || friend.state == 3){
	
	
	if (falling_hitbox != noone){ //destroy falling hitbox on ground
	    instance_destroy(falling_hitbox);
	}
	
	
}


if (freef && friend.state != 3 && friend.hsp < 1){
	
	falltimer++;
	
	if (boxspeed >= 2 && falltimer > 10){
		if (falling_hitbox == noone){ //spawn falling hitbox if it doesn't exist
		    falling_hitbox = create_hitbox(AT_NSPECIAL, 1, box_x, box_y + 10);
		}
	}
	if (falling_hitbox != noone){
		falling_hitbox.x = x;
		falling_hitbox.y = y + 10;
		falling_hitbox.hitbox_timer = 1;
	}
}

else if (falling_hitbox != noone){ //destroy falling hitbox if falling too slow
	instance_destroy(falling_hitbox);
}


///////////////////////////////////////////fspecial

if (!friend.pushing){
	pushtime++;
	
	if (pushtime == 90){
		pusher_stored = noone;
	}
}


if (friend.state != 3){
	
	if (hbo != noone){ //destroy moving hitbox if state is not 3
	    instance_destroy(hbo);
	}
	
	
}




if (friend.state != 3){
	
	if (hbo != noone){ //destroy falling hitbox on ground
	    instance_destroy(hbo);
	}
	
	
}


if (friend.state == 3){
	
	if (friend.state_timer > 6){
		if (hbo == noone){ //spawn falling hitbox if it doesn't exist
			hbo = create_hitbox(AT_NSPECIAL, 2, friend.x + 35*spr_dir, friend.y - 8);
		}
		
		if (hbo != noone){
			hbo.x = friend.x + 35*friend.spr_dir;
			hbo.y = friend.y - 8;
			hbo.hitbox_timer = 1;
		}
	}
	
}
	    



	    

if (friend.state == 1){
	if (friend.state_timer == 2){
		sound_stop (asset_get ("sfx_boss_fireball_land"));
		sound_play (asset_get ("sfx_boss_fireball_land"));
		spawn_hit_fx( x, y, 3 );
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
        new_sprite = asset_get("empty_sprite");
        animation_type = 0;
        break;
    case 1:
        new_sprite =  asset_get("empty_sprite");
        animation_type = 1;
        break;
    case 2:
        new_sprite =  asset_get("empty_sprite");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite =  asset_get("empty_sprite");
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

//delete if out of bounds
if (y > room_height){
	
	if (pusher_stored != noone || hitby != noone){
		if (pusher_stored != player_id){
			with (player_id){
				move_cooldown[AT_NSPECIAL] = block_cooldown;
			}
		}
	}
	else{
		with (player_id){
			move_cooldown[AT_NSPECIAL] = block_cooldown/2;
		}
	}
	
	if (instance_exists(falling_hitbox)){
		falling_hitbox.destroyed = true;
    }
    
    if (instance_exists(hbo)){
		hbo.destroyed = true;
    }
    
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
	
	if (pusher_stored != noone || hitby != noone){
		if (pusher_stored != player_id){
			with (player_id){
				move_cooldown[AT_NSPECIAL] = block_cooldown;
			}
		}
	}
	else{
		with (player_id){
			move_cooldown[AT_NSPECIAL] = block_cooldown/2;
		}
	}
	
	if (instance_exists(falling_hitbox)){
		falling_hitbox.destroyed = true;
    }
    
    if (instance_exists(hbo)){
		hbo.destroyed = true;
    }
    
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;