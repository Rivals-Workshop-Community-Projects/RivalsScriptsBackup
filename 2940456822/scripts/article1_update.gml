//
if (state != 2 && state != 3 && disabled) {
	set_state(2);
}

if (should_break) {
	should_break = false;
	set_state(3);
}

//print(state)
//print(state_timer)

switch(state) {
	case 0: //Init
		image_index = floor(state_timer / 5);
		if (state_timer == 10) {
			set_state(1);
			sprite_index = sprite_get("disco_ball"); 
		}
		bz_detection()
	break;
	case 1: //Idle
		image_index = floor(state_timer / 5);
		hitbox_detection();
		bz_detection()
	break;
	case 2: //attack
		image_index = floor(state_timer / 5);
		if (state_timer >= 210) {
			disco_is_dead();
		}
		player_id.move_cooldown[AT_NSPECIAL] = 60;
	break;
	case 3: //Dying
		disabled = true;
		sprite_index = sprite_get("disco_ball_broken"); 
		if (state_timer >= 30) {
			disco_is_dead();
		}
		player_id.move_cooldown[AT_NSPECIAL] = 60;
	break;
}




if (!hitstop) {
	state_timer += 1;
} else {
	hitstop -= 1;
}

#define bz_detection() {
	if (x < 0 || x > room_width || y < 0 || y > room_height) {
		disco_is_dead();
	}
}

#define hitbox_detection() {
	with pHitBox {
		if place_meeting(x, y, other) {
			if (player_id != other.player_id) {
				if (type == 1) { //Physical
					if (!array_contains(other.cant_hit_list, id)) {
						physical_detected();
					}
				} else { //Projectiles
					proj_detected();
				}
			} else {
				if (
					//((type == 1 && attack == AT_DAIR) || (type == 2 && attack == AT_FSPECIAL))
					attack != AT_NSPECIAL
					&& !array_contains(other.cant_hit_list, id)					
				) {
					//player_id.djumps = 0;
					with player_id {
						sound_play(asset_get("sfx_pom_note1"));
						spawn_hit_fx(clam_ball.x, clam_ball.y, notes_s);
						create_hitbox(AT_NSPECIAL, 2, clam_ball.x, clam_ball.y);
					}
					if (type == 1) {
						physical_detected();
					} else {
						proj_detected();
					}
				}
			}
		}
	}
}

#define physical_detected() {
	var _curr_hitpause = get_hitstop_formula(0, damage, hitpause, hitpause_growth, extra_hitpause);
	player_id.old_hsp = player_id.hsp;
	player_id.old_vsp = player_id.vsp;
	player_id.hitpause = true;
	player_id.has_hit = true;
	player_id.hitstop = _curr_hitpause;
	other.hitstop = _curr_hitpause;
	array_insert(other.cant_hit_list, 0, id);
	print(other.cant_hit_list);
	spawn_hit_fx((x + hit_effect_x + other.x) / 2, (y + hit_effect_y + other.y) / 2 , hit_effect);
	sound_play(sound_effect);
	//Disco is Dead
	with other {
		set_state(3);
		//disco_is_dead();
	}
}

#define proj_detected() {
	var _curr_hitpause = get_hitstop_formula(0, damage, hitpause, hitpause_growth, extra_hitpause);
	player_id.has_hit = true;
	other.hitstop = _curr_hitpause;
	array_insert(other.cant_hit_list, 0, id);
	print(other.cant_hit_list);
	spawn_hit_fx((x + hit_effect_x + other.x) / 2, (y + hit_effect_y + other.y) / 2 , hit_effect);
	sound_play(sound_effect);
	//DiscoBall Jump
	/*
	if (player_id == other.player_id && attack == AT_FSPECIAL) {
		player_id.wall_tether = true;
		player_id.window = 2;
		player_id.window_timer = clamp(6 - player_id.window_timer, 0, 30);
		player_id.can_wall_tether = false;
		instance_destroy(self);
	}
	*/
	//Disco is Dead
	with other {
		set_state(3);
		//disco_is_dead();
	}
}

#define set_state(_num) {
	state_timer = false;
	state = _num;
}

#define disco_is_dead() {
	spawn_hit_fx(x, y, 301);
	player_id.move_cooldown[AT_NSPECIAL] = 60;
	sound_play(asset_get("sfx_oly_nspecial_flashbreak"));
	instance_destroy(self);
	exit;
}

#define array_contains(_array, _val) {
	for (var i = 0; i < array_length(_array); i++) {
		if (_array[i] == _val) {
			return true;
		}
	}
	return false;
}