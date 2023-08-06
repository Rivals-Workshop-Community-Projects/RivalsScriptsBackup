//hitbox_update.gml

if attack == AT_NSPECIAL {
	var ice_meteor_article = player_id.ice_meteor_article;
	if hbox_num <= 3 {
		through_platforms = 2;
		if was_parried { destroyed = 1;  }
		if !free { 
			destroyed = 1; 
		}
		if (x < 0 - 64*2 || x > room_width + 64*2) || (y > room_height + 48*2) { destroyed = 1; }
		hsp = ease_cubeIn( 1, 3, ice_meteor_article.meteor_falling_timer, 60 )*ice_meteor_article.meteor_dir; 
		vsp = ease_cubeIn( 1, 3, ice_meteor_article.meteor_falling_timer, 60 );
		if ice_meteor_article.meteor_state == 2 { 
			if destroyed == 1 { ice_meteor_article.ice_meteor_article = -4; instance_destroy(obj_article1); }
		}
	}
}

if(attack == AT_DSPECIAL){
	switch(hbox_num) {
		case 1:
			var missilex = player_id.x;
			var missiley = player_id.y;
			switch(frost_missile_offset) {
				case 1:
					x = missilex+4*missile_spr_dir;
					y = missiley-20;
					depth = 10;
				break;
				case 2:
					x = missilex;
					y = missiley-100;
					depth = 10;
				break;
				case 3:
					x = missilex-20*missile_spr_dir;
					y = missiley-124;
					depth = 1;
				break;
				case 4:
					x = missilex-40*missile_spr_dir;
					y = missiley-50;
				break;
				case 5:
					x = missilex+40*missile_spr_dir;
					y = missiley-68;
					depth = 10;
				break;
				case 6:
					x = missilex+32*missile_spr_dir;
					y = missiley-44;
					depth = 10;
				break;
			}
			
			meteor_sparkle_timer--;
			if meteor_sparkle_timer == 0 { 
				sparkle_spawn = spawn_hit_fx(x+random_func_2(31+frost_missile_offset,16,true)*2, y+random_func_2(32+frost_missile_offset,16,true)*2, player_id.sparkle); 
				sparkle_spawn.depth = -2;
				meteor_sparkle_timer = 30+random_func_2(33+frost_missile_offset,10,true); 
			}
			
			through_platforms = 2;			
			missile_til_fire--;
			if missile_til_fire < 0 {
				var missile1spr_dir = missile_spr_dir;
				var missile1angle = proj_angle;
				var missile1marked_player = marked_player;
				with ( create_hitbox( AT_DSPECIAL, 2, x, y ) ){
					missile_spr_dir = missile1spr_dir;
					proj_angle = missile1angle;
					marked_player = missile1marked_player;
				}
				destroyed = 1;
			}
		break;
		case 2:
			through_platforms = 2;
			if hitbox_timer > 10 { grounds = -1; } else { grounds = 1; }
			
			if hitbox_timer % 2 == 0 { var frost_missile_trail_thing = spawn_hit_fx ( x, y, frost_missile_trail ); frost_missile_trail_thing.draw_angle = proj_angle; }
			meteor_sparkle_timer--;
			if meteor_sparkle_timer == 0 { 
				sparkle_spawn = spawn_hit_fx(x+random_func_2(31+frost_missile_offset,16,true)*2, y+random_func_2(32+frost_missile_offset,16,true)*2, player_id.sparkle); 
				sparkle_spawn.depth = -2;
				meteor_sparkle_timer = 10+random_func_2(33+frost_missile_offset,10,true); 
			}
			
			if marked_player == -1 {
			if tracking == 1 {
				if missile_spr_dir == 1 { 				
					angleFromProjectileToTarget = point_direction(x, y, frost_missile_target_x, frost_missile_target_y);
					
					var target_diff = angle_difference( angleFromProjectileToTarget, proj_angle );
					proj_angle += target_diff*0.12;	
					angleFromProjectileToTarget = proj_angle;
				}
				if missile_spr_dir == -1 { 				
					angleFromProjectileToTarget = point_direction(frost_missile_target_x, frost_missile_target_y, x, y);
					
					var target_diff = angle_difference( angleFromProjectileToTarget, proj_angle );
					proj_angle += target_diff*0.12;	
					angleFromProjectileToTarget = proj_angle + 180;
				}

				hsp = cos(degtorad(angleFromProjectileToTarget)) * missile_speed;
				vsp = -1*sin(degtorad(angleFromProjectileToTarget)) * missile_speed;
				if collision_circle( frost_missile_target_x, frost_missile_target_y, 32, self, false, false ) { tracking = 0; }
			} else {
				hsp = cos(degtorad(angleFromProjectileToTarget)) * missile_speed;
				vsp = -1*sin(degtorad(angleFromProjectileToTarget)) * missile_speed;
			}
			} else {
			if tracking == 1 {
				frost_missile_target_x = marked_player.x;
				frost_missile_target_y = marked_player.y;
				
				if missile_spr_dir == 1 { 				
					angleFromProjectileToTarget = point_direction(x, y, frost_missile_target_x, frost_missile_target_y);
					
					var target_diff = angle_difference( angleFromProjectileToTarget, proj_angle );
					proj_angle += target_diff*0.12;	
					angleFromProjectileToTarget = proj_angle;
				}
				if missile_spr_dir == -1 { 				
					angleFromProjectileToTarget = point_direction(frost_missile_target_x, frost_missile_target_y, x, y);
					
					var target_diff = angle_difference( angleFromProjectileToTarget, proj_angle );
					proj_angle += target_diff*0.12;	
					angleFromProjectileToTarget = proj_angle + 180;
				}

				hsp = cos(degtorad(angleFromProjectileToTarget)) * missile_speed;
				vsp = -1*sin(degtorad(angleFromProjectileToTarget)) * missile_speed;
				if collision_circle( frost_missile_target_x, frost_missile_target_y, 24, self, false, false ) { tracking = 0; }
			} else {
				hsp = cos(degtorad(angleFromProjectileToTarget)) * missile_speed;
				vsp = -1*sin(degtorad(angleFromProjectileToTarget)) * missile_speed;
			}
			}
		break;
	}
}

if (attack == AT_BAIR){
	hsp += .2*spr_dir
	meteor_sparkle_timer--;
	if meteor_sparkle_timer == 0 { 
		sparkle_spawn = spawn_hit_fx(x+random_func_2(31+frost_missile_offset,16,true)*2, y+random_func_2(32+frost_missile_offset,16,true)*2, player_id.sparkle); 
		sparkle_spawn.depth = -2;
		meteor_sparkle_timer = 10+random_func_2(33+frost_missile_offset,10,true); 
	}
}

if (attack == AT_DAIR){
	through_platforms = 2;
	if spr_dir == 1 {
	hsp = cos(degtorad(315)) * 10;
	vsp = -1*sin(degtorad(315)) * 10;
	proj_angle = 315;
	} else {
	hsp = cos(degtorad(225)) * 10;
	vsp = -1*sin(degtorad(225)) * 10;
	proj_angle = 225-180;
	}
	
	meteor_sparkle_timer--;
	if meteor_sparkle_timer == 0 { 
		sparkle_spawn = spawn_hit_fx(x+random_func_2(31+frost_missile_offset,16,true)*2, y+random_func_2(32+frost_missile_offset,16,true)*2, player_id.sparkle); 
		sparkle_spawn.depth = -2;
		meteor_sparkle_timer = 10+random_func_2(33+frost_missile_offset,10,true); 
	}
}

if (attack == AT_FSTRONG){
	hsp -= 0.8*spr_dir
	meteor_sparkle_timer--;
	if hitbox_timer > 4 { grounds = -1; } else { grounds = 1; }
	if meteor_sparkle_timer == 0 { 
		sparkle_spawn = spawn_hit_fx(x+random_func_2(31+frost_missile_offset,16,true)*2, y+random_func_2(32+frost_missile_offset,16,true)*2, player_id.sparkle); 
		sparkle_spawn.depth = -2;
		meteor_sparkle_timer = 10+random_func_2(33+frost_missile_offset,10,true); 
	}
}