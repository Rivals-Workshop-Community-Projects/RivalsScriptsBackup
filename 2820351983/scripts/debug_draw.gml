exit
if(!is_ai) exit;

with(oPlayer) if(get_player_team(player) != get_player_team(other.player)) {
	var projected_pos = get_my_projected_pos(8)
	draw_sprite_ext(sprite_index, image_index, projected_pos[0], projected_pos[1], spr_dir, 1, 0, c_lime, get_gameplay_time() % 2 == 0?0.6:0.7)
	
	var projected_pos = get_my_projected_pos(16)
	draw_sprite_ext(sprite_index, image_index, projected_pos[0], projected_pos[1], spr_dir, 1, 0, c_lime, get_gameplay_time() % 2 == 0?0.6:0.7)
	
	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
		var frames_into_attack = state_timer
	} else {
		exit
	}

	var this_attack = other.known_attacks[player][attack]

	var hit_info = {
		hit_frame: 9999,
		frames_until_hit: 9999,
		contacting_hitbox: noone,
		closest_hitbox: noone,
		overlap: 0, // The number of overlapping pixels when precise=false. Else just 1 for hits.
		hit_scanning_frame: 0, // The frame of the hitbox when it will hit
		xdist: 9999, // The closest a hitbox gets to contacting
		ydist: 9999,
	}

	for(var hitbox_i = 0; hitbox_i < this_attack.hitboxes_count; hitbox_i++;) {
		var this_hitbox = this_attack.hitboxes_array[hitbox_i];

		var scanning_frame = 0 // The frame of the hitbox to check collision
		var duration = this_hitbox.end_frame - this_hitbox.frame
		var speed = abs(hsp) + abs(vsp)
		while scanning_frame < duration {
			var hit_frame = this_hitbox.frame + scanning_frame // frame of the  attack to check collision
			var frames_until_hit = hit_frame-frames_into_attack
			if frames_until_hit > 0 { // if this point hasn't already happened
				if hit_frame > this_hitbox.end_frame {
					break // hitbox has ended
				}
				if scanning_frame > 30 {
					break // Too long...
				}
	
				var attacker_projected_pos = get_my_projected_pos(frames_until_hit)//hit_frame);
				var hit_x = attacker_projected_pos[0] + this_hitbox.xpos * spr_dir;
				var hit_y = attacker_projected_pos[1] + this_hitbox.ypos;
				var radius_x = this_hitbox.radius_x * this_attack.paranoia;
				var radius_y = this_hitbox.radius_y * this_attack.paranoia;
	
				draw_set_alpha(clamp(1 - (frames_until_hit / 5), 0.43, 1.0));
					if(this_hitbox.is_rectangle) {
						draw_rectangle_colour(hit_x - radius_x, hit_y - radius_y, hit_x + radius_x, hit_y + radius_y, c_red, $ee9bff, c_red, $ee9bff, false);
					} else {
						draw_ellipse_colour(hit_x - radius_x, hit_y - radius_y, hit_x + radius_x, hit_y + radius_y, c_red, $ee9bff, false);
					}
				draw_set_alpha(1.0);
			}
			scanning_frame += max(3, 15/speed) 
		}
	}
	
	
}

#define update_projected_pos_cache
	proj_pos_cache = []
	//Assign friction and gravity
	switch(state) {
		case PS_ATTACK_AIR:
			var frict = "attacking";
			var _grav = "attacking";
			
		break;
		case PS_ATTACK_GROUND:
			var frict = "attacking";
			var _grav = 0;
		break;
		case PS_HITSTUN:
			var frict = air_friction;
			var _grav = hitstun_grav;
		break;
		case PS_WAVELAND:
			var frict = wave_friction;
			var _grav = 0;
			var remaining_waveland = wave_land_time - state_timer;
		break;
		case PS_WALK: case PS_DASH: case PS_DASH_START:
			var frict = 0
			var _grav = 0;
		break;
		case PS_JUMPSQUAT:
			var frict = ground_friction;
			var _grav = 0;
		break;
		default:
			var frict = free?air_friction:ground_friction;
			var _grav = free?gravity_speed:0;
		break;
	}
	
	//Complex friction and gravity
	if(frict == "attacking") {
		if(free) {
			if(get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) == 1)
				frict = 0;
			else if(get_attack_value(attack, AG_WINDOW_CUSTOM_AIR_FRICTION) != 0)
				frict = get_attack_value(attack, AG_WINDOW_CUSTOM_AIR_FRICTION);
			else
				frict = air_friction;
		}
		else {
			if(get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) == 1)
				frict = 0;
			else if(get_attack_value(attack, AG_WINDOW_CUSTOM_GROUND_FRICTION) != 0)
				frict = get_attack_value(attack, AG_WINDOW_CUSTOM_GROUND_FRICTION);
			else
				frict = ground_friction;
		}
	}
	if(_grav == "attacking") {
		if(get_window_value(attack, window, AG_WINDOW_VSPEED_TYPE) == 1)
			_grav = 0;
		else if(get_attack_value(attack, AG_USES_CUSTOM_GRAVITY))
			_grav = get_window_value(attack, window, AG_WINDOW_CUSTOM_GRAVITY);
		else
			_grav = gravity_speed;
	}
	
	//Simulate movement
	var last_projected_pos = [x, y]
	var projected_hsp = hsp
	var projected_vsp = vsp
	for (var time_i=0; time_i<maximum_projected_movement_frames; time_i++) {
		if(state == PS_WAVELAND) {
			remaining_waveland--;
			if(remaining_waveland <= 0){
				projected_vsp = 0
				projected_hsp = 0
			} 
		} else if(place_meeting(last_projected_pos[0], last_projected_pos[1], asset_get("par_block"))) {
			projected_vsp = 0
		}
		
		var projected_pos = [last_projected_pos[0] + projected_hsp, last_projected_pos[1] + projected_vsp]
		array_push(proj_pos_cache, projected_pos)

		projected_hsp -= sign(projected_hsp) * frict;
		projected_vsp = min(max_fall, projected_vsp+_grav)
		last_projected_pos = projected_pos
	}
	
#define get_my_projected_pos(time)
	if "proj_pos_cache" not in self {
		exit
	}
	if array_length(proj_pos_cache) == 0 {
		update_projected_pos_cache()
	}
	time = floor(clamp(time, 0, maximum_projected_movement_frames-1))
	return proj_pos_cache[time]