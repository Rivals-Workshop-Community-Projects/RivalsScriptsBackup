
#macro GRAPPLE_DISABLED 0
#macro GRAPPLE_ACTIVE 1
#macro GRAPPLE_RETURNING 2
#macro GRAPPLE_PLAYER_MOUNTED 3
#macro GRAPPLE_WALL_MOUNTED 4
#macro GRAPPLE_ARTICLE_MOUNTED 5

//#region Intro / Respawn
// Intro
if get_gameplay_time() == 2 {
	if freemd == 1 {
		set_state(PS_ATTACK_GROUND)
		attack = AT_INTRO_1
	} else {
		set_state(PS_ATTACK_GROUND)
		attack = AT_INTRO_2
	}
}

// Respawn platform
var is_on_plat = (state == PS_RESPAWN || (state == PS_ATTACK_GROUND && respawn_taunt > 0));
if (is_on_plat) plat_active = 1;

else if (!is_on_plat && plat_active) {
	plat_active = false;
	var despawn_plat = instance_create(x, y, "obj_article3");
	despawn_plat.state = 01;
	despawn_plat.vis_alpha = 1;
}
//#endregion


//#region Cooldown management
// NSpec cooldown management
if (nspec_drone_cd > nspec_num_drones * nspec_drone_cd_max) nspec_drone_cd--;

// Attack air limit (uspec handled below under parachute code)
if (!free || state == PS_RESPAWN || state == PS_WALL_JUMP || state_cat = SC_HITSTUN) {
	fspec_used = false;
	dspec_used = false;
}

// DSpec article cooldown
if (dspec_article_cooldown > 0) dspec_article_cooldown--;
//#endregion


//#region SFX management
// Galaxy stinger SFX
for (var i = 0; i < num_hit_last_frame; i++) {
	if (hit_last_frame[i].activated_kill_effect && hit_last_frame[i].should_make_shockwave && stinger_cooldown == 0) {
		if (attack == AT_DTILT || attack == AT_DSTRONG || random_func(0, 1, false) < 0.7) {
			sound_play(sound_get("sfx_perry_stinger"), 0, 0, 1.5);
			stinger_cooldown = 110;
		} else {
			sound_play(sound_get("sfx_perry_stinger_2"), 0, 0, 1.3);
			stinger_cooldown = 130;
		}
	}
	hit_last_frame[i] = noone;
}
num_hit_last_frame = 0;
if (stinger_cooldown > 0) {
	stinger_cooldown--;
	if stinger_cooldown > 20 {
		suppress_stage_music( .2, 1)
	} else {
		suppress_stage_music( 1, .1)
	}
}

if state == PS_WAVELAND && state_timer == 1 && !hitpause {
    sound_play(asset_get("sfx_waveland_hod"), 0, noone, .8, 1.1)
}
if state == PS_DOUBLE_JUMP && (state_timer == 1 || state_timer == 8 || state_timer == 16) && !hitpause {
    sound_play(asset_get("sfx_swipe_weak1"), 0, noone, .5, 1.2)
}
if state == PS_FIRST_JUMP &&  state_timer == 0 && !hitpause {
    sound_play(asset_get("sfx_swipe_weak1"), 0, noone, .5, 1)
}

//#endregion


//#region Anim/visual management
// reset idle_air_looping if the character isn't in air idle anymore
if (!(state == PS_FIRST_JUMP || state == PS_IDLE_AIR)) {
	idle_air_looping = false;
	idle_air_platfalling = false;
}

// Rune A transparancy management
if (has_rune("A")) {
	// index 49 is walkturn
	if (state == PS_CROUCH || state == PS_ATTACK_GROUND && (attack == 49 || attack == AT_DTILT || attack == AT_TAUNT_2)) {
		rune_a_alpha = clamp(rune_a_alpha-0.05, 0, 1);
	}
	else {
		rune_a_alpha = clamp(rune_a_alpha+0.05, 0, 1);
	}
	if (state != PS_RESPAWN) visible = (rune_a_alpha == 1);
}
//#endregion


//#region Parachute
if (parachute_active) {
	hud_offset = 100
	
	var jump_out_of_grapple = (((state == PS_JUMPSQUAT && prev_state == PS_ATTACK_GROUND) || state == PS_FIRST_JUMP) && attack == AT_FSPECIAL);
	
	// Also reset in got_hit, got_parried, and death.gml
	if ((!free && gh_state < GRAPPLE_PLAYER_MOUNTED && !jump_out_of_grapple) || state == PS_AIR_DODGE || state == PS_WALL_JUMP) {
		parachute_active = false;
		var despawn_parachute = instance_create(x+(1*spr_dir), y-15, "obj_article3");
		despawn_parachute.state = 00;
	}
	if (fast_falling) {
		if (down_down) {
			if (vis_parachute_frame >= 1) vis_parachute_frame -= 0.34;
		} else {
			fast_falling = false;
			if (vsp > base_parachute_fall) vsp = base_parachute_fall;
		}
	}
	else {
		if (vis_parachute_frame < 2) vis_parachute_frame += 0.34;
	}
	
	if (!parachute_stats) {
		parachute_stats = true;
		uspec_used = true;
		
		max_fall = base_parachute_fall;
		fast_fall = base_max_fall;
		gravity_speed = parachute_gravity_speed;
		jump_speed = parachute_jump_speed;
		short_hop_speed = parachute_sh_speed;
		djump_speed = parachute_djump_speed;
		air_accel = parachute_air_accel;
		
	}
	
	if (!hitpause) vis_parachute_angle = lerp(vis_parachute_angle, hsp * 40 / air_max_speed, 0.2);
	
}
else {
	if (!free || state == PS_RESPAWN || state == PS_WALL_JUMP || state_cat = SC_HITSTUN || (has_rune("F") && state == PS_AIR_DODGE)) {
		uspec_used = false;
	}
	
	if (parachute_stats) {
		parachute_stats = false;
		
		max_fall = base_max_fall;
		fast_fall = base_fast_fall;
		gravity_speed = base_gravity_speed;
		jump_speed = base_jump_speed;
		short_hop_speed = base_sh_speed;
		djump_speed = base_djump_speed;
		air_accel = base_air_accel;
	}
	
}
//#endregion


//#region Grapple handling

// Undo sliding ground friction reduction
if (ground_friction < base_ground_friction) ground_friction = clamp(ground_friction+0.05, 0, base_ground_friction);

switch gh_state {
	
	//#region Grapple active
	case GRAPPLE_ACTIVE:
		
		gh_hsp -= gh_timer * fspec_active_decel_factor * gh_dir;
		// gh_vsp = vsp; // not really used yet
    	
    	// aim assist
    	if (instance_exists(gh_aim_obj)) { 
    		// below offset is for rune M support (for ctrl-F navigation: has_rune("M"))
    		var temp_y = gh_aim_obj.y - (gh_aim_obj.object_index == oPlayer ? gh_aim_obj.char_height/2 : 0);
    		var dir = point_direction(gh_x, gh_y,  gh_aim_obj.x, temp_y);
    		gh_x += lengthdir_x(abs(gh_hsp), dir) + hsp;
    		gh_y += lengthdir_y(abs(gh_hsp), dir) + vsp;
		}
		
		else {
			gh_aim_obj = noone;
			gh_x += gh_hsp + hsp;
			gh_y += vsp;
		}
		
		var collided_article = noone;
		var article_collision_list = ds_list_create();
		
		// non-solid base cast articles (so, just ranno)
		collided_article = instance_position(floor(gh_x), floor(gh_y), asset_get("frog_bubble_obj"));
		
		// ws articles
		if (collided_article == noone) {
			instance_position_list(floor(gh_x), floor(gh_y), asset_get("obj_article_parent"), article_collision_list, false);
			for (var i = 0; i < ds_list_size(article_collision_list); i++) {
				if (instance_exists(article_collision_list[| i]) && "agent_p_grapplable" in article_collision_list[| i]) {
					collided_article = article_collision_list[| i];
					break;
				}
			}
		}
		
		var collided_wall = instance_position(floor(gh_x), floor(gh_y), asset_get("par_block"));
		if (collided_wall == noone) collided_wall = instance_position(floor(gh_x), floor(gh_y), asset_get("par_jumpthrough"));
		
		if (position_meeting(gh_x, gh_y, asset_get("plasma_field_obj"))) {
			gh_hitbox = noone;
			gh_state = GRAPPLE_RETURNING;
    		gh_timer = 0;
    		
    		spawn_hit_fx(gh_x, gh_y, (HFX_CLA_DSMASH_BREAK));
    		sound_play(asset_get("sfx_clairen_hit_weak"));
		}
		
		else if (!was_parried && collided_wall != noone) {
			
			gh_state = GRAPPLE_WALL_MOUNTED;
    		gh_timer = 0;
    		stored_hsp = hsp;
    		stored_vsp = vsp;
    		if (instance_exists(gh_hitbox)) {
    			gh_hitbox.destroyed = true;
    			gh_hitbox = noone;
    		}
    		gh_hsp = 0;
    		gh_vsp = 0;
    		
    		gh_target = collided_wall;
			gh_target_x_offset = (gh_x - get_instance_x(gh_target));
			gh_target_y_offset = (gh_y - get_instance_y(gh_target));
		}
		
		else if (!was_parried && collided_article != noone) {
			gh_state = GRAPPLE_ARTICLE_MOUNTED;
    		gh_timer = 0;
    		stored_hsp = hsp;
    		stored_vsp = vsp;
    		if (instance_exists(gh_hitbox)) {
    			gh_hitbox.destroyed = true;
    			gh_hitbox = noone;
    		}
    		gh_hsp = 0;
    		gh_vsp = 0;
    		
    		gh_target = collided_article;
			gh_target_x_offset = (gh_x - get_instance_x(gh_target));
			gh_target_y_offset = (gh_y - get_instance_y(gh_target));
		}
		
		else if (!was_parried && !instance_exists(gh_hitbox) && !gh_hboxless) {
			gh_hitbox = noone;
			gh_state = GRAPPLE_RETURNING;
    		gh_timer = 0;
    		spawn_hit_fx(floor(gh_x), floor(gh_y), HFX_GEN_OMNI);
    		sound_play(asset_get("sfx_oly_dspecial_armorhit"));
    	}
    	
    	else if (gh_hsp * gh_dir <= gh_end_hsp * gh_dir) {
    		if (instance_exists(gh_hitbox)) {
    			gh_hitbox.destroyed = true;
    			gh_hitbox = noone;
    		}
    		gh_state = GRAPPLE_RETURNING;
    		gh_timer = 0;
		}
		
		else if (!was_parried && !gh_hboxless) {
			
			if (instance_exists(gh_aim_obj)) {
	    		var temp_hsp = lengthdir_x(abs(gh_hsp), dir) + hsp;
	    		var temp_vsp = lengthdir_y(abs(gh_hsp), dir) + vsp;
			}
			else {
				var temp_hsp = gh_hsp + hsp;
				var temp_vsp = vsp;
			}
			
			gh_hitbox.hsp = temp_hsp;
			gh_hitbox.vsp = temp_vsp;
			
			// safety check for grappleable base cast articles
			if (   centered_rect_meeting(floor(gh_x+temp_hsp), floor(gh_y+temp_vsp), 12, 28, asset_get("pillar_obj"), false)
				|| centered_rect_meeting(floor(gh_x+temp_hsp), floor(gh_y+temp_vsp), 12, 28, asset_get("rock_obj"), false)
				|| centered_rect_meeting(floor(gh_x+temp_hsp), floor(gh_y+temp_vsp), 12, 28, asset_get("frog_bubble_obj"), true)
			) {
				gh_hitbox.destroyed = true;
    			gh_hitbox = noone;
    			gh_hboxless = true;
			}
		}
		
		ds_list_destroy(article_collision_list);
		
    	break;
    
    //#endregion
    
    //#region Grapple returning
	case GRAPPLE_RETURNING:
		var gh_angle = point_direction(gh_x, gh_y, x + (gh_x_origin+gh_x_offset)*spr_dir, y + gh_y_origin+gh_y_offset);
		var gh_speed = min(gh_timer * fspec_return_vel_factor, point_distance(gh_x, gh_y, x + (gh_x_origin+gh_x_offset)*spr_dir, y + gh_y_origin+gh_y_offset));
		gh_hsp = lengthdir_x(gh_speed, gh_angle);
		gh_vsp = lengthdir_y(gh_speed, gh_angle);
		
		gh_x += gh_hsp;
		gh_y += gh_vsp;
		
		if (point_distance(gh_x, gh_y, x + (gh_x_origin+gh_x_offset)*spr_dir, y + gh_y_origin+gh_y_offset) < 0.1) {
			gh_state = GRAPPLE_DISABLED;
			gh_timer = 0;
		}
		break;
	
	//#endregion
	
	//#region Grappling to enemy player
	case GRAPPLE_PLAYER_MOUNTED:
		
		gh_x = gh_target.x + gh_target_x_offset;
		gh_y = gh_target.y + gh_target_y_offset;
		
		var mov_angle = point_direction(x + (gh_x_origin+gh_x_offset)*spr_dir, y + gh_y_origin, gh_x, gh_y);
		var mov_accel = fspec_player_mount_accel;
		
		// error state: not in fspecial
		if  ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_FSPECIAL) {
			gh_state = GRAPPLE_DISABLED;
			gh_timer = 0;
			gh_target = noone;
			break;
		}
		
		// error state: unlinked
		if (!instance_exists(gh_target) || gh_target.state_cat != SC_HITSTUN) {
			if (vsp > -4) vsp = -4;
			set_state(PS_IDLE_AIR);
			attack_end();
			gh_state = GRAPPLE_DISABLED;
			gh_timer = 0;
			gh_target = noone;
			break;
		}
		
		// error state: unmoving
		if (gh_timer > 6 && abs(point_distance(0, 0, hsp, vsp)) < 2*mov_accel) {
			// Simply proceeding to the attack followup seems to feel best for now. May revisit
			gh_state = GRAPPLE_DISABLED;
			gh_timer = 0;
			gh_target = noone;
			break;
		}
		
		gh_target.hitstop++;
		
		hsp = hsp + lengthdir_x(mov_accel, mov_angle);
		vsp = vsp + lengthdir_y(mov_accel, mov_angle);
		
		if (abs(gh_x - x  - (gh_x_origin+gh_x_offset)*spr_dir) < abs(hsp)) {
			gh_state = GRAPPLE_DISABLED;
			gh_timer = 0;
			gh_target = noone;
		}
		
		else {
			wall_snap(spr_dir, 40, hsp); // predict for next step
		}
		
		break;
		
	//#endregion
	
	//#region Grappling to wall or article
	case GRAPPLE_WALL_MOUNTED:
	case GRAPPLE_ARTICLE_MOUNTED:
	
		// error state: unlinked
		if (!instance_exists(gh_target)) {
			if (vsp > -4) vsp = -4;
			if (attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
				set_state(PS_IDLE_AIR);
				attack_end();
				gh_state = GRAPPLE_DISABLED;
				gh_timer = 0;
				gh_target = noone;
				break;
			}
		}
		
		gh_x = get_instance_x(gh_target) + gh_target_x_offset;
		gh_y = get_instance_y(gh_target) + gh_target_y_offset;
		
		var mov_angle = point_direction(x, y + gh_y_origin, gh_x, gh_y);
		var mov_accel = fspec_object_mount_accel;
		
		if (!free  && (mov_angle < 0 || 180 < mov_angle)) {
			var ldx = lengthdir_x(mov_accel, mov_angle);
			var hsp_dir = hsp / abs(hsp);
			var hsp_change = mov_accel * hsp_dir * sqrt(abs(2*ldx/mov_accel - (ldx*ldx/mov_accel/mov_accel)));
			// above transformation: https://www.desmos.com/calculator/qhpjd7mgxu
			stored_hsp = hsp + hsp_change;
			if (!use_stored_vsp) { // begin storing vsp
				stored_vsp = vsp + lengthdir_y(mov_accel, mov_angle);
				use_stored_vsp = true;
			}
			else stored_vsp = stored_vsp + lengthdir_y(mov_accel, mov_angle);
		}
		else {
			stored_hsp = hsp + lengthdir_x(mov_accel, mov_angle);
			stored_vsp = vsp + lengthdir_y(mov_accel, mov_angle);
			use_stored_vsp = false;
		}
		
	
		if (   (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
			|| (attack != AT_FSPECIAL)
			|| (point_distance(gh_x, gh_y, x, y + gh_y_origin) < max(point_distance(0, 0, stored_hsp, stored_vsp), 2) && !has_rune("G")) // Break if too close
			|| (point_distance(0, 0, stored_hsp, stored_vsp) < gh_timer * fspec_mount_limit_coefficient && gh_timer > fspec_mount_limit_min_time && !has_rune("G")) // Break if below min speed
			|| (point_distance(0, 0, stored_hsp, stored_vsp) < fspec_mount_limit_grounded && !free && gh_timer > 3) // failsafe/anti-stall
		) {
			gh_state = GRAPPLE_DISABLED;
			gh_timer = 0;
		}
		
		else {
			hsp = stored_hsp;
			if (free || stored_vsp < -0.5) vsp = stored_vsp; // ensure stored vsp is sufficient to counter gravity
			if (!free) ground_friction = reduced_ground_friction; // enable shenanigans on slides
		}
		
		// Rune K: Allow vertical movement
		if (has_rune("K") && !joy_pad_idle){
			can_fast_fall = false;
			can_move = false;
			hsp += lengthdir_x(air_accel, joy_dir)
			vsp += lengthdir_y(air_accel, joy_dir)
		}
		
		// safe zone (walls and base cast articles won't run this)
		if ("agent_p_grapplable" in gh_target) {
			
			gh_target.agent_p_grappling = 1;
			gh_target.agent_p_grapple_dir = 0;
			
			if (gh_target.agent_p_pull_vel != 0) {
				
				var x_change = -lengthdir_x(gh_target.agent_p_pull_vel, mov_angle); // inverted to pull article toward perry
				var y_change = -lengthdir_y(gh_target.agent_p_pull_vel, mov_angle);
				
				// allow the article to handle this (for the sake of compat)
				gh_target.agent_p_hsp = x_change;
				gh_target.agent_p_vsp = y_change; 
				
				if (x_change < (gh_target.agent_p_pull_vel/-6)) gh_target.agent_p_grapple_dir = -1;
				else if (x_change > (gh_target.agent_p_pull_vel/6)) gh_target.agent_p_grapple_dir = 1;
			}
			
			// While in this safe zone, apply the lifetime penalty to perry drones
			if (gh_target.agent_p_grapplable == 2 && gh_target.last_decay_frame != get_gameplay_time()) {
				gh_target.last_decay_frame = get_gameplay_time()
				gh_target.lifetime_decayed += gh_target.lifetime_decay_step;
			}
			
		}
		
		break;
		
	//#endregion
	
}
gh_timer++;

//#endregion





#define wall_snap(dir, max_height, x_offset)

	if (max_height > char_height) {
		print_debug("ERROR: bad max_height for wall_snap()");
		return false;
	}
	
	if (wall_snap_collision(dir, max_height, x_offset)) {
		
		var snap_height = max_height / 2;
		var itr = floor(log2(max_height)); // approx. pixel-level accuracy
		
		for (var p = 2; p < itr + 2; p++) { // binary search
			
			if (wall_snap_collision(dir, snap_height, x_offset)) {
				snap_height -= (max_height / (power(2, p)));
			} else {
				snap_height += (max_height / (power(2, p)));
			}
			
			//print_debug(snap_height);
			
		}
		
		y -= snap_height;
		return true;
		
	}
	
	return false;
	
#define wall_snap_collision(dir, max_height, x_offset)
	var l_bound = 20 * dir + x_offset;
	var r_bound = 24 * dir + x_offset;
	
	return collision_rectangle(x+l_bound, y-1, x+r_bound, y-max_height, asset_get("par_block"), false, false)
		 && !collision_rectangle(x+l_bound, y-max_height, x+r_bound, y-char_height, asset_get("par_block"), false, false);

#define centered_rect_meeting(_x, _y, _w, _h, obj, prec)
    return collision_rectangle(_x-(_w/2), _y-(_h/2), _x+(_w/2), _y+(_h/2), obj, prec, false);

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;