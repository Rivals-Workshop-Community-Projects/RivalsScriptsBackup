//Updating hitboxes
/*
if (attack == AT_EXTRA_1){
	if (hitbox_timer < 20){
	hsp = (1 * spr_dir) + (player_id.hsp * spr_dir);
	}
	if (free == true && hsp != 0){ proj_angle -= 2 * spr_dir; }
	if (hitbox_timer >= 100){ hitbox_timer = 20; }
	cooldowntime = player_id.move_cooldown[AT_EXTRA_1];
	if (cooldowntime > 0 && moved == false){
	//has_hit_id = player_id.hit_player_obj;
	//spr_dir = has_hit_id.spr_dir;
	moved = true;
	}
	if (hitbox_timer > 20){
		if (place_meeting( x, y-1, player_id)){
		player_id.ChaosEmerald += 1;
		destroyed = true;
		}
	}
}
*/

if (attack == AT_NSPECIAL){
	if(was_parried == true || player_id.state == PS_PRATLAND || player_id.state == PS_PRATFALL){ instance_destroy(); }
	if (hbox_num == 1){
	//create_hitbox(AT_NSPECIAL, 4, x + 30, y + 30);
	}
	if (hbox_num == 2){
		if (place_meeting( x, y+9, asset_get("par_block"))){
		//destroyed = true;
		spark = true;
		}
		if (spark == true){
			//spawn_hit_fx(x, y, (player_id.BulletHit1));
			if (spark_rng == 0){ spawn_hit_fx(x + spark_dist, y, (player_id.BulletHit1)); }
			if (spark_rng == 1){ spawn_hit_fx(x - spark_dist, y, (player_id.BulletHit1)); }
			if (spark_rng == 2){ spawn_hit_fx(x + spark_dist, y, (player_id.BulletHit2)); }
			if (spark_rng == 3){ spawn_hit_fx(x - spark_dist, y, (player_id.BulletHit2)); }
			destroyed = true;
		}
	}
if (hbox_num == 4 && !(player_id.state == PS_ATTACK_AIR)){
	instance_destroy();
	//create_hitbox(AT_NSPECIAL, 4, x + 30, y + 30);
	//proj_angle = -20 * spr_dir;
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
	if ((place_meeting( x, y+9, asset_get("par_block"))) || (place_meeting( x, y+1, asset_get("par_jumpthrough"))) ||
	!(player_id.attack == AT_FAIR)){ destroyed = true; }
	if (hitbox_timer <= 1 && !(place_meeting( x, y+1, asset_get("par_block")))){
	if (player_id.state_timer == 8){ proj_angle = 45 * spr_dir; hsp = 18 * spr_dir; vsp = -17; }
	if (player_id.state_timer == 12){ proj_angle = 30 * spr_dir; hsp = 18 * spr_dir; vsp = -10; }
	if (player_id.state_timer == 16){ hsp = 18 * spr_dir; }
	if (player_id.state_timer == 20){ proj_angle = -25 * spr_dir; hsp = 18 * spr_dir; vsp = 10;}
	if (player_id.state_timer == 24){ proj_angle = -40 * spr_dir; hsp = 18 * spr_dir; vsp = 17;}
	}
	if (hitbox_timer <= 2 && hsp == 0){ instance_destroy(); }
}


if (attack == AT_USPECIAL_2){ //Teleporting attack after lock-on
	if (hbox_num == 5){
		if (hitbox_timer < 21){
		hit_player_obj = player_id.hit_player_obj
		x = hit_player_obj.x - 40 * spr_dir;
		y = hit_player_obj.y - 35;
		}
		if (hitbox_timer > 21){ hit_priority = 10; }
	}
}

if (attack == AT_EXTRA_3){
	if (hbox_num == 2){
	x = follow.x+2;
	y = follow.y-70;
	if (hitbox_timer > 100 && player_id.timestop == true){
		hitbox_timer = 0;
	}
	if (hitbox_timer < 200){
	if (player_id.timestop == false){
		hitbox_timer = 200;
		}
	}
	if (player_id.timestop == false && follow.timestop_damage > 0 && hitbox_timer > 200){
		follow.timestop_hit = false;
		hitbox_timer = 299;
		//follow.timestop_damage--;
	}
	if (player_id.timestop == false && follow.timestop_damage > 0){
		//follow.timestop_hit = false;
		//follow.timestop_damage--;
		var timestopping_hitbox = create_hitbox(AT_EXTRA_3, 3, x, y);
		player_id.state = PS_IDLE;
		//damagecount -= 1;
		if (hitbox_timer >= 205){
			player_id.vsp = -1;
			player_id.hsp = -1 * player_id.spr_dir;
			player_id.state = PS_IDLE;
			player_id.soft_armor = 50;
		}
	}
	
	}
}

if (attack == AT_USPECIAL_2){
	if (hbox_num == 3 || hbox_num == 4){
		if (spr_dir == 1){ sprite_index = sprite_get("uspecial2_proj2"); } //hate that I have to do this
		//instead of just changing spr_dir whenever
		
	    //proj_angle = (310 * spr_dir);
		var shortest_dist = 9000;
	    var shortest_id = noone;
	    
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
	        		
	        		var curr_dir2 = point_direction(other.x,other.y,x,y);
	        		var curr_dist2 = point_distance(other.x,other.y,x,y);
	        		
	        		var fly_dir = point_direction(x,y,other.x,other.y);
			        var fly_dist = point_distance(x,y,other.x,other.y);
			        var max_speed = 14;
			        
			        other.hsp += lengthdir_x(0.1, curr_dir2);
	    			other.vsp += lengthdir_y(0.1, curr_dir2);
			        if (fly_dist > max_speed){
			            other.hsp = lengthdir_x(max_speed, curr_dir2);
			            other.vsp = lengthdir_y(max_speed, curr_dir2);
			        }
			        
	        		//other.hsp += lengthdir_x(1, curr_dir2);
	    			//other.vsp += lengthdir_y(1, curr_dir2);
	
	    			
	            var dist_from = y - other.y - (char_height / 1);
	            if (y > other.y + (char_height) ) {
	            	other.proj_angle = fly_dir;
	            	//other.proj_angle += (curr_dist2 / 20) * other.spr_dir;
	            	//other.proj_angle += (1 + sqrt(abs(dist_from))) * -other.spr_dir;
	                //other.vsp += 1 + sqrt(abs(dist_from));
	                //other.vsp += 1;
	                //other.vsp += 1 - vsp / 5;
	                //other.proj_angle += 10 * -other.spr_dir;
	            } else if (y < other.y + (char_height) ) {
	            	other.proj_angle = fly_dir;
	            	//other.proj_angle -= 3 + (curr_dist2 / 20) * other.spr_dir;
	            	//other.proj_angle -= (1 - sqrt(abs(dist_from))) * -other.spr_dir;
	                //other.vsp -= 1 - sqrt(abs(dist_from));
	                //other.vsp -= 1 + vsp / 5;
	                //other.proj_angle -= 1 * other.spr_dir;
	            } else {
	                //maintarget = false;
	            	}
	        	}
	        }
	    //if (spr_dir > 0 && hsp < 10) { hsp += 1; }
	    //if (spr_dir < 0 && hsp > -10) { hsp -= 1; }
		with (player_id){
		//my_hitboxID.sprite_index = sprite_get("HMF2");
			}
	    }
	}
	
	/*
	if (hbox_num == 1){
	depth = 1;
	//proj_angle = 50 * spr_dir;
	hsp = 21 * spr_dir;
	vsp = -21;
	}
	if (hbox_num == 2){
	depth = 1;
	//proj_angle = 50 * spr_dir;
	hsp = 21 * spr_dir;
	vsp = -21;
	}
	*/
}

/*
if (attack == AT_USPECIAL_2){
	depth = 1;
	marked_id = player_id.marked_id;
	drag_speed = -1;
	reel_speed = 8;
	//if (hitbox_timer <= 10){ proj_angle = 35 * spr_dir; }
	//if ((hitbox_timer mod 2) == 0) {
	if (spr_dir == 1){ proj_angle = vsp * -3; } else if (spr_dir == -1){ proj_angle = vsp * 3; }
	//}
	//if (hitbox_timer > 1){
	if (was_parried == false){
			if (marked_id != noone && instance_exists(marked_id)) {
				
				//if ((hitbox_timer mod 3) == 0) {

					var enemy_angle = point_direction(marked_id.x, marked_id.y - marked_id.char_height * 1, x, y);
					
					var enemy_dist = point_distance(marked_id.x, marked_id.y - marked_id.char_height * 1, x, y);
					
						//var drag_speed = max(sqrt(enemy_dist) * reel_speed, reel_speed);
						var drag_speed = max(sqrt(10) * reel_speed, reel_speed);
						hsp = lengthdir_x(drag_speed, enemy_angle + 180);
						vsp = lengthdir_y(drag_speed, enemy_angle + 180);
						ignores_walls = true;
						through_platforms = 0;
				//}
			//}
		}
	}
}


/*
if (attack == AT_USTRONG){
	if (hbox_num == 2){
		if (player_id.has_hit_player){
	player_id.hit_player_obj.x = x+1 * spr_dir;
	player_id.hit_player_obj.y = y+5 * player_id.hit_player_obj.char_height * 0.1;
		}
	}
}