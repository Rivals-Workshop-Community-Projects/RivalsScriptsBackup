//hitbox_update

if (attack == AT_FSPECIAL) {
	if hbox_num == 1 {
	
		if hitbox_timer == 1 || hitbox_timer mod 3 == 0 {
			spawn_hit_fx(x, y, player_id.eggDust);
		}
		
		if !has_hit proj_angle -= 2*(hsp+1);
		
		image_index = eggBounce;
		var bounce_occurred = false;
		
		if !has_hit {
		//wall collision
			if (place_meeting(x + hsp, y, asset_get("par_block"))) {
				if ((hsp > 0 && place_meeting(x + 2, y - 8, asset_get("par_block"))) || 
					(hsp < 0 && place_meeting(x - 2, y - 8, asset_get("par_block")))) {
					hsp *= -1;
					//spr_dir *= -1;
					bounce_occurred = true;
					
					x += hsp;
				}
			}

			//floor/ceiling collision
			if (place_meeting(x, y + vsp, asset_get("par_block")) && 
				(vsp < 0 && place_meeting(x, y - 2, asset_get("par_block"))) ||
				!free) {
					vsp *= -1;
					bounce_occurred = true;
					// Eject from floor
					y += vsp;
			}
		}
		
		//bounce
		if (bounce_occurred) {
				if (!was_parried) {
					eggBounce += 1;
					damage += 1;
					kb_value += 1;
			}
			with player_id sound_play(sound_get("smrpg_mario_kick"), false, noone, 1, 1 + (other.eggBounce * 0.1));
		}
		
		if was_parried {
			if 10 > hitbox_timer {
				angle = point_direction(x, y, player_id.x, player_id.y-32);
				hsp = lengthdir_x(16, angle);
				vsp = lengthdir_y(16, angle);
			}
		}
		
		/*
		with player_id if cookieTimer > 0 {
		other.grav = 0;
		other.air_friction = 0;
			if other.hitbox_timer == 1 {
			other.hitbox_timer += 18;
			other.damage += 1;
			other.eggBounce += 1;
			other.hsp *= 1.5;
			other.vsp *= .9;
			}
		}
		*/
		
		if eggBounce >= 4 || hitbox_timer == length-1 {
			spawn_hit_fx( x, y, 304);
			with player_id {
				sound_play(sound_get("ssbm_eggbreak"));
				create_hitbox(AT_FSPECIAL, 2, round(other.x), round(other.y));
			}
			destroyed = true;
		}
		

	}
	if hbox_num == 2 {
		with (asset_get("pHitBox")) {
			if (attack == AT_FSPECIAL && hbox_num == 1 && was_parried) {
				other.player = player;
			}
		}
	}
}

if (attack == AT_DSPECIAL && hbox_num == 1) {
	state_timer++;
	
	// Put this in hitbox_update.gml
	if (hitbox_timer >= length - 60) {
		// Last 30 frames: Blink every 3 frames
		if (hitbox_timer >= length - 30) {
			if (hitbox_timer % 6 < 3) visible = false;
			else visible = true;
		} 
		// Frames 60 to 31: Blink every 6 frames
		else {
			if (hitbox_timer % 12 < 6) visible = false;
			else visible = true;
		}
	} else {
		visible = true; // Ensure it is always visible before the timer starts
	}
	
	if hitbox_timer == length {
		with player_id spawn_hit_fx(other.x,other.y,eggDust);
	}
	
	if (cookie_state == 0) {
		
		vsp *= 0.99;

		proj_angle -= hsp * 2; 

		if (vsp > 0 && !free) {
			vsp *= -0.6;
			hsp *= 0.65;
			
			y -= 2; 

			with player_id sound_play(sound_get("smrpg_battle_punch"), false, noone, 0.6, 1.2 + (abs(vsp)*0.1));

			if (abs(vsp) < 2) {
					cookie_state = 1;
					vsp = 0; 
					hsp = 0;
					hit_priority = 0; // REQ 2: Disable hitting
						
					//ownership returns to Yoshi
					player = player_id.player; 
						
					//refresh "can hit" state for all players
					for (var i = 0; i < 5; i++) can_hit[i] = 1; 
					proj_angle = 0;
			}
		}

		if (place_meeting(x + hsp, y - 8, asset_get("par_block"))) {
			hsp *= -0.7;
			proj_angle *= -1;
		}
	}


	if (cookie_state == 1) {
		if (free) vsp += 0.5; else vsp = 0;
		hsp *= 0.8; // Friction in case it was hit
	}
	
	if (hit_lockout > 0) hit_lockout--;
	var incoming_hbox = instance_place(x, y, asset_get("pHitBox"));
	
	if (incoming_hbox != noone && incoming_hbox != id && hit_lockout == 0) {
	if (incoming_hbox != last_hbox_id) {
			last_hbox_id = incoming_hbox;
			
	
			if (incoming_hbox.player_id == player_id && incoming_hbox.type == 1) {
				player_id.cookie_inventory[cookie_id] = cookie_id;
				player_id.cookieGet = 5;
				player_id.lastCookieGained = cookie_id; 
				
				player_id.old_hsp = player_id.hsp;
				player_id.old_vsp = player_id.vsp;
				player_id.hitpause = true;
				player_id.hitstop = 5;

				with player_id spawn_hit_fx(other.x+8,other.y+8,cookieRestore);
				with player_id spawn_hit_fx(other.x-8,other.y-8,cookieRestore);
				with (player_id) sound_play(sound_get("smrpg_item"));
				
				destroyed = true;
			}


			else if (incoming_hbox.player_id != player_id) {
				// REQ 3: Ownership becomes the opponent's
				player = incoming_hbox.player; 
				
				// Refresh "can hit" so it can hit Yoshi or the opponent's teammates
				for (var i = 0; i < 5; i++) can_hit[i] = 1;
				hsp = lengthdir_x(incoming_hbox.kb_value, get_hitbox_angle(incoming_hbox)) * 1.2;
				vsp = lengthdir_y(incoming_hbox.kb_value, get_hitbox_angle(incoming_hbox)) * 1.2;
				
				cookie_state = 0; 
				hit_priority = 1; // Becomes dangerous again
				hitbox_timer = 0;
				hit_lockout = 10;
				
				sound_play(asset_get("sfx_blow_weak2"));
				spawn_hit_fx(round(x), round(y), incoming_hbox.hit_effect);
			}
		}
	} else if (incoming_hbox == noone) {
		last_hbox_id = noone;
	}
}



//NSPECIAL
if (attack == AT_NSPECIAL && hbox_num == 1) {
		x += player_id.hsp; 
		with player_id other.y = y + (get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y));

		// PHASE 0 & 3: Flying Out & Decelerating
		// 0 = Flying Empty | 3 = Flying with Payload
		if (tongue_state == 0 || tongue_state == 3) {
			hsp *= 0.85; // Continue to decelerate naturally
			
			if (tongue_state == 0) {
				var cookie = instance_place(x, y, asset_get("pHitBox"));
				if (cookie != noone && cookie.player_id == player_id && cookie.attack == AT_DSPECIAL) {
					player_id.grabbed_cookie_obj = cookie;
					player_id.tongueOutcome = 2; 
					cookie.cookie_state = 1;
					cookie.hitbox_xscale = 0;
					cookie.hitbox_yscale = 0;
					cookie.hit_priority = 0;
					hitbox_xscale = 0;
					hitbox_yscale = 0;
					hit_priority = 0;
					tongue_state = 3; // Switch to "Carrying" state
				}
			}
			
			if (tongue_state == 3) {
				if (player_id.tongueOutcome == 1 && instance_exists(player_id.grabbed_player_obj)) {
					player_id.grabbed_player_obj.x = x;
					player_id.grabbed_player_obj.y = y + 20;
					player_id.grabbed_player_obj.hitstop = 2;
					player_id.grabbed_player_obj.hitpause = true;
				}
				if (player_id.tongueOutcome == 2 && instance_exists(player_id.grabbed_cookie_obj)) {
					player_id.grabbed_cookie_obj.x = x;
					player_id.grabbed_cookie_obj.y = y;
					player_id.grabbed_cookie_obj.hsp = 0;
					player_id.grabbed_cookie_obj.vsp = 0;
					player_id.grabbed_cookie_obj.hitbox_timer = 2;
				}
			}

			// APEX REACHED: Transition to Return phase
			if (abs(hsp) < 1 || hitbox_timer > length * 0.6) {
				if (tongue_state == 3) {
					tongue_state = 1; // Return Latched
				} else {
					tongue_state = 2; // Return Empty (Whiff)
				}
				hsp = 0;
				vsp = 0;
			}
		}

		// PHASE 1 & 2: The Return Journey
		if (tongue_state == 1 || tongue_state == 2) {
			var target_x = player_id.x + (22 * player_id.spr_dir);
			var target_y = player_id.y - 40;
			
			// THE FREEZE FIX: Proper parenthesis around the variable check!
			if (!("retract_speed" in self)) retract_speed = 2;
			retract_speed += 1.5; 
			
			var dir = point_direction(x, y, target_x, target_y);
			hsp = lengthdir_x(retract_speed, dir);
			vsp = lengthdir_y(retract_speed, dir);

			// --- LATCHED LOGIC (State 1) ---
			if (tongue_state == 1) {
				if (player_id.tongueOutcome == 1 && instance_exists(player_id.grabbed_player_obj)) {
					player_id.grabbed_player_obj.x = x - 2*spr_dir;
					player_id.grabbed_player_obj.y = y + 20;
					player_id.grabbed_player_obj.hitstop = 2;
					player_id.grabbed_player_obj.hitpause = true;
				}
				if (player_id.tongueOutcome == 2 && instance_exists(player_id.grabbed_cookie_obj)) {
					player_id.grabbed_cookie_obj.x = x - 2*spr_dir;
					player_id.grabbed_cookie_obj.y = y;
					player_id.grabbed_cookie_obj.hsp = 0;
					player_id.grabbed_cookie_obj.vsp = 0;
					player_id.grabbed_cookie_obj.hitbox_timer = 2;
				}
			}
			
			// --- WHIFF LOGIC (State 2) ---
			if (tongue_state == 2) {
				image_index = 1;      
				image_xscale = 0;     
				image_yscale = 0;
				hit_priority = 0;
			}

			// DESPAWN
			var dist = point_distance(x, y, target_x, target_y);
			if (dist < retract_speed || dist < 24) {
				if (tongue_state == 1 && player_id.tongueOutcome == 2 && instance_exists(player_id.grabbed_cookie_obj)) {
					sound_play(sound_get("eat"));
					player_id.grabbed_cookie_obj.destroyed = true;
				}
				hitbox_timer = length;
		}
	}
}