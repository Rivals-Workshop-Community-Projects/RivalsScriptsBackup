//attack_update.gml
//when we want to program in more complex attacks than what the basic attack scripts do, we come here
//this script runs every frame when the player is in an attack state (PS_ATTACK_GROUND, PS_ATTACK_AIR)

//NOTE: to reffer to a window's window_timer == 0, we must take the last frame of the window before
//		example: if (window == 3 && window_timer == window_end) will reffer to window 4, window_timer 0

//B-reverse - it allows the character to turn in while using specials
//it's seperate from the switch statement because switch statements always take the later instance of that case
if (attack == coin_atk || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

grabs()

if(attack == AT_FTILT){
	if(window == 1){
		if(abs(hsp) < 4) hsp = 4*spr_dir
		else hsp += 0.4*spr_dir
	}
}

if(attack == AT_FAIR){
	if(window == 2){
		if(window_timer%2 == 0 and !hitpause and window_timer != 8){
			create_hitbox(attack, 1, x, y)
		}
	}
}

if(attack == AT_DAIR){
	
	if(window == 1){
		dair_fx_spawned = false;
		dair_fx_id = noone;
	}
	if(window == 2){
		if((window_timer == window_end) and !dair_fx_spawned){
			dair_fx_id = spawn_hit_fx(x+(2*spr_dir), y+10, dair_fx);
			dair_fx_id.depth = depth-1;
			dair_fx_spawned = true;
		}
	}
}

if(attack == AT_DATTACK){
	if(window == 1){
		if(window_timer == 4){
			sound_play(asset_get("sfx_syl_ustrong_part1"))
		}
		if(window_timer == window_end){
			sound_play(asset_get("sfx_syl_nspecial_plantgrowth"), false, noone, 0.9, 1.45)
		}
	}
	
}

if(attack == AT_FSTRONG){
	if(window == 1){
		fstrong_hfx_spawned = false;
		fstrong_hfx_id = noone;
		fstrong_sound_played = false;
	}
	if(window == 4){
		if(!fstrong_sound_played and window_timer <= 1){
			fstrong_sound_played = true;
			sound_play(asset_get("sfx_ori_spirit_flame_hit_1"))
		}
		if((window_timer == window_end) and !fstrong_hfx_spawned){
			fstrong_hfx_id = spawn_hit_fx(x+ 85*spr_dir, y-26, fstrong_hfx);
			fstrong_hfx_id.depth = depth-1;
			fstrong_hfx_spawned = true;
		}
	}
}

if(attack == AT_USTRONG){
	if(window != 1 and window <= 3){
		hud_offset = 45
	}
}

if(attack == AT_USPECIAL){
	if(window == 1 and window_timer == 1){
		hsp *= 0.5;
		vsp *= 0.5;
		if(vsp > 0) vsp = -1;
	}
	
	if(window == 1 or window == 2){
		can_fast_fall = false;
		grav = 0.3;
	}
	if(window == 3){
		hsp = 0
		vsp = 0
		can_fast_fall = false;
		if(window_timer == window_end){
			
			hat_falling = spawn_hit_fx(x,y-char_height, hat_fall_hfx);
			hat_falling.loops = 0;
			hat_falling.max_loops = 1;
			hat_falling.vsp = 1;
			hat_falling.grav = 0.02
			
			var tp_dist = 170;
			var ubp_dir = joy_pad_idle ? 90 : joy_dir
			var test_x = lengthdir_x(tp_dist, ubp_dir);
			var test_y = lengthdir_y(tp_dist, ubp_dir);
			
			if(test_y > 0 or position_meeting(x + test_x, y + test_y - 2, solids)){
				var v_off = 96;
				var posa = collision_line_point(x + test_x, y + test_y - v_off, x + test_x, y + test_y, solids, false, true);
				// spawn_hit_fx(posa[1], posa[2], HFX_GEN_OMNI);
				if(!position_meeting(posa[1], posa[2]-2, solids)){
					tp_to(posa[1], posa[2])
				}else{
					var posa2 = collision_line_point( x, y-char_height, x + test_x, y + test_y - v_off, solids, false, true);
					tp_to(posa2[1], posa2[2])
					// spawn_hit_fx(posa2[1], posa2[2], HFX_ZET_SHINE_FG);
				}
			}else{
				tp_to(x + test_x, y + test_y)
			}
			window_timer = 99;
		}
	}
	
	var float_a_lil = -0.5
	if(window == 4){
		can_fast_fall = false;
		can_move = false
		vsp = float_a_lil
		if(window_timer == 4){
			sound_play(asset_get("sfx_pom_dattack_snap"))
		}
		if(window_timer == window_end){
			user_event(1);
		}
	}
	if(window == 5){
		can_move = false
		vsp = float_a_lil
	}
	if(window == 6){
		can_wall_jump = true;
		if(window_timer > 12){
			if(!free){
				set_state(PS_PRATFALL)
			}
		}
	}
	
}

if(attack == AT_NSPECIAL){
	if(window == 1){
		frict = 0
	}
	if(window == 1 and window_timer == window_end){
		set_hitbox_value(attack, 1, HG_PROJECTILE_VSPEED, -7 + min(0, vsp*0.3));
		set_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED, 4 + max(0, 0.4*hsp*spr_dir));
	}
	if(window == 2){
		if(window_timer == 1) coins_in_bag--;
		if(window_timer == 7) move_cooldown[attack] = 32
	}
}

if(attack == AT_FSPECIAL){
	
	if(window == 1 and window_timer == 1){ //VERTICAL SPEED FREEZE
		if(!used_mf_air and vsp > 0) vsp *= 0.2;
		next_window = 3
		if(lvl == 2){
			sound_play(asset_get("sfx_zetter_shine"), false, noone, 1, 1)
		}
		if(lvl >= 3){
			sound_play(asset_get("sfx_zetter_shine_charged"), false, noone, 1, 1)
		}
	}
	if(window == 1 or window == 2){ //MOVEMENT CONSTRAINS
		
		if(!used_mf_air) if(vsp > -1) grav = clamp(grav*(vsp/10), 0.25, gravity_speed)
		if(!free) can_move = false;
		else if (abs(hsp) > air_max_speed) hsp *= 0.95;
	}
	
	if(window == 2){
		can_wall_jump = true;
		if(!free){ // REFRESHES
			if(used_mf_dash_air) used_mf_dash_air--;
			if(window_timer == 0 or window_timer == 20){
				if(used_mf_dash_ground) used_mf_dash_ground--
			}
		}
		
		if(!free){
			if(hsp*(-left_down+right_down) <= 1) hsp += (-left_down+right_down)*walk_accel
		}
		
		if(shield_pressed){
			if(free and used_mf_dash_air < 1){
				var dir = floor(point_direction(0,0, dcos(joy_dir), -dsin(joy_dir))/45 + .5)%8;
				if(joy_pad_idle) dir = spr_dir ? 0 : 4;
				hsp = lengthdir_x(10, dir*45);
				vsp = lengthdir_y(10, dir*45);
				used_mf_dash_air++;
				set_window(10);
			}
			if(!free and used_mf_dash_ground < 4){
				var dir = floor(point_direction(0,0, dcos(joy_dir), -dsin(joy_dir))/45 + .5)%8;
				if(joy_pad_idle) dir = spr_dir ? 0 : 4;
				hsp = lengthdir_x(10 - used_mf_dash_ground*1.5, dir*45);
				vsp = lengthdir_y(10 - used_mf_dash_ground*1.5, dir*45);
				used_mf_dash_ground++;
				set_window(10);
			}
		}
	}
	var strong_stick_any = up_stick_pressed + down_stick_pressed + left_stick_pressed + right_stick_pressed
	var strong_pressed_any = up_strong_pressed + down_strong_pressed + left_strong_pressed + right_strong_pressed
	if(window == 2 and (attack_pressed or strong_stick_any or strong_pressed_any)){ // STANCE CANCEL
		used_mf_air = true;
		if(attack_pressed) clear_button_buffer(PC_ATTACK_PRESSED)
		
		if(strong_stick_any){
			clear_button_buffer(PC_LEFT_STICK_PRESSED)
			clear_button_buffer(PC_RIGHT_STICK_PRESSED)
			clear_button_buffer(PC_UP_STICK_PRESSED)
			clear_button_buffer(PC_DOWN_STICK_PRESSED)
		}
		if(strong_pressed_any){
			clear_button_buffer(PC_STRONG_PRESSED)
		}
		clear_button_buffer(PC_SPECIAL_PRESSED)
		window = 29;
	}
	if(window == 2 and !special_down){
		set_window(0);
		mid_attack_lvl = lvl;
		lvl = 1;
	}
	
	if(window == 3){ // SLASH
		used_mf_air = true;
		if(window_timer == window_end){
			var v_dir = down_down - up_down;
			var h_dir = right_down - left_down;
			var ma = 0;
			if(free){
				if(v_dir != 0){
					ma = v_dir > 0 ? -25 : 20;
				}
			}else{
				if(v_dir != 0){
					ma = v_dir > 0 ? -20 : 35;
				}
			}
			
			set_window_value(attack, window, AG_WINDOW_GOTO, window-1 + ( -sign(ma) + 2)*2); // GOTO VERTICAL OR HORIZONTAL
			if(!free){
				if(ma < 0 ){
					hsp = -2*spr_dir
					vsp = -5;
				}
			}
			
			var wid = mist_distance[mid_attack_lvl-1];
			var pos_x = (wid/2)*dcos(ma) + 20*dcos(ma);
			var pos_y = (wid/2)*-dsin(ma) + 30*-dsin(ma) - 30;
			set_hitbox_value(attack, 1, HG_HITBOX_X, pos_x)
			set_hitbox_value(attack, 1, HG_HITBOX_Y, pos_y)
			set_hitbox_value(attack, 1, HG_WIDTH, wid)
			var hb = create_hitbox(attack, 1, x, y)
			hb.spr_dir = spr_dir
			hb.mist_angle = ma
			hb.tangent_angle = point_direction(0,0, spr_dir*dcos(ma), -dsin(ma))
			// print(hb.tangent_angle)
			hb.lvl = mid_attack_lvl
		}
	}
	
	if(window == 4 or window == 6 or window == 8){ // SLASH WINDOW
		grav = 0
		if(window_timer == 1 and !hitpause){
			// hsp += free*spr_dir*-0.5
			// print("used_mf_air: " + string(used_mf_air_vboost))
			vsp = free*(-5 + 4*!used_mf_air_vboost)
		}
		move_cooldown[attack] = 44;
	}
	
	if(window == 5 or window == 7 or window == 9){ // SLASH ENDLAG
		grav = 0.35
		used_mf_air_vboost = false
	}
	
	if(window == 10){ //DASH CANCEL
		grav = 0;
		can_wall_jump = true;
		if(window_timer == 1){
			sound_play(asset_get("sfx_waveland_pom"), false, noone, 1, 1.2)
		}
		if(attack_pressed and next_window != 29){
			next_window = 29;
			clear_button_buffer(PC_ATTACK_PRESSED);
		}
		if(window_timer == window_end){
			if(next_window == 29){
				hsp *= 0.7 - 0.2*(free)
				vsp *= 0.7
				set_window(next_window)
			}else{
				hsp *= 0.4
				vsp *= 0.4
				if(special_down){ set_window(2) }
				else{ set_window(3) }
			}
		}
	}
}

if(attack == AT_TAUNT){
	if(window_timer == 6){
		sound_play(sound_get("desp_cointoss"), false, noone, 0.6, 0.88)
	}
	if(window_timer == 25){
		sound_stop(sound_get("desp_cointoss"))
	}
	if(window_timer == 47){
		if(instance_exists(taunt_bird_fx)){
			spawn_hit_fx(taunt_bird_fx.x, taunt_bird_fx.y, sparkle_fx_hfx);
			taunt_bird_fx.step_timer = taunt_bird_fx.hit_length
		}
		
		
		taunt_bird_fx = spawn_hit_fx(x +30*spr_dir ,y-40, taunt_bird_hfx);
		taunt_bird_fx.loops = 0;
		taunt_bird_fx.max_loops = 4;
		taunt_bird_fx.hsp = 1.5*spr_dir;
		taunt_bird_fx.vsp = -0.5;
		taunt_bird_fx.grav = -0.01;
		taunt_bird_fx.depth = depth-1;

	}
}

#define grabs()


if(attack == AT_DSPECIAL){
	if(window == 3 and window_end){
		if(grabbed_player_obj != noone){
			vsp = 0
			grav = 0
			hsp = 0
		}else{
			window = 13;
			window_timer = 0;
		}
		
	}
	if(window >= 4 and window <= 11){
		grav = 0
		can_move = false
	}
	if(window >= 5 and window <= 9){
		
		if(window_timer == 1 and !hitpause){
			create_hitbox(AT_DSPECIAL, 2, x, y)
		}
		if(window%2==1 and window_timer == 2 and !hitpause){
			if(coins_in_bag < max_coins_in_bag){
				coins_in_bag++;
				coin_fade_in_timer = coin_fade_in_time;
			}
		}
	}
	
	if(window == 12){
		grav = 0.4
		if(window_timer > 27){
			if(was_parried){
				window = 29;
			}else{
				iasa_script()
			}
		}
		if(window_timer == 15 or window_timer == 19){
			sound_play(asset_get("mfx_mm_coin"), false, noone, 1, 0.9)
		}
	}
	
	if(window == 13){
		if(window_timer == 10){
			sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.6, 0.7)
		}
		if(window_timer > 28){
			if(was_parried){
				window = 29;
			}else{
				iasa_script()
			}
		}
	}
}

//Grab template by Mawral
if (attack == AT_DSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) {  
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if(instance_exists(grabbed_player_obj)){
		if (window >= 11) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window >= 3 and window <= 10) {
				can_move = false;
				if (window_timer <= 1) { reset_window_value(attack, 5, AG_WINDOW_GOTO) }
				
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 70 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			
				grabbed_player_obj.x = x + floor(ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length));
				grabbed_player_obj.y = y + floor(ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length));
				
				
				
			}
		}
	}
}


#define tp_to
/// tp_to(x1, y1)
var x1 = argument0, y1 = argument1;

x = x1;
y = y1;

//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
  if (window_num == 0) window ++;
  else if (window_num == -1) window = window;
  else window = window_num;
  window_timer = 0;
}

//useful print function - allows us to print all variables in an specified object
//usage: print_vars(object_name); | print_vars();
#define print_vars
/// print_vars(instance = self)
{
  //prints the variables in the given instance, or in whatever instance ran the function.
  var instance = argument_count > 0 ? argument[0] : self;
  with (instance) {
    var names = variable_instance_get_names(self);
    var str = "";
    var lb = "
  ";
    for (var i = 0; i < array_length_1d(names); i++) {
      var val_to_add = string(variable_instance_get(self, names[i]));
    str += names[i] + ': ' + (string_length(val_to_add) > 100 ? "!!value ommitted due to size!!" : val_to_add) + ';'+lb
    
    }
    var str_length = string_length(str);
    var it = 1;
    var max_pages = ceil(str_length/4096);
    for (var i = 1; i < str_length; i+=4096) {
      get_string(`variables pg ${it++}/${max_pages}`, string_copy(str,i,4096));
    }
  }
}

//collision_line() but it returns the point it collided with.
//Function written by YellowAfterLife
//https://yal.cc/gamemaker-collision-line-point/
#define collision_line_point
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, obj = argument4, prec = argument5, notme = argument6;
{
    var rr, rx, ry;
    rr = collision_line(x1, y1, x2, y2, obj, prec, notme);
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
            var nr = collision_line(px, py, nx, ny, obj, prec, notme);
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
}

//collision_line() but it returns the point it collided with.
//Function written by YellowAfterLife
//https://yal.cc/gamemaker-collision-line-point/
#define not_position_meeting_point
/// collision_line_point(x1, y1, x2, y2, obj)
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, obj = argument4;
{
    var rr, rx, ry;
    rr = position_meeting(x2, y2, obj);
    rx = x2;
    ry = y2;
    if (rr == noone) {
        var p0 = 0;
        var p1 = 1;
        repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        		// print("WHAT")
            var np = p0 + (p1 - p0) * 0.5;
            var nx = x1 + (x2 - x1) * np;
            var ny = y1 + (y2 - y1) * np;
            var px = x1 + (x2 - x1) * p0;
            var py = y1 + (y2 - y1) * p0;
            var nr = position_meeting(nx, ny, obj);
            if (nr == noone) {
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
}

#macro GS_X 0
#macro GS_Y 1
#macro GS_TIMER 2
#macro GS_EXISTS 3
#macro GS_STATE 4
#macro GS_STATE_TIMER 5