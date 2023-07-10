// attack_update

var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}

switch attack{
	case AT_JAB:
	if !hitpause switch window{
		case 1:
		if (body_angles[@0] + 30)%60 != 0 body_angles[@0] = (body_angles[0] + ((body_angles[@0] + 30)%60)/3)%360;
		if window_timer = window_end get_jab_legs();
		break;
		case 2:
		case 5:
		attack_end();
		col_displace = round(lerp(col_displace, 12, .2));
		rot_angle = lerp(rot_angle, 10*spr_dir, 0.2);
		break;
		case 3:
		case 6:
		col_displace = round(lerp(col_displace, 5, .2));
		rot_angle = lerp(rot_angle, -10*spr_dir, 0.2);
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, (used_legs[window == 6].x - x)*spr_dir - 20);
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, used_legs[window == 6].y - y);
		if window_timer >= 5 && window_timer <= 10 create_hitbox(attack, 2, x, y);
		if window_timer == 5 && (position_meeting(used_legs[window == 6].x, used_legs[window == 6].y + 4, asset_get("par_block")) || position_meeting(used_legs[window == 6].x, used_legs[window == 6].y + 4, asset_get("par_jumpthrough"))){
			sound_play(asset_get("sfx_shovel_hit_light1"), 0, noone, .8, 1.1);
			spawn_hit_fx(floor(used_legs[window == 6].x), floor(used_legs[window == 6].y + 6), claw_slam_vfx)
		}
		break;
		case 4:
		case 7:
		col_displace = round(lerp(col_displace, 4, .2));
		rot_angle = lerp(rot_angle, 0, 0.2);
		break;
		case 8:
		col_displace = round(lerp(col_displace, 4, .2));
		rot_angle = lerp(rot_angle, -20*spr_dir, 0.2);
		if window_timer = window_end spawn_base_dust(x - 50*spr_dir, y, "dash_start", spr_dir);
		break;
		case 9:
		col_displace = round(lerp(col_displace, 4, .2));
		rot_angle = lerp(rot_angle, 20*spr_dir, 0.2);
		break;
		case 10:
		col_displace = round(lerp(col_displace, 4, .2));
		rot_angle = lerp(rot_angle, 0, 0.2);
	}
	break;
	
	case AT_DATTACK:
	if !hitpause switch window{
		case 1:
		offset_hud(100);
		col_displace = round(lerp(col_displace, 28, .2));
		rot_angle = lerp(rot_angle, 20*spr_dir, 0.1);
		if window_timer = 1 spawn_base_dust(x - 50*spr_dir, y, "dash_start", spr_dir);
		break;
		case 2:
		col_displace = round(lerp(col_displace, -4, .4));
		rot_angle = lerp(rot_angle, 0, .4);
		if window_timer == 5 && !hitpause{
			sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .95);
			sound_play(asset_get("sfx_kragg_spike"), 0, noone, 1, 1);
			spawn_base_dust(x + 70*spr_dir, y, "dash_start", -spr_dir)
			spawn_base_dust(x - 70*spr_dir, y, "dash_start", spr_dir);
		}
		break;
		case 3:
		col_displace = round(lerp(col_displace, 6, .2));
		rot_angle = lerp(rot_angle, 0, 0.2);
		break;
	}
	break;
	
	case AT_FTILT:
	if window == 1 && !hitpause rot_angle = lerp(rot_angle, -15*spr_dir, .4);
	if window == 2 && !hitpause rot_angle = lerp(rot_angle, 20*spr_dir, .4);
	if window == 3 && !hitpause rot_angle = lerp(rot_angle, 0, .2);
	if window == 2{
		set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir - 20);
		set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, (used_legs[0].y - y));
		if !hitpause && window_timer > 2 create_hitbox(AT_FTILT, 1, x, y);
	}
	break;
	
	case AT_UTILT:
	switch window{
		case 1:
		grabp = noone;
		if !hitpause col_displace = round(lerp(col_displace, 0, .2));
		if !hitpause rot_angle = lerp(rot_angle, -15*spr_dir, .4);
		break;
		case 2:
		if !hitpause rot_angle = lerp(rot_angle, 20*spr_dir, .4);
		if !hitpause col_displace = round(lerp(col_displace, 6*(window_timer > 8), .3));
		if !hitpause && instance_exists(grabp) && window_timer <= window_end - 4{
			set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir);
			set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, used_legs[0].y - y);
			grabp.state = PS_FLASHED;
			grabp.hsp = 0;
			grabp.vsp = 0;
			grabp.x = used_legs[0].x;
			grabp.y = used_legs[0].y + grabp.char_height/2;
			grabp.spr_angle = used_legs[0].foot_angle;
			if window_timer == window_end - 4 create_hitbox(attack, 2, x, y);
		}else if !hitpause && window_timer <= 6{
			set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir);
			set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, used_legs[0].y - y);
			create_hitbox(attack, 1, x, y);
		}
		break;
		case 3:
		if !hitpause rot_angle = lerp(rot_angle, 0, .4);
		if !hitpause col_displace = round(lerp(col_displace, 6, .3));
		grabp = noone;
		break;
	}
	break;
	
	case AT_DTILT:
	if !hitpause switch window{
		case 1:
		col_displace = round(lerp(col_displace, 0, .2));
		rot_angle = lerp(rot_angle, -10*spr_dir, .4);
		body_angles[@0] = (body_angles[0] + 10*(window_timer <= 8))%360;
		break;
		case 2:
		col_displace = round(lerp(col_displace, 10, .2));
		rot_angle = lerp(rot_angle, 10*spr_dir, .4);
		body_angles[@0] = (body_angles[0] - 10*(window_timer <= 16))%360;
		set_hitbox_value(attack, 1, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir - 100);
		set_hitbox_value(attack, 1, HG_HITBOX_Y, used_legs[0].y - y);
		if window_timer == clamp(window_timer, 7, 11) create_hitbox(attack, 1, x, y);
		break;
		case 3:
		rot_angle = lerp(rot_angle, 0, .4);
		col_displace = round(lerp(col_displace, 6, .2));
		break;
	}
	break;
	
	case AT_FSTRONG:
	switch window{
		case 1:
		if !hitpause rot_angle = lerp(rot_angle, 5*spr_dir, .2);
		break;
		case 2:
		if !hitpause rot_angle = lerp(rot_angle, -15*spr_dir, .2);
		break;
		case 3:
		if !hitpause rot_angle = lerp(rot_angle, -15*spr_dir*(window_timer < 18), .2);
		if instance_exists(grabp){
			grabp.state = PS_FLASHED;
			grabp.hsp = 0;
			grabp.vsp = 0;
			grabp.x = used_legs[0].x;
			grabp.y = used_legs[0].y + grabp.char_height/2;
			window = 4;
			window_timer = 0;
			laser_timer = 369;
			target_pl = grabp;
			fire_pos = [x + 24*dcos(body_angles[2])*dcos(rot_angle)+ -85*dsin(rot_angle), y + -85*dsin(rot_angle + 90) + 24*dcos(body_angles[2])*dcos(rot_angle + 90) -col_displace*2];
		}else if !hitpause{
			if window_timer == 6 && (position_meeting(used_legs[0].x, used_legs[0].y + 4, asset_get("par_block")) || position_meeting(used_legs[0].x, used_legs[0].y + 4, asset_get("par_jumpthrough"))){
				sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .9);
				spawn_hit_fx(floor(used_legs[0].x), floor(used_legs[0].y + 6), claw_slam_vfx)
			}
			set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir);
			set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, used_legs[0].y - y - 10);
			if window_timer <= 8 create_hitbox(attack, 1, x, y);
		}
		break;
		case 4:
		if !hitpause rot_angle = lerp(rot_angle, -15*spr_dir, .2);
		if instance_exists(target_pl){
			target_pl.state = PS_FLASHED;
			target_pl.hsp = 0;
			target_pl.vsp = 0;
			target_pl.x = used_legs[0].x;
			target_pl.y = used_legs[0].y;
		}
		break;
	}
	break;
	
	case AT_USTRONG:
	if !hitpause col_displace = floor(lerp(col_displace, 0, 0.1));
	if !hitpause && !was_parried && (window == 4 && window_timer >= 8) && (attack_pressed || down_strong_pressed){
		set_attack(AT_DSTRONG);
		window = 4;
		window_timer = 0;
		sound_play(asset_get("sfx_shovel_swing_med1"));
	}
	break;
	
	case AT_DSTRONG:
	if !hitpause col_displace = floor(lerp(col_displace, 12*(window == 4), 0.1));
	if window == 4 && !hitpause && window_timer == 4{
		sound_play(asset_get("sfx_shovel_hit_med2"), 0, noone, .8, .95);
		sound_play(asset_get("sfx_kragg_spike"), 0, noone, .8, .8);
		spawn_base_dust(x + 60*spr_dir, y, "dash_start", -spr_dir)
		spawn_base_dust(x - 60*spr_dir, y, "dash_start", spr_dir);
	}
	break;
	
	case AT_NAIR:
	if !hitpause{
		if window == 1 && window_timer <= 6 body_angles[@0] = (body_angles[0]-10)%360;
		if window == 2 && !hitpause{
			body_angles[@0] = (body_angles[0]+20)%360;
			if window_timer == 1 sound_play(asset_get("sfx_spin"), 0, noone, 1, .8);
			if window_timer = clamp(window_timer, 5, 16){
				attack_end();
				create_hitbox(attack, (window_timer >= 16? 2: 1), x, y)
			}
		}
	}
	break;
	
	case AT_BAIR:
	if !hitpause switch window{
		case 1:
		rot_angle = lerp(rot_angle, 30*spr_dir, .2);
		break;
		case 2:
		rot_angle = lerp(rot_angle, -30*spr_dir, .2);
		set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir + 30);
		set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, used_legs[0].y - y);
		create_hitbox(attack, 1, x, y);
		break;
		case 3:
		rot_angle = lerp(rot_angle, 0, .2);
		break;
	}
	break;
	
	case AT_DAIR:
	if !hitpause switch window{
		case 1:
		if (body_angles[@0] + 30)%60 != 0 body_angles[@0] = (body_angles[0] + ((body_angles[@0] + 30)%60)/3)%360;
		if window_timer = window_end get_jab_legs();
		break;
		case 2:
		rot_angle = lerp(rot_angle, 15*spr_dir, .2);
		break;
		case 3:
		if window_timer > 2{
			set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir);
			set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, used_legs[0].y - y - 30);
			create_hitbox(attack, 1, x, y);
		}
		rot_angle = lerp(rot_angle, -30*spr_dir, .2);
		break;
		case 4:
		if window_timer > 2{
			set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, (used_legs[1].x - x)*spr_dir);
			set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, used_legs[1].y - y - 30);
			create_hitbox(attack, 2, x, y);
		}
		rot_angle = lerp(rot_angle, -30*spr_dir, .2);
		break;
		case 6:
		if window_timer > 2{
			set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir);
			set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, used_legs[0].y - y - 30);
			create_hitbox(attack, 3, x, y);
			
			set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, (used_legs[1].x - x)*spr_dir);
			set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, used_legs[1].y - y - 30);
			create_hitbox(attack, 3, x, y);
		}
		rot_angle = lerp(rot_angle, -30*spr_dir, .2);
		break;
		case 5:
		rot_angle = lerp(rot_angle, -10*spr_dir, .2);
		break;
		case 7:
		rot_angle = lerp(rot_angle, 0, .4);
		break;
	}
	break;
	
	case AT_UAIR:
	disable_head = 1;
	if !hitpause switch window{
		case 1:
		body_angles[@2] = (body_angles[2]-10)%360;
		if window_timer == 7 sound_play(asset_get("sfx_spin"), 0, noone, 1, 1.1);
		break;
		case 2:
		body_angles[@2] = (body_angles[2]+40)%360;
		attack_end();
		if window_timer == clamp(window_timer, 4, 20) create_hitbox(attack, 2, x, y);
		if window_timer = window_end spawn_base_dust(x, y, "doublejump");
		break
		case 3:
		case 4:
		body_angles[@2] = (body_angles[2]+20)%360;
		break;
	}
	break;
	
	case AT_FAIR:
	switch window{
		case 1:
		if !hitpause rot_angle = lerp(rot_angle, 10*spr_dir, .2);
		break;
		
		case 2:
		if !hitpause{
			rot_angle = lerp(rot_angle, -30*spr_dir, .2);
			set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir - 10);
			set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, used_legs[0].y - y - 10);
			if window_timer > 2 create_hitbox(attack, 1, x, y);
		}
		if instance_exists(fgrabp){
			fgrabp.state = PS_FLASHED;
			fgrabp.hsp = 0;
			fgrabp.vsp = 0;
			fgrabp.x = used_legs[0].x;
			fgrabp.y = used_legs[0].y + fgrabp.char_height/2;
			window = 4;
			window_timer = 0;
		}
		break;
		
		case 3:
		if !hitpause rot_angle = lerp(rot_angle, 0, .2);
		break;
		
		case 4:
		if !hitpause{
			if window_timer == 13 sound_play(asset_get("sfx_swipe_medium1"), 0, noone, 1, .8);
			rot_angle = lerp(rot_angle, 0*spr_dir, .2);
			body_angles[@0] = (body_angles[0]+(window_timer <= 5? 0: 20))%360;
		}
		if instance_exists(fgrabp){
			fgrabp.state = PS_FLASHED;
			fgrabp.hsp = 0;
			fgrabp.vsp = 0;
			fgrabp.x = used_legs[0].x;
			fgrabp.y = used_legs[0].y + fgrabp.char_height/2;
		}
		if !hitpause && window_timer = window_end - 3{
			fgrabp = noone;
			set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, (used_legs[0].x - x)*spr_dir);
			set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, used_legs[0].y - y);
			create_hitbox(attack, 2, x, y);
		}
		break;
		
		case 5:
		if !hitpause rot_angle = lerp(rot_angle, 0, .2);
		break;
	}
	break;
	
	case AT_USPECIAL:
	can_move = 0;
	can_fast_fall = 0;
	switch window{
		case 1:
		if window_timer == 4{
			puddle_pos = [x, y + 16];
			sound_play(sound_get("botw_bullet_time"));
			array_push(lwfx_buffer, {xpos:x, ypos:y - 40, sprite:sprite_get("eye"), frame:0, alpha:1, decay:.1, layer:-1, blend:c_white, fog:0, shade:1, frame_adv:0, angle:0, dir:1, scale:1, scale_increment:.1, vspd:0, hspd:0});
		}
		break;
		case 2:
		room_speed = 20;
		reset_room_speed = 1;
		if window_timer == window_end{
			sound_play(sound_get("botw_cryonis_make"));
			with oPlayer if self != other && x + ceil(sprite_get_bbox_right(mask_index)/2) >= other.puddle_pos[0] - 48 && x - ceil(sprite_get_bbox_right(mask_index)/2) <= other.puddle_pos[0] + 48 && y <= other.puddle_pos[1] && y >= other.puddle_pos[1] - 20 vsp = 0;
		}
		break;
		case 3:
		with oPlayer if self != other && x + ceil(sprite_get_bbox_right(mask_index)/2) >= other.puddle_pos[0] - 48 && x - ceil(sprite_get_bbox_right(mask_index)/2) <= other.puddle_pos[0] + 48 && y <= other.puddle_pos[1] && y >= other.puddle_pos[1] - ease_linear(0, 50, other.window_timer-1, 11) vsp -= 3;
		room_speed = 20;
		reset_room_speed = 1;
		if window_timer >= 3 vsp -= 2;
		if window_timer == window_end{
			room_speed = 60;
			reset_room_speed = 0;
			with oPlayer vsp *= 1.6;
			sound_stop(sound_get("botw_bullet_time"));
		}
		break;
		case 4:
		if window_timer == 5 && !hitpause{
			sound_play(sound_get("botw_cryonis_break"));
			spawn_hit_fx(puddle_pos[0], puddle_pos[1]-40, cryonis_break);
		}
		break;
	}
	break;
	
	case AT_DSPECIAL:
	if !hitpause col_displace = floor(lerp(col_displace, 12, 0.1));
	switch window{
		case 2:
		if window_timer%6 == 0 sound_play(sound_get("guardian_lock1"), 0, noone, 0.8);
		skystrike_timer = 440;
		skystrike = 1;
		skystrike_pos = [x + ease_quadIn(100*spr_dir, 400*spr_dir, window_timer, 80), y, 0];
		skystrike_pos[@2] = 0;
		while !position_meeting(skystrike_pos[0], skystrike_pos[2], asset_get("par_block")) && skystrike_pos[2] < room_height{
			skystrike_pos[@2]+=16;
		}
		if skystrike_pos[2] < room_height skystrike_pos[@1] = skystrike_pos[2];
		if !special_down || window_timer == window_end{
			sound_play(sound_get("guardian_firebeep"));
			window = 3;
			window_timer = 0;
		}
		break;
	}
	break;
	
	case AT_TAUNT:
	switch window{
		case 1:
		offset_hud(100);
		col_displace = round(lerp(col_displace, 20, .2));
		rot_angle = lerp(rot_angle, 20*spr_dir, .1);
		if window_timer = window_end sound_play(sound_get("taunt_sfx"), 0, 0, 1, .3);
		break;
		case 2:
		if state_timer%10 = 0 sound_play(sound_get("taunt_sfx"), 0, 0, 1, .3);
		col_displace = round(lerp(col_displace, 3, .3));
		rot_angle = lerp(rot_angle, -20*spr_dir, .3);
		shake_camera(5, 2);
		break;
		case 3:
		col_displace = round(lerp(col_displace, 6, .2));
		break;
	}
	break;
}



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

#define offset_hud(val)
hud_offset = lerp(hud_offset, val, .2);

#define get_jab_legs()
used_legs = [];
with obj_article1 if player_id == other && state == 4 state = 1;

var farthest = noone;
with obj_article1 if player_id == other{
	if farthest == noone farthest = self;
	else if dcos(other.body_angles[0] + 60*leg_id)*other.spr_dir > dcos(other.body_angles[0] + 60*farthest.leg_id)*other.spr_dir farthest = self;
}
array_push(used_legs, farthest);

var farthest = noone;
with obj_article1 if player_id == other && self != other.used_legs[0]{
	if farthest == noone farthest = self;
	else if dcos(other.body_angles[0] + 60*leg_id)*other.spr_dir > dcos(other.body_angles[0] + 60*farthest.leg_id)*other.spr_dir farthest = self;
}
array_push(used_legs, farthest);
used_legs[0].state = 4;
used_legs[1].state = 4;
