//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
var window_length = get_window_value(attack,window,AG_WINDOW_LENGTH);
//specials

if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	if nspecial_has_stall {
		vsp = clamp(vsp, -2, 2);
	}
	if window == 1 && window_timer == 1 {
		if blood_special_boost {
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, -12);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 16);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 10);
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .65);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
		} else {
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, -10);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 12);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .35);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
		}
	}
    if window >= 3 {
    	can_wall_jump = true;
    }
    if window == 4 {
    	hsp = free ? lerp(hsp,0,0.1) : lerp(hsp,0,0.015);
    	nspecial_has_stall = false;
    }
}

if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    if window >= 2 && window <= 4 {
    	can_wall_jump = true;
    }
    if window == 1 && window_timer == 1 {
		if blood_special_boost {
			set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
			set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 4);
			set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 4);
		} else {
			set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
			set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 8);
			set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
		}
    }
    if window >= 5 && window <= 10 {
    	hsp = 0;
    	vsp = 0;
    	can_move = false;
    	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			if blood_special_boost {
				if window == 9 && window_timer == window_length-1 && fspecial_loops < 1 {
					window = 6;
					window_timer = 0;
					fspecial_loops += 1;
				}
			}
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
    hsp = clamp(hsp,-4,4);
    if window == 1 && window_timer == 1 {
		if blood_special_boost {
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -16);
			set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 10);
			set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.85);
			set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 11);
			set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.9);
		} else {
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12);
			set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.45);
			set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 9);
			set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.5);
		}
    }
    
    
    if window >= 3 {
    	can_wall_jump = true;
    }
    if window == 7 {
    	if !free {
    		attack_end();
    		set_state(PS_PRATLAND);
    	}
    }
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
    if window >= 2 && window <= 3 {
    	can_wall_jump = true;
    	vsp = clamp(vsp, -2, 2);
    }
    if window == 3 {
    	hsp = free ? lerp(hsp,0,0.1) : lerp(hsp,0,0.015);
    }
    if window == 1 && window_timer == 1 {
		if blood_special_boost {
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 16);
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 10);
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
		} else {
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 8);
			set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
		}
    }
    
    
    if window >= 4 && window <= 5 {
    	hsp = 0;
    	vsp = 0;
    	can_move = false;
    	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			if window == 5 && window_timer mod 8 == 0 {
				if blood_special_boost {
					take_damage(player,-1,-2);
					take_damage(grabbed_player_obj.player,player,2);
				} else {
					take_damage(player,-1,-1);
					take_damage(grabbed_player_obj.player,player,1);
				}
			}
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
    
	
}

//normals
if attack == AT_JAB {
	if window == 1 && window_timer == 1 {
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
}
if (attack == AT_DTILT) {
    if window == 1 && window_timer == window_length {
        spawn_blood_num(6,x + 20*spr_dir, y - 4,3,2,3,6,spr_dir);
    }
}
if attack == AT_USTRONG {
	if window == 4 {
		hsp = lerp(hsp,0,0.01);
		vsp = lerp(vsp,0,0.01);
	}
}

//gamefeel stuff
switch(attack) {
    case AT_JAB:
    	sound_window_play(1,window_length,asset_get("sfx_swipe_weak1"),false,noone,0.45,1.25);
    	sound_window_play(4,window_length,asset_get("sfx_swipe_weak2"),false,noone,0.5,1.45);
    	sound_window_play(7,window_length,asset_get("sfx_swipe_medium2"),false,noone,0.5,1.25);
        break;
    case AT_FTILT:
    	sound_window_play(1,window_length,asset_get("sfx_swipe_medium1"),false,noone,0.45,1.25);
        break;
    case AT_DTILT:
    	sound_window_play(1,window_length,asset_get("sfx_crunch"),false,noone,0.95,0.9);
    	sound_window_play(1,window_length,asset_get("sfx_crunch_water"),false,noone,0.25,1.3);
    	sound_window_play(1,window_length,asset_get("sfx_crunch_water"),false,noone,0.85,0.85);
    	sound_window_play(1,window_length,asset_get("sfx_swish_weak"),false,noone,0.75,1.5);
        break;
    case AT_UTILT:
    	sound_window_play(1,window_length,asset_get("sfx_swipe_weak2"),false,noone,0.45,1.25);
    	sound_window_play(3,window_length,asset_get("sfx_swipe_medium1"),false,noone,0.45,1.25);
        break;
    case AT_DATTACK:
    	sound_window_play(1,window_length,asset_get("sfx_swipe_medium2"),false,noone,0.45,1.25);
        break;
    case AT_NAIR:
    	sound_window_play(1,window_length,asset_get("sfx_swipe_weak1"),false,noone,0.45,1.25);
        break;
    case AT_FAIR:
    	sound_window_play(1,window_length,asset_get("sfx_swipe_medium1"),false,noone,0.45,1.25);
        break;
    case AT_BAIR:
    	sound_window_play(1,window_length,asset_get("sfx_swipe_weak2"),false,noone,0.35,1.25);
    	sound_window_play(2,window_length,asset_get("sfx_swipe_weak1"),false,noone,0.35,1.25);
    	sound_window_play(3,window_length,asset_get("sfx_swipe_weak2"),false,noone,0.35,1.25);
        break;
    case AT_UAIR:
    	sound_window_play(1,window_length,asset_get("sfx_birdclap"),false,noone,0.75,1.25);
        break;
    case AT_DAIR:
    	sound_window_play(1,window_length,asset_get("sfx_swipe_medium2"),false,noone,0.5,1.25);
    	sound_window_play(1,window_length,asset_get("sfx_birdflap"),false,noone,0.25,1.45);
        break;
    case AT_NSPECIAL:
    	if window == 1 && window_timer == window_length {
    		spawn_base_dust(x,y,"dash",-spr_dir)
    	}
    	sound_window_play(1,window_length,asset_get("sfx_jumpground"),false,noone,1,1.15);
    	sound_window_play(1,window_length,asset_get("sfx_waveland_zet"),false,noone,0.85,1.25);
        break;
    case AT_FSPECIAL:
    	if window == 1 && window_timer == window_length {
    		spawn_base_dust(x,y,"dash_start",spr_dir)
    	}
    	sound_window_play(1,window_length,asset_get("sfx_swipe_medium2"),false,noone,0.35,1.25);
    	sound_window_play(1,window_length,asset_get("sfx_jumpground"),false,noone,1,1.15);
    	sound_window_play(1,window_length,asset_get("sfx_bird_downspecial"),false,noone,0.65,1.5);
    	sound_window_play(2,window_length,asset_get("sfx_bird_upspecial"),false,noone,0.65,1.25);
    	sound_window_play(2,window_length,asset_get("sfx_plant_ready"),false,noone,0.35,1.35);
    	sound_window_play(2,window_length,asset_get("sfx_syl_uspecial_travel_start"),false,noone,0.35,1.15);
        break;
    case AT_USPECIAL:
    	if window == 1 && window_timer == window_length {
    		spawn_base_dust(x,y,"jump",spr_dir)
    	}
    	sound_window_play(1,window_length,asset_get("sfx_bird_sidespecial"),false,noone,0.35,1.45);
    	sound_window_play(1,window_length,asset_get("sfx_swipe_weak2"),false,noone,0.4,1.25);
    	sound_window_play(2,window_length,asset_get("sfx_swipe_weak1"),false,noone,0.4,1.25);
    	sound_window_play(3,window_length,asset_get("sfx_swipe_weak2"),false,noone,0.4,1.25);
    	sound_window_play(4,window_length,asset_get("sfx_swipe_weak1"),false,noone,0.4,1.25);
    	sound_window_play(5,window_length,asset_get("sfx_swipe_weak2"),false,noone,0.4,1.25);
        break;
    case AT_DSPECIAL:
    	if window == 1 && window_timer == window_length {
    		spawn_base_dust(x,y,"dash_start",spr_dir)
    	}
    	sound_window_play(1,window_length,asset_get("sfx_bird_sidespecial"),false,noone,0.25,1.45);
    	sound_window_play(1,window_length,asset_get("sfx_swipe_medium2"),false,noone,0.35,1.25);
    	sound_window_play(1,window_length,asset_get("sfx_jumpground"),false,noone,1,1.15);
    	sound_window_play(4,window_length,asset_get("sfx_crunch"),false,noone,0.65,1.25);
    	sound_window_play(4,window_length,asset_get("sfx_plant_ready"),false,noone,0.45,1.25);
    	sound_window_play(4,window_length,asset_get("sfx_plant_ready"),false,noone,0.3,0.9);
        break;
    case AT_FSTRONG:
    
        break;
    case AT_DSTRONG:
    
        break;
    case AT_USTRONG:
    
        break;
    case AT_TAUNT:
    	sound_window_play(1,window_length,asset_get("sfx_gem_collect"),false,noone,0.85,1.15);
    	sound_window_play(1,window_length,asset_get("sfx_plant_ready"),false,noone,0.45,1.25);
    	sound_window_play(1,window_length,asset_get("sfx_plant_ready"),false,noone,0.3,0.9);
    	break;
}


//defines

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

#define sound_window_play //basically a shortcut to avoid repeating if statements over and over
/// sound_window_play(_window, _timer, _sound, _looping = false, _panning = noone, _volume = 1, _pitch = 1)
var _window = argument[0], _timer = argument[1], _sound = argument[2];
var _looping = argument_count > 3 ? argument[3] : false;
var _panning = argument_count > 4 ? argument[4] : noone;
var _volume = argument_count > 5 ? argument[5] : 1;
var _pitch = argument_count > 6 ? argument[6] : 1;
if window == _window && window_timer == _timer {
    sound_play(_sound,_looping,_panning,_volume,_pitch)
}
#define make_particle
/// make_particle(_sprite, _subimage, _anim_speed, _num_frames_init, _num_frames_total, _post_drawn, _lifetime, _x, _y, _scale_x = 1, _scale_y = 1, _angle = 0, _alpha = 1, _col = c_white, _fx = 0, _fx2 = 0, _speed_x = 0, _speed_y = 0, _frict_h = 0, _frict_v = 0, _grav = 0, _max_grav = 6, _id = 0)
var _sprite = argument[0], _subimage = argument[1], _anim_speed = argument[2], _num_frames_init = argument[3], _num_frames_total = argument[4], _post_drawn = argument[5], _lifetime = argument[6], _x = argument[7], _y = argument[8];
var _scale_x = argument_count > 9 ? argument[9] : 1;
var _scale_y = argument_count > 10 ? argument[10] : 1;
var _angle = argument_count > 11 ? argument[11] : 0;
var _alpha = argument_count > 12 ? argument[12] : 1;
var _col = argument_count > 13 ? argument[13] : c_white;
var _fx = argument_count > 14 ? argument[14] : 0;
var _fx2 = argument_count > 15 ? argument[15] : 0;
var _speed_x = argument_count > 16 ? argument[16] : 0;
var _speed_y = argument_count > 17 ? argument[17] : 0;
var _frict_h = argument_count > 18 ? argument[18] : 0;
var _frict_v = argument_count > 19 ? argument[19] : 0;
var _grav = argument_count > 20 ? argument[20] : 0;
var _max_grav = argument_count > 21 ? argument[21] : 6;
var _id = argument_count > 22 ? argument[22] : 0;
part_created = false;
//second part of the particle code by bernardo woo yeah
//set stuff
var new_part = {
    dead: false, //true when timer is above lifetime, makes particle invisible & particle slot re-usable
    timer: 0, //current timer
    lifetime: _lifetime, //total lifetime
    post_drawn: _post_drawn, //if true, draw in post_draw, else in pre_draw
    effect: _fx, //optional special effects, defaults to none
    effect_2: _fx2,
    color: _col, //color tint for draw_sprite_ext
    sprite_index: _sprite, //sprite
    image_index: _subimage, //current frame
    anim_speed: _anim_speed, //anim_speed, if set to -1 then animation is linear based on lifetime
    num_frames: _num_frames_total, //total frames that the animation has in case anim_speed is -1
    num_frames_init: _num_frames_init, //first frame of the linear animation
    scale_x: _scale_x, //x scale (left or right)
    scale_y: _scale_y, //y scale (upside down or nah)
    angle: _angle, //angle
    alpha: _alpha, //transparency (from 0 to 1)
    init_alpha: _alpha,
    x: _x, // x position
    y: _y, // y position
    speed_x: _speed_x, //x speed
    speed_y: _speed_y, //y speed
    frict_h: _frict_h, //horizontal friction
    frict_v: _frict_v, //vertical friction
    grav: _grav, //gravity
    max_grav: _max_grav, //max gravity
    part_id: _id //particle id for specific interactions
}

//put it in array
for(var ie=0;ie < array_length(particle_array);ie++) {
    if part_created {
        break;
    }
    if particle_array[ie].dead == true {
        particle_array[ie] = new_part;
        part_created = true;
    } else if ie == array_length(particle_array)-1 {
        var ar_length = array_length(particle_array);
        particle_array[ar_length] = new_part;
        part_created = true;
    }
}

#define spawn_blood_num
/// spawn_blood_num(_num_blood, _x, _y, _xspeed_var, _yspeed_var, _minx, _miny, _add_sprdir)
var _num_blood = argument0, _x = argument1, _y = argument2, _xspeed_var = argument3, _yspeed_var = argument4, _minx = argument5, _miny = argument6, _add_sprdir = argument7;
//leave last one as 1 for not sprdir effect
for(bl=0;bl<_num_blood;bl++) {
    make_particle(sprite_get("blood_drop"),bl,0.25,0,8,true,60,_x,_y, 1,1,0,1,c_white,0,0,
    (random_func(bl,_xspeed_var*2,true) - _xspeed_var  + _minx) * _add_sprdir,
    (random_func(bl+1,_yspeed_var,true) + _miny )*-1,
    0.015,0,0.5,12,0);
}
