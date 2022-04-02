//user_event9

if exit_state {
	prev_state = state;
	state = next_state;
	if next_attack != undefined {
		attack = next_attack;
		window = 1;
		window_timer = 0;
	}
	state_timer = 0;
	strong_charge = 0;
	exit_state = false;
}

var player_dist = point_distance(x, y, player_id.x, player_id.y);
var player_distx = abs(player_id.x - x);
var player_disty = abs(player_id.y - y);
var player_dirx = sign(player_id.x - x);
var player_diry = sign(player_id.y - y);

if !free {
	djump_counter = 0;
}

if !free && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND used_uspec = false

//state handler
switch state {
	
	//neutral
	
	case PS_IDLE:
	hsp *= ground_friction;
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if spr_dir != player_dirx && player_distx > facing_dist {
		next_state = PS_WALK_TURN;
		exit_state = true;
	} else if player_distx > dash_dist {
		next_state = PS_DASH_START;
		exit_state = true;
	} else if player_distx > walk_dist {
		next_state = PS_WALK;
		exit_state = true;
	} else if player_id.down_down {
		next_state = PS_CROUCH;
		exit_state = true;
	} else if player_disty > shorthop_disty && player_diry == -1 && player_distx < jump_distx {
		next_state = PS_JUMPSQUAT
		exit_state = true;
	}
	
	sprite_index = sprite_get("idle");
	mask_index = sprite_get("hurtbox");
	image_index = floor(state_timer*idle_anim_speed);
	break;
	
	case PS_IDLE_AIR:
	sprite_index = sprite_get("jump");
	mask_index = sprite_get("hurtbox");
	image_speed = 0;
	image_index = image_number-1;
	vsp = clamp(vsp+gravity_speed, -1000, max_fall);
	if run_land_collision() && vsp > 0 && state_timer > 1 {
		next_state = PS_LAND;
		exit_state = true;
	} else if player_disty > djump_disty && player_diry == -1 && djump_counter < max_djumps {
		next_state = PS_DOUBLE_JUMP
		exit_state = true;
	} else {
		follow_player_air()
	}
	break;
	
	case PS_CROUCH:
	hsp *= ground_friction;
	if !(player_id.down_pressed || player_id.down_down) {
		next_state = PS_IDLE;
	}
	
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if spr_dir != player_dirx && player_distx > facing_dist {
		next_state = PS_WALK_TURN;
		exit_state = true;
	} else if player_distx > dash_dist {
		next_state = PS_DASH_START;
		exit_state = true;
	} else if player_distx > walk_dist {
		next_state = PS_WALK;
		exit_state = true;
	} else if player_disty > shorthop_disty && player_diry == -1 && player_distx < jump_distx {
		next_state = PS_JUMPSQUAT
		exit_state = true;
	}
	
	sprite_index = sprite_get("crouch");
	mask_index = sprite_get("crouchbox");
	if state_timer < 5 {
		image_speed = 0;
		image_index = floor(state_timer*crouch_startup_frames/4);
	}
	
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if next_state != PS_CROUCH {
		var crouch_endlag = 4;
		if state_timer < 6 {
			crouch_endlag = 3;
		}
		image_index = crouch_startup_frames + crouch_active_frames + (crouch_counter*crouch_recovery_frames/crouch_endlag);
		crouch_counter++;
		if crouch_counter == crouch_endlag+1 {
			exit_state = true;
			crouch_counter = 0;
		}
	}
	break;
	
	//jumping
	
	case PS_JUMPSQUAT:
	sprite_index = sprite_get("jumpstart");
	image_index = state_timer*(image_number-1)/jump_start_time;
	if state_timer == jump_start_time {
		next_state = PS_FIRST_JUMP;
		exit_state = true;
		is_shorthop = player_disty > jump_disty
	}
	break;
	
	case PS_FIRST_JUMP:
	sprite_index = sprite_get("jump");
	image_index = clamp(state_timer*(image_number-1)/32, 0, image_number-1);
	if state_timer == 0 {
		hsp = spr_dir*clamp(abs(hsp), 0, max_jump_hsp);
		vsp = is_shorthop == true ? -jump_speed : -short_hop_speed;
		spawn_base_dust(x, y, "jump", spr_dir)
		sound_play(jump_sound)
	} else {
		vsp = clamp(vsp+gravity_speed, -1000, max_fall);
		hsp -= spr_dir*air_friction;
		
		follow_player_air()
	}
	
	if run_land_collision() && vsp > 0 && state_timer > 1 {
		next_state = PS_LAND;
		exit_state = true;
	} else if player_disty > djump_disty && player_diry == -1 && state_timer > 20 && djump_counter < max_djumps {
		next_state = PS_DOUBLE_JUMP
		exit_state = true;
	}
	break;
	
	case PS_DOUBLE_JUMP:
	sprite_index = sprite_get("doublejump");
	image_index = clamp(state_timer*(image_number-1)/32, 0, image_number-1);
	if state_timer == 0 {
		vsp = -djump_speed;
		spawn_base_dust(x, y, "djump", spr_dir)
		sound_play(djump_sound)
		djump_counter++;
	} else {
		vsp += gravity_speed;
		hsp -= spr_dir*air_friction;
		
		follow_player_air()
	}
	
	if run_land_collision() && vsp > 0 && state_timer > 1 {
		next_state = PS_LAND;
		exit_state = true;
	} else if state_timer == double_jump_time {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if player_disty > djump_disty && player_diry == -1 && state_timer > 20 && djump_counter < max_djumps {
		next_state = PS_DOUBLE_JUMP
		exit_state = true;
	}
	break;
	
	case PS_WALL_JUMP:
	sprite_index = sprite_get("walljump");
	break;
	
	case PS_LAND:
	sprite_index = sprite_get("land");
	image_index = state_timer*(image_number-1)/land_time;
	if state_timer == 0 {
		spawn_base_dust(x, y+6, "land", spr_dir)
		sound_play(land_sound);
	}
	if state_timer == land_time-1 {
		next_state = PS_IDLE;
		exit_state = true;
	}
	break;
	
	//movement
	
	case PS_WALK:
	sprite_index = sprite_get("walk");
	image_index = floor(state_timer*walk_anim_speed);
	if state_timer mod 8 == 0 {
		spawn_base_dust(x, y, "walk", spr_dir)
	}
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if spr_dir != player_dirx && player_distx > facing_dist {
		next_state = PS_WALK_TURN;
		exit_state = true;
	} else if player_distx <= stop_dist {
		next_state = PS_IDLE;
		exit_state = true;
	} else if player_distx > dash_dist {
		next_state = PS_DASH_START;
		exit_state = true;
	} else if player_disty > shorthop_disty && player_diry == -1 && player_distx < jump_distx {
		next_state = PS_JUMPSQUAT
		exit_state = true;
	}
	hsp = spr_dir*clamp(abs(hsp)+walk_accel, 0, walk_speed)
	break;
	
	case PS_WALK_TURN:
	sprite_index = sprite_get("walkturn");
	image_index = state_timer*(image_number)/walk_turn_time;
	if state_timer == 0 {
		spr_dir *= -1;
	}
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if state_timer == walk_turn_time-1 {
		next_state = prev_state;
		exit_state = true;
	}
	break;
	
	case PS_DASH_START:
	sprite_index = sprite_get("dashstart");
	image_index = state_timer*(image_number-1)/initial_dash_time;
	if state_timer == 0 {
		spawn_base_dust(x + 20*spr_dir, y, "dash_start", spr_dir)
		sound_play(asset_get("sfx_dash_start"));
	}
	hsp = spr_dir*initial_dash_speed;
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if state_timer == initial_dash_time {
		next_state = PS_DASH;
		exit_state = true;
	}
	break;
	
	case PS_DASH:
	sprite_index = sprite_get("dash");
	image_index = floor(state_timer*dash_anim_speed);
	if state_timer mod 8 == 0 {
		spawn_base_dust(x, y, "dash", spr_dir)
	}
	hsp = spr_dir*dash_speed;
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if spr_dir != player_dirx && player_distx > facing_dist {
		next_state = PS_DASH_TURN;
		exit_state = true;
	} else if player_distx <= stop_dist {
		next_state = PS_DASH_STOP;
		exit_state = true;
	} else if player_disty > shorthop_disty && player_diry == -1 && player_distx < jump_distx {
		next_state = PS_JUMPSQUAT
		exit_state = true;
	}
	break;
	
	case PS_DASH_STOP:
	sprite_index = sprite_get("dashstop");
	image_index = state_timer*(image_number-1)/dash_stop_time;
	if state_timer == 0 {
		hsp *= dash_stop_percent;
	}
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if state_timer == dash_stop_time {
		next_state = PS_IDLE;
		exit_state = true;
	}
	break;
	
	case PS_DASH_TURN:
	sprite_index = sprite_get("dashturn");
	image_index = state_timer*(image_number)/dash_turn_time;
	if state_timer == 0 {
		spr_dir *= -1;
	}
	hsp *= 1/dash_turn_accel
	
	if free {
		next_state = PS_IDLE_AIR;
		exit_state = true;
	} else if state_timer == dash_turn_time-1 {
		next_state = prev_state;
		exit_state = true;
	}
	break;
	
	case PS_WAVELAND:
	
	break;
	
	//attacks
	
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
	image_speed = 0;
	with player_id {
		other.sprite_index = get_attack_value(other.attack, AG_SPRITE);
		//other.mask_index = get_attack_value(other.attack, AG_HURTBOX_SPRITE);
	}
	/*
	switch attack {
		case AT_JAB: sprite_index = sprite_get("jab") break;
		case AT_DTILT: sprite_index = sprite_get("dtilt") break;
		case AT_UTILT: sprite_index = sprite_get("utilt") break;
		case AT_FTILT: sprite_index = sprite_get("ftilt") break;
		case AT_DATTACK: sprite_index = sprite_get("dattack") break;
		case AT_NAIR: sprite_index = sprite_get("nair") break;
		case AT_UAIR: sprite_index = sprite_get("uair") break;
		case AT_FAIR: sprite_index = sprite_get("fair") break;
		case AT_BAIR: sprite_index = sprite_get("bair") break;
		case AT_DAIR: sprite_index = sprite_get("dair") break;
		case AT_FSTRONG: sprite_index = sprite_get("fstrong") break;
		case AT_DSTRONG: sprite_index = sprite_get("dstrong") break;
		case AT_USTRONG: sprite_index = sprite_get("ustrong") break;
		case AT_FSPECIAL: sprite_index = sprite_get("fspecial") break;
		case AT_USPECIAL: sprite_index = sprite_get("uspecial") break;
		case AT_NSPECIAL: sprite_index = sprite_get("nspecial") break;
		case AT_NSPECIAL_2: sprite_index = sprite_get("nspecial_charge") break;
		case AT_TAUNT: sprite_index = sprite_get("taunt") break;
	}
	*/
	
	with player_id {
		var num_windows = get_attack_value(other.attack, AG_NUM_WINDOWS);
		var cat = get_attack_value(other.attack, AG_CATEGORY);
		var charge_win = get_attack_value(other.attack, AG_STRONG_CHARGE_WINDOW);
		var has_landinglag = get_attack_value(other.attack, AG_HAS_LANDING_LAG);
		var landinglag = get_attack_value(other.attack, AG_LANDING_LAG);
		var window_length = get_window_value(other.attack, other.window, AG_WINDOW_LENGTH);
		var has_grav = get_window_value(other.attack, other.window, AG_USES_CUSTOM_GRAVITY);
		var win_type = get_window_value(other.attack, other.window, AG_WINDOW_TYPE);
		var off_ledge = get_window_value(other.attack, other.window, AG_OFF_LEDGE);
	}
	
	//window stuff
	switch win_type {
		case 10:
		if !free {
			window++
			window_timer = 0;
		}
		if window_timer == window_length {
			window_timer = 0
		}
		break;
		
		case 7:
		if window_timer >= window_length {
			next_state = PS_PRATFALL;
			exit_state = true;
		}
		break;
		
		default:
		if window_timer >= window_length {
			window++;
			window_timer = 0;
		}
		break;
	}
	
	
	with player_id {
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
	}
	
	//friction
	if has_fric {
		if !free hsp -= sign(hsp)*ground_fric
		else hsp -= sign(hsp)*air_fric
	} else {
		if !free hsp -= sign(hsp)*ground_friction
		else hsp -= sign(hsp)*air_friction
	}
	
	if !free && abs(hsp) <= 0.3 hsp = 0
	
	//gravity
	if free {
		if has_grav vsp += _grav
		else vsp += gravity_speed
	}
	
	if cat == 0 && off_ledge == 0 && free {
		hsp = 0
		vsp = 0
	}
	
	//hsp/vsp
	switch _hsp_type {
		case 0: if window_timer == 0 hsp += spr_dir*_hsp break;
		case 1: hsp = spr_dir*_hsp break;
		case 2: if window_timer == 0 hsp = spr_dir*_hsp break;
	}
	switch _vsp_type {
		case 0: if window_timer == 0 vsp += _vsp break;
		case 1: vsp = _vsp break;
		case 2: if window_timer == 0 vsp = _vsp break;
	}
	
	//follow player
	if free follow_player_air()
	
	//sfx
	if has_sfx {
		if window_timer == _sfx_frame && !hitpause sound_play(_sfx)
	}
	
	//spawn hitboxes
	if attack != AT_USPECIAL_2 user_event(10)
	
	image_index = floor(window_start + (window_timer*window_frames/window_length))
	
	if !free && cat == 1 {
		next_state = PS_LANDING_LAG;
		exit_state = true;
		next_attack = undefined;
		landinglag_var = has_landinglag ? landinglag : land_time;
	}
	
	if window == num_windows && window_timer == window_length-1 {
		next_state = free ? PS_IDLE_AIR : PS_IDLE;
		exit_state = true;
		next_attack = undefined;
	}
	
	//attack_update
	if attack == AT_DAIR {
	    if window == 3 && window_timer == 0 && !hitpause {
	        sound_play(asset_get("sfx_bird_upspecial"))
	    }
	    hsp = 0
	}
	if attack == AT_NSPECIAL {
		if window == 1 && window_timer == 5 && player_id.special_down {
			attack = AT_NSPECIAL_2;
		}
		if window == 2 && window_timer == 0 {
	        sound_play(player_id.article_honk_sfx, 0, false, 0.6);
	    }
	}
	if attack == AT_NSPECIAL_2 {
		if player_id.special_down {
		    player_id.strong_down = true;
		} else {
		    player_id.strong_down = false;
		    player_id.attack_down = false;
		}
		if window == 2 && window_timer == 0 && !hitpause {
		    sound_play(player_id.article_honk_sfx, 0, false, 0.7 + 0.3*(strong_charge/60));
		    with player_id {
		    	set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTRA_HITPAUSE, floor(other.strong_charge/3));
		    }
		}
	}
	if attack == AT_FSPECIAL {
		if state_timer > 60 && free {
			next_state = PS_DOUBLE_JUMP
			exit_state = true
		}
	}
	
	//window timer advance
	if !(window == charge_win && window_timer == window_length-1 && player_id.strong_down && strong_charge < 60) && !hitpause {
		window_timer++;
	}
	if window == charge_win && window_timer == window_length-1 && player_id.strong_down {
		strong_charge++;
		draw_flash = strong_charge mod 10 < 5;
	} else {
		draw_flash = false;
	}
	break;
	
	//disadvantage
	
	case PS_LANDING_LAG:
	sprite_index = sprite_get("landinglag");
	image_index = state_timer*(image_number-1)/landinglag_var;
	if state_timer == 0 {
		spawn_base_dust(x, y+6, "land", spr_dir)
		sound_play(land_sound);
	}
	if state_timer == landinglag_var-1 {
		next_state = PS_IDLE;
		exit_state = true;
		landinglag_var = 0;
	}
	used_uspec = false
	break;
	
	case PS_HITSTUN:
	sprite_index = sprite_get("hurt");
	used_uspec = false
	if (!hitpause) {
    	
        if (free) {
            vsp += hitstun_grav;
        } else {
        	//print_debug(string(prev_vsp))
        	if (prev_vsp > 0) && abs(prev_vsp) > 5 {
	            vsp = -prev_vsp/2;
	        } else {
	            next_state = PS_HITSTUN_LAND;
	            prevHitboxGroup = undefined;
	            exit_state = true
	        }
        }
    }
    
    if (hitpause) {
        if (hitstop <= 0) {
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;
        }
        
        if (hitstop <= 0) {
            if (vsp > 0) && (!free) && (hitstop == 0) {
                vsp *= -0.5;
            }
            
            //DI stuff
            var xDI = 0;
            var yDI = 0;
            if !player_id.joy_pad_idle {
	            var xDI = dcos(player_id.joy_dir) * 4;
	            var yDI = -dsin(player_id.joy_dir) * 1;
            }
            //print_debug(string(xDI) + ", " + string(yDI));
            
            hsp = (hitXDir * hitKnockback * dcos(hitAngle)) + xDI;
            vsp = (-hitYDir * hitKnockback * dsin(hitAngle)) + yDI;
        }
        
        if (!free) && (vsp > 0) {
            vsp *= -1;
        }
    }
	hitstun--;
	if (!hitpause) && (hitstun <= 0) {
        hitstun = 0;
        prevHitboxGroup = undefined;
        if (free) {
            state = PS_IDLE_AIR;
        } else {
            state = PS_IDLE;
        }
        state_timer = 20;
        window = 0;
    }
    hsp -= sign(hsp) * air_friction;
	break;
	
	case PS_HITSTUN_LAND:
	sprite_index = sprite_get("hurtground");
	if (state_timer == land_time) {
        state = PS_IDLE;
        state_timer = 0;
    }
	hsp -= sign(hsp) * ground_friction;
	used_uspec = false
	break;
	
	case PS_TUMBLE:
	
	break;
	
	case PS_PRATFALL:
	
	break;
	
	case PS_PRATLAND:
	
	break;
	
	//defensive
	
	case PS_AIR_DODGE:
	
	break;
	
	case PS_PARRY_START:
	
	break;
	
	case PS_PARRY:
	
	break;
	
	case PS_ROLL_BACKWARD:
	
	break;
	
	case PS_ROLL_FORWARD:
	
	break;
	
	//techs
	
	case PS_TECH_GROUND:
	
	break;
	
	case PS_TECH_BACKWARD:
	
	break;
	
	case PS_TECH_FORWARD:
	
	break;
	
	case PS_WALL_TECH:
	
	break;
	
	//spawning
	
	case PS_SPAWN:
	sprite_index = sprite_get("idle")
	mask_index = sprite_get("hurtbox");
	image_index = floor(state_timer*idle_anim_speed);
	visible = false
	if player_id.state != PS_DEAD && player_id.visible {
		visible = true
	}
	if player_id.state != PS_SPAWN && player_id.state != PS_RESPAWN {
		next_state = free ? PS_IDLE_AIR : PS_IDLE
		exit_state = true
		visible = true
	}
	
	break;
	
	case PS_RESPAWN:
	break;
	
	case PS_DEAD:
	
	break;
}

state_timer++;

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
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
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;

#define run_land_collision
if	(instance_position(x+5, y+(2*vsp)+gravity_speed, asset_get("par_block")) ||
	instance_position(x-5, y+(2*vsp)+gravity_speed, asset_get("par_block")) ||
	instance_position(x+5, y+(2*vsp)+gravity_speed, asset_get("par_jumpthrough")) ||
	instance_position(x-5, y+(2*vsp)+gravity_speed, asset_get("par_jumpthrough"))) && 
	
	!(instance_position(x, y-2, asset_get("par_block")) ||
	instance_position(x, y-2, asset_get("par_jumpthrough")))
	{
	return true
} else {
	return false
}

#define follow_player_air
var player_dist = point_distance(x, y, player_id.x, player_id.y);
var player_distx = abs(player_id.x - x);
var player_disty = abs(player_id.y - y);
var player_dirx = sign(player_id.x - x);
var player_diry = sign(player_id.y - y);
if player_distx > stop_dist {
	hsp += player_dirx*air_accel;
	if hsp > air_max_speed {
		hsp = air_max_speed
	} else if hsp < -air_max_speed {
		hsp = -air_max_speed
	}
}