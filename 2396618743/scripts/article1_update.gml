//ICE SHARD

if (init == 0){
    
    init = 1;

}

state_timer++;

var appear_time = 56;

if (state == 0) { //Appearing
    image_index = state_timer * 14 / appear_time;
    invulnerable = 1;
    if (state_timer == appear_time){
        state = 1;
        state_timer = 0;
        

        
        
    }
    
    if (state_timer == 36){
    	player_id.iceshard_ready = 1;
    }
    
}

if (state == 1) { //Standby
    invulnerable = 0;
    player_id.iceshard_ready = 1;
    
        if (charged){
	    sprite_index = sprite_get("iceshard_big_idle");
	} else {
	    sprite_index = sprite_get("iceshard_small_idle");
	}
    
    var idle_time = 36;
    image_index = state_timer * 6 / idle_time;
    
}

if (state == 2) { //Firing
    timer--;
    invulnerable = 1;
    

    
    image_index = 13;
    if (state_timer > 15 && !homing && target != noone){
        homing = 1;
    }
    
    if (state_timer > 90 && homing){
    	homing = 0;
    }
    
    proj_speed = min(proj_speed + 0.15, 6);
    
    
    hsp = proj_speed * lengthdir_x(2, image_angle);
    vsp = proj_speed * lengthdir_y(2, image_angle);
    
    
        with (asset_get("oPlayer")) {
        	
        	
            if (player != other.player) {
    
                var curr_dist = point_distance(x,y,other.x,other.y);
                if (curr_dist < other.shortest_dist) {
                    other.shortest_dist = curr_dist;
                    other.target = id;
                }
            }
        }
    
    if (homing) {
         pointdir = point_direction(x, y, target.x, target.y-32);
 
         image_angle += clamp(angle_difference(pointdir, image_angle), -3, 3) ;
         //image_angle += sin(degtorad(pointdir - image_angle)) * rspeed;
         //direction = image_angle;
       
            
            if (place_meeting (x+hsp, y, asset_get("par_block"))){
                y -= 2;
            
            }
            
        }


    if (timer < 0 || x < 0 || x > 1500){
        player_id.move_cooldown[AT_NSPECIAL] = 30;
        player_id.move_cooldown[AT_NSPECIAL_2] = 30;
        player_id.iceshard_ready = 0;
        hsp = 0;
        vsp = 0;
        state = 4;
        state_timer = 0;
        sound_play(asset_get("sfx_ice_shatter"));
    }
    
    if (target != noone){
    	if (point_distance( x, y, target.x, target.y-target.char_height/2) < 48) { //if near the target destroy
	        homing = 0;
	        state = 3;
    	}
    }
    
    
    
    
    if (place_meeting (x+hsp/3, y+vsp/2, asset_get("par_block")) && state_timer > 60){ //If the ice shard contacts stage, destroy
        player_id.move_cooldown[AT_NSPECIAL] = 30;
        player_id.move_cooldown[AT_NSPECIAL_2] = 30;
        player_id.iceshard_ready = 0;
        hsp = 0;
        vsp = 0;
        state = 4;
        state_timer = 0;
        sound_play(asset_get("sfx_ice_shatter"));
        //instance_destroy();
        //exit;
            
    }
    
}




if (state == 3) { //Detonated
    if (charged){
        var detonate = create_hitbox(AT_NSPECIAL, 1, x, y-16);
    }else {
        var detonate = create_hitbox(AT_NSPECIAL, 2, x, y-16);
    }
    
    player_id.move_cooldown[AT_NSPECIAL] = 30;
    player_id.move_cooldown[AT_NSPECIAL_2] = 30;
    player_id.iceshard_ready = 0;
    instance_destroy();
    exit;
    
}


if (state == 4){ //shattered
	
	if (charged){
        sprite_index = sprite_get("iceshard_big_shatter");
    } else {
        sprite_index = sprite_get("iceshard_small_shatter");
    }
	
	var shatter_time = 20;
	image_index = state_timer * 5 / shatter_time;
	
	
	if (state_timer == shatter_time){
		
		player_id.iceshard_ready = 0;
		instance_destroy();
    	exit;
	}
	
}




if (state == 5) { //Attacked
	var destroy_time = 45;
    
    
	x = xstart+floor(random_func(0, 8, 1))-2;
	y = ystart+floor(random_func(1, 8, 1))-2;
		
		if (state_timer > destroy_time) {
			invulnerable = 0;
			if (charged){
			    sound_play(asset_get("sfx_ice_shatter"));
			    charged = 0;
			    state = 1;
			    sprite_index = sprite_get("iceshard_small_appear")
			} else {
			    sound_play(asset_get("sfx_ice_shatter"));
			    player_id.move_cooldown[AT_NSPECIAL] = 30;
                player_id.move_cooldown[AT_NSPECIAL_2] = 30;
                player_id.iceshard_ready = 0;
                instance_destroy();
			}
			
			
		}
    
}


with (asset_get("pHitBox")){ //Terra can consume the ice shard with Dspecial to gain charge
    if (player_id == other.player_id && get_player_team(player_id.player) == get_player_team(other.player_id.player) && place_meeting(x,y,other)  && attack == AT_DSPECIAL){
		
		//instance_create(other.x,other.y,"obj_article2");
		
		var drain = instance_create(other.x,other.y,"obj_article2");
		drain.player_id = player_id;
		sound_play(asset_get("sfx_ell_arc_taunt_end"));
		
		spawn_hit_fx( other.x, other.y, player_id.drainhfx);
	 	
	 	if (other.charged){
	 	
		 	player_id.chargeCounter = player_id.chargeCounterMax;
			player_id.hasCharge = 1;
		    sound_play(sound_get("terra_charge"));
		    
			if (player_id.djumps == 1){
				player_id.djumps = 0;
			}	
	 		
	 		
	 	} else {
	 		
	 		player_id.chargeCounter = player_id.chargeCounter + player_id.chargeCounterMax/2;
			    
				if (player_id.djumps == 1){
					player_id.djumps = 0;
				}
			
			
			    if (player_id.chargeCounter > player_id.chargeCounterMax){
			        player_id.chargeCounter = player_id.chargeCounterMax;
			        player_id.hasCharge = 1;
			        sound_play(sound_get("terra_charge"));
			        
			    }
	 		
	 	}
		
		player_id.move_cooldown[AT_NSPECIAL] = 30;
        player_id.move_cooldown[AT_NSPECIAL_2] = 30;
        player_id.iceshard_ready = 0;
		instance_destroy();
    	exit;
 
    }
        
}

with (asset_get("pHitBox")){ //Terra can consume the ice shard with Dspecial to gain charge
    if (player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other) && type = 1){
		
		if (other.charged && other.invulnerable = 0){ //currently, the icecicle can only be broken down to uncharged state
			other.invulnerable = 1;
			other.state_timer = 0;
			other.state = 5;
			other.player_id.move_cooldown[AT_NSPECIAL_2] = 60;
			sound_play(asset_get("sfx_ice_nspecial_armor"));
			sound_play(asset_get("sfx_ice_uspecial_start"));
			
		}

    }
        
}
