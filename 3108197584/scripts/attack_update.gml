// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}

var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));

switch attack{
	case AT_JAB:
	switch window{
		case 1:
		gun_count = 0;
		break;
		case 2:
		set_hitbox_value(AT_JAB, 1, HG_DAMAGE, (has_rune("C")? 1: (2 + (gun_count=2))*(1 + has_rune("E")*!has_rune("C"))));
		set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60 - 10*(gun_count=2));
		set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4 + 2*(gun_count=2));
		set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .5 + .1*(gun_count=2));
		set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3 + 5*(gun_count=2));
		set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .3 + .4*(gun_count=2));
		set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, gun_count!=2);
		if window_timer == 1{
			sound_play(sound_get("sfx_gunfire"), 0, noone, 1, 1 - .1*(gun_count==2));
			sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .6, .9);
		}
		break;
		case 4:
		if window_timer == 1 spawn_shell(x + 40*spr_dir, y - 50);
		if window_timer > 3 && is_attack_pressed(DIR_NONE) && gun_count < 2{
			set_window(2);
			attack_end();
			gun_count++;
		}else if window_timer > 3 && is_attack_pressed(DIR_ANY) && !is_attack_pressed(DIR_NONE) can_attack = 1;
		break;
		case 5:
		if is_attack_pressed(DIR_NONE) && gun_count < 2{
			set_window(2);
			attack_end();
			gun_count++;
		}else if is_attack_pressed(DIR_ANY) && !is_attack_pressed(DIR_NONE) can_attack = 1;
		break;
		case 6:
		iasa_script();
		if window_timer == 3 sound_play(asset_get("sfx_swipe_weak1"), 0, noone, .7, 1.5);
		if window_timer == 8 sound_play(asset_get("sfx_swipe_weak2"), 0, noone, .7, 1.2);
		if window_timer == 12 sound_play(asset_get("sfx_blow_weak2"), 0, noone, .7, 2);
		break;
	}
	break;
	
	case AT_DATTACK:
	if window == 1 && window_timer == 7{
		sound_play(asset_get("sfx_springgo"), 0, noone, 1, 1.1);
		sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, 1, 1);
	}
	if window = 2 && window_end set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12 + 4*!has_hit);
	break;
	
	case AT_DTILT:
	if window == 3 && window_timer == window_end && !was_parried set_state(PS_IDLE);
	break;
	
	case AT_UTILT:
	if window >= 2 offset_hud(150);
	if window == 3 && window_timer == 10 play_sniper_sound();
	if window == 5 && window_timer = 1 spawn_shell(x - 2*spr_dir, y - 52, AT_FSPECIAL);
	break;
	
	case AT_FSTRONG:
	if window == 4{
		var input_cond = (((spr_dir? (right_stick_pressed || right_stick_down): (left_stick_pressed || left_stick_down)) || joy_pad_idle) && (strong_buffer || strong_down)) || (spr_dir? right_strong_pressed || right_strong_down: left_strong_pressed || left_strong_down);
		if input_cond double_fire = 1;
		if window_timer >= window_end - 4 && double_fire{
			window++;
			window_timer = 0;
			hsp = -2*spr_dir;
		}
	}
	if window == 8{
		if !double_fire && has_hit && !was_parried iasa_script();
		if window_timer == floor(window_end*2/24) sound_play(sound_get("sfx_shotload2"));
		if window_timer == floor(window_end*14/24) sound_play(sound_get("sfx_shotload3"));
		if window_timer == floor(window_end*18/24){
			var i = 0;
			repeat(1+double_fire){
				spawn_shell(x + 10*spr_dir, y - 37, attack, i);
				i++;
			}
		}
	}
	break;
	
	case AT_DSTRONG:
	if window == 7 && window_timer == window_end{
		set_attack(AT_FSTRONG);
		window = 8;
		double_fire = 1;
	}
	break;
	
	case AT_USTRONG:
	if window == clamp(window, 2, 7) offset_hud(600, .1);
	if window == 8 && window_timer == window_end{
		set_attack(AT_FSTRONG);
		window = 8;
		double_fire = 1;
	}
	break;
	
	case AT_NAIR:
	offset_hud(50);
	if !hitpause && window == clamp(window, 2, 7) with oPlayer if self != other && array_find_index(other.pseudo_grab, self)+1{
		x = lerp(x, other.x + 40*other.spr_dir, .01);
		y = lerp(y, other.y - char_height/3, .01);
	}
	break;
	
	case AT_FAIR:
	offset_hud(50);
	if !hitpause && window == 2 with oPlayer if self != other && array_find_index(other.pseudo_grab, self)+1{
		x = lerp(x, other.x + 80*other.spr_dir, .1);
		y = lerp(y, other.y - char_height/3, .05);
	}
	if !hitpause && window == 2 && window_timer < 23{
		if (window_timer-1)%4 == 3 sound_play(sound_get("sfx_gunload"), 0, noone, .5);
		if (window_timer-1)%4 == 1 sound_play(sound_get("sfx_gunfire"), 0, noone, .4, 1);
		if window_timer == 2 spawn_shell( x + 40*spr_dir, y - 80);
		if window_timer == 6 spawn_shell( x + 48*spr_dir, y - 72);
		if window_timer == 10 spawn_shell( x + 56*spr_dir, y - 60);
		if window_timer == 14 spawn_shell( x + 64*spr_dir, y - 46);
		if window_timer == 18 spawn_shell( x + 62*spr_dir, y - 24);
		if window_timer == 22 spawn_shell( x + 56*spr_dir, y - 2);
	}
	break;
	
	case AT_BAIR:
	offset_hud(50);
	break;
	
	case AT_UAIR:
	offset_hud(120 + 300*(window == 3 || window == 4 || window == 5));
	if !hitpause && window == 3 && window_timer == 2{
		spawn_shell(x - 10*spr_dir, y - 70);
		sound_play(sound_get("sfx_shotfire1"));
		uair_shot = spawn_hit_fx(x + hsp, y + vsp, uair_fx);
		uair_shot.depth = depth-1;
		uair_shot.follow_id = self;
		uair_shot.follow_time = 10;
	}
	break;
	
	case AT_DAIR:
	if window < 9 offset_hud(140);
	can_move = 0;
	can_fast_fall = 0;
	switch window{
		case 1:
		if window_timer = window_end - 1{
			sound_play(asset_get("sfx_springgo"), 0, noone, 1, 1.1);
			sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, 1, 1);
		}
		break;
		
		case 3:
		if !has_hit && (y >= room_height - 30 || state_timer >= 42) && (attack_pressed || special_pressed || jump_pressed || shield_pressed || is_strong_pressed(DIR_ANY)){
			destroy_hitboxes();
			window = 8;
			window_timer = 0;
			hsp *= .5;
			vsp *= .5;
		}
		case 2:
		if (!has_hit || was_parried) && !free{
			destroy_hitboxes();
			window = 9;
			window_timer = 0;
			var g = spawn_base_dust(x, y, "n_wavedash", -1);
			g.depth = depth-2;
			var g = spawn_base_dust(x + 20, y, "dash_start", -1);
			g.depth = depth-2;
			var g = spawn_base_dust(x - 20, y, "dash_start", 1);
			g.depth = depth-2;
			hsp *= .2;
			sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .5);
		}
		if has_hit && !hitpause && !was_parried{
			destroy_hitboxes();
			window = 4;
			window_timer = 0;
		}
		break;
		case 5:
		if window_timer = window_end-1 spawn_shell(x + 6*spr_dir, y);
		break;
	}
	break;
	
	case AT_NSPECIAL:
	missile_angle = (down_down || down_pressed) - (up_down || up_pressed);
	switch window{
		case 2:
		if window_timer == 10{
			sound_play(sound_get("sfx_missile_fire"), 0, noone, 1, 1);
			sound_play(asset_get("sfx_blow_heavy1"), 0, noone, 0.5, .9);
		}
		move_cooldown[attack] = 80;
		break;
		
		case 3: //3 fire 1
		if window_timer == 10{
			sound_play(sound_get("sfx_missile_fire"), 0, noone, 1, .9);
			sound_play(asset_get("sfx_blow_heavy1"), 0, noone, 0.5, .9);
		}
		break;
		
		case 4:
		if has_rune("L") && multi_missile && window_timer == window_end{
			multi_missile--;
			window = 2;
			window_timer = 9;
		}
		break;
	}
	if free && window = clamp(window, 2, 4) vsp = clamp(vsp, vsp, 3);
	break;
	
	case AT_FSPECIAL:
	if !hitpause && window == clamp(window, 2, 7) body_anim_timer++;
	can_move = 0;
	can_fast_fall = 0;
	switch window{
		case 1: //startup
		shot_angle = 0;
		body_anim_timer = 0;
		hit_list = [];
		hit_count = !has_rune("B");
		hit_pos = []
		break;
		
		case 2: //sit aim
		calc_aim();
		if shield_pressed{
			set_window(4);
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 2*(joy_pad_idle? spr_dir: sign(dcos(joy_dir))*spr_dir));
		}
		if !special_down{
			set_snipe_strength();
			set_window(3, 1);
		}
		break;
		
		case 4: //raise
		if !joy_pad_idle set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 2*sign(dcos(joy_dir))*spr_dir);
		break;
		
		case 5: //walk loop
		calc_aim();
		if !shield_down || hsp == 0 set_window(7);
		if !special_down{
			set_snipe_strength();
			if spr_dir != dcos(shot_angle){
				spr_dir *= -1;
				shot_angle += 180;
			}
			set_window(6, 1);
		}
		break;
		
		case 6: //fire walk
		case 3: //sit fire
		if window_timer == 5 play_sniper_sound();
		move_cooldown[AT_FSPECIAL] = 30;
		if window_timer == 6 && !hitpause{
			var calc_angle = shot_angle + point_direction(0, 0, 81, 2)*sign(dcos(shot_angle))*spr_dir;
			var gun_len = point_distance(0, 0, 81, 2);
			fire_pos = [x + ground_body_pos[image_index-5][0]*spr_dir + lengthdir_x(gun_len, calc_angle)*spr_dir, y + ground_body_pos[image_index-5][1] + lengthdir_y(gun_len, calc_angle)*spr_dir];
			fire_end = [];
			array_push(fire_end, fire_pos[0]);
			array_push(fire_end, fire_pos[1]);
			while(fire_end[0] == clamp(fire_end[0], 0, room_width) && fire_end[1] == clamp(fire_end[1], 0, room_height) && hit_count < 2 && !position_meeting(fire_end[0], fire_end[1], asset_get("par_block"))){
				var chx = lengthdir_x(1, shot_angle)*spr_dir;
				var chy = lengthdir_y(1, shot_angle)*spr_dir;
				fire_end[@0] += lengthdir_x(10, shot_angle)*spr_dir;
				fire_end[@1] += lengthdir_y(10, shot_angle)*spr_dir;
				var colp = instance_position(fire_end[0], fire_end[1], pHurtBox);
				var colh = instance_position(fire_end[0], fire_end[1], pHitBox);
				var cold = instance_position(fire_end[0], fire_end[1], drone);
				var colart1 = instance_position(fire_end[0], fire_end[1], obj_article1);
				var colart2 = instance_position(fire_end[0], fire_end[1], obj_article2);
				var colart3 = instance_position(fire_end[0], fire_end[1], obj_article3);
				var colartpl = instance_position(fire_end[0], fire_end[1], obj_article_platform);
				if instance_exists(colp) && array_find_index(hit_list, colp) < 0{
					array_push(hit_list, colp);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				if instance_exists(cold) && (cold.state == 2 || cold.state == 4){
					fire_end[@0] -= chx;
					fire_end[@1] -= chy
					while(instance_position(fire_end[0] - chx, fire_end[1] - chy, drone)){
						fire_end[@0] -= chx;
						fire_end[@1] -= chy
					}
					drone.fire_pos = [];
					drone.fire_pos[@0] = fire_end[0];
					drone.fire_pos[@1] = fire_end[1];
					hit_drone = 1;
					hit_count++;
					drone.state = 3;
					drone.timer = 0;
					drone.shot_angle = shot_angle;
					drone.shot_fx_timer = 13;
					drone.snipe = 1;
					sound_play(sound_get("sfx_drone_reflect"), 0, noone, 1, 1);
				}
				if instance_exists(colart1) && colart1.is_hittable && array_find_index(hit_list, colart1) < 0 && colart1 != drone{
					array_push(hit_list, colart1);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				if instance_exists(colart2) && colart1.is_hittable && array_find_index(hit_list, colart2) < 0{
					array_push(hit_list, colart2);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				if instance_exists(colart3) && colart1.is_hittable && array_find_index(hit_list, colart3) < 0{
					array_push(hit_list, colart3);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				if instance_exists(colartpl) && colart1.is_hittable && array_find_index(hit_list, colartpl) < 0{
					array_push(hit_list, colartpl);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				
				//v1 compat
				var object = instance_position(fire_end[0], fire_end[1], pHitBox);
				if object != noone && "is_V1_ultrakill" in object.player_id && object.type == 2 && "hitscannable" in object && object.hitscannable && object.hitscanned == noone{
					object.hsp = 0;
					object.splitshot = (object.vsp >= 8 || object.hitbox_timer == clamp(object.hitbox_timer, 20, 30)) && object.attack == AT_NSPECIAL && object.hbox_num == 3;
					object.vsp = 0;
					object.grav = 0;
					var alt = (!alt_cur? 32: alt_cur);
					object.hitscanned = [fire_end[0], fire_end[1], 10, 1, player, self, make_color_rgb(get_color_profile_slot_r(alt, 1), get_color_profile_slot_g(alt, 1), get_color_profile_slot_b(alt, 1)), 1];
					object.hitscanned_delay = 3;
					hit_count++;
				}
			}
			shot_fx_timer = 13;
			
			var h = 0;
			if !hit_drone || has_rune("B") repeat array_length(hit_pos)/2{
				var box = 1 + (window == 6) + 2*h;
				set_hitbox_value(AT_FSPECIAL, box, HG_HITBOX_X, floor(hit_pos[0 + h*2] - x)*spr_dir);
				set_hitbox_value(AT_FSPECIAL, box, HG_HITBOX_Y, floor(hit_pos[1 + h*2] - y));
				set_hitbox_value(AT_FSPECIAL, box, HG_DAMAGE, get_hitbox_value(AT_FSPECIAL_AIR, box, HG_DAMAGE) + floor(point_distance(x, y - 50, hit_pos[0 + h*2], hit_pos[1 + h*2])/150));
				h++;
			}
			set_num_hitboxes(AT_FSPECIAL, 2*h);
			
			spawn_shell(x + 10*spr_dir, y - 37, AT_FSPECIAL);
		}
		if !hitpause && window_timer >= 15 shot_angle -= angle_difference(shot_angle, spr_dir*.1)*.2;
		body_anim_timer = clamp(body_anim_timer, 0, 26);
		break;
		
		case 8: //sit only endlag
		move_cooldown[AT_FSPECIAL] = 30;
		break;
		
		case 9: //endlag
		move_cooldown[AT_FSPECIAL] = 30;
		break;
	}
	var shsin = dsin(shot_angle)*spr_dir;
	if shsin > 0 offset_hud(300*shsin);
	else offset_hud(-100*shsin);
	break;
	
	case AT_FSPECIAL_AIR:
	if !hitpause && window == clamp(window, 2, 7) body_anim_timer++;
	can_move = 0;
	can_fast_fall = 0;
	vsp = clamp(vsp, vsp, .4 + extra_vsp);
	extra_vsp = lerp(extra_vsp, 0, .1);
	switch window{
		case 1: //startup
		if window_timer == 1{
			sound_stop(float_sfx);
			float_sfx = sound_play(sound_get("sfx_sniper_float"), 0, noone, .4, 1);
		}
		shot_angle = 0;
		body_anim_timer = 0;
		hit_list = [];
		hit_count = !has_rune("B");
		hit_pos = [];
		extra_vsp = 0;
		break;
		
		case 2: //fly idle
		draw_y = round(dsin((state_timer-16)*5)*3);
		air_body_frame = clamp(lerp(air_body_frame, sign(dcos(joy_dir))*spr_dir*3*!joy_pad_idle*shield_down, .1), -2, 3);
		if !shield_down calc_aim();
		else hsp = clamp(hsp + .3*sign(dcos(joy_dir)*!joy_pad_idle), -4, 4);
		if !special_down || (window_timer == window_end && !has_rune("M")){
			set_snipe_strength2();
			set_window(3, 1);
		}
		break;
		
		case 3: //fire fly
		if window_timer == 5{
			play_sniper_sound();
			hsp = dcos(shot_angle)*-4*spr_dir;
			vsp = dsin(shot_angle)*5*spr_dir;
			extra_vsp = vsp;
		}
		if window_timer == 6 && !hitpause{
			sound_stop(float_sfx);
			var calc_angle = shot_angle + point_direction(0, 0, 81, 2)*sign(dcos(shot_angle))*spr_dir;
			var gun_len = point_distance(0, 0, 81, 2);
			fire_pos = [x + lengthdir_x(gun_len, calc_angle)*spr_dir, y - 60 + lengthdir_y(gun_len, calc_angle)*spr_dir];
			fire_end = [];
			array_push(fire_end, fire_pos[0]);
			array_push(fire_end, fire_pos[1]);
			while(fire_end[0] == clamp(fire_end[0], 0, room_width) && fire_end[1] == clamp(fire_end[1], 0, room_height) && hit_count < 2 && !position_meeting(fire_end[0], fire_end[1], asset_get("par_block"))){
				var chx = lengthdir_x(1, shot_angle)*spr_dir;
				var chy = lengthdir_y(1, shot_angle)*spr_dir;
				fire_end[@0] += lengthdir_x(10, shot_angle)*spr_dir;
				fire_end[@1] += lengthdir_y(10, shot_angle)*spr_dir;
				var colp = instance_position(fire_end[0], fire_end[1], pHurtBox);
				var colh = instance_position(fire_end[0], fire_end[1], pHitBox);
				var cold = instance_position(fire_end[0], fire_end[1], drone);
				var colart1 = instance_position(fire_end[0], fire_end[1], obj_article1);
				var colart2 = instance_position(fire_end[0], fire_end[1], obj_article2);
				var colart3 = instance_position(fire_end[0], fire_end[1], obj_article3);
				var colartpl = instance_position(fire_end[0], fire_end[1], obj_article_platform);
				if instance_exists(colp) && array_find_index(hit_list, colp) < 0{
					array_push(hit_list, colp);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				if instance_exists(cold) && (cold.state == 2 || cold.state == 4){
					fire_end[@0] -= chx;
					fire_end[@1] -= chy
					while(instance_position(fire_end[0] - chx, fire_end[1] - chy, drone)){
						fire_end[@0] -= chx;
						fire_end[@1] -= chy
					}
					drone.fire_pos = [];
					drone.fire_pos[@0] = fire_end[0];
					drone.fire_pos[@1] = fire_end[1];
					hit_drone = 1;
					hit_count++;
					drone.state = 3;
					drone.timer = 0;
					drone.shot_angle = shot_angle;
					drone.shot_fx_timer = 13;
					drone.snipe = 1;
					sound_play(sound_get("sfx_drone_reflect"), 0, noone, 1, 1);
				}
				if instance_exists(colart1) && colart1.is_hittable && array_find_index(hit_list, colart1) < 0 && colart1 != drone{
					array_push(hit_list, colart1);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				if instance_exists(colart2) && colart1.is_hittable && array_find_index(hit_list, colart2) < 0{
					array_push(hit_list, colart2);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				if instance_exists(colart3) && colart1.is_hittable && array_find_index(hit_list, colart3) < 0{
					array_push(hit_list, colart3);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				if instance_exists(colartpl) && colart1.is_hittable && array_find_index(hit_list, colartpl) < 0{
					array_push(hit_list, colartpl);
					array_push(hit_pos, fire_end[0]);
					array_push(hit_pos, fire_end[1]);
					hit_count++;
				}
				
				//v1 compat
				var object = instance_position(fire_end[0], fire_end[1], pHitBox);
				if object != noone && "is_V1_ultrakill" in object.player_id && object.type == 2 && "hitscannable" in object && object.hitscannable && object.hitscanned == noone{
					object.hsp = 0;
					object.splitshot = (object.vsp >= 8 || object.hitbox_timer == clamp(object.hitbox_timer, 20, 30)) && object.attack == AT_NSPECIAL && object.hbox_num == 3;
					object.vsp = 0;
					object.grav = 0;
					var alt = (!alt_cur? 32: alt_cur);
					object.hitscanned = [fire_end[0], fire_end[1], 10, 1, player, self, make_color_rgb(get_color_profile_slot_r(alt, 1), get_color_profile_slot_g(alt, 1), get_color_profile_slot_b(alt, 1)), 1];
					object.hitscanned_delay = 3;
					hit_count++;
				}
			}
			shot_fx_timer = 13;
			
			var h = 0;
			if !hit_drone || has_rune("B") repeat array_length(hit_pos)/2{
				var box = 1 + 2*h;
				set_hitbox_value(AT_FSPECIAL_AIR, box, HG_HITBOX_X, floor(hit_pos[0 + h*2] - x)*spr_dir);
				set_hitbox_value(AT_FSPECIAL_AIR, box, HG_HITBOX_Y, floor(hit_pos[1 + h*2] - y));
				set_hitbox_value(AT_FSPECIAL_AIR, box, HG_DAMAGE, get_hitbox_value(AT_FSPECIAL_AIR, box, HG_DAMAGE) + floor(point_distance(x, y - 50, hit_pos[0 + h*2], hit_pos[1 + h*2])/150));
				h++;
			}
			set_num_hitboxes(AT_FSPECIAL_AIR, h);
			
			spawn_shell(x + 10*spr_dir, y - 50, AT_FSPECIAL);
		}
		if !hitpause && window_timer >= 15{
			shot_angle -= angle_difference(shot_angle, spr_dir*.1)*.2;
			air_body_frame = lerp(air_body_frame, 0, .2);
		}
		body_anim_timer = clamp(body_anim_timer, 0, 26);
		break;
	}
	var shsin = dsin(shot_angle)*spr_dir;
	if shsin > 0 offset_hud(300*shsin + 60);
	else offset_hud(-100*shsin + 60);
	break;
	
	case AT_DSPECIAL:
	if window == 1 && window_timer = 12{
		move_cooldown[AT_DSPECIAL] = 60;
		drone = instance_create(x + 50*spr_dir - 24*!free*spr_dir, y - 60 - 30*!free, "obj_article1");
		drone.hsp = (2 + 3*free)*spr_dir;
		drone.vsp = -6 + -4*!free;
		drone.spr_dir = spr_dir;
	}
	if window = 2 && window_timer == 9{
		drone.trigger_explosion = 1;
		move_cooldown[AT_DSPECIAL] = 90;
	}
	if free vsp = clamp(vsp, vsp, .4);
	offset_hud(50);
	break;
	
	case AT_USPECIAL:
	can_move = 0;
	can_fast_fall = 0;
	offset_hud(50);
	if ((window == 2 && window_timer = window_end) || window > 2) && !(window = 4 && window_timer = window_end) draw_y = -30;
	else draw_y = 0;
	if window >= 2 vsp = lerp(vsp, 0, 0.025);
	switch window{
		case 1:
		if window_timer = window_end-3{
			var k = spawn_hit_fx(x, y, free? air_propel: ground_propel);
		}
		if window_timer = window_end{
			sound_play(sound_get("sfx_uspecial_release"));
			sound_play(asset_get("sfx_springgo"), 0, noone, 1, 1.1);
		    sound_play(asset_get("sfx_burnapplied"), 0, noone, 0.8, 0.9);
		}
		break;
		
		case 3:
		if !hitpause{
			usp_angle += left_down - right_down;
			spr_angle = usp_angle;
			hsp = -usp_angle/4;
			if window_timer != 0{
				var j = spawn_hit_fx(x, y, trail_smoke);
				j.draw_angle = random_func_2(123, 4, 0)*90;
			}
		}
		break;
		
		case 4:
		usp_angle = 0;
		spr_angle = 0;
		if window_timer = window_end && special_down{
			hit_drone = 0;
			set_attack(AT_FSPECIAL_AIR);
			hsp *= 0.4;
			hurtboxID.sprite_index = sprite_get("fspecial_air_hurt");
		}
		break;
	}
	break;
	
	case AT_TAUNT:
	if !hitpause && window = 1 && window_timer == 10 sound_play(asset_get("sfx_swipe_weak2"), 0, noone, 0.7);
	if !hitpause && window = 1 && window_timer == 30 sound_play(asset_get("sfx_swipe_weak1"), 0, noone, 0.7);
	if !hitpause && window = 2 && window_timer == 8 sound_play(sound_get("sfx_taunt_pew"), 0, noone, 1, 1); 
	if has_rune("G") && window = 2 && window_timer = 8 create_deathbox(x + 60*spr_dir, y - 48, 20, 20, 0, 1, 0, 2, 2);
	break;
	
	case 2:
	if (window <= 7) offset_hud(2000, 0.1); //put hud away
	if (window == 7 && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
	if window == 1 && window_timer == 4{
		var g = spawn_base_dust(x, y, "n_wavedash", -1);
		g.depth = depth-2;
		var g = spawn_base_dust(x + 20, y, "dash_start", -1);
		g.depth = depth-2;
		var g = spawn_base_dust(x - 20, y, "dash_start", 1);
		g.depth = depth-2;
		hsp *= .2;
		sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .5);
	}
	if window = 3 && window_timer == 12 sound_play(asset_get("sfx_swipe_medium1"), 0, noone, 0.7);
	if window = 4 && window_timer == 10 sound_play(asset_get("sfx_swipe_weak2"), 0, noone, 0.7);
	//if window = 7 && window_timer == 4 sound_play(asset_get("sfx_swipe_weak1"), 0, noone, 0.7);
	break;
}

if has_hit && !was_parried && rune_cancel{
	move_cooldown[attack] = 2;
	can_attack = 1;
	can_strong = 1;
	can_ustrong = 1;
	can_special = 1;
	can_jump = 1;
}

var spc_list = [AT_DAIR, AT_DSTRONG, AT_FAIR, AT_FSPECIAL, AT_FSPECIAL_AIR, AT_FSTRONG, AT_JAB, AT_UAIR, AT_USTRONG, AT_UTILT];
if has_rune("E") && window = get_attack_value(attack, AG_NUM_WINDOWS) && window_timer = window_end && !has_hit && array_find_index(spc_list, attack) >= 0 set_state(free? PS_PRATFALL: PS_PRATLAND);

#define offset_hud
/// offset_hud(val, am = .3;)
var val = argument[0];
var am = argument_count > 1 ? argument[1] : .3;;

hud_offset = lerp(hud_offset, val, am);

#define set_window
/// set_window(idx, reset_timer = 0;)
var idx = argument[0];
var reset_timer = argument_count > 1 ? argument[1] : 0;;
window = idx;
window_timer = 0;
if reset_timer body_anim_timer = 0;

#define calc_aim
/// calc_aim(lim = 0, maxl = 80, minl = 50;)
var lim = argument_count > 0 ? argument[0] : 0;
var maxl = argument_count > 1 ? argument[1] : 80;
var minl = argument_count > 2 ? argument[2] : 50;;
shot_angle = shot_angle - angle_difference(shot_angle, (joy_pad_idle? spr_dir*.1: joy_dir + 90 - 90*spr_dir))*(.06 + .04*using_controller); //point_direction(x + ground_body_pos[image_index - 5][0], y + ground_body_pos[image_index - 5][1], mouse_x, mouse_y-3)
if lim shot_angle = point_direction(0, 0, clamp(dcos(shot_angle), dcos(sign(dsin(shot_angle))*spr_dir? minl: maxl), 1), -dsin(shot_angle));

#define play_sniper_sound()
sound_play(asset_get("sfx_boss_fireball_land"));
sound_play(sound_get("sfx_sniper_fire"));

#define set_snipe_strength()
var h = 0;
var mult = clamp(body_anim_timer, 0, 150)/150;
repeat 4{
	mult += .2*(h>1);
	set_hitbox_value(AT_FSPECIAL, h+1, HG_DAMAGE, (has_rune("C")? 1: (4 + 6*mult)*(1 + has_rune("E")*!has_rune("C"))));
	set_hitbox_value(AT_FSPECIAL, h+1, HG_BASE_KNOCKBACK, 6 + 6*mult);
	set_hitbox_value(AT_FSPECIAL, h+1, HG_KNOCKBACK_SCALING, .6 + .6*mult*hit_count);
	h++;
}
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_DAMAGE, (has_rune("C")? 1: (4 + 6*mult)*(1 + has_rune("E")*!has_rune("C"))));
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 6 + 6*mult);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, .6 + .6*mult*hit_count);

#define set_snipe_strength2()
var h = 0;
var mult = clamp(body_anim_timer, 0, 90)/90;
repeat 2{
	mult += .2*h;
	set_hitbox_value(AT_FSPECIAL_AIR, h+1, HG_DAMAGE, (has_rune("C")? 1: (4 + 6*mult)*(1 + has_rune("E")*!has_rune("C"))));
	set_hitbox_value(AT_FSPECIAL_AIR, h+1, HG_BASE_KNOCKBACK, 6 + 3*mult);
	set_hitbox_value(AT_FSPECIAL_AIR, h+1, HG_KNOCKBACK_SCALING, .6 + .6*mult*hit_count);
	h++;
}
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_DAMAGE, (has_rune("C")? 1: (4 + 6*mult)*(1 + has_rune("E")*!has_rune("C"))));
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 6 + 6*mult);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, .6 + .6*mult*hit_count);

#define spawn_shell
/// spawn_shell(xp, yp, type = AT_FSTRONG, off = 0;)
var xp = argument[0], yp = argument[1];
var type = argument_count > 2 ? argument[2] : AT_FSTRONG;
var off = argument_count > 3 ? argument[3] : 0;;
set_hitbox_value(type, 5, HG_PROJECTILE_VSPEED, -5 + off + random_func_2(1, 2, 0) - .5);
set_hitbox_value(type, 5, HG_PROJECTILE_HSPEED, (-2 + off + random_func_2(6, 2, 0) - .5)*(attack = AT_FSPECIAL || attack = AT_FSPECIAL_AIR? sign(dcos(shot_angle)):1) + hsp*(attack = AT_FSPECIAL_AIR)*spr_dir);
create_hitbox(type, 5, xp, yp);

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