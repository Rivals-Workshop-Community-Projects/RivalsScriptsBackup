// attack_update.gml

// dust effect template
// spawn_base_dust( x + (16 * spr_dir), y, "dash_start", -spr_dir, 0);

// template for playing stuff at a window's last frame
/*
if (attack == AT_WHATEVER){
	if (window == NUM){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			// do stuff here
		}
	}
}
*/

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
	case AT_TAUNT_2:
		if window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) and taunt_down{
			window_timer = 0;
		}
		
		if (window == 1){
			if (window_timer == 2){
				var taunt2goldsparkle = spawn_hit_fx(x - 22,
				y - 44,
				goldAlt_sparkle_fx_sml);
				taunt2goldsparkle.hsp = -1.25;
				taunt2goldsparkle.vsp = -7;
				taunt2goldsparkle.gravity = 0.6;
				taunt2goldsparkle.draw_angle = 45;
				
				var taunt2goldsparkle2 = spawn_hit_fx(x + 22,
				y - 44,
				goldAlt_sparkle_fx_sml);
				taunt2goldsparkle2.hsp = 1.25;
				taunt2goldsparkle2.vsp = -7;
				taunt2goldsparkle2.gravity = 0.6;
				taunt2goldsparkle.draw_angle = 45;
			}
		}
		
		if window == 3 {
			switch window_timer {
				case 1:
					sound_play(sound_get("sfx_normal_swing"), false, noone, 0.4, 1.5)
					sound_play(asset_get("sfx_ori_dtilt_perform"), false, noone, 0.3, 1.3)
					
					var taunt2goldsparkle = spawn_hit_fx(x - 32,
					y - 4,
					goldAlt_sparkle_fx_sml);
					taunt2goldsparkle.hsp = -2.5;
					taunt2goldsparkle.vsp = -1;
					taunt2goldsparkle.gravity = 0.125;
					
					var taunt2goldsparkle2 = spawn_hit_fx(x + 32,
					y - 4,
					goldAlt_sparkle_fx_sml);
					taunt2goldsparkle2.hsp = 2.5;
					taunt2goldsparkle2.vsp = -1;
					taunt2goldsparkle2.gravity = 0.125;
				break;
				case 6:
					sound_play(sound_get("sfx_plague_gulp"), false, noone, 1, 1)
				break;
				case 12:
					
					sound_play(sound_get("sfx_normal_swing"), false, noone, 0.16, 1.9)
				break;
			}
			
		}
		
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			var taunt2goldsparkle = spawn_hit_fx(x - 32,
			y - 22,
			goldAlt_sparkle_fx_med);
			taunt2goldsparkle.hsp = -2.5;
			taunt2goldsparkle.vsp = -3.5;
			taunt2goldsparkle.gravity = 0.275;
			
			var taunt2goldsparkle2 = spawn_hit_fx(x + 32,
			y - 22,
			goldAlt_sparkle_fx_med);
			taunt2goldsparkle2.hsp = 2.5;
			taunt2goldsparkle2.vsp = -3.5;
			taunt2goldsparkle2.gravity = 0.275;
		}
		
		if (window == 2 && window_timer mod 9 == 0){
			var taunt2goldsparkle = spawn_hit_fx(x - 32,
			y - 4,
			goldAlt_sparkle_fx_sml);
			taunt2goldsparkle.hsp = -2.5;
			taunt2goldsparkle.vsp = -1;
			taunt2goldsparkle.gravity = 0.125;
			
			var taunt2goldsparkle2 = spawn_hit_fx(x + 32,
			y - 4,
			goldAlt_sparkle_fx_sml);
			taunt2goldsparkle2.hsp = 2.5;
			taunt2goldsparkle2.vsp = -1;
			taunt2goldsparkle2.gravity = 0.125;
		}
	break;
	case AT_TAUNT:
		if window == 2 and window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) and taunt_down {
			window_timer = 0;
		}
		
		if window == 2 and !hitpause and (window_timer == 5 or window_timer == 30) {
			sound_play(asset_get("sfx_gus_jump"), false, noone, 0.9, 1.2)
		}
	break;
	case AT_EXTRA_1:
		can_wall_jump = true;
		if (get_gameplay_time() mod 3 == 0) {
 			var move_dir = point_direction(0,0,hsp,vsp)-90
 			var amount = random_func(9, 72, true) - 36
 			var fire_x = lengthdir_x(amount, move_dir) 
 			var fire_y = lengthdir_y(amount, move_dir) 
			spawn_hit_fx(x + fire_x, y + fire_y - floor(char_height/2),actionline_vfx).draw_angle = move_dir+90 - (180*(spr_dir==1))
		}
		
		if window == 1 and window_timer == 1 {
			dir = right_down - left_down;
			final_dir = 90
			if dir != 0 {
				final_dir -= dir*40
			}
			
			sound_play(asset_get("sfx_mol_flash_explode")) 
			
			var distance = lerp(0, nspecial_distance, 1 / nspecial_charged_times);
			
			hsp = lengthdir_x(nspecial_distance, final_dir)
			vsp = lengthdir_y(nspecial_distance, final_dir)
			move_cooldown[AT_EXTRA_1] = 100;
		}
		if (window == 3 and !was_parried){
			iasa_script();
		}
		
		/*
		// placeholder dust effects
		if (window != 3 && !hitpause && window_timer mod 3 == 0){
			if (window == 2){
				spawn_base_dust( x + (0 * spr_dir), y - 18, "doublejump_small", spr_dir, (90) + point_direction(0, 0, hsp, vsp));
			} else if (window == 1){
				spawn_base_dust( x + (0 * spr_dir), y - 22, "doublejump", spr_dir, (90) + point_direction(0, 0, hsp, vsp));
			}
		}
		*/
	break;
	case AT_JAB:
		if (window == 4){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_base_dust( x + (0 * spr_dir), y - 0, "walk", -spr_dir, 0);
				spawn_base_dust( x + (-34 * spr_dir), y - 0, "dash", spr_dir, 0);
			}
		}
	break;
	case AT_NSPECIAL:
		if window == 3 and special_down {
			charging_nspecial_buffer = true;
		}
	break;
	case AT_DSTRONG:
		if window == 2 {
			if (window_timer == 2){
				sound_play(asset_get("sfx_zetter_downb"));
				sound_play(sound_get("sfx_vakna_explosion_2"), false, noone, 0.4, 1.2)
				sound_play(sound_get("sfx_plague_bomb_med_explode"), false, noone, 1, 1.2)
				sound_play(asset_get("sfx_forsburn_reappear_hit"), false, noone, 0.6, 1.1);
			}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_base_dust( x - 70, y - 0, "walk", 1, 0);
				spawn_base_dust( x + 84, y - 0, "walk", -1, 0);
			}
		}
		if window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) and !hitpause {
			var dstrongSmokeVFX = spawn_hit_fx(x, y, dstrong_smoke_fx);
			dstrongSmokeVFX.depth -= 20;
			
		}
	break;
	case AT_DSPECIAL:
		if window < 3 or window == 3 and window_timer < 8 {
			hud_offset = round(lerp(hud_offset, 500, 0.1))
		}
		
		if window == 1 and window_timer == 1 and !hitpause{
			sound_play(sound_get("sfx_SKPoS_bombmenu_open"))	
		}
		
		if window == 2
		{
			if !special_down {
				window_timer = 0;
				window = 3
				display_intro = false;
				display_timer = 0;
				sound_play(sound_get("sfx_SKPoS_bombmenu_close"))
			} else if (up_pressed or left_pressed or right_pressed or down_pressed) {
				window_timer = 0;
				window = 3;
				display_intro = false;
				display_timer = 0;
				display_coords = {x:x, y:y}
				display_selected = true;
				sound_play(sound_get("sfx_plague_confirm"))
				current_bomb_powder = max( down_pressed - 1, up_pressed, left_pressed * 2, right_pressed * 3)
			} else if (up_stick_pressed or left_stick_pressed or right_stick_pressed or down_stick_pressed) {
				//the same thing lmao
				window_timer = 0;
				window = 3;
				display_intro = false;
				display_timer = 0;
				display_coords = {x:x, y:y}
				display_selected = true
				sound_play(sound_get("sfx_plague_confirm"))
				current_bomb_powder = max( down_stick_pressed - 1, up_stick_pressed, left_stick_pressed * 2, right_stick_pressed * 3)				
			}
		}
	break;
	case AT_USTRONG:
		can_move = false;
		
		if (!free and window > 3) {
            if (was_parried == false){
                set_state(PS_LANDING_LAG);
            } else {
                set_state(PS_PRATLAND);
                sound_play(landing_lag_sound);
            }
        }
	break;
	case AT_FTILT:
		if (window == 1){
			if (window_timer == 8) and !hitpause{
				sound_play(sound_get("sfx_swipe_gen_weak"), false, noone, 0.4, 1.15);
			}
			if (window_timer == 5) and !hitpause{
				sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.85, 1.05);
			}
		}
		
		if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)
			|| (window == 2 && window_timer % 5 == 0))){
			if (!hitpause){
				spawn_base_dust( x + ((40 + ((window==2)?(window_timer*4):0)) * spr_dir), y - 0, "dash", -spr_dir, 0);
			}
		}
	break;
	case AT_DATTACK:
		if window > 3 can_fast_fall = false;
		
		if (window == 1 and window_timer < 4 and !free) {//>
			can_ustrong = true;
		}

		if window == 1 and window_timer == 1 and !hitpause {
			sound_play(asset_get("sfx_ori_dash_attack_perform"), false, noone, 0.8, 1.2)
		}
		
		if window == 1 and window_timer == 3 and !hitpause {
			sound_play(sound_get("sfx_plague_clothes_swipe"), false, noone, 1, 1)
		}
		
		if window == 2 and window_timer == 6 and !hitpause {
			sound_play(sound_get("sfx_vakna_explosion_2"))
			sound_play(sound_get("sfx_plague_bomb_explode"), false, noone, 0.6, 1.4)
		}
		
		if (window <= 3){//>
			if (window_timer % 3 == 0 && !hitpause && !free){
				spawn_base_dust( x + (0 * spr_dir), y - 0, "walk", spr_dir, 0);
			}
		}
		
		if (window == 3){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !free && !hitpause){
				spawn_base_dust( x + (0 * spr_dir), y - 0, "jump", spr_dir, 0);
			}
		}
	break;
	case AT_DAIR:
		if window == 2 and window_timer == 10 and !hitpause{
			sound_play(sound_get("sfx_vakna_explosion_2"), false, noone, 0.8, 1)
		}
		/*
		if (window == 3){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				spawn_hit_fx(x + (32 * spr_dir), y - 12, datk_bomb_fx);
			}
		}
		*/
	break;
	case AT_UAIR:
		if window == 1 and window_timer == 2 and !hitpause{
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 0.9, 1.1)
		}
		//Hud Offset
		if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 6)){//>
			hud_offset = 36;
		}
	break;
	case AT_FAIR:
		if window == 1 and window_timer == 13 and !hitpause {
			sound_play(sound_get("sfx_swipe_gen_weak"), false, noone, 1, 0.8)
		}
	break;
	case AT_FSPECIAL:
		can_move = false;
		can_wall_jump = true;
		if move_cooldown[AT_NSPECIAL] < 30 move_cooldown[AT_NSPECIAL] = 30;
		switch window {
			case 1:
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) ) {
					sound_play(sound_get("sfx_vakna_explosion_2"), false, noone, 0.2, 1.1)
					spawn_hit_fx(x,y,fspecial_vfx).depth = depth - 1;
					hsp = 0;
					vsp = 0;
					fspecial_start_position = {x:x, y:y}
				}
				fspecial_angle = 13 * (up_down - down_down)
			break;
			case 2:
			if window_timer < 4 {
				fspecial_angle = 13 * (up_down - down_down)
			}
			
			var dir = (180*(spr_dir ==-1)) + (fspecial_angle * spr_dir);
			
			var new_x = ease_backIn(fspecial_start_position.x, floor(fspecial_start_position.x + lengthdir_x(fspecial_max_distance, dir)), window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH), - 1)
			var new_y = ease_backIn(fspecial_start_position.y, floor(fspecial_start_position.y + lengthdir_y(fspecial_max_distance, dir)), window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH), - 1) 
			
			
			if shield_pressed {
				spawn_hit_fx(x,y-(char_height/2),fspecial_cancel_vfx).depth = depth - 1;
				vsp = -4 + (new_y - y);
				hsp = 0.4*(new_x - x);
				set_state(PS_PRATFALL)
				if alt_cur == 8 && taunt_down {
					sound_play(sound_get("sfx_plague_fspecial_cancel"))
				}
				else {
					sound_play(sound_get("sfx_vakna_explosion_2"), false, noone, 0.9, 1.4)
				}
				break;
			}
			
			if !place_meeting(new_x,new_y,asset_get("par_block")) {
				x = new_x
				y = new_y
			}
			
			with oPlayer {
				if self == other or (!place_meeting(x,y,other) and !place_meeting(x,y-40,other)) continue;
				
				other.window_timer = 0;
				other.window++;
				with other {
					spawn_hit_fx(x,y,fspecial_vfx).depth = depth - 1;
					hsp = 0;
					vsp = 0;
					sound_play(sound_get("sfx_plague_bomb_med_explode_2"))
					sound_play(sound_get("sfx_vakna_explosion_2"), false, noone, 0.2, 1.1)
				}
				break;
			}
			
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) ) {
				spawn_hit_fx(x,y,fspecial_vfx).depth = depth - 1;
				hsp = 0;
				vsp = 0;
				sound_play(sound_get("sfx_plague_bomb_med_explode_2"))
				sound_play(sound_get("sfx_vakna_explosion_2"), false, noone, 0.2, 1.1)
			}
			break;
			case 3:
				if window_timer == 1 {
					vsp = -5;
					hsp = -2 * spr_dir
				}
			break;
			case 4:
				if window_timer == 2 and !hitpause {
					var bomb = create_hitbox(AT_NSPECIAL, 1, x+(30*spr_dir), y+11);
					bomb.hsp = spr_dir*3;
					bomb.vsp = 7;
	                
					var there_is_another = false;
					if current_bomb_powder != 1 { // not doing this for black powder
						with (pHitBox) {
							if player_id != other or attack != AT_NSPECIAL or hbox_num != 1 or 'powder' not in self or powder != other.current_bomb_powder continue;
							
							there_is_another = true; //keep the condition that there should only be 1 special bomb out at any one time.
							break;
						}
					}
					
					bomb.powder = there_is_another ? 1 : current_bomb_powder;
					bomb.depth = depth + 2
					bomb.spr_dir = spr_dir
	                with bomb {
	                	if powder == 3 {
	                		player_id.looped_sound = sound_play(sound_get("sfx_plague_sparkler_fire"), true)
	                		stop_effect = true
	                	}
	                }
	                if current_bomb_powder == 0 {
	                	bomb.hit_effect = cascade_ember_explode_vfx;
	                	bomb.extra_hitpause = 6;
	                }
				}
				move_cooldown[AT_FSPECIAL] = 90;
				if special_down {
					charging_nspecial_buffer = true
				}
			break;
		}
	break;
	case AT_USPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;
		can_move = window < 2;
		if window == 1 and window_timer == 2 and !hitpause {
			sound_play(sound_get("sfx_swipe_gen_medium"), false, noone, 0.8, 0.9)
		}
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!free){
				spawn_base_dust( x + (22 * spr_dir), y - 0, "dash_start", -spr_dir, 0);
				spawn_base_dust( x + (22 * spr_dir), y - 0, "jump", spr_dir, 0);
			} else {
				spawn_base_dust( x + (6 * spr_dir), y - 0, "doublejump", spr_dir, -18 * spr_dir);
			}
		}
		if ((window == 2 || window == 3 || (window == 4 and window_timer < 6)) && window_timer mod 2 == 0 and !hitpause){
			var yy = y+random_func(9+(x mod 5), 40, false) - 20
			var xx = x+random_func(9+(y mod 5), 40, false) - 20
			spawn_hit_fx(xx+hsp,yy+vsp,uspecial_trail_vfx).depth = depth - random_func(2, 2, true) + 1
		}
	break;
	case AT_BAIR:
		if window == 1 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 {
			//sound_play(asset_get("sfx_jumpground"), false, noone, 0.75, 1.1);
		}
		if window == 2 and window_timer == 1 and !hitpause {
			var max_hsp = 26;
			var boost = 10;
			
			if (vsp <= 7.5 /*>*/){
				vsp -= 3.5;
				vsp = clamp(vsp, -floor(jump_speed/1.5), 5);
			} else {
				vsp = -5;
			}
			hsp = -boost*spr_dir;
			//hsp = clamp(hsp - (boost*spr_dir), -max_hsp, max_hsp);
		}
	break;
	case AT_UTILT:
		if (window == 1) {
			if (window_timer == 1)
			{
				sound_play(sound_get("sfx_plague_spin"), false, noone, 0.8, 1.15)
			}
			else if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) {
				spawn_base_dust( x + (10 * spr_dir), y, "dattack", -spr_dir, 0);
			}
		}
		//Hud Offset
		if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || window == 3 || (window == 4 && image_index < 7)){//>
			hud_offset = 36;
		}
	break;
	case AT_DTILT:
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			spawn_base_dust( x - (26 * spr_dir), y, "walk", spr_dir, 0);
			spawn_base_dust( x + (64 * spr_dir), y, "dash", -spr_dir, 0);
		}
	break;
}


// if (attack == AT_NSPECIAL){
//     if (window == 3){
//         if (special_pressed){
//             window = 1;
//             window_timer = 0;
//         }
//     }
// }

// if (attack == AT_FSPECIAL){
//     if (window == 2){
//         if (special_pressed){
//             window = 3;
//             window_timer = 0;
//             destroy_hitboxes();
//         }
//     }
//     can_fast_fall = false;
// }

// if (attack == AT_USPECIAL){
//     if (window == 1 && window_timer == 1){
//         times_through = 0;
//     }
//     if (window == 2){
//         if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
//             if (times_through < 10){
//                 times_through++;
//                 window_timer = 0;
//             }
//         }
//         if (!joy_pad_idle){
//             hsp += lengthdir_x(1, joy_dir);
//             vsp += lengthdir_y(1, joy_dir);
//         } else {
//             hsp *= .6;
//             vsp *= .6;
//         }
//         var fly_dir = point_direction(0,0,hsp,vsp);
//         var fly_dist = point_distance(0,0,hsp,vsp);
//         var max_speed = 12;
//         if (fly_dist > max_speed){
//             hsp = lengthdir_x(max_speed, fly_dir);
//             vsp = lengthdir_y(max_speed, fly_dir);
//         }
//         if (special_pressed && times_through > 0){
//             window = 4;
//             window_timer = 0;
//         }
//         if (shield_pressed){
//             window = 3;
//             window_timer = 0;
//         }
//     }
//     if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
//         window++;
//         window_timer = 0;
//     }
// }

// if (attack == AT_DSPECIAL){
//     if (window == 2 && !was_parried){
//         can_jump = true;
//     }
//     can_fast_fall = false;
//     can_move = false
// }

//--------------------------------------------

#define collision_line_point
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var qi = argument4;
var qp = argument5;
var qn = argument6;
var rr, rx, ry;
rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
rx = x2;
ry = y2;
if (rr != noone) {
    var p0 = 0;
    var p1 = 1;
    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        var np = p0 + (p1 - p0) * 0.5;
        var nx = x1 + (x2 - x1) * np;
        var ny = y1 + (y2 - y1) * np;
        var px = x1 + (x2 - x1) * p0;
        var py = y1 + (y2 - y1) * p0;
        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
        if (nr != noone) {
            rr = nr;
            rx = nx;
            ry = ny;
            p1 = np;
        } else p0 = np;
    }
}
var r;
r[0] = rr;
r[1] = rx;
r[2] = ry;
return r;

//spawn_base_dust(x+(0*spr_dir),y, "dust name", spr_dir, angle);

// #define collision_line_point
// var x1 = argument0;
// var y1 = argument1;
// var x2 = argument2;
// var y2 = argument3;
// var qi = argument4;
// var qp = argument5;
// var qn = argument6;
// var rr, rx, ry;
// rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
// rx = x2;
// ry = y2;
// if (rr != noone) {
//     var p0 = 0;
//     var p1 = 1;
//     repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
//         var np = p0 + (p1 - p0) * 0.5;
//         var nx = x1 + (x2 - x1) * np;
//         var ny = y1 + (y2 - y1) * np;
//         var px = x1 + (x2 - x1) * p0;
//         var py = y1 + (y2 - y1) * p0;
//         var nr = collision_line(px, py, nx, ny, qi, qp, qn);
//         if (nr != noone) {
//             rr = nr;
//             rx = nx;
//             ry = ny;
//             p1 = np;
//         } else p0 = np;
//     }
// }
// var r;
// r[0] = rr;
// r[1] = rx;
// r[2] = ry;
// return r;


//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;