//B - Reversals
switch(attack){
	//case AT_NSPECIAL:
	case AT_FSPECIAL:
	//case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

// per-attack logic
switch(attack){
	
	case AT_JAB:
		if window == 4 && window_timer == phone_window_end {
			//array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_DATTACK:
		if window == 1 && window_timer == 10 {
			sound_play(asset_get("sfx_ice_on_player"));
			sound_play(sound_get("drg_shine"), 0, noone, .3);
		}
		break;
	case AT_FTILT:
		if window == 1 && window_timer == 6 {
			sound_play(asset_get("sfx_ice_on_player"));
			sound_play(sound_get("drg_shine"), 0, noone, .3);
		}
		break;
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end && !hitpause{
			array_push(phone_dust_query, [x+86*spr_dir, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x+86*spr_dir, y, "dash_start", -spr_dir]);
			sound_play(asset_get("sfx_pillar_crumble"));
			sound_play(sound_get("swing1"));
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end && !hitpause{
			array_push(phone_dust_query, [x+76*spr_dir, y, "dash", -spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if (window == 3 && window_timer == 1 && !hitpause) sound_play(sound_get("swing2"));
		if window == 2 && window_timer == phone_window_end{
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == 1 && !hitpause {
			sound_play(asset_get("sfx_ice_on_player"));
			sound_play(sound_get("drg_shine"), 0, noone, .4);
		}
		if window == 2 && window_timer == 3 && !hitpause {
			array_push(phone_dust_query, [x+30*spr_dir, y, "dash_start", -spr_dir]);
		}
		break;
	
	case AT_NAIR:
		if window == 1 && !hitpause && window_timer == phone_window_end sound_play(asset_get("sfx_spin"));
		if (window == 2 && !hitpause) {
			switch(window_timer) {
				case 3:
				case 6:
					sound_play(sound_get("lunge1"));
					break;
				case 9:
					sound_play(sound_get("lunge2"));
					break;
			}
		}
		break;
	case AT_BAIR:
		if window == 2 && window_timer == 3 && !hitpause {
			sound_play(asset_get("sfx_ice_on_player"));
			sound_play(sound_get("drg_shine"), 0, noone, .4);
		}
		break;
	case AT_DAIR:
		if window == 1 && !hitpause && window_timer == phone_window_end {
			sound_play(sound_get("drg_shine"));
		}
		if window == 2 && !hitpause && window_timer == phone_window_end {
			sound_play(sound_get("lunge1"));
		}
		if window == 3 fall_through = true; else fall_through = false;
		break;
	case AT_DSTRONG:
		if (window == 2 && !hitpause) {
			switch(window_timer) {
				case 5:
				case 8:
				case 11:
					array_push(phone_dust_query, [x-44*spr_dir, y, "dash", spr_dir]);
					array_push(phone_dust_query, [x+78*spr_dir, y, "dash", -spr_dir]);
					sound_play(sound_get("lunge1"));
					break;
				case 14:
					array_push(phone_dust_query, [x-44*spr_dir, y, "dash_start", spr_dir]);
					array_push(phone_dust_query, [x+78*spr_dir, y, "dash_start", -spr_dir]);
					sound_play(sound_get("lunge2"));
					break;
			}
		}
		break;
	
	case AT_NSPECIAL:
		can_fast_fall = false;
		can_move = false;
		can_wall_jump = true;
		has_nspecial = false;
		if !free && window == 1  {
			draw_y = 12;
		}
		else {
			draw_y = 0;
		}
		if (state_timer % 7 == 4) instance_create(x, y, "obj_article1");
		if (window == 1 && window_timer == 3 && !hitpause) {
			sound_play(sound_get("flip"));
		}
		break;
	
	
	case AT_FSPECIAL:
	// wait, it's all sandbert?
	// always has been
		can_move = false;
		can_fast_fall = false;
		switch(window){
			case 1:
				if window_timer == 1 sound_play(sound_get("cast_fast"));
				if window_timer == 6 sound_play(asset_get("sfx_spin_longer"));
			case 2:
				hsp *= 0.9;
				vsp *= 0.4;
				if window_timer == phone_window_end && window == 2{
					hsp = 42 * spr_dir;
				}
				break;
			case 3:
				if state_timer % 2 == 1 && !hitpause instance_create(x, y, "obj_article1");
				vsp = 0;
				can_wall_jump = true;
				break;
			case 4:
				hsp *= 0.5;
				vsp *= 0.7;
				can_wall_jump = true;
				break;
		}
		break;
	
	
	
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		if (window != 1 && state_timer % 6 == 1 && !hitpause) instance_create(x, y, "obj_article1");
		switch(window){
			case 1: // startup
				hsp *= .7;
				vsp *= .7;
				if window_timer == phone_window_end && !hitpause {
					sound_play(sound_get("drg_jump"), 0, noone, .8);
					vsp = -12;
				}
				break;
			case 2:
				if window_timer == phone_window_end - 3 && !hitpause {
					sound_play(asset_get("sfx_spin"));
				}
				break;
			case 3:
				can_move = true;
				if window_timer == phone_window_end && special_down {
					window = 4;
					window_timer = 0;
					hsp = 9*spr_dir;
					vsp = 10;
					sound_play(sound_get("drg_shine"));
					sound_play(sound_get("lunge1"));
				}
				break;
			case 4:
				//can_move = true;
				if window_timer == phone_window_end {
					window = 5;
					window_timer = 0;
				}
				if !free set_state(PS_PRATLAND);
				break;
			case 5:
				if !aerial_hit && window_timer == phone_window_end {
					set_state(PS_PRATFALL);
				}
				if !free set_state(PS_PRATLAND);
				break;
		}
		break;
	
	case AT_DSPECIAL:
	case AT_DSPECIAL_2:
		can_fast_fall = false;
		can_move = false;
		if (window > 1) {
			hsp = 0;
		}
		switch (window) {
			case 1:
				vsp /= 1.3;
				break;
			case 4:
				if attack == AT_DSPECIAL_2 && window_timer == 1 for (var i = 1; i < 36; i++) {
					if place_meeting(x, y + (58*i) + 116, asset_get("par_block")) || (y + (58*i) + 116 >= get_stage_data(SD_BOTTOM_BLASTZONE)/3 + get_stage_data(SD_Y_POS)) {
						last_ring = i;
						break;
					}
				}
				if (window_timer % 2 == 1 && !hitpause) {
					instance_create(x, y, "obj_article1");
					if window_timer <= last_ring && window_timer > last_ring - 6 && attack == AT_DSPECIAL_2 {
						var fx = spawn_hit_fx(x, y, ring_fx);
						fx.depth = -10;
					}
				}
				super_armor = true;
				with (oPlayer) {
    				if (dive_grabbed_id == other && !hitpause) {
    			    	hitpause = true;
    			    	hitstop = 2;
    			    	hitstop_full = 2;
    			    	x = other.dive_grabbed_x;
    			    	y = other.y + 2*get_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED);
    				}
				}
				fall_through = true;
				if (!hitpause && dived_someone && !created_plat && y >= get_stage_data(SD_BOTTOM_BLASTZONE)/3 + get_stage_data(SD_Y_POS)) {
					created_plat = true;
					instance_create(x, y, "obj_article_platform");
				}
				if (created_plat) fall_through = false;
				if (!free) {
					window = 5;
					window_timer = 0;
					if (!made_boom) {
						made_boom = true;
						shake_camera(8, 24);
						sound_play(sound_get("crusty_dive"));
						sound_play(asset_get("sfx_blow_heavy1"));
						if attack == AT_DSPECIAL_2 {
							sound_play(sound_get("stardiver2"));
							var fx2 = spawn_hit_fx(x, y, boom_fx_2);
							fx2.depth = -11;
						} else {
							var fx2 = spawn_hit_fx(x, y, boom_fx);
							fx2.depth = -11;
						}
					}
					with oPlayer if dive_grabbed_id == other {
						x = other.x;
						y = other.y;
					}
					with (pHitBox) if (player_id == other && (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) && hbox_num == 6) {
						instance_destroy(self);
					}
				}
				break;
			case 5:
				super_armor = false;
				if (!made_boom) {
					made_boom = true;
					shake_camera(8, 24);
					sound_play(sound_get("crusty_dive"));
					sound_play(asset_get("sfx_blow_heavy1"));
					if attack == AT_DSPECIAL_2 {
						sound_play(sound_get("stardiver2"));
						var fx2 = spawn_hit_fx(x, y, boom_fx_2);
						fx2.depth = -11;
					} else {
						var fx2 = spawn_hit_fx(x, y, boom_fx);
						fx2.depth = -11;
					}
				}
				break;
		}
		break;
	
	case AT_TAUNT:
		if window == 2 && !taunt_down && state_timer > 24 {
			window = 3;
			window_timer = 0;
		}
		break;
}

switch (attack) {
	case AT_NAIR:
	case AT_FAIR:
	case AT_BAIR:
	case AT_UAIR:
	case AT_DAIR:
	case AT_USPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_DSPECIAL_2:
		if (aerial_hit && (is_special_pressed(DIR_NONE) || is_special_pressed(DIR_FORWARD))) {
			move_cooldown[AT_NSPECIAL] = 0;
			set_attack(AT_NSPECIAL);
			window_timer = 2;
		} else if (aerial_hit && is_special_pressed(DIR_BACK)) {
			spr_dir *= -1;
			move_cooldown[AT_NSPECIAL] = 0;
			set_attack(AT_NSPECIAL);
			window_timer = 2;
		}
}

if phone_cheats[CHEAT_CANCEL] {
	if attack == AT_NSPECIAL && (state = PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
		can_attack = true;
		can_special = true;
	}
	if (aerial_hit && (is_special_pressed(DIR_NONE) || is_special_pressed(DIR_FORWARD))) {
		move_cooldown[AT_NSPECIAL] = 0;
		set_attack(AT_NSPECIAL);
		window_timer = 2;
		clear_button_buffer(PC_SPECIAL_PRESSED);
	} else if (aerial_hit && is_special_pressed(DIR_BACK)) {
		spr_dir *= -1;
		move_cooldown[AT_NSPECIAL] = 0;
		set_attack(AT_NSPECIAL);
		window_timer = 2;
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
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


