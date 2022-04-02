//user_event10

//hitbox spawning

with player_id {
	var num_windows = get_attack_value(other.attack, AG_NUM_WINDOWS);
	var cat = get_attack_value(other.attack, AG_CATEGORY);
	var charge_win = get_attack_value(other.attack, AG_STRONG_CHARGE_WINDOW);
	var has_landinglag = get_attack_value(other.attack, AG_HAS_LANDING_LAG);
	var landinglag = get_attack_value(other.attack, AG_LANDING_LAG);
	var has_grav = get_window_value(other.attack, other.window, AG_USES_CUSTOM_GRAVITY);
	var win_type = get_window_value(other.attack, other.window, AG_WINDOW_TYPE);
	var window_length = get_window_value(other.attack, other.window, AG_WINDOW_LENGTH);
	var window_start = get_window_value(other.attack, other.window, AG_WINDOW_ANIM_FRAME_START);
	var window_frames = get_window_value(other.attack, other.window, AG_WINDOW_ANIM_FRAMES);
	var has_fric = get_window_value(other.attack, other.window, AG_WINDOW_HAS_CUSTOM_FRICTION);
	var ground_fric = get_window_value(other.attack, other.window, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	var air_fric = get_window_value(other.attack, other.window, AG_WINDOW_CUSTOM_AIR_FRICTION);
	var _hsp = get_window_value(other.attack, other.window, AG_WINDOW_HSPEED);
	var _hsp_type = get_window_value(other.attack, other.window, AG_WINDOW_HSPEED_TYPE);
	var _vsp = get_window_value(other.attack, other.window, AG_WINDOW_VSPEED);
	var _vsp_type = get_window_value(other.attack, other.window, AG_WINDOW_VSPEED_TYPE);
	var has_sfx = get_window_value(other.attack, other.window, AG_WINDOW_HAS_SFX);
	var _sfx = get_window_value(other.attack, other.window, AG_WINDOW_SFX);
	var _sfx_frame = get_window_value(other.attack, other.window, AG_WINDOW_SFX_FRAME);
	var _grav = get_window_value(other.attack, other.window, AG_WINDOW_CUSTOM_GRAVITY);
	
	var num_hitboxes = get_num_hitboxes(other.attack);
	for (var i = 1; i < num_hitboxes+1; i++) {
		reset_hitbox_value(other.attack, i, HG_HITBOX_X);
		reset_hitbox_value(other.attack, i, HG_HITBOX_Y);
		reset_hitbox_value(other.attack, i, HG_ANGLE);
		reset_hitbox_value(other.attack, i, HG_HITBOX_GROUP);
		reset_hitbox_value(other.attack, i, HG_LIFETIME);
		reset_hitbox_value(other.attack, i, HG_HIT_LOCKOUT);
		
		var hitbox_window = get_hitbox_value(other.attack, i, HG_WINDOW);
		var hitbox_frame = get_hitbox_value(other.attack, i, HG_WINDOW_CREATION_FRAME);
		var hitbox_angle = get_hitbox_value(other.attack, i, HG_ANGLE);
		var hitbox_group = get_hitbox_value(other.attack, i, HG_HITBOX_GROUP);
		var hitbox_lifetime = get_hitbox_value(other.attack, i, HG_LIFETIME);
		var hit_lockout = get_hitbox_value(other.attack, i, HG_HIT_LOCKOUT);
		
		if other.window == hitbox_window && other.window_timer == hitbox_frame {
			other.has_hit = false;
		}
		
		if other.window == hitbox_window && other.window_timer >= hitbox_frame && other.window_timer < hitbox_frame+hitbox_lifetime && !other.hitpause && !other.has_hit {
			var _dist = point_distance(x, y, other.x, other.y);
			var _dir = point_direction(x, y, other.x, other.y);
			var xdist = lengthdir_x(_dist,_dir);
			var ydist = lengthdir_y(_dist,_dir);
			
			var origx = get_hitbox_value(other.attack, i, HG_HITBOX_X);
			var origy = get_hitbox_value(other.attack, i, HG_HITBOX_Y);
			
			set_hitbox_value(other.attack, i, HG_HITBOX_X, spr_dir*(xdist+(origx*other.spr_dir)));
			set_hitbox_value(other.attack, i, HG_HITBOX_Y, origy+ydist);
			if spr_dir != other.spr_dir {
				set_hitbox_value(other.attack, i, HG_ANGLE, abs(90-hitbox_angle)+90);
			}
			set_hitbox_value(other.attack, i, HG_HITBOX_GROUP, hitbox_group+5);
			set_hitbox_value(other.attack, i, HG_LIFETIME, 1);
			set_hitbox_value(other.attack, i, HG_HIT_LOCKOUT, 2);
			
			var hitbox = create_hitbox(other.attack,i,other.x,other.y);
				hitbox.isclone = true;
				hitbox.hit_priority = 5
				hitbox.hbox_group = -1
				hitbox.prev_hitbox_timer = -1
			
			reset_hitbox_value(other.attack, i, HG_HITBOX_X);
			reset_hitbox_value(other.attack, i, HG_HITBOX_Y);
			reset_hitbox_value(other.attack, i, HG_ANGLE);
			reset_hitbox_value(other.attack, i, HG_HITBOX_GROUP);
			reset_hitbox_value(other.attack, i, HG_LIFETIME);
			reset_hitbox_value(other.attack, i, HG_HIT_LOCKOUT);
		}
	}
}
with pHitBox {
	//print_debug(string(isclone))
}
