//Updating hitboxes

if (attack == AT_NSPECIAL){
	if(was_parried == true || player_id.state == PS_PRATLAND || player_id.state == PS_PRATFALL){ instance_destroy(); }
	if (hbox_num == 1){
		if (hitbox_timer == 1){ player_id.nspecial_time -= 1; }
	}
	if (hbox_num == 2){
		if (hitbox_timer == 1){ player_id.nspecial_time -= 1; }
		if (place_meeting( x, y+9, asset_get("par_block"))){
		spark = true;
		}
		if (spark == true){
			if (spark_rng == 0){ spawn_hit_fx(x + spark_dist, y, (player_id.BulletHit1)); }
			if (spark_rng == 1){ spawn_hit_fx(x - spark_dist, y, (player_id.BulletHit1)); }
			if (spark_rng == 2){ spawn_hit_fx(x + spark_dist, y, (player_id.BulletHit2)); }
			if (spark_rng == 3){ spawn_hit_fx(x - spark_dist, y, (player_id.BulletHit2)); }
			destroyed = true;
		}
	}
if (hbox_num == 4 && !(player_id.state == PS_ATTACK_AIR)){
	instance_destroy();
	}
}

if (attack == AT_FSPECIAL){
	spr_dir = 1;
	if (hbox_num == 5){
		if (hitbox_timer <= 0){ image_index = 0; }
		x = player_id.x-20;
		y = player_id.y+10;
		if (hitbox_timer >= 29 && player_id.telepunch != 2){
			player_id.telepunch = 3;
		}
		if (player_id.state_cat == SC_AIR_NEUTRAL && state_timer > 5){
			player_id.telepunch = 3;
		}
		if (player_id.telepunch == 1 && player_id.free == false){
			destroyed = true;
		}
		}if (player_id.telepunch == 2){
			image_index = 37;
		}
		if (player_id.telepunch == 3){
			image_index = 38;
			hitbox_timer = 0;
			if (player_id.state_timer > 6){ hitbox_timer = 30; } 
		}
		if (player_id.free == false){
			image_index = 0;
		}
}

if (attack == AT_FAIR){
	if (hitbox_timer == 1){ sound_play(sound_get("Gun")); }
	if ((place_meeting( x, y+9, asset_get("par_block"))) || (place_meeting( x, y+1, asset_get("par_jumpthrough"))) ||
	!(player_id.attack == AT_FAIR)){ destroyed = true; }
	if (hitbox_timer <= 1 && !(place_meeting( x, y+1, asset_get("par_block")))){
	if (player_id.state_timer == 8){ proj_angle = 45 * spr_dir; hsp = 18 * spr_dir; vsp = -17; }
	if (player_id.state_timer == 12){ proj_angle = 30 * spr_dir; hsp = 18 * spr_dir; vsp = -10; }
	if (player_id.state_timer == 16){ hsp = 18 * spr_dir; }
	if (player_id.state_timer == 20){ proj_angle = -25 * spr_dir; hsp = 18 * spr_dir; vsp = 10;}
	if (player_id.state_timer == 24){ proj_angle = -40 * spr_dir; hsp = 18 * spr_dir; vsp = 17;}
	}
	if (hitbox_timer <= 2 && hsp == 0){ instance_destroy(); exit; }
}

/*
if (attack == AT_USPECIAL_2){ //Teleporting attack after lock-on
	if (hbox_num == 5){
		if (hitbox_timer < 21){
		hit_player_obj = player_id.hit_player_obj
		hit_player_obj.maintarget = true;
		x = hit_player_obj.x - 40 * spr_dir;
		y = hit_player_obj.y - 35;
		}
		if (hitbox_timer > 21){ hit_priority = 10; }
	}
}
*/

if (attack == AT_EXTRA_3){ //Timestop stuff from DSpecial windup
	if (hbox_num == 2){
	x = follow.x+2;
	y = follow.y-900 - follow.char_height;
	if (hitbox_timer > 100 && player_id.timestop == true){
		hitbox_timer = 0;
	}
	if (hitbox_timer < 200){
	if (player_id.timestop == false){
		hitbox_timer = 200;
		}
	}
	if (player_id.timestop == false && follow.timestop_damage <= 0 && hitbox_timer > 204){
		destroyed = true;
		//follow.timestop_damage--;
		with (player_id){ destroy_hitboxes(); }
	}
	if (player_id.timestop == false && follow.timestop_damage > 1){
		//follow.timestop_hit = false;
		//player_id.state = PS_IDLE;
		player_id.attack = AT_EXTRA_3;
		player_id.state = PS_ATTACK_GROUND;
		player_id.window = 2;
		player_id.window_timer = 0;
		player_id.vsp = 1;
		hitbox_timer = 201;
		var timestopping_hitbox = create_hitbox(AT_EXTRA_3, 3, follow.x, follow.y);
		//damagecount -= 1;
		if (hitbox_timer >= 201){
			player_id.visible = false;
			player_id.invincible = true;
			player_id.vsp = 0;
			player_id.hsp = 0;
			//player_id.state = PS_LAND;
			player_id.can_move = false;
			player_id.x = player_id.prevous_x + 50 * spr_dir;
			player_id.y = player_id.prevous_y;
		}
	}
	if (player_id.timestop == false && follow.timestop_damage <= 1){
		//player_id.state = PS_IDLE;
		var timestopping_hitbox = create_hitbox(AT_EXTRA_3, 4, follow.x, follow.y);
		follow.timestop_hit = false;
		if (hitbox_timer >= 202){
			//player_id.visible = true;
			player_id.invincible = false;
			player_id.x = player_id.prevous_x + 50 * spr_dir;
			player_id.y = player_id.prevous_y;
			player_id.spr_dir = player_id.prevous_spr;
			player_id.hsp = 13 * player_id.spr_dir;
			player_id.attack = AT_EXTRA_3;
			player_id.state = PS_ATTACK_GROUND;
			player_id.window = 2;
			player_id.window_timer = 0;
			player_id.white_flash_timer = 13;
		}
	}
	
	}
}

/*
if (attack == AT_USPECIAL_2){
	through_platforms = 10;
	if (hbox_num >= 3 && hbox_num <= 7){
		
	    var missileparticle = spawn_hit_fx(x, y, 100);
	    var mydir = point_direction(hsp,vsp,0,0);
	    missileparticle.draw_angle = mydir - 80;
	    
		var shortest_dist = 9000;
	    var shortest_id = noone;
	    
	    if (spr_dir == 1){ proj_angle = mydir + 180; }
	    if (spr_dir == -1){ proj_angle = mydir; }
	    
	    with (asset_get("oPlayer")) {
	        if (player != other.player){
	            var curr_dir = point_distance(x,y,other.x,other.y);
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (targeted == true){
	            if (curr_dist < shortest_dist) {
	                shortest_dist = curr_dist;
	                shortest_id = id;
	            	}
	        	}
	    	}
	    }
	    if (shortest_id != noone) {
	        with (shortest_id) {
	        	maintarget = true;
	        	if (maintarget == true){
	        		
	        		var curr_dir = point_direction(other.x,other.y,x,y);
	        		var curr_dist = point_distance(other.x,other.y,x,y);
	        		
	        		var past_dir = point_direction(x,y,other.x,other.y);
			        var past_dist = point_distance(x,y,other.x,other.y);
			        
			        var curr_dir_speed = point_direction(0,0,other.hsp,other.vsp);
			        var curr_dist_speed = point_distance(0,0,other.hsp,other.vsp);
			        
			        if (other.hitbox_timer > 20 && other.hitbox_timer % 35 == 1){
	    			//if (other.spr_dir == 1){ other.proj_angle = curr_dir_speed + 340; }
	    			//if (other.spr_dir == -1){ other.proj_angle = curr_dir_speed + 190; }
	    			other.hit_priority = 10;
	    			other.hsp = lengthdir_x(18, curr_dir);
	    			other.vsp = lengthdir_y(18, curr_dir);
	    			spawn_hit_fx(other.x, other.y, 3);
					}
				}
			}
		}	
	}
}
*/

if (attack == AT_USPECIAL_2){
	through_platforms = 10;
	if (hbox_num >= 3 && hbox_num <= 6){
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 30;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        
	    //var missileparticle = spawn_hit_fx(x, y, 100);
	    var mydir = point_direction(hsp,vsp,0,0);
	    //missileparticle.draw_angle = mydir - 80;
	    
	    if (hitbox_timer > 15){
	    	sprite_index = sprite_get( "uspecial2_proj3" );
	    	var missileparticle = spawn_hit_fx(x, y, 100);
	    	missileparticle.draw_angle = mydir - 80;
	    }
	    
		var shortest_dist = 1000;
	    var shortest_id = noone;
	    
    	if (spr_dir == 1){ proj_angle = mydir + 180; }
    	if (spr_dir == -1){ proj_angle = mydir; }
	    
	    with (asset_get("oPlayer")) {
	        if (player != other.player){
	            var curr_dir = point_distance(x,y,other.x,other.y);
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (targeted == true){
	            if (curr_dist < shortest_dist) {
	                shortest_dist = curr_dist;
	                shortest_id = id;
	            	}
	        	}
	    	}
	    }
	    if (shortest_id != noone) {
	        with (shortest_id) {
	        	maintarget = true;
	        	if (maintarget == true){
	        		
	        		var curr_dir = point_direction(other.x,other.y,x,y);
	        		var curr_dist = point_distance(other.x,other.y,x,y);
	        		
	        		var past_dir = point_direction(x,y,other.x,other.y);
			        var past_dist = point_distance(x,y,other.x,other.y);
			        
			        var curr_dir_speed = point_direction(0,0,other.hsp,other.vsp);
			        var curr_dist_speed = point_distance(0,0,other.hsp,other.vsp);
			        
			        if (other.hitbox_timer > 5 && other.hitbox_timer < 10){
	    			other.hsp += lengthdir_x(0.3, curr_dir);
	    			other.vsp += lengthdir_y(0.3, curr_dir);
	    			
					}
					if (other.hitbox_timer >= 15 && other.hitbox_timer < 25){
	    			other.hsp += lengthdir_x(3, curr_dir);
	    			other.vsp += lengthdir_y(3, curr_dir);
					}
					if (other.hitbox_timer >= 25){
					other.hit_priority = 10;
	    			other.hsp += lengthdir_x(10, curr_dir);
	    			other.vsp += lengthdir_y(10, curr_dir);
					}
				}
			}
		}	
	}
	//Mini missile
	if (hbox_num == 7){
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 20;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
		
		image_index = 1;
		var mydir = point_direction(hsp,vsp,0,0);
		if (hitbox_timer < 20){
	    var missileparticle = spawn_hit_fx(x, y, player_id.Dusty);
		}
		if (hitbox_timer > 20){
	    var missileparticle = spawn_hit_fx(x, y, 100);
	    missileparticle.draw_angle = mydir - 90;
		}
	    
		var shortest_dist = 1000;
	    var shortest_id = noone;
	    
    	if (spr_dir == 1){ proj_angle = mydir + 180; }
    	if (spr_dir == -1){ proj_angle = mydir; }
	    
	    with (asset_get("oPlayer")) {
	        if (player != other.player){
	            var curr_dir = point_distance(x,y,other.x,other.y);
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (targeted == true){
	            if (curr_dist < shortest_dist) {
	                shortest_dist = curr_dist;
	                shortest_id = id;
	            	}
	        	}
	    	}
	    }
	    if (shortest_id != noone) {
	        with (shortest_id) {
	        	maintarget = true;
	        	if (maintarget == true){
	        		
	        		var curr_dir = point_direction(other.x,other.y,x,y);
	        		var curr_dist = point_distance(other.x,other.y,x,y);
	        		
	        		var past_dir = point_direction(x,y,other.x,other.y);
			        var past_dist = point_distance(x,y,other.x,other.y);
			        
			        var curr_dir_speed = point_direction(0,0,other.hsp,other.vsp);
			        var curr_dist_speed = point_distance(0,0,other.hsp,other.vsp);
			        
			        if (other.hitbox_timer > 3 && other.hitbox_timer < 10){
	    			other.hsp += lengthdir_x(0.5, curr_dir);
	    			other.vsp += lengthdir_y(0.5, curr_dir);
					}
					if (other.hitbox_timer >= 10 && other.hitbox_timer < 20){
	    			other.hsp += lengthdir_x(1, curr_dir);
	    			other.vsp += lengthdir_y(1, curr_dir);
					}
					if (other.hitbox_timer >= 20){
					other.hit_priority = 10;
	    			other.hsp += lengthdir_x(7, curr_dir);
	    			other.vsp += lengthdir_y(7, curr_dir);
					}
				}
			}
		}	
	}
	if (hbox_num == 8){
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 20;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        
		image_index = 1;
		var mydir = point_direction(hsp,vsp,0,0);
		if (hitbox_timer < 20){
	    var missileparticle = spawn_hit_fx(x, y, player_id.Dusty);
		}
		if (hitbox_timer > 20){
	    var missileparticle = spawn_hit_fx(x, y, 100);
	    missileparticle.draw_angle = mydir - 90;
		}
	    
		var shortest_dist = 1000;
	    var shortest_id = noone;
	    
    	if (spr_dir == 1){ proj_angle = mydir + 180; }
    	if (spr_dir == -1){ proj_angle = mydir; }
	    
	    with (asset_get("oPlayer")) {
	        if (player != other.player){
	            var curr_dir = point_distance(x,y,other.x,other.y);
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (targeted == true){
	            if (curr_dist < shortest_dist) {
	                shortest_dist = curr_dist;
	                shortest_id = id;
	            	}
	        	}
	    	}
	    }
	    if (shortest_id != noone) {
	        with (shortest_id) {
	        	maintarget = true;
	        	if (maintarget == true){
	        		
	        		var curr_dir = point_direction(other.x,other.y,x,y);
	        		var curr_dist = point_distance(other.x,other.y,x,y);
	        		
	        		var past_dir = point_direction(x,y,other.x,other.y);
			        var past_dist = point_distance(x,y,other.x,other.y);
			        
			        var curr_dir_speed = point_direction(0,0,other.hsp,other.vsp);
			        var curr_dist_speed = point_distance(0,0,other.hsp,other.vsp);
			        
			        if (other.hitbox_timer > 3 && other.hitbox_timer < 10){
	    			other.hsp -= lengthdir_x(500 / curr_dist, curr_dir);
	    			other.vsp -= lengthdir_y(0.5, curr_dir);
					}
					if (other.hitbox_timer >= 10 && other.hitbox_timer < 16){
	    			other.hsp -= lengthdir_x(1000 / curr_dist, curr_dir);
	    			//other.hsp += lengthdir_x(2, curr_dir);
	    			other.vsp += lengthdir_y(1, curr_dir);
					}
					if (other.hitbox_timer >= 16){
					other.hit_priority = 10;
	    			other.hsp += lengthdir_x(8, curr_dir);
	    			other.vsp += lengthdir_y(8, curr_dir);
					}
				}
			}
		}	
	}
}

if (attack == AT_JAB){
	if (hitbox_timer < 3){
	hit_player_id = player_id.hit_player_obj;
	}
	if (hitbox_timer < 28){
		vsp = 21;
	x = hit_player_id.x;
	y = hit_player_id.y - hit_player_id.char_height * 0.5;
	}
	if (hitbox_timer >= 28 && vsp == 0){
		if (player_id.window == 5 && player_id.window_timer == 11){ player_id.white_flash_timer = 8; }
		if (player_id.window == 5 && player_id.window_timer == 13){ player_id.x = x+20 * spr_dir; }
	}
	if (hitbox_timer >= 30 && vsp == 0 && player_id.window == 6){
	//player_id.spr_dir = player_id.spr_dir * -1;
	}
	//if (y+10 >= player_id.y){ vsp = 0; }
}