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

if (place_meeting(x, y, asset_get("pHitBox")) && can_get_hit) { //makes the pot hittable when can_get_hit is true
	with (asset_get("pHitBox")){
		if (player != other.player_id.player){
			if (place_meeting(x, y, other)){
				other.hitbox_hit = self;
			}
		}
	}
	if (hitbox_hit != noone){
		
		if (hitbox_hit.damage > 2 && state != 3 && hitbox_hit.groundedness != 1){
			
			if (hitbox_hit.player_id.url != player_id.url){
						
				if (schmooving != noone){
					instance_destroy(schmooving);
				}
				
				state = 3;
				state_timer = 0;
				
				sound_play(asset_get("sfx_shop_close"));
				sound_play(hitbox_hit.sound_effect);
				spawn_hit_fx(floor(hitbox_hit.x),floor(hitbox_hit.y),hitbox_hit.hit_effect);
				
				
				
				hitby = hitbox_hit.player_id;
		
			}
			else{
				if (hitbox_hit.attack != AT_FSPECIAL || state != 0){
					if (schmooving != noone){
						instance_destroy(schmooving);
					}
					
					state = 3;
					state_timer = 0;
					
					sound_play(asset_get("sfx_shop_close"));
					sound_play(hitbox_hit.sound_effect);
					spawn_hit_fx(floor(hitbox_hit.x),floor(hitbox_hit.y),hitbox_hit.hit_effect);
					
					
					
					hitby = hitbox_hit.player_id;
				}
			}
			
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


with (asset_get("obj_article3")){
	if (place_meeting(x,y,other)){
		if (player_id.url == other.player_id.url)
		if (state == 0 && other.state == 0){
			sound_play(asset_get("sfx_shop_close"));
			sound_play(asset_get("sfx_blow_medium3"));
			spawn_hit_fx(floor(x),floor(y), 304);
			state = 3;
			state_timer = 0;
			with (other){
				state = 3;
				state_timer = 0;
			}
		}
	}	
}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shoulddie = true;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.state == PS_RESPAWN && player_id.state_timer == 1 && state != 2){
	spawn_hit_fx( x, y - 10, 13 );
    instance_destroy();
    exit;
    player_id.killarticles = false;
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
    var air_frick = .2;
    
    if (schmooving != noone){
	    schmooving.x = x + 4*spr_dir;
	    schmooving.y = y - 14;
    }
    
    
    if (spr_dir == 1){
	    hsp = hsp - air_frick;
    }
    else{
    	hsp = hsp + air_frick;
    }
    
    //ur too slow
    if (hsp <= 0 && spr_dir == 1){
        state = 1;
        state_timer = 0;
        if (schmooving != noone){
	    	schmooving.destroyed = true;
	    	schmooving = noone;
        }
    }
    if (hsp >= 0 && spr_dir == -1){
        state = 1;
        state_timer = 0;
        if (schmooving != noone){
	    	schmooving.destroyed = true;
	    	schmooving = noone;
        }
    }
    
    if (hsp <= 6.5 && spr_dir == 1 && schmooving != noone){
    	schmooving.destroyed = true;
    	schmooving = noone;
    	spawn_hit_fx(floor(x) + 2*spr_dir,floor(y) - 4,29);
    }
    if (hsp >= -6.5 && spr_dir == -1 && schmooving != noone){
    	schmooving.destroyed = true;
    	schmooving = noone;
    	spawn_hit_fx(floor(x) + 2*spr_dir,floor(y) - 4,29);
    }
}



//State 1: Idle

if (state == 1){
	
	if (schmooving != noone){
		schmooving = noone;
	}
    
    //Stop the movement from state 0
    hsp = 0;
    
    if (place_meeting(x, y, player_id)){
    	
    	sound_play(asset_get("sfx_shop_move"));
    	
    	spawn_hit_fx(floor(x),floor(y) - 20, 194 ); //vfx
    	
    	instance_destroy();
    	exit;
    }
    
    if (state_timer > 250){
    	
    	sound_play(asset_get("sfx_shop_move"));
    	
    	spawn_hit_fx(floor(x),floor(y) - 20, 194 ); //vfx
    	
    	with (player_id){
			spawn_hit_fx(floor(x),floor(y) - 20, 194 ); //vfx
		}
    	
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
	can_be_grounded = false;
	ignores_walls = true; 
	hsp = 0;
	if (vsp < 12){
		var grav_speed = .4
		vsp = vsp + grav_speed;
	}
	if (state_timer == 1){
		vsp = -10;
	}
	if (state_timer == 400){
		with (player_id){
			spawn_hit_fx(floor(x),floor(y) - 20, 194 ); //vfx
		}
		sound_play(asset_get("sfx_shop_move"));
		instance_destroy();
		exit;
	}
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
        new_sprite = sprite_get("umpire");
        animation_type = 2;
        break;
    case 1:
        new_sprite = sprite_get("umpire");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("umpire");
        animation_type = 1;
        break;
    case 3:
        new_sprite = sprite_get("umpire_hurt");
        animation_type = 1;
        break;
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