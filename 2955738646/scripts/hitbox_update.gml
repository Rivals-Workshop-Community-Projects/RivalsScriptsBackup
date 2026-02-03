//Updating hitboxes

switch(attack){
	case AT_NSPECIAL:
	if (was_parried == true || player_id.state == PS_PRATLAND || player_id.state == PS_PRATFALL){ instance_destroy(); }
	if (hbox_num == 1){
		if (hitbox_timer == 1){
		player_id.nspecial_time -= round(1); 
		if (get_player_color(player_id.player) != 8) { var gun_sound = (sound_get("gun_heat")); }
		if (get_player_color(player_id.player) == 8) { var gun_sound = (sound_get("EA_gun_heat")); }
		if (player_id.nspecial_time < 11){
		player_id.gun_heat_sound += 0.1;
		sound_play((gun_sound), false, noone, player_id.gun_heat_sound, 1);
			}
		}
	}
	if (hbox_num == 2){
		if (hitbox_timer == 1){
			player_id.nspecial_time -= round(1); 
			if (get_player_color(player_id.player) != 8) { var gun_sound = (sound_get("gun_heat")); }
			if (get_player_color(player_id.player) == 8) { var gun_sound = (sound_get("EA_gun_heat")); }
			if (player_id.nspecial_time < 11){
			player_id.gun_heat_sound += 0.1;
			sound_play((gun_sound), false, noone, player_id.gun_heat_sound, 1);
			}
		}
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
	break;
	
	case AT_NSPECIAL_2:
	if (hbox_num == 1){
	player_id.move_cooldown[AT_NSPECIAL_2] = 30;
	//if (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND){
	//image_yscale += 1;
	//sprite_width += 1; 
	//var flydir = point_direction(hsp,vsp,0,0);
	//var flydir2 = point_direction(0,0,vsp,hsp);
	//var mydir = point_direction(x,y,player_id.x,player_id.y);
	//var mydir2 = point_direction(player_id.x,player_id.y-180,x,y);
	//var mydir = point_direction(player_id.x,player_id.y,x,y);
	if (hbox_num == 1 && hitbox_timer > 1 && hitbox_timer < 4){
	//sprite_index = sprite_get( "super_uspecial_beam_stretch3" );
	//sprite_index = sprite_get( "empty" );
	}
	if (hitbox_timer < 100){
	hsp += 0.02 * spr_dir;
	vsp += 0.02;
	}
	if (hitbox_timer >= 100 && hitbox_timer < 200){
	hsp += 0.2 * spr_dir;
	vsp += 0.2;
	}
	if (hitbox_timer >= 200){
	destroyed = true;
	}
	if (free == false){
	image_index = 1;
	//spawn_hit_fx(x, y, 270);
	//sprite_index = sprite_get( "super_nspecial_beam_end" );
	//proj_angle = mydir;
	}
	if (destroyed == true){
	image_index = 1;
	//spawn_hit_fx(x, y, 270);
	create_hitbox(AT_NSPECIAL_2, 2, x, y-1);
	if (get_player_color(player_id.player) != 8) {
	sound_play(sound_get("dspecial_wallpin"));
	}
	if (get_player_color(player_id.player) == 8) {
	sound_play(sound_get("EA_dspecial_wallpin"));
	}
	//proj_angle = mydir;
   	//if (spr_dir == -1){ proj_angle = (flydir * 1.2); }
    //if (spr_dir == 1){ proj_angle = (flydir * 1.2) + 140; }
    //hsp = 0 * spr_dir + ((player_id.state_timer / 1) * spr_dir);
    //vsp = 90 - ((player_id.state_timer / 1));
	}
	if (player_id.window == 2){
		//if (player_id.state_timer < 72){ vsp = 148 - ((player_id.state_timer * 3)); }
		}
	//}
	if (destroyed == false && hitbox_timer > 2){ //&& player_id.state_timer > 65){
	
		var random_elec = random_func_2(1, 5, true);
		var random_hori = random_func(0, 40, true);
		var random_verti = random_func_2(0, 55, true);
		var random_angle = random_func(0, 4, true);
		if (random_angle == 0){ random_angle = 0; }
		if (random_angle == 1){ random_angle = 270; }
		if (random_angle == 2){ random_angle = 180; }
		if (random_angle == 3){ random_angle = 90; }
		
		if (random_elec == 1){ var elec1 = spawn_hit_fx(x + (25 * spr_dir) - (random_hori * spr_dir), y-14 + random_verti, player_id.Electric_1); elec1.force_depth = true; elec1.depth = depth-2; elec1.draw_angle = random_angle; }
		if (random_elec == 2){ var elec2 = spawn_hit_fx(x + (25 * spr_dir) - (random_hori * spr_dir), y-14 + random_verti, player_id.Electric_2); elec2.force_depth = true; elec2.depth = depth-2; elec2.draw_angle = random_angle; }
		if (random_elec == 3){ var elec3 = spawn_hit_fx(x + (25 * spr_dir) - (random_hori * spr_dir), y-14 + random_verti, player_id.Electric_3); elec3.force_depth = true; elec3.depth = depth-2; elec3.draw_angle = random_angle; }
		if (random_elec == 4){ var elec4 = spawn_hit_fx(x + (25 * spr_dir) - (random_hori * spr_dir), y-14 + random_verti, player_id.Electric_4); elec4.force_depth = true; elec4.depth = depth-2; elec4.draw_angle = random_angle; }
		if (random_elec == 5){ var elec5 = spawn_hit_fx(x + (25 * spr_dir) - (random_hori * spr_dir), y-14 + random_verti, player_id.Electric_5); elec5.force_depth = true; elec5.depth = depth-2; elec5.draw_angle = random_angle; }
		
		if (hitbox_timer > 0 && ((get_gameplay_time() mod 4) == 0)){
		//hit_priority = 5;
		for (var i = 0; i < 10; i += 1){
		if (can_hit[i] == false){ can_hit[i] = true; }
			}
		}
		
	}
	
	}
	
    
	
	break;
	
	case AT_USPECIAL: //Super Mecha Giga Beam
	if (hbox_num == 3){
		image_index = 7;
		if (destroyed == true){
			create_hitbox(AT_USPECIAL, 4, x-5 * spr_dir, y-190);
			
			spawn_hit_fx(x, y, 155); //Rocks
			spawn_hit_fx(x, y, 144); //Smoke
			var gigabeam_stretch = spawn_hit_fx(x-90 * spr_dir, y-773, player_id.Gigabeam_Stretched);
			//The beam itself
			gigabeam_stretch.image_yscale = 20;
			gigabeam_stretch.force_depth = true;
			gigabeam_stretch.depth = depth-4;
			if (get_player_color(player_id.player) != 8) { gigabeam_stretch.uses_shader = false; }
			
			//sound_play(sound_get("gigabeam_hitground"), false, noone, 0.3);
			sound_play(asset_get("sfx_abyss_seed_land"), false, noone, 0.7, 0.3);
			sound_play(asset_get("sfx_forsburn_combust"), false, noone, 0.7, 0.4);
			sound_play(asset_get("sfx_land_heavy"), false, noone, 0.9, 0.5);
		}
		
		if (hitbox_timer < 3){ hsp += random_func(0, 170, true) * spr_dir; }
		if (hitbox_timer > 3 && hitbox_timer < 30){ hsp = 0; }
		if (hitbox_timer > 10){
		
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 10;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
        }
			
		var shortest_dist = 100;
	    var shortest_id = noone;
	    //if (shortest_id == noone){ hsp = 0; }
		//Flying towards an enemy
		with (asset_get("oPlayer")) {
	        if (player != other.player){
	            var curr_dir = point_distance(x,y,other.x,other.y);
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (curr_dist < shortest_dist) {
	                shortest_dist = curr_dist;
	                shortest_id = id;
	        	}
	    	}
	    }
	    if (shortest_id != noone) {
	        with (shortest_id) {
	        		var curr_dir = point_direction(other.x,other.y,x,y);
	        		var curr_dist = point_distance(other.x,other.y,x,y);

	    			other.hsp += lengthdir_x(5, curr_dir);
	    			//other.vsp -= lengthdir_y(1, curr_dir);
				}
			}
		}
	}
	
	if (hbox_num == 4){ image_index = 7; }
	
	break;
	
	case AT_USPECIAL_2:
	through_platforms = 10;
	if (hbox_num >= 3 && hbox_num <= 6){
		if (player_id.attack_button == false){ //Targeting Missiles
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 19;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        
	    var mydir = point_direction(hsp,vsp,0,0);
	    
	    if (hitbox_timer > 25){
	    	sprite_index = sprite_get( "uspecial2_proj3" );
	    	var missileparticle = spawn_hit_fx(x, y, player_id.UpSpecialSparks);
	    	missileparticle.draw_angle = mydir - 50;
	    }
	    
		var shortest_dist = 1000;
	    var shortest_id = noone;
	    
    	if (spr_dir == 1){ proj_angle = mydir + 180; }
    	if (spr_dir == -1){ proj_angle = mydir; }
    	
    	if (hitbox_timer > 65){
	    	destroyed = true;
	    }
	    
	    with (asset_get("oPlayer")){
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
	    if (shortest_id != noone){
	        with (shortest_id) {
	        	maintarget = true;
	        	if (invincible == true){ other.destroyed = true; }
	        	if (other.was_parried == true){ other.destroyed = true; }
	        	if (maintarget == true){
	        		
	        		var curr_dir = point_direction(other.x,other.y,x,y);
	        		var curr_dist = point_distance(other.x,other.y,x,y);
	        		
	        		var past_dir = point_direction(x,y,other.x,other.y);
			        var past_dist = point_distance(x,y,other.x,other.y);
			        
			        var curr_dir_speed = point_direction(0,0,other.hsp,other.vsp);
			        var curr_dist_speed = point_distance(0,0,other.hsp,other.vsp);
			        
					if (other.hitbox_timer > 4 && other.hitbox_timer < 12){
	    			other.hsp -= lengthdir_x(1, curr_dir);
	    			other.vsp -= lengthdir_y(1, curr_dir);
					}
					if (other.hitbox_timer >= 12 && other.hitbox_timer < 25){
	    			other.hsp += lengthdir_x(1, curr_dir);
	    			other.vsp += lengthdir_y(1, curr_dir);
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
	}
	
	if (player_id.attack_button == true){ //Non-Targeted Missiles
	//if (hbox_num >= 7 && hbox_num <= 8){
	    //sprite_index = sprite_get( "uspecial2_proj3" );
	    
	    var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 30;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
	    
	    var missileparticle = spawn_hit_fx(x, y, player_id.UpSpecialSparks);
	    missileparticle.draw_angle = mydir - 180;
	    //if (hbox_num == 3){
	    //if (hitbox_timer > 5){
	    hsp += 2 * spr_dir;
	    vsp -= 2;
	    //}
	    //}
	    
	    //proj_angle = fly_dir;
	    if (hitbox_timer > 4){ //Change projtile sprite angle a bit later
	    if (spr_dir == -1){ proj_angle = fly_dir + 180; }
    	if (spr_dir == 1){ proj_angle = fly_dir; }
	    }
	    
		//}
	}
	
	//Mini missiles
	if (hbox_num == 7){ //First
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 20;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
		
		image_index = 1;
		var mydir = point_direction(hsp,vsp,0,0);
		if (hitbox_timer < 25){
	    var missileparticle = spawn_hit_fx(x, y, player_id.Dusty);
		}
		if (hitbox_timer > 25){
	    var missileparticle = spawn_hit_fx(x, y, 100);
	    missileparticle.draw_angle = mydir - 90;
		}
	   
		var shortest_dist = 90;
		var shortest_id = noone;
	    
    	if (spr_dir == 1){ proj_angle = mydir + 180; }
    	if (spr_dir == -1){ proj_angle = mydir; }
    	
    	if (hitbox_timer > 45){
	    	destroyed = true;
	    }
	    
	    with (asset_get("oPlayer")) {
	        if (player != other.player){
	            var curr_dir = point_direction(x,y,other.x,other.y);
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (targeted == true){
	            if (curr_dist > shortest_dist) {
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
			        
			        if (other.hitbox_timer > 1 && other.hitbox_timer < 5){
	    			other.hsp += lengthdir_x(0.5, curr_dir);
	    			other.vsp += lengthdir_y(0.3, curr_dir);
					}
					if (other.hitbox_timer >= 5 && other.hitbox_timer < 24){
	    			other.hsp += lengthdir_x(0.8, curr_dir);
	    			other.vsp += lengthdir_y(0.6, curr_dir);
					}
					if (other.hitbox_timer >= 24){
					other.hit_priority = 10;
	    			other.hsp += lengthdir_x(7, curr_dir);
	    			other.vsp += lengthdir_y(7, curr_dir);
					}
				}
			}
		}	
	}
	if (hbox_num == 8){ //Second
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 20;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        
		image_index = 1;
		var mydir = point_direction(hsp,vsp,0,0);
		if (hitbox_timer < 15){
	    var missileparticle = spawn_hit_fx(x, y, player_id.Dusty);
		}
		if (hitbox_timer >= 15){
	    var missileparticle = spawn_hit_fx(x, y, 100);
	    missileparticle.draw_angle = mydir - 90;
		}
	    
		var shortest_dist = 90;
	    var shortest_id = noone;
	    
    	if (spr_dir == 1){ proj_angle = mydir + 180; }
    	if (spr_dir == -1){ proj_angle = mydir; }
	    
	    with (asset_get("oPlayer")) {
	        if (player != other.player){
	            var curr_dir = point_direction(x,y,other.x,other.y);
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (targeted == true){
	            if (curr_dist > shortest_dist) {
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
			        
			        if (other.hitbox_timer > 1 && other.hitbox_timer < 5){
	    			other.hsp -= lengthdir_x(0.6, curr_dir);
	    			other.vsp -= lengthdir_y(0.5, curr_dir);
					}
					if (other.hitbox_timer >= 5 && other.hitbox_timer < 15){
	    			other.hsp += lengthdir_x(0.4, curr_dir);
	    			other.vsp += lengthdir_y(0.4, curr_dir);
					}
					if (other.hitbox_timer >= 15){
					other.hit_priority = 10;
	    			other.hsp += lengthdir_x(7, curr_dir);
	    			other.vsp += lengthdir_y(7, curr_dir);
					}
				}
			}
		}	
	}
	break;
	
	case AT_USPECIAL_GROUND:
	
	proj_angle = 45 * spr_dir;
	//if (hbox_num == 1){
		//change the chains knot drawing offset
		rope_offset_x = 15 * spr_dir;
		rope_offset_y = 1;
		force_depth = true;
		//depth = depth+2;
	//}
	
	if (super_beam_id > 0 && instance_exists(super_beam_id)){
		//spawn_hit_fx(x, y, 111);
		if (hitbox_timer < 30 && super_beam_id.state == PS_HITSTUN){
		super_beam_id.x = lerp(super_beam_id.x, x, 0.2);
		super_beam_id.y = lerp(super_beam_id.y, y, 0.2);
		}
		if (hitbox_timer > 30){ super_beam_id = noone; }
	}
	
	
	//if (hitbox_timer > 2){ sprite_index = sprite_get( "super_uspecial_beam_stretch" ); }
	
	/*
	if (hitbox_timer == 1){ player_id.SuperRocket -= 1; }
	
	through_platforms = 10;
	if (hbox_num == 1 || hbox_num == 2){
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 25;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        
	    var mydir = point_direction(hsp,vsp,0,0);
	    
	    if (hitbox_timer > 1){
	    	sprite_index = sprite_get( "uspecial2_proj3" );
	    	var missileparticle = spawn_hit_fx(x, y, player_id.UpSpecialSparks);
	    	missileparticle.draw_angle = mydir - 50;
	    }
	    
		var shortest_dist = 10000;
	    var shortest_id = noone;
	    
    	if (spr_dir == 1){ proj_angle = mydir + 180; }
    	if (spr_dir == -1){ proj_angle = mydir; }
    	
    	if (hitbox_timer > 95){
	    	destroyed = true;
	    }
	    
	    var random_hsp = random_func(1, 20, true);
	    if (hitbox_timer < 10){
	    	if (random_hsp > 0 && random_hsp < 10){ hsp += random_func(1, 7, true); }
	    	if (random_hsp >= 10 && random_hsp < 20){ hsp -= random_func(1, 7, true); }
	    }
	    
	    with (asset_get("oPlayer")) {
	        if (player != other.player){
	            var curr_dir = point_distance(x,y,other.x,other.y);
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (curr_dist < shortest_dist) {
	                shortest_dist = curr_dist;
	                shortest_id = id;
	        	}
	    	}
	    }
	    if (shortest_id != noone) {
	        with (shortest_id) {
	        		
	        		var curr_dir = point_direction(other.x,other.y,x,y);
	        		var curr_dist = point_distance(other.x,other.y,x,y);
	        		
	        		var past_dir = point_direction(x,y,other.x,other.y);
			        var past_dist = point_distance(x,y,other.x,other.y);
			        
			        var curr_dir_speed = point_direction(0,0,other.hsp,other.vsp);
			        var curr_dist_speed = point_distance(0,0,other.hsp,other.vsp);
			        
					if (other.hitbox_timer > 10 && other.hitbox_timer < 40){
	    			other.hsp += lengthdir_x(1, curr_dir);
	    			other.vsp += lengthdir_y(1, curr_dir);
					}
					if (other.hitbox_timer >= 40){
	    			other.hsp += lengthdir_x(10, curr_dir);
	    			other.vsp += lengthdir_y(10, curr_dir);
					}
					//if (other.hitbox_timer >= 12 && other.hitbox_timer < 25){
	    			//other.hsp += lengthdir_x(2, curr_dir);
	    			//other.vsp += lengthdir_y(2, curr_dir);
					//}
					//if (other.hitbox_timer >= 25){
					//other.hit_priority = 10;
	    			//other.hsp += lengthdir_x(1, curr_dir);
	    			//other.vsp += lengthdir_y(1, curr_dir);
				//}
			}
		}	
	    
	}
	*/
	
	break;
	
	case AT_FSPECIAL:
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
	break;
	
	case AT_FAIR:
	if (hitbox_timer == 1){
		if (get_player_color(player_id.player) != 8) { sound_play(sound_get("gun")); }
		if (get_player_color(player_id.player) == 8) { sound_play(sound_get("EA_gun")); }
	}
	if ((place_meeting( x, y+9, asset_get("par_block"))) || (place_meeting( x, y+1, asset_get("par_jumpthrough"))) ||
	!(player_id.attack == AT_FAIR)){ destroyed = true; }
	
	if (player_id.hitpause == true && hitbox_timer < 4){
		destroyed = true;
	}
	if (hitbox_timer > 2 && abs(hsp) > 0){
		with (player_id){
		other.sprite_index = sprite_get( "nspecial_proj" );
		}
	}
	
	if (hitbox_timer <= 1 && !(place_meeting( x, y+1, asset_get("par_block")))){
	if (player_id.state_timer == 8){ proj_angle = 45 * spr_dir; hsp = 18 * spr_dir; vsp = -17; }
	if (player_id.state_timer == 12){ proj_angle = 30 * spr_dir; hsp = 18 * spr_dir; vsp = -10; }
	if (player_id.state_timer == 16){ hsp = 18 * spr_dir; }
	if (player_id.state_timer == 20){ proj_angle = -25 * spr_dir; hsp = 18 * spr_dir; vsp = 10;}
	if (player_id.state_timer == 24){ proj_angle = -40 * spr_dir; hsp = 18 * spr_dir; vsp = 17;}
	}
	if (hitbox_timer <= 2 && hsp == 0){ instance_destroy(); exit; }
	break;
	
	case AT_DTILT:
	if (hbox_num == 8){
		if (player_id.hitpause == true){ in_hitpause = true; }
		if (player_id.hitpause == false){ in_hitpause = false; }
		x = player_id.x;
		y = player_id.y;
		force_depth = true;
		depth = depth+4;
	}
	break;
	
	case AT_DSPECIAL_2:
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
		player_id.attack = AT_DSPECIAL_2;
		player_id.state = PS_ATTACK_GROUND;
		player_id.window = 8;
		player_id.window_timer = -1;
		player_id.vsp = 1;
		hitbox_timer = 200;
		//player_id.white_flash_timer = 10;
		var timestopping_hitbox = create_hitbox(AT_DSPECIAL_2, 3, follow.x, follow.y-30);
		//damagecount -= 1;
		if (hitbox_timer >= 201){
			//player_id.visible = false;
			//player_id.window = 8;
			//player_id.window_timer = 0;
			player_id.invincible = false;
			//player_id.vsp = 0;
			//player_id.hsp = 0;
			//player_id.state = PS_LAND;
			//player_id.can_move = false;
			//player_id.x = player_id.prevous_x + 50 * spr_dir;
			//player_id.y = player_id.prevous_y;
		}
	}
	if (player_id.timestop == false && follow.timestop_damage <= 1){
		//player_id.state = PS_IDLE;
		var timestopping_hitbox = create_hitbox(AT_DSPECIAL_2, 4, follow.x, follow.y-30);
		follow.timestop_hit = false;
		if (hitbox_timer >= 202){
			//player_id.visible = true;
			player_id.invincible = false;
			player_id.x = player_id.prevous_x + 50 * spr_dir;
			player_id.y = player_id.prevous_y;
			player_id.spr_dir = player_id.prevous_spr;
			player_id.hsp = 13 * player_id.spr_dir;
			player_id.attack = AT_DSPECIAL_2;
			player_id.state = PS_ATTACK_GROUND;
			//player_id.window = 2;
			//player_id.window_timer = 0;
			//player_id.white_flash_timer = 13;
			}
		}
	}
	if (hbox_num == 6){
		if (hitbox_timer < 5 && place_meeting( x, y, asset_get("par_block"))){
			instance_destroy();
			exit;
		}
		if (hitbox_timer > 5 && place_meeting( x, y, player_id)){
			//player_id.dspecial_charge += 1;
			player_id.white_flash_timer = 2;
			destroyed = true;
		}
		if (hitbox_timer <= 1){
			var random_dir = random_func(0, 360, true);
            hsp = lengthdir_x(250, random_dir);
            vsp = lengthdir_y(250, random_dir);
        	}
		if (hitbox_timer >= 2 && hitbox_timer < 4){
			hsp = lengthdir_x(0, random_dir);
            vsp = lengthdir_y(0, random_dir);
		}
		if (hitbox_timer >= 4){ sprite_index = sprite_get( "lighspeed_orb" ); }
		if (hitbox_timer >= 5 && hitbox_timer < 7){
			var player_dir = point_direction(x,y,player_id.x+5,player_id.y-50);
			var random_dir = random_func(0, 360, true);
            hsp = lengthdir_x(3, player_dir + random_dir);
            vsp = lengthdir_y(2, player_dir);
            image_index = 1;
        }
		if (hitbox_timer >= 7 && hitbox_timer < 25){
			var player_dir = point_direction(x,y,player_id.x+5,player_id.y-50);
			//var moving_dir = point_direction(x,y,other.x,other.y);
			hsp += lengthdir_x(1, player_dir);
            vsp += lengthdir_y(1, player_dir);
            var fly_dir = point_direction(0,0,hsp,vsp);
            var fly_dist = point_distance(0,0,hsp,vsp);
            if (fly_dist > 20){
            hsp = lengthdir_x(20, fly_dir);
            vsp = lengthdir_y(20, fly_dir);
        	}
		}
	if (hitbox_timer >= 25){
			var player_dir = point_direction(x,y,player_id.x+5,player_id.y-50);
			//var moving_dir = point_direction(x,y,other.x,other.y);
			hsp += lengthdir_x(3, player_dir);
            vsp += lengthdir_y(3, player_dir);
            var fly_dir = point_direction(0,0,hsp,vsp);
            var fly_dist = point_distance(0,0,hsp,vsp);
            if (fly_dist > 15){
            hsp = lengthdir_x(15, fly_dir);
            vsp = lengthdir_y(15, fly_dir);
        }
	}
    if (hitbox_timer > 10){
	var lightspeed_trail = spawn_hit_fx(x, y, player_id.DSpecial_lightspeed_trail);
	lightspeed_trail.draw_angle = point_direction(0,0,hsp,vsp);
	}
	
	}
	break;
	
}