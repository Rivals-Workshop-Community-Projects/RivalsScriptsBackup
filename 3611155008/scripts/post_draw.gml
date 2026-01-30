//post-draw

if state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR{
	var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
	switch attack{
		case AT_EXTRA_1:
		shader_start();
		draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, 2*spr_dir, 2, spr_angle, c_white, 1);
		if unbound_fx_idx+1 draw_sprite_ext(sprite_get("unbounded_fx"), unbound_fx_idx, x + draw_x, y + draw_y, 2*spr_dir, 2, spr_angle, c_white, 1);
		shader_end();
		break;
		
		case AT_FSTRONG_2:
		case AT_USTRONG_2:
		case AT_DSTRONG_2:
		var st = (attack == AT_FSTRONG_2? 9: (attack == AT_USTRONG_2? 8: 6));
		if window_timer >= st && window == 1{
			var window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
			var c = make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6));
			gpu_set_fog(1, c, 1, 0);
			draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, 2*spr_dir, 2, spr_angle, c_white, 1.5 - 1.5*(window_timer-st+1+strong_charge)/(window_end-st+5));
			gpu_set_fog(0, c, 1, 0);
		}
		break;
		
		case AT_NSPECIAL:
		shader_start();
		if window == 1 && image_index > 3 draw_sprite_ext(sprite_get("arrowstrong"), 0, x + 32*spr_dir, y - 29, spr_dir, 1, 0, c_white, .8*(window_timer-20)/20);
		if window == 4 || (window == 5 && window_timer < 4) draw_sprite_ext(sprite_get("arrowstrong"), 0, x + (32 - 2*(image_index > 16) - 2*(image_index > 17))*spr_dir, y - 29, spr_dir, 1, 0, c_white, .8);
		if image_index == clamp(image_index, 21, 24){
			draw_sprite_ext(sprite_get("arrowmax"), image_index-21, x + 60*spr_dir, y - 29, 2*spr_dir, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("arrowmaxbeam"), image_index-21, x + 180*spr_dir, y - 29, room_width*spr_dir, 2, 0, c_white, 1);
		}
		var m = circletimer;
		var h = 0;
		if m repeat 3{
			if m draw_sprite_ext(sprite_get("bowcircles"), h, x + (55 + 35*h + clamp(m, 0, 10)*.5)*spr_dir, y - 29, 2*spr_dir, 2, 0, c_white, (circletimer > 44 + 4*h? 1 - (circletimer-44 - 4*h)/12: m/10)*.5*random_func_2(h, 4, 1));
			m -= 5;
			h++;
		}
		if (window == 5 && window_timer >= 4) || (image_index == clamp(image_index, 21, 23)) draw_sprite_ext(sprite_get("azurebowmax"), (window == 5? 0: image_index-20), x + 60*spr_dir, y - 29, 2*spr_dir, 2, 0, c_white, 1);
		shader_end();
		break;
		
		case AT_FSPECIAL:
		shader_start();
		if draw_fx && image_index != 8 && image_index < 14 draw_sprite_ext(sprite_get(free? "talismanair": "talismanground"), image_index - (image_index>8), x + draw_x, y + draw_y, 2*spr_dir, 2, spr_angle, c_white, 1);
		if grabp != noone && image_index < 22 draw_sprite_ext(sprite_get("talisman"), 0, grabp.x + grabp.draw_x, grabp.y + grabp.draw_y - grabp.char_height/2, 1, 1, 0, c_white, .75 + .25*dsin(get_gameplay_time()*10));
		if grabp2 != noone && image_index < 22 draw_sprite_ext(sprite_get("talisman"), 0, grabp2.x + grabp2.draw_x, grabp2.y + grabp2.draw_y - grabp2.char_height/2, 1, 1, 0, c_white, .75 + .25*dsin(get_gameplay_time()*10));
		switch window{
			case 5:
			case 6:
			var t = 0;
			var am = fspec_charge/fspec_single_charge;
			repeat ceil(am){
				var val = clamp(am - t, 0, 1);
				draw_sprite_ext(sprite_get("fspec_qicharge"), val*3, x + fspec_fx_pos[t][0]*spr_dir, y + fspec_fx_pos[t][1], 2, 2, 0, c_white, val);
				t++;
			}
			break;
			
			case 7:
			if window_timer < 12{
				var lvl = floor(fspec_charge/fspec_single_charge);
				repeat lvl{
					draw_sprite_ext(sprite_get("fspec_qicharge"), 4 + window_timer/4, x + fspec_fx_pos[t][0]*spr_dir, y + fspec_fx_pos[t][1], 2, 2, 0, c_white, 1);
					t++;
				}
			}
			break;
		}
		shader_end();
		break;
		
		case AT_USPECIAL:
		if usp_pos != -1{
			draw_sprite_ext(sprite_get("uspegrapplepoint"), 0, usp_pos[0], usp_pos[1], 1, 1, 0, c_white, usp_pos[2]);
			gpu_set_blendmode(bm_add);
			var dx = x + (4 + lengthdir_x(34, usp_angle))*spr_dir;
			var dy = y - 32 + lengthdir_y(34, usp_angle);
			if window == 3 || (window == 4 && window_timer <= 2) || ((window >= 4 && sign(usp_pos[0] - dx) == sign(hsp) || hsp = 0) && (vsp == 0 || sign(usp_pos[1] - dy) == sign(vsp))) draw_sprite_ext(sprite_get("grapple"), 2, dx, dy, point_distance(dx, dy, usp_pos[0], usp_pos[1])/3, 1, point_direction(dx, dy, usp_pos[0], usp_pos[1]), c_white, usp_pos[2]*usp_pos[3] - .2);
			draw_sprite_ext(sprite_get("uspegrapplepoint"), 2, usp_pos[0], usp_pos[1], 1, 1, usp_pos[4]+180, c_white, usp_pos[2]*usp_pos[3]);
			draw_sprite_ext(sprite_get("uspegrapplepoint"), 1, usp_pos[0], usp_pos[1], 1, 1, 0, c_white, usp_pos[2]*usp_pos[3]);
			if window == 3 || window == 4 draw_sprite_ext(sprite_get("grappleconnect"), get_gameplay_time()/3, usp_pos[0]+1, usp_pos[1]+1, 2, 2, 0, c_white, usp_pos[2]*usp_pos[3]*.5);
			if window == 3{
				draw_sprite_ext(sprite_get("grappledot"), 0, usp_pos[0], usp_pos[1], window_timer, window_timer, 0, c_white, (1 - window_timer/4)*.5);
				draw_sprite_ext(sprite_get("grapplehit"), window_timer-1, usp_pos[0]+1, usp_pos[1]+1, 2, 2, 0, c_white, (1 - window_timer/4)*.5);
			}
			gpu_set_blendmode(bm_normal);
		}
		break;
		
		case 49: //final smash
		shader_start();
		if window == 4 draw_sprite_ext(sprite_get("finalcharge"), window_timer/8.5, x, y + 20, 2, 2, 0, c_white, 1);
		shader_end();
		break;
	}
}

if state == PS_ATTACK_AIR && attack == AT_EXTRA_2{
	shader_start();
	if !parry_hit || hitstop draw_sprite_ext(sprite_get("airparry_fx"), image_index, x + draw_x, y + draw_y, 2*spr_dir, 2, spr_angle, c_white, 1);
	shader_end();
}

if state == PS_RESPAWN && respawn_anim < 124{
	shader_start();
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, 2*spr_dir, 2, spr_angle, c_white, (respawn_anim < 20? respawn_anim/20: 1 - (respawn_anim-120)/25));
	shader_end();
}