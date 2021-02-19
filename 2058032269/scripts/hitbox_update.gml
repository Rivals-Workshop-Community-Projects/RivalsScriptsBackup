//hitbox_update.gml

if (attack == AT_FSPECIAL) { // EX Shots
	if ((hbox_num >= 2 && hbox_num <= 9 || hbox_num == 12) && !free) { // Eight Way
		destroyed = true;
		vfx_timer = 0;
	}
	if (hbox_num >= 2 && hbox_num <= 9) {
		vfx_timer++;
		if (vfx_timer >= 7) {
			//spawn_hit_fx(x, y, player_id.eightway_top);
			//spawn_hit_fx(x, y, player_id.eightway_middle);
			spawn_hit_fx(x, y, player_id.eightway_bottom);
			vfx_timer = 0;
		}
		if (was_parried) {
			destroyed = true;
		}
	}
	
	if (hbox_num == 12) {
		vfx_timer++;
		if (vfx_timer >= 7) {
			spawn_hit_fx(x, y, player_id.kablooey_vfx);
			vfx_timer = 0;
		}
		if (was_parried) {
			destroyed = true;
		}
	}
	
	if (hbox_num == 13) { // Jumbo Rebound
		
		//print_debug("you didn't fuck up yet");
		
		proj_angle += 12;
		
		if (hitbox_timer < 30) {
			hsp = hsp*19/20;
		}
		
		if (hsp < (rebound_hsp*3/4)) {
			hsp += 0.05;
		}
		if (vsp < (rebound_vsp*3/4)) {
			vsp += 0.05;
		}
		
		if (hsp > (rebound_hsp*3/4)) {
			hsp += -0.05;
		}
		if (vsp > (rebound_vsp*3/4)) {
			vsp += -0.05;
		}
		
		switch(hitbox_timer) {
			case 40:
			case 80:
			case 120:
			case 160:
			case 200:
			case 240:
			case 280:
			case 320:
			case 360:
			case 400:
				var cuphead_pos = point_direction(x, y, player_id.x, player_id.y-32);
				rebound_hsp = lengthdir_x(8, cuphead_pos);
				rebound_vsp = lengthdir_y(8, cuphead_pos);
				break;
			default:
				break;
		}
		if (hitbox_timer > 30) {
			hsp = lerp(hsp, rebound_hsp, 0.06);
			vsp = lerp(vsp, rebound_vsp, 0.06);
		}
		
		if (player_id.was_parried) {
			destroyed = true;
		}
		
		if (player_id.rebound_ff) {
			hitbox_timer += 40;
		}
		
		rebound_hit_timer++;
		if (rebound_hit_timer >= rebound_hit) {
			var buzz = create_hitbox(AT_FSPECIAL, 14, x, y);
			buzz.article_id = id;
			buzz.destroy_article_on_absorb = 1;
			rebound_hit_timer = 0;
		}
	}
}

if (attack == AT_NSPECIAL) { // Standard Shots
	if (hbox_num == 2 || hbox_num == 4) {
		if (!free) {
			destroyed = true;
		}
	}
	if (hbox_num == 5) {
		if (hitbox_timer >= 40) {
			hsp += -0.45*ownerdirection;
		}
		if (was_parried) {
			hsp += 0.6*ownerdirection;
		}
	}
	if (hbox_num == 6) {
		if (free) {
			vsp += 0.45;
		}
		if (!free) {
			destroyed = true;
		}
	}
}

if (attack == AT_NSPECIAL_2) { // Standard Shots Upwards
	if (hbox_num == 2 || hbox_num == 4) {
		if (!free) {
			destroyed = true;
		}
	}
	if (hbox_num == 5) {
		if (hitbox_timer >= 30) {
			vsp += 0.1;
		}
		if (was_parried) {
			vsp += -0.6;
		}
		if (!free) {
			destroyed = true;
		}
	}
	if (hbox_num == 6) {
		if (free) {
			vsp += 0.45;
		}
		if (!free) {
			destroyed = true;
		}
	}
}

if (attack == AT_EXTRA_1 || attack == AT_EXTRA_2) { // Charge Shot
	if (hbox_num == 2) {
		if (was_parried) {
			hitbox_timer = 10;
		}
	}
}

if (attack == AT_NSPECIAL) { // Chaser Shot
	if (hbox_num == 7) {
		
		if (was_parried && player == orig_player && chase == player_id) {
			destroyed = true;
		}
		
		if (was_parried) {
			chase = player_id;
			hitbox_timer = 60;
		}
		
		if (hitbox_timer >= 20) {
			
			var angle = point_direction(x, y, chase.x, chase.y-(chase.char_height/2));
			chase_hsp = lengthdir_x(12, angle);
			chase_vsp = lengthdir_y(12, angle);
			
			hsp = lerp(hsp, chase_hsp, 0.025);
			vsp = lerp(vsp, chase_vsp, 0.025);
			
			var one_dif = angle - proj_angle;
			if (ownerdirection > 0) {
				if (angle < 180) {
					proj_angle = lerp(proj_angle, angle, 0.035);
				}
				if (angle > 180) {
					proj_angle = lerp(proj_angle, angle-360, 0.035);
				}
			}
			if (ownerdirection < 0) {
				proj_angle = lerp(proj_angle, angle-180, 0.035);
			}
		}
	}
}

if (attack == AT_NSPECIAL_2) { // Chaser Shot Upwards
	if (hbox_num == 7) {
		
		if (was_parried && player == orig_player && chase == player_id) {
			destroyed = true;
		}		

		if (was_parried) {
			chase = player_id;
			hitbox_timer = 60;
		}
		
		if (hitbox_timer >= 20) {
			
			var angle = point_direction(x, y, chase.x, chase.y-(chase.char_height/2));
			chase_hsp = lengthdir_x(12, angle);
			chase_vsp = lengthdir_y(12, angle);
			
			hsp = lerp(hsp, chase_hsp, 0.025);
			vsp = lerp(vsp, chase_vsp, 0.025);
			
			var one_dif = angle - proj_angle;
			if (ownerdirection > 0) {
				if (angle > 90 && angle < 270) {
					proj_angle = lerp(proj_angle, angle-90, 0.035);
				}
				if (angle > 270 || angle < 90) {
					proj_angle = lerp(proj_angle, angle-450, 0.035);
				}
			}
			if (ownerdirection < 0) {
				if (angle > 90 && angle < 270) {
					proj_angle = lerp(proj_angle, angle-90, 0.035);
				}
				if (angle > 270 || angle < 90) {
					proj_angle = lerp(proj_angle, angle-450, 0.035);
				}
			}
		}
	}
}