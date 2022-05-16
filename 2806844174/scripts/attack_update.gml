//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	//case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

var random_pitch = (random_func(1, 7, 0) - 3) / 100;
var window_end = window_timer == (floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1)));

// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	// no
	
	case AT_JAB:
		if !hitpause switch(window) {
			case 1:
				if window_timer == 1 {
					clear_button_buffer(PC_ATTACK_PRESSED);
					sound_play(asset_get("sfx_clairen_swing_weak"), 0, noone, .9, 1.06 + random_pitch);
					sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .8, .98 + random_pitch);
				}
				break;
			case 3:
				if window_timer == 1 {
					sound_play(asset_get("sfx_clairen_swing_weak"), 0, noone, .9, .97 + random_pitch);
					sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .8, .94 + random_pitch);
				}
				if window_timer == 2 hsp = spr_dir*5;
				break;
			case 5:
				if window_timer == 1 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.11 + random_pitch);
				if window_timer == 3 sound_play(sound_get("violent_pierce_javelin"), 0, noone, .85, .99 + random_pitch);
				if window_timer == 6 hsp = spr_dir*8;
				break;
		}
		break;
	case AT_FTILT:
		if window == 1 && !hitpause {
			if window_timer == 4 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.02 + random_pitch);
			if window_end {
				hsp = 5 * spr_dir;
				sound_play(sound_get("violent_pierce_javelin"), 0, noone, .85, 1.07 + random_pitch);
			}
		}
		break;
	case AT_DTILT:
		if window == 1 && !hitpause {
			if window_timer == 2 sound_play(asset_get("sfx_clairen_swing_weak"), 0, noone, .9, 1.02 + random_pitch);
			if window_end sound_play(asset_get("sfx_may_whip2"), 0, noone, .7, 1.02 + random_pitch);
			if window_end sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .85, .95 + random_pitch);
		}
		break;
	case AT_UTILT:
		if !hitpause switch(window) {
			case 1:
				if window_timer == 3 {
					//sound_play(asset_get("sfx_clairen_swing_weak"), 0, noone, 1, 1.06 + random_pitch);
					sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .8, .98 + random_pitch);
					//sound_play(asset_get("sfx_spin"));
				}
				if window_timer == 5 {
					sound_play(asset_get("sfx_clairen_swing_weak"), 0, noone, 1, 1.06 + random_pitch);
				}
				break;
			case 2:
				//if window_end sound_stop(sound_get("deboning_slasher_throw"));
				if window_timer == 1 sound_play(asset_get("sfx_spin"));
				if window_end sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.11 + random_pitch);
				if window_end sound_play(sound_get("violent_pierce_javelin"), 0, noone, .85, .99 + random_pitch);
				break;
			case 3:
				break;
		}
		break;
	case AT_DATTACK:
		switch(window) {
			case 1:
				if window_timer > 9 hsp = spr_dir * 25;
				if window_end sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.11 + random_pitch);
				if window_end sound_play(sound_get("violent_pierce_javelin"), 0, noone, .85, .99 + random_pitch);
				break;
			case 2:
				hsp = 0;
				break;
		}
		break;
	case AT_USTRONG:
		if !hitpause switch(window) {
			case 1:
				if window_timer == 1 sound_play(sound_get("lastattack_cast"));
				break;
			case 2:
				if window_timer == 1 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.11 + random_pitch);
				if window_end {
					sound_play(sound_get("lastattack_swish"), 0, noone, .8, 1.15);
					sound_play(sound_get("violent_pierce_javelin"), 0, noone, .85, .92);
				}
				break;
		}
		break;
	case AT_DSTRONG:
		if !hitpause switch(window) {
			case 1:
				if window_timer == 1 sound_play(sound_get("lastattack_cast"), 0, noone, 1, .96);
				break;
			case 2:
				if window_timer == 1 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.11 + random_pitch);
				if window_end {
					sound_play(sound_get("lastattack_swish"), 0, noone, .8, 1.07);
					sound_play(sound_get("violent_pierce_javelin"), 0, noone, .85, .89);
				}
				break;
		}
		break;
	case AT_FSTRONG:
		if !hitpause switch(window) {
			case 1:
				if window_timer == 1 sound_play(sound_get("lastattack_cast"), 0, noone, 1, .98);
				break;
			case 2:
				if window_end {
					sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .8, .98 + random_pitch);
					sound_play(asset_get("sfx_spin"), 0, noone, 1, .96);
				}
				break;
			case 4:
				if window_timer == 1 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.11 + random_pitch);
				if window_end {
					sound_play(sound_get("lastattack_swish"), 0, noone, .8, 1.22);
					sound_play(sound_get("violent_pierce_javelin"), 0, noone, .85, .99);
				}
				break;
		}
		break;
	
	case AT_UAIR:
		if window == 1 && !hitpause {
			if window_timer == 2 sound_play(asset_get("sfx_clairen_swing_weak"), 0, noone, .9, 1.00 + random_pitch);
			if window_end sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .85, .92 + random_pitch);
		}
		if window == 2 && !hitpause {
			if window_end sound_play(asset_get("sfx_may_whip2"), 0, noone, .7, 1 + random_pitch);
			if window_timer == 5 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.06 + random_pitch);
			if window_timer == 7 sound_play(sound_get("violent_pierce_javelin"), 0, noone, .7, .93 + random_pitch);
		}
		break;
	
	case AT_FAIR:
		if window == 1 {
			can_fast_fall = false;
			vsp *= .8;
		}
		if window == 1 && !hitpause {
			if window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 {
				hsp = lerp(hsp, -2 * spr_dir, .06);
			} else hsp = 10 * spr_dir;
			if window_timer == 3 sound_play(sound_get("dark_ambition_throw"), 0, noone, .75, 1.1);
			if window_timer == 12 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.02 + random_pitch);
			if window_end sound_play(sound_get("violent_pierce_javelin"), 0, noone, .85, .95 + random_pitch);
		}
		if window == 2 {
			vsp *= .7;
		}
		break;

	case AT_NAIR:
		if window == 1 && !hitpause {
			if window_timer == 2 sound_play(asset_get("sfx_clairen_swing_weak"), 0, noone, .9, 1.00 + random_pitch);
			if window_end sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .85, .92 + random_pitch);
		}
		if window == 2 && !hitpause {
			if window_timer == 5 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.06 + random_pitch);
			if window_timer == 7 sound_play(sound_get("violent_pierce_javelin"), 0, noone, .7, .93 + random_pitch);
		}
		break;

	case AT_BAIR:
		if window == 1 && !hitpause {
			if window_end sound_play(asset_get("sfx_may_whip2"), 0, noone, .6, 1 + random_pitch);
			if window_timer == 2 sound_play(asset_get("sfx_clairen_swing_weak"), 0, noone, .9, 1.02 + random_pitch);
			if window_end sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .7, .95 + random_pitch);
		}
		if window == 2 && !hitpause {
			if window_end sound_play(asset_get("sfx_may_whip2"), 0, noone, .6, 1.07 + random_pitch);
			if window_timer == 5 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.11 + random_pitch);
			if window_timer == 7 sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .7, .99 + random_pitch);
		}
		break;
	
	case AT_DAIR:
		if window == 1 && !hitpause {
			if window_timer == 2 sound_play(sound_get("dark_ambition_throw"), 0, noone, .8, 1.1);
			if window_timer == 6 sound_play(asset_get("sfx_clairen_swing_strong"), 0, noone, .9, 1.02 + random_pitch);
			if window_end {
				//sound_play(sound_get("lastattack_swish"), 0, noone, .9, 1.22);
				sound_play(sound_get("violent_pierce_javelin"), 0, noone, .8, 1.1);
				//sound_play(sound_get("burn_locust_throw_whoosh"), 0, noone, .8, 1.12);
			}
		}
		break;

	case AT_NSPECIAL:
		can_fast_fall = false;
		can_move = false;
		var bubble = noone;
		with obj_article3 if player_id == other bubble = self;
		if window == 1 && !hitpause && window_timer == 1 sound_play(sound_get("accident_ready"), 0, noone, 1, 1);
		if window == 1 && window_end && !hitpause sound_play(sound_get("accident_box"), 0, noone, 1, 1);
		if bubble != noone && has_frozen = false {
			has_frozen = true;
			with bubble {
				if frozen {
					frozen = false;
					draw_circle = true;
				}
				else {
					frozen = true;
					should_draw = true;
				}
				circle_x = x;
				circle_y = y;
				should_draw = true;
			}
		}
		break;
		
	case AT_FSPECIAL:
		can_fast_fall = false;
		switch(window) {
			case 1:
				vsp *= .8;
				if window_timer == 4 && !hitpause sound_play(sound_get("scale_grinder_stab"));
				break;
			case 2:
				vsp *= .3;
				if window_timer == 1 && !hitpause {
					move_cooldown[AT_FSPECIAL] = 300;
					instance_create(x + spr_dir * 20, y, "obj_article2");
				}
				break;
			case 3:
				vsp *= .8;
				break;
		}
		break;
	
	
	
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = false;
		fall_through = true;
		var hit_bubble = false;
		switch(window) {
			case 1:
				vsp *= .75;
				hsp *= .9;
				if bounces == 1 {
					vsp = 0;
					hsp = 0;
				}
				if window_timer == 1 && !hitpause sound_play(sound_get("asura_wol_cast"), 0, noone, 1, 1);
				if window_end && !hitpause {
					sound_play(sound_get("flense_flash"), 0, noone, 1, 1.1);
					joy_round = (floor((joy_dir+22.5)/45)*45)%360;
					uspecial_hsp = joy_pad_idle?0:lengthdir_x(38, joy_round);
					uspecial_vsp = joy_pad_idle?-38:lengthdir_y(38, joy_round);
					hsp = uspecial_hsp;
					vsp = uspecial_vsp;
					if hsp != 0 spr_dir = hsp / abs(hsp);
					switch (joy_round) {
						case 0:
						case 180:
							stored_vsp = -10;
							break;
						case 90:
						case 270:
							stored_vsp = -13;
							break;
						default:
							stored_vsp = -11.5;
							break;
					}
				}
				break;
			case 2:
				if !hitpause {
					hsp = uspecial_hsp;
					vsp = uspecial_vsp;
				}
				if !hitpause with obj_article3 if "holy_bubble" in self {
					if place_meeting(x, y, other) {
						hit_bubble = true;
						other.hsp *= .2;
						other.vsp = other.stored_vsp;
						other.djumps = 0;
						other.move_cooldown[AT_USPECIAL] = 2;
						other.uspecial_used = true;
						sound_play(asset_get("sfx_ori_energyhit_heavy"));
						with other {
							set_state(PS_IDLE_AIR);
							spawn_hit_fx(other.x, other.y, bubble_fx);
						}
						instance_destroy(self);
					}
				}
				//if !hit_bubble && !hitpause && free vsp -= gravity_speed;
				break;
			case 3:
				if window_timer < 5 {
					if !hitpause with obj_article3 if "holy_bubble" in self {
						if place_meeting(x, y, other) {
							hit_bubble = true;
							other.hsp *= .2;
							other.vsp = other.stored_vsp;
							other.djumps = 0;
							other.move_cooldown[AT_USPECIAL] = 2;
							other.uspecial_used = true;
							sound_play(asset_get("sfx_ori_energyhit_heavy"));
							with other {
								set_state(PS_IDLE_AIR);
								spawn_hit_fx(other.x, other.y, bubble_fx);
							}
							instance_destroy(self);
						}
					}
				} else can_move = true;
				//destroy_hitboxes();
				if !hit_bubble {
					hsp = lerp(hsp, 0, .4);
					vsp = lerp(vsp, 0, .4);
				}
				break;
		}
		break;
	
	
	
	case AT_DSPECIAL:
		if vsp > 0 {
			switch(window) {
				case 1:
					//vsp *= .9;
					break;
				case 2:
					if window_timer == 1 vsp = 0;
					vsp *= .7;
					break;
				case 3:
					//vsp *= .9;
					break;
			}
		}
		if dfx != noone && instance_exists(dfx) {
			if hitpause dfx.pause = 200;
			else dfx.pause = 1;
		}
		can_fast_fall = false;
		//can_move = false;
		if window == 1 && window_timer == 1 && !hitpause {
			sound_play(sound_get("dark_ambition_exp"), 0, noone, 1, 1.04);
			sound_play(asset_get("sfx_ori_bash_hit"), 0, noone, 1, .96);
			sound_play(asset_get("sfx_spin"), 0, noone, 1, 1.04);
		}
		if window == 2 && window_timer == 1 && !hitpause {
			//sound_stop(asset_get("ultimatecrossslash_ready"));
			//sound_play(sound_get("jihad_fall"));
			sound_play(sound_get("lamb_fence_exp"));
			sound_play(sound_get("violent_pierce_javelin"));
			var bubble = noone;
			with obj_article3 if player_id == other bubble = self;
			if bubble != noone {
				var bubble_distance = point_distance(x, y - 30, bubble.x, bubble.y);
				var bubble_angle = point_direction(x, y - 30, bubble.x, bubble.y);
				var slash_x = x + .5*bubble_distance*cos(degtorad(bubble_angle));
				var slash_y = (y - 30) - .5*bubble_distance*sin(degtorad(bubble_angle));
			} else {
				var bubble_distance = 0;
				var bubble_angle = 0;
				var slash_x = x;
				var slash_y = y - 30;
			}
			dfx = spawn_hit_fx(slash_x, slash_y, dspecial_fx);
			bubble_angle = (bubble_angle + 90) % 360;
			var h_x = (420*cos(degtorad(bubble_angle)))/12;
			var h_y = (-420*sin(degtorad(bubble_angle)))/12;
			dfx.draw_angle = bubble_angle;
			shake_camera(9, 10);
			for (var hnum = -6; hnum < 7; hnum++) {
				set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_HITBOX_X, spr_dir*round(slash_x - x + hnum*(h_x)));
				set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_HITBOX_Y, round(slash_y - y + hnum*(h_y)));
				//set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_PRIORITY, 10 - abs(hnum));
				//set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_DAMAGE, 14 - abs(hnum));
				//set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_KNOCKBACK_SCALING, 1.2 - abs(hnum)/12);
				//set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_EXTRA_CAMERA_SHAKE, 15 - abs(hnum));
				//set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_BASE_HITPAUSE, 15 - abs(hnum));
				create_hitbox(AT_DSPECIAL, hnum + 7, x, y);
			}
		}
		break;
		case AT_TAUNT:
			if state_timer == 2 && !hitpause {
				sound_stop(sound_get("boom"));
				sound_play(sound_get("boom"), 0, noone, 1);
			}
			if !taunt_down && state_timer > 20 {
				set_state(PS_IDLE);
			}
			break;
}



#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
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


