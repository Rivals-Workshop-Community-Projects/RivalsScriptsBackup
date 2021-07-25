statetimer++

if(statetimer == 800 && state == 1){
	state = 4;
}

if(!free){
    with(player_id){
        skeletonout = true;
    }
}
if(x > room_width){
    skeletonalive = 0;
    with(player_id){
	    skeletonout = false;
	    skeletonrecharge = 1;
    }
    instance_destroy();
    return;
}

if(y > room_height){
    skeletonalive = 0;
    with(player_id){
	    skeletonout = false;
	    skeletonrecharge = 1;
    }
    instance_destroy();
    return;
}

if(state == 0){
    if(skeleright == 1){
        if(creepair == 1){
            vsp += 0.6;
            hsp = 3.8;
        }
        else{
            vsp += 0.5;
            hsp = 3;
        }
    }
    if(skeleright == 0){
        if(creepair == 1){
            vsp += 0.6;
            hsp = -3.8;
        }
        else{
            vsp += 0.5;
            hsp = -3;
        }
    }
    if(free == false){
        	fire = 0;
            state = 1;
    }
}

if(state == 1){ //standing
	if(arrows > 4){
		state = 4;
	}
	if(skeleright == 1){
		if(DJ){
	    	sprite_index = sprite_get("skeletonDJ");
	    	mask_index = sprite_get("skeletonDJ_mask")
		}
		else{
    		sprite_index = sprite_get("skeleton"); 
    		mask_index = sprite_get("skeleton_mask")
		}
	}
	if(skeleright == 0){
		if(DJ){
	    	sprite_index = sprite_get("skeletonDJ2");
	        mask_index = sprite_get("skeletonDJ2_mask")
		}
		else{
    		sprite_index = sprite_get("skeleton2"); 
    		mask_index = sprite_get("skeleton2_mask")
		}
	}
	if(skeletonalive == 1){
        life_timer++;
		if(free){
			vsp += 0.8;
		}
		else{
			hsp = 0;
			vsp = 0;
		}
    }
    if(life_timer == 1){
        with(player_id){
            skeletonhere = 1;
        }
        sound_play(sound_get("skelesay1"));
        create_hitbox(AT_FSPECIAL, 3, x, y);
        image_index = 0;
    }
}

if(state == 2){ //firing
	if(skeleright == 1){
		if(DJ){
	    	sprite_index = sprite_get("skeletonDJ");
	    	mask_index = sprite_get("skeletonDJ_mask")
		}
		else{
    		sprite_index = sprite_get("skeleton"); 
    		mask_index = sprite_get("skeleton_mask")
		}
	}
	if(skeleright == 0){
		if(DJ){
	    	sprite_index = sprite_get("skeletonDJ2");
	        mask_index = sprite_get("skeletonDJ2_mask")
		}
		else{
    		sprite_index = sprite_get("skeleton2"); 
    		mask_index = sprite_get("skeleton2_mask")
		}
	}
	fire_timer++;
	if(fire_timer == 1){
		image_index = 0;
	}
	if(fire_timer == 6){
		image_index = 1;
	}
	if(fire_timer == 11){
		image_index = 2;
	}
	if(fire_timer == 16){
		image_index = 3;
	}
	if(fire_timer == 21){
		image_index = 4;
	}
	if(fire_timer == 26){
		arrows += 1;
		if(skeleright == 0){
	        if (player_id.spr_dir == 1){
	            create_hitbox(AT_FSPECIAL, 2, x-24, y-50);
	            sound_play(sound_get("bow"));
	        }
	        else{
	            create_hitbox(AT_FSPECIAL, 4, x-24, y-50);
	            sound_play(sound_get("bow"));   
	        }
		}
		if(skeleright == 1){
			if(player_id.spr_dir == 1){
		    	create_hitbox(AT_FSPECIAL, 1, x-16, y-50);
		        sound_play(sound_get("bow"));
			}
			else{
			    create_hitbox(AT_FSPECIAL, 5, x-16, y-50);
				sound_play(sound_get("bow"));   
			}
		}
		image_index = 5;
	}
	if(fire_timer == 31){
		image_index = 6;
	}
	if(fire_timer == 36){
		image_index = 7;
	}
	if(fire_timer == 41){
		image_index = 8;
	}
	if(fire_timer == 46){
		image_index = 0;
		fire_timer = 0;
		state = 1;
	}
}
	if(state != 4){
		if hitstop <= 0 {
		    if hit_lockout <= 0 
		    with pHitBox {
		        if place_meeting(x,y,other) && player_id != other.player_id && "hitbox_has_hit_article" not in self {
		        with(player_id){
        			has_hit = true;
        		}
            		other.state = 3;
		        	ds_list_add(other.colliding_hitboxes,id);
		        }
		    } else if hit_lockout > 0 hit_lockout--;
		        
		    var currentHighestPriority = noone;
		    if ds_list_size(colliding_hitboxes) > 1 {
		        for (var i = 0; i < ds_list_size(colliding_hitboxes); i++) {
		            if currentHighestPriority != noone {
		                if colliding_hitboxes[| i].hit_priority > currentHighestPriority.hit_priority 
		                    currentHighestPriority = colliding_hitboxes[| i];
		            } else {
		                currentHighestPriority = colliding_hitboxes[| i];
		            }
		        } 
		    }
		    else if ds_list_size(colliding_hitboxes) == 1 {
		       currentHighestPriority = colliding_hitboxes[| 0];
		    }
		    
		    ds_list_clear(colliding_hitboxes);
		            
		    if currentHighestPriority != noone with currentHighestPriority {
		            var angle = get_hitbox_angle(self);
		            if(player_id.spr_dir == 1){
		            	if(player_id.attack == AT_BAIR){
		            		other.state = 5;
		            	}
		            	else{
				            if(angle>=90 && angle<=0){
							    other.state = 3;
				            }
				            if(angle>=180 && angle<=90){
							    other.state = 5;
				            }
				            if(angle>=0 && angle<=270){
							    other.state = 3;
				            }
				            if(angle>=180 && angle<=270){
							    other.state = 5;
				            }
		            	}
		            }
		            else{
		            	if(player_id.attack == AT_BAIR){
		            		other.state = 3;
		            	}
		            	else{
				            if(angle>=90 && angle<=0){
							    other.state = 5;
				            }
				            if(angle>=180 && angle<=90){
							    other.state = 3;
				            }
				            if(angle>=0 && angle<=270){
							    other.state = 5;
				            }
				            if(angle>=180 && angle<=270){
							    other.state = 3;
				            }	
		            	}
		            }
		            other.hit_lockout = 10;
		            
		            hitbox_has_hit_article = true;
		            
		            sound_play(sound_effect);
		            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
		            with player_id {
		                old_hsp = hsp;
		                old_vsp = vsp;                      
		                
		                hitpause = true;
		                has_hit = true;
		            }
		            player_id.hitstop = ceil(hitpause+hitpause_growth*.4-2);
		            other.hitstop = ceil(hitpause+hitpause_growth*.4-2);
		    	}
		    }
		}
if(state == 3){ //hit right
    vsp += 0.5
    skelehittimer++;
	if(skelehittimer == 1){
    	image_index = 10;
        if(skelehitcount < 2){
        	sound_play(sound_get("skelehurt4"));
            hsp = 1.5;
            vsp = -2;    
        }
        skelehitcount += 1;
    }
    if(skelehittimer == 3){
        image_index = 11;
    }
    if(skelehittimer == 6){
        image_index = 12;
    }
    if(skelehittimer == 10){
        state = 1;
        skelehittimer = 0;
        image_index = 0;
    }
    if(skelehitcount == 3){
        hsp = 0;
        vsp = 0;
        state = 4;
    }
}
if(state == 5){ //hit left
    vsp += 0.5
    skelehittimer++;
	if(skelehittimer == 1){
    	image_index = 10;
        if(skelehitcount < 2){
        	sound_play(sound_get("skelehurt4"));
            hsp = -1.5;
            vsp = -5;    
        }
        skelehitcount += 1;
    }
    if(skelehittimer == 3){
        image_index = 11;
    }
    if(skelehittimer == 6){
        image_index = 12;
    }
    if(skelehittimer == 10){
        state = 1;
        skelehittimer = 0;
        image_index = 0;
    }
    if(skelehitcount == 3){
        hsp = 0;
        vsp = 0;
        state = 4;
    }
}

if(state == 4){ //death
    hsp = 0;
    vsp += 0.8;
    skeledeathtimer++;
    if(skeledeathtimer == 5){
        sound_play(sound_get("skeledeath"));
        create_hitbox(AT_FSPECIAL, 3, x, y);
        image_index = 14;
    }
    if(skeledeathtimer == 10){
        image_index = 15;
    }
    if(skeledeathtimer == 15){
        image_index = 16;
    }
    if(skeledeathtimer == 20){
        image_index = 17;
    }
    if(skeledeathtimer == 25){
        image_index = 18;
    }
    if(skeledeathtimer == 30){
        image_index = 19;
    }
    if(skeledeathtimer == 35){
        image_index = 20;
    }
    if(skeledeathtimer == 40){
        skeletonalive = 0;
        instance_destroy();
        return;
    }
    if(skelehitcount > 1){
	    with(player_id){
	        skeletonout = false;
	        skeletonrecharge = 2;
	    }
    }
    else{
	    with(player_id){
	        skeletonout = false;
	        skeletonrecharge = 1;
	    }
    }
}