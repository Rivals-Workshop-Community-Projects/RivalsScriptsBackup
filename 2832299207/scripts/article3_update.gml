//article3_update.gml

if hitstop == 0 window_timer++
state_timer++
timer++

if state == PS_ATTACK_AIR {
	with player_id {
		other.window_length = get_window_value(other.attack, other.window, AG_WINDOW_LENGTH)
		other.window_anim_frames = get_window_value(other.attack, other.window, AG_WINDOW_ANIM_FRAMES)
		other.window_anim_frame_start = get_window_value(other.attack, other.window, AG_WINDOW_ANIM_FRAME_START)
		other.num_hitboxes = get_num_hitboxes(other.attack);
	    other.num_windows = get_attack_value(other.attack, AG_NUM_WINDOWS);
	    other.sprite_index = get_attack_value(other.attack, AG_SPRITE);
	}

	if window <= num_windows {
		if window_timer <= window_length {
			var frame_len = window_length/window_anim_frames
			image_index = window_anim_frame_start + floor(window_timer/frame_len)
		} else {
			window++
			window_timer = 0
		}
		
		with player_id {
			other.window_has_sfx = get_window_value(other.attack, other.window, AG_WINDOW_HAS_SFX)
			other.window_sfx = get_window_value(other.attack, other.window, AG_WINDOW_SFX)
			other.window_sfx_frame = get_window_value(other.attack, other.window, AG_WINDOW_SFX_FRAME)
		}
		
		if window_has_sfx {
			if window_timer == window_sfx_frame {
				sound_play(window_sfx)
			}
		}
		
		for (var hbox_num = 1; hbox_num <= num_hitboxes; hbox_num++) {
			with player_id {
				var hbox_window = get_hitbox_value(other.attack, hbox_num, HG_WINDOW);
				var hbox_window_creation_frame = get_hitbox_value(other.attack, hbox_num, HG_WINDOW_CREATION_FRAME);
				var hbox_x = get_hitbox_value(other.attack, hbox_num, HG_HITBOX_X);
				var hbox_y = get_hitbox_value(other.attack, hbox_num, HG_HITBOX_Y);
			}
			
			if window == hbox_window && window_timer == hbox_window_creation_frame {
				var hitbox = create_hitbox(attack, hbox_num, x+hbox_x*spr_dir, y+hbox_y)
					hitbox.owner = id
					hitbox.offset_x = hbox_x
					hitbox.offset_y = hbox_y
			}
		}
	} else {
		player_id.mantis_attacking_array[spawn_num-1] = false;
		instance_destroy()
		exit;
	}
	
	with pHitBox if ("owner" in self) && owner == other.id && attack != AT_FTHROW {
		x = offset_x*owner.spr_dir + owner.x + owner.hsp
		y = offset_y + owner.y + owner.vsp
		
		
		if has_hit && !owner.has_hit {
			owner.has_hit = has_hit
			owner.hitstop = hitpause
		}
		
		if owner.hitstop hitbox_timer--
	}
}


if player_id.mantis_damage_array[spawn_num-1] >= hp_max && state == PS_ATTACK_AIR {
	//sprite offsets for death anim to line up
	switch attack {
		case AT_FTHROW:
		y -= 50
		x -= 20*dir
		break;
		
		case AT_DAIR:
		x -= 40*dir
		break;
	}
	
	state = PS_HITSTUN
	state_timer = 0
	player_id.pause_attack = 70
	if spawn_num == 1 && !player_id.dosa_mode {
		player_id.pause_attack = 260
		player_id.move_timer = 0
		
		if is_aether_stage() && !player_id.dosa_mode player_id.pause_attack = 600
	}
	spawn_hit_fx(x, y - 100, vfx_kill)
	player_id.mantis_attacking_array[spawn_num-1] = 2; //set to death state
	sound_play(sound_get("mantis_death_0" + string(spawn_num)))
}

switch state {
	//death
	case PS_HITSTUN:
	sprite_index = sprite_get("mantis_kill")
	mask_index = asset_get("empty_sprite")
	
	image_index = floor(state_timer/6) mod 3
	if state_timer > 60 {
		state = PS_HITSTUN_LAND
		state_timer = 0
		sound_play(sound_get("mantis_jump_ground"))
	}
	
	player_id.attack_duration = clamp(player_id.attack_duration, 0, 120)
	break;
	
	//jump after death
	case PS_HITSTUN_LAND:
	sprite_index = sprite_get("mantis_kill")
	mask_index = asset_get("empty_sprite")
	
	image_index = clamp(3 + floor(state_timer/6), 3, 4)
	if state_timer > 60 {
		state = PS_DEAD
		state_timer = 0
		player_id.throne_dead_count++
		with obj_stage_article if get_article_script(id) == 5 && mantis_num == other.spawn_num {
			state = PS_DEAD
			state_timer = 0
		}
	}
	
	x += 20*spr_dir
	y -= 60
	break;
	
	//hurt on throne (not visibke)
	case PS_DEAD:
	sprite_index = asset_get("empty_sprite")
	mask_index = asset_get("empty_sprite")
	
	x = 0
	y = 0
	hsp = 0
	vsp = 0
	break;
	
	//attacks
	case PS_ATTACK_AIR:
	switch attack {
		//dash
		case AT_DATTACK:
		mask_index = spr_dir == 1 ? sprite_get("mantis_dash_right_hurt") : sprite_get("mantis_dash_left_hurt")
		if window == 1 {
			var xspd = 30
			var yspd = 80
			if y+yspd > 500 {
				window++
				window_timer = 0
				y = 500
				x += xspd*dir
			} else {
				x += xspd*dir
				y += yspd
			}
		}
		
		if window == 4 {
			if hitstop == 0 x += 20*dir
		}
		
		if window == 7 {
			x += 50*dir
			y -= 50
		}
		hit_detection()
		break;
		
		//dive
		case AT_DAIR:
		mask_index = spr_dir == 1 ? sprite_get("mantis_dive_right_hurt") : sprite_get("mantis_dive_left_hurt")
		if window == 1 {
			var xspd = 60
			var yspd = -20
			x += xspd*dir
			y += yspd
		}
		
		if window == 4 {
			if hitstop == 0 {
				var yspd = 40
				y += yspd
				if y+yspd > 520 {
					window++
					window_timer = 0
					y = 520
				}
			}
		}
		
		if window == 7 {
			x += 60*dir
			y -= 40
		}
		hit_detection()
		break;
		
		//throw
		case AT_FTHROW:
		mask_index = spr_dir == 1 ? sprite_get("mantis_throw_right_hurt") : sprite_get("mantis_throw_left_hurt")
		if window == 1 {
			var xspd = 40
			var yspd = 40
			x += xspd*dir
			y += yspd
		}
		
		if window == 8 {
			x -= 40*dir
			y -= 40
		}
		hit_detection()
		break;
	}
	break;
}

if flash_timer > 0 flash_timer--

#define hit_detection
user_event(6)