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



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
	
	if (state_timer == 1){
		
		hsp = player_id.uspec_hsp;
		vsp = player_id.uspec_vsp;
				
		if (hsp > 0){
			travel_dir = 1; //right
		}
		else if (hsp < 0){
			travel_dir = -1; //left
		}
		else{
			travel_dir = 0; //straight up
		}
	}
	
	var air_friction = player_id.air_friction;
	
	if (state_timer > 1){
		if (travel_dir == 1){
			if (hsp > 0){
				hsp -= air_friction;
			}
			else if (hsp != 0){
				if (cur_x == -1000){
					cur_x = x;
				}
				x = cur_x;
				hsp = 0;
			}
		}
		else if (travel_dir == -1){
			if (hsp < 0){
				hsp += air_friction;
			}
			else if (hsp != 0){
				if (cur_x == -1000){
					cur_x = x;
				}
				x = cur_x;
				hsp = 0;
			}
		}
	}
	
	
	var grav = player_id.gravity_speed;
	
	if (vsp < 0){
		vsp += grav;
	}
	else{
		vsp = 0;
	}
	
	if (vsp > -2){
		hsp = 0;
	}
	
	
    
    sprite_index = sprite_get("pillow");
    
    

    if (state_timer >= expire_time){
        state = 2;
        state_timer = 0;
    }
    
    
    with (player_id){
    	if (place_meeting(x, y, other)){
    		if (state == PS_ATTACK_AIR){
    			if (attack == AT_USPECIAL){
    				if (window == 3 || window == 4){
    					create_hitbox(AT_FSPECIAL, 4, x, y);
    					destroy_hitboxes();
    					window = 5;
    					window_timer = 0;
    					with (other){
			    			state = 2;
			    			state_timer = 0;
			    		}
    				}
    			}
    		}
    	}
    }
}



//State 1: Idle

if (state == 1){

    

}



//State 2: Dying

if (state == 2){
    if (state_timer == 1){
    	sound_play(sound_get("spit"));
        spawn_hit_fx( x + (spr_dir*10)*spr_dir, y - 10, 301 );
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
    

}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Make time progress
state_timer++;