// attack_update
var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
var window_last = get_attack_value(attack, AG_NUM_WINDOWS);

//temp fill in
var rune = true;

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}

//voices
if voice switch(attack){
	case AT_JAB:
	voice_window(1, VC_ATK_SMALL);
	voice_window(4, VC_ATK_SMALL);
	voice_window(7, VC_ATK_BIG);
	break;
	case AT_UTILT:
	case AT_DTILT:
	case AT_FTILT:
	voice_window(1, VC_ATK_SMALL);
	break;
	case AT_DATTACK:
	voice_window(1, VC_ATK_BIG);
	break;
	
	case AT_USPECIAL:
	voice_window(3, get_gameplay_time()%2? VC_ATK_SMALL: VC_ATK_BIG);
	case AT_NAIR:
	case AT_BAIR:
	case AT_DAIR:
	case AT_UAIR:
	case AT_FAIR:
	voice_window(1, get_gameplay_time()%2? VC_ATK_SMALL: VC_ATK_BIG);
	break;
	
	case AT_USTRONG:
	case AT_DSTRONG:
	case AT_FSTRONG:
	voice_window(2, VC_ATK_BIG);
	break;
	
	case AT_FSPECIAL:
	voice_window(1, VC_FSPECIAL);
	break;
}

switch attack{
	
	case 2:
	if !hitpause switch(window){
		case 1:
		switch(window_timer){
			case 1:
			voice_play(VC_INTRO);
			break;
			case 5:
			sound_play(asset_get("sfx_oly_uspecial_twirl"), false, false, .7, 1.1);
			break;
			case 10:
			sound_play(asset_get("sfx_ori_stomp_spin"), false, false, .7, 1);
			break;
		}
		break;
		case 2:
		switch(window_timer){
			case 2:
			sound_play(asset_get("sfx_bird_downspecial_end"), false, false, .6, 1);
			break;
		}
		break;
		case 5:
		switch(window_timer){
			case 1:
			sound_play(asset_get("sfx_blow_weak2"), 0, noone, .4, 1);
			break;
		}
		break;
	}
	if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
	break;
	
	case AT_DTILT:
	cancel_action(jump_pressed);
	break;
	
	case AT_UTILT:
	if window == 3 cancel_action(jump_pressed);
	break;
	
	// case AT_BAIR:
	// if window == 1 && window_timer == window_end sound_play(sound_get("sfx_grapple_fire"))
	// break;
	
	case AT_DATTACK:
	if (window == 2 && !hitstop && window_timer%4 == 1 && window_timer < window_end-2) || (window == 1 && window_timer == window_end - 1)  sound_play(sound_get("sfx_knifeswing_weak1"), 0, noone, .9, .8);
	break;
	
	case AT_NAIR:
	if (window == 2 && !hitstop && window_timer%4 == 1 && window_timer < window_end-2) || (window == 1 && window_timer == window_end - 1)  sound_play(sound_get("sfx_knifeswing_weak1"), 0, noone, .9);
	case AT_UAIR:
	case AT_USTRONG:
	if window == clamp(window, 2, 2 + 1*(attack == AT_USTRONG)) offset_hud(60);
	break;
	
	case AT_DSTRONG:
	if window == 4 && window_timer == 14 + 6*!has_hit{
		spawn_base_dust(x, y, "land");
		sound_play(land_sound);
	}
	break;
	
	case AT_USPECIAL:
	switch window{
		case 1:
		can_fast_fall = 0;
		usp_dir = (joy_pad_idle? 90: joy_dir);
		
		if window_timer >= 8{
			hsp = 0;
			if window_timer == 8 vsp = -7;
		}
		if window_timer == 20{
			sound_play(asset_get("sfx_forsburn_combust"));
			vfx_explosion = [x, y - 20, 0];
		}
		break;
		
		case 2:
		can_move = 0;
		can_fast_fall = 0;
		if window_timer == 4 hud_offset = 999999999999999;
		break;
		
		case 3:
		hud_offset = 999999999999999;
		can_move = 0;
		can_fast_fall = 0;
		hsp = (window_timer == window_end? 2*(right_down - left_down): dcos(usp_dir) * 12);
		vsp = (window_timer == window_end? -8: dsin(usp_dir) * -12);
		if window_timer == window_end vfx_explosion = [x, y - 20, 0];
		break;
		
		case 4:
		hud_offset = 0;
		break;
	}
	break;
	
	case AT_DSPECIAL:
	can_move = 0;
	can_fast_fall = 0;
	vsp *= .9;
	hsp *= .97;
	move_cooldown[AT_DSPECIAL] = 20;
	var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6));
	switch window{
		case 1:
		if window_timer == window_end {
			array_push(lwfx_buffer, {xpos:x, ypos:y - 40, sprite:sprite_get("flash"), frame:0, alpha:1, decay:0, layer:-1, blend:col, fog:0, shade:0, frame_adv:.25, angle: 0, dir:spr_dir});
			outline_color = [255, 255, 255];
		}
		break;
		case 2:
		var colbox = collision_rectangle(x - 20, y, x + 20, y - 70, pHitBox, 1, 1);
		if instance_exists(colbox) && colbox.player_id != self && colbox.hit_priority != 0 {
			vsp = 0;
			counter_pos = [colbox.player_id.x - 60*colbox.player_id.spr_dir, x];
			spr_dir = sign((counter_pos[0]-x)*2 + 1);
			window = 4;
			window_timer = 0;
			sound_play(sound_get("dspecial_dodge"));
			voice_play(VC_DODGE);
			revenge_active = true;
			revenge_threshhold = 25;
			outline_color = [0, 0, 0];
		}
		break;
		case 3:
		var colr = lerp(255, 0, window_timer/window_end*2);
		outline_color = [colr, colr, colr];
		break;
		case 4:
		if window_timer%2 array_push(lwfx_buffer, {xpos:x, ypos:y, sprite:sprite_index, frame:image_index, alpha:1.5, decay:.1, layer:1, blend:col, fog:1, shade:0, frame_adv:0, angle: 0, dir:spr_dir});
		room_speed = 20;
		reset_game_time = 1;
		var p = counter_pos;
		x = ease_linear(p[1], p[0], window_timer, window_end);
		break;
		case 5:
		if reset_game_time{
			room_speed = 60;
			reset_game_time = 0;
		}
		if window_timer == window_end spr_dir *= -1;
		break;
	}
	break;
	
	case AT_NSPECIAL:
	switch window{
		case 1:
		if window_timer >= 7 && (!special_down || shield_pressed || attack_pressed) {
			knife_bunt = shield_pressed || attack_pressed;
			window_goto(3);
			voice_play(get_gameplay_time()%2? VC_ATK_SMALL: VC_ATK_BIG);
		}
		break;
		case 2:
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);//8
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 88);//50
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);//7
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);//.6
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);//6
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);//.5
		set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .5);
		if window_timer = window_end voice_play(get_gameplay_time()%2? VC_ATK_SMALL: VC_ATK_BIG);
		break;
		case 4:
		move_cooldown[AT_NSPECIAL] = 40;
		break;
	}
	break;
	
	case AT_FSPECIAL:
	move_cooldown[attack] = 20;
	if(has_pulled == 1) move_cooldown[attack] = 40;
	can_move = 0;
	can_fast_fall = 0;
	switch window{
		case 1:
		grab_angle = (joy_pad_idle? 0: darcsin(clamp(dsin(joy_dir), -dsin(grapple_limit), dsin(grapple_limit))));
		if window_timer == window_end - 6 {
			sound_play(sound_get("sfx_grapple_fire"));
			sound_play(sound_get("sfx_grapple_shoot"));
		}
		break;
		case 2:
		grapple_length = ease_cubeOut(40, grapple_length_max, window_timer - 1, 10);
		if !hitpause{
			if instance_exists(grappled){
				voice_play(VC_FSPECIAL);
				sound_play(sound_get("sfx_grapple_recoil"));
				sound_play(sound_get("sfx_grapple_reel"));
				window = 3 + 2*free;
				window_timer = (12 - window_timer)*!free;
				grappled.state = PS_FLASHED;
				grappled.hsp = 0;
				grappled.vsp = 0;
				grappled.x = x -6 + lengthdir_x(30 + grapple_length, grab_angle)*spr_dir;
				grappled.y = y -32 + lengthdir_y(20 + grapple_length, grab_angle) + grappled.char_height/2;
				grapple_pos = [x + (-6 + lengthdir_x(20 + grapple_length, grab_angle))*spr_dir, y - 32 + lengthdir_y(20 + grapple_length, grab_angle), grappled.x, grappled.y];
			}else if instance_exists(collision_circle(x + (-6 + lengthdir_x(30 + grapple_length, grab_angle))*spr_dir, y - 32 + lengthdir_y(20 + grapple_length, grab_angle), 20, asset_get("par_block"), 1, 1)){
				sound_play(sound_get("sfx_grapple_recoil"));
				sound_play(sound_get("sfx_grapple_reel"));
				window = 5;
				window_timer = 0;
				sound_play(asset_get("sfx_blow_weak1"), 0, noone, 1, 1.4);
				grapple_pos = [x + (-6 + lengthdir_x(20 + grapple_length, grab_angle))*spr_dir, y - 32 + lengthdir_y(20 + grapple_length, grab_angle), 0, 0];
			}else{
				attack_end();
				set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -6 + lengthdir_x(30 + grapple_length, grab_angle));
				set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32 + lengthdir_y(20 + grapple_length, grab_angle));
				create_hitbox(attack, 1, x, y);
				if window_timer == window_end sound_play(sound_get("sfx_grapple_reel"));
			}
		}
		
		if !instance_exists(grappled) && instance_exists(collision_circle(x + (-6 + lengthdir_x(30 + grapple_length, grab_angle))*spr_dir, y - 32 + lengthdir_y(20 + grapple_length, grab_angle), 20, asset_get("par_block"), 1, 1)){
			sound_play(sound_get("sfx_grapple_recoil"));
			sound_play(sound_get("sfx_grapple_reel"));
			window = 5;
			window_timer = 0;
			sound_play(asset_get("sfx_blow_weak1"), 0, noone, 1, 1.4);
			grapple_pos = [x + (-6 + lengthdir_x(20 + grapple_length, grab_angle))*spr_dir, y - 32 + lengthdir_y(20 + grapple_length, grab_angle), 0, 0];
		}
		if window == 5{
			draw_y = -24;
			dash_angle = point_direction(x, y, grapple_pos[0], grapple_pos[1]) + 180*(spr_dir==-1);
			spr_angle = dash_angle;
		}
		break;
		case 3:
		grapple_length = ease_cubeIn(grapple_length_max, 40, window_timer - 1, 10);
		if instance_exists(grappled){
			grappled.state = PS_FLASHED;
			grappled.hsp = 0;
			grappled.vsp = 0;
			grappled.x = x -6 + lengthdir_x(30 + grapple_length, grab_angle)*spr_dir;
			grappled.y = y -32 + lengthdir_y(20 + grapple_length, grab_angle) + grappled.char_height/2;
			if window_timer == window_end{
				grappled = noone;
				create_hitbox(attack, 2, x, y);
			}
		}
		break;
		case 4:
		if has_hit && !was_parried && !hitpause && has_pulled {
			iasa_script();
			if(!has_rune("B")) strong_cooldown = max(0, 20 - window_timer);
		} else if !has_hit && !was_parried can_move = true;
		break;
		case 5:
		draw_y = -24;
		spr_angle = dash_angle;
		if !hitstop{
			x = lerp(x, grapple_pos[0], .2);
			y = lerp(y, grapple_pos[1] + 24, .2);
		}
		if instance_exists(grappled){
			grappled.state = PS_FLASHED;
			grappled.hsp = 0;
			grappled.vsp = 0;
			grappled.x = grapple_pos[2];
			grappled.y = grapple_pos[3];
		}
		if point_distance(x, y, grapple_pos[0], grapple_pos[1] + 24) <= 20 || window_timer == window_end - 1{
			if instance_exists(grappled){
				grappled = noone;
				x = floor(x);
				y = floor(y);
				create_hitbox(attack, 2, x, y);
			}
			if !hitstop && !was_parried && (point_distance(x, y, grapple_pos[0], grapple_pos[1] + 24) <= 10 || window_timer == window_end) {
				set_state(PS_DOUBLE_JUMP);
				vsp = -9;
				old_vsp = -9;
				if(has_pulled == -1 && !position_meeting(x, y + 20, asset_get("par_block")) && !has_rune("H")){
					djump_stored = true;
					max_djumps = 0;
				}
			}
		}
		break;
	}
	break;
	
	case AT_TAUNT:
	if window_timer == 8 sound_play(asset_get("sfx_ori_stomp_spin"), 0, noone, 1, 1.2);
	if window_timer == 28{
		sound_play(asset_get("sfx_blow_weak2"), 0, noone, .7, 3);
		if !anti_cheapie_mode with oPlayer if self != other switch url{
			case "2273636433":
			case "1870768156":
			case "1869351026":
			case "2443363942":
			case "2159023588":
			case "1980469422":
			break;
			default:
			if (
				check_string_for_name(player, "nald") || 
				check_string_for_name(player, "%") || 
				check_string_for_name(player, "sand") || 
				check_string_for_name(player, "psy") || 
				check_string_for_name(player, "ultra") || 
				check_string_for_name(player, "god") || 
				check_string_for_name(player, "boss") || 
				check_string_for_name(player, "ui ") || 
				check_string_for_name(player, "ssg") || 
				check_string_for_name(player, "melee") || 
				check_string_for_name(player, "accurate")
			){
				with other{
					sound_play(sound_get("ARC_BTL_CMN_Charge_Start"));
					sound_play(sound_get("ARC_BTL_CMN_Hit_XLarge"));
					anti_cheapie_mode = true;
				}
			}
			break;
		}
	}
	break;
	
	case AT_TAUNT_2:
	if window == clamp(window, 2, 6){
		offset_hud(90);
		text_timer++;
	}
	break;
}



#define cancel_action(cancel_condition)
if !hitpause && has_hit && !was_parried && cancel_condition{
	destroy_hitboxes();
	iasa_script();
}

#define offset_hud
/// offset_hud(val, scale = .2;)
var val = argument[0];
var scale = argument_count > 1 ? argument[1] : .2;;
hud_offset = ceil(lerp(hud_offset, val, scale));

#define window_goto(window_idx)
window = window_idx;
window_timer = 0;

#define check_string_for_name(player, string)

return string_count(string, string_lower(get_char_info(player, INFO_STR_NAME)))

#define spawn_base_dust // supersonic
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


#define voice_play
/// voice_play(idx, force_voice = -1, flash = 0;)
var idx = argument[0];
var force_voice = argument_count > 1 ? argument[1] : -1;
var flash = argument_count > 2 ? argument[2] : 0;;

if !voice return;

var selected = (force_voice >= 0? force_voice: min(random_func(idx, vcs[idx][0] + vcs[idx][1], true), vcs[idx][0] - 1 + vcs[idx][1]));
if selected >= vcs[idx][0] return;
selected = (idx/10 >= 1? "": "0") + string(idx) + string(selected);

if selected != noone{
	sound_stop(voice_playing_sound);
	voice_playing_sound = sound_play(sound_get("vc_" + selected), false, noone, 1.2);
}

#define voice_window
/// voice_window(wdw, idx, force_voice = -1;)
var wdw = argument[0], idx = argument[1];
var force_voice = argument_count > 2 ? argument[2] : -1;;

var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));

if window == wdw && window_timer == window_end - 2 voice_play(idx, force_voice);