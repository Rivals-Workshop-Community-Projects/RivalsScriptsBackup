// attack_update is a script called when you're doing an attack. It runs for every in-game frame.
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR ||attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack == AT_NSPECIAL){
    if(window == 2){
    	if(window_timer == 1){
    		var rock_spawn = create_hitbox(attack, 1, x + (32 * spr_dir), y);
    		var ite = 0;
    		with rock_spawn{ 
    			while(!position_meeting(x, y+4, other.solids) and !position_meeting(x, y+4, other.plats) and ite < 100){
    				x = x - (8 * spr_dir);
    				ite++;
    			}
    		}
    	}
    }
}

if(attack == AT_USPECIAL){
	can_wall_jump = true;
	can_wall_cling = true;
}

if(attack == AT_JAB){

		if(attack_down){
			set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
			set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
			set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 4);
			set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 6);
			
			set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
			set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
			set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 4);
			set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
			
			
			if(window == 6 && window_timer == 4){
				window = 1;
				window_timer = 0;
			}
			if(window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH )){
				window = 4;
				window_timer = 0;
			}
		}else{
			set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
			set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, -1);
			set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
			set_hitbox_value(AT_JAB, 2, HG_ANGLE, 50);
			set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, -1);
			set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
			set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.6);
		}
	
	
	// if(window == 6 and attack_pressed){
	// 	set_window_value(attack, 6, AG_WINDOW_GOTO, 1);
	// }
}

if(attack == AT_DTILT){
	if(attack_down or attack_pressed){
		if(window == 3 and window_timer > 3){ window++; window_timer = 0; }
		if(window == 5 and window_timer > 5){ window = 1; window_timer = 0; }
	}else{

	}
}

if(attack == AT_BAIR){
	can_wall_jump = true
	if(window == 1){
		set_attack_value(attack, AG_CATEGORY, 1)
	}else{
		set_attack_value(attack, AG_CATEGORY, 2)
	}
	if(window == 4){
		if(window_timer == 1 and !hitpause){
			shake_camera(7,5)
			
			sound_play(asset_get("sfx_kragg_rock_shatter"))
		}
	}
}

if(attack == AT_DAIR){ 
	if(window == 1 and window_timer == 16) sound_play(asset_get("sfx_blow_heavy2"))
}
if(attack == AT_TAUNT_2){
	if(window ==1){
		if (window_timer == 25){
			shake_camera(5,5)
			
			sound_play(asset_get("sfx_land_heavy"))
		}
	}
}
if(attack == AT_TAUNT){
	if(window ==1){
		if (window_timer == 25){
			shake_camera(5,5)
			
			sound_play(asset_get("sfx_land_heavy"))
		}
	}
}
if(attack == AT_DSTRONG){
	if(window ==2){
		if (window_timer == 12){
			shake_camera(5,5)
			
			sound_play(asset_get("sfx_kragg_rock_shatter"))
		}
	}
}
if(attack == AT_UTILT){
	if(window ==2){
		if (window_timer == 1){
			shake_camera(2,2)
		}
	}
}
if(attack == AT_JAB){
	if(window ==1){
		if (window_timer == 4){
			shake_camera(2,2)
			
			sound_play(asset_get("sfx_land_heavy"))
		}
	}
	if(window ==5){
		if (window_timer == 4){
			shake_camera(2,2)
			
			sound_play(asset_get("sfx_land_heavy"))
		}
}
}

if(attack == AT_NSPECIAL){
	if(window ==1){
		if (window_timer == 20){
			shake_camera(5,5)
		}
	}
}

if(attack == AT_NSPECIAL_AIR){

}

if(attack == AT_DSPECIAL){
	can_wall_jump = true
	if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 7;
            window_timer = 0;
        }
        
    }
    if(window ==1){
		if (window_timer == 9){
			shake_camera(4,3)}
		}
	 if(window ==3){
		if (window_timer == 4){
			shake_camera(4,3)}
		}
		fall_through = true
    can_move = true;
    can_fast_fall = false;
}

if(attack == AT_DSPECIAL_AIR){
	can_wall_jump = true;
	
	fall_through = true
	if (window ==1 ){
		if (window_timer == 18){
			sound_play(asset_get("sfx_swipe_heavy1"))
			}
	}
	if(window == 2 or window == 3){
		var dir_held = -left_down + right_down;
		if(dir_held != 0){
			spr_dir = dir_held;
		}
	}
	
	if (window == 4){
      if (special_pressed){
          window = 5;
          window_timer = 0;
      }
      if (shield_pressed){
          window = 9;
          window_timer = 0;
      }
  }
  if(window ==3){
		if (window_timer == 4){
		shake_camera(4,3)
		}
	}
	 if(window ==5){
		if (window_timer == 4){
			shake_camera(4,3)
		}
	}
  can_move = true;
  can_fast_fall = false;
}


if(attack == AT_NSPECIAL_AIR){
	can_wall_jump = true
	if(window == 1 or window == 3){
		set_attack_value(attack, AG_CATEGORY, 1);
		set_attack_value(attack, AG_NUM_WINDOWS, 3);
	}else{
		set_attack_value(attack, AG_CATEGORY, 2);
	}
	if(window == 2){
		move_cooldown[attack] = 25
		if(!free){
			window = 4;
			window_timer = 0;
			set_attack_value(attack, AG_NUM_WINDOWS, 5);
		}
	}
	if(window == 4){

		if (window_timer == 1){
			shake_camera(5,5)
		}

		if(window_timer > 14){
			if (attack_down or special_down or strong_down or shield_down){
				window = 5;
				window_timer = 0;
			}
			can_jump = true;
		}
		off_edge = true;
		if(free) window = 29;
	}
	if(window == 5){
		iasa_script()
	}
}

if(attack == AT_EXTRA_1){
	hsp = 0;
	can_move = false;
	can_fast_fall = false;
	can_wall_jump = false;
	can_wall_cling = false;
	
	if(window == 1){
		if(window_timer == 1){ 
			do_pratfall = false;
			has_hit_player = false;
			clinging_timer = 0;
			vsp = 0;
		}
		
	}

	if(window <= 1){
		var sol_col = false;
		with hurtboxID {
			sol_col = place_meeting(x,y, other.solids);
		}
		if(sol_col){
			var col_above = position_meeting(spr_dir < 0 ? hurtboxID.bbox_right+4 : hurtboxID.bbox_left-4, hurtboxID.bbox_top, solids);
			var col_below = position_meeting(spr_dir < 0 ? hurtboxID.bbox_right+4 : hurtboxID.bbox_left-4, hurtboxID.bbox_bottom, solids);
			
			if(!col_above){
				vsp += grav;
			}else{
				
				vsp = clinging_timer * 0.05;
				if vsp > max_fall { vsp = max_fall; }
				clinging_timer++;
			}
			
			
		}else{
			window = 2
			window_timer = 0;
		}
		
	}else{
		hsp = 0;
		vsp = 0;
	}
	
	if(window == 2 or (window == 1 and !jump_down)){
		has_walljump = false;
		clinging = false;
		do_not_cling = true;
		can_cling = false;
		set_state(PS_WALL_JUMP);
	}
}

if(attack == AT_TAUNT){
	
}

if(attack == AT_TAUNT_2){
	if(window == 1){
		set_window_value(attack, window, AG_WINDOW_TYPE, 9*taunt_down)
		if(!taunt_down){
			window++;
			window_timer = 0;
		}
	}
}

//attack_update.gml
if (attack == AT_FSPECIAL or attack == AT_USPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}

if (attack == AT_USPECIAL && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
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
		if (window == 2) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 40 * spr_dir;
			var pull_to_y = -20;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + lerp(grabbed_player_relative_x, pull_to_x, 0.2);
			grabbed_player_obj.y = y + lerp(grabbed_player_relative_y, pull_to_y, 0.2);
		}
		
		if(window == 3){
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 40 * spr_dir;
			var pull_to_y = -20;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + lerp(grabbed_player_relative_x, pull_to_x, 0.2);
			grabbed_player_obj.y = y + lerp(grabbed_player_relative_y, pull_to_y, 0.2);
			
			if(has_hit_player) {
				
			}
		}
		if(window == 4){
			var pull_to_x = 40 * spr_dir;
			var pull_to_y = -30;
			
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + pull_to_x;
			grabbed_player_obj.y = y + pull_to_y;
			
			if(has_hit_player){
				vsp += 1;
			}
		}
		
		if(window == 6 or (window == 7 and window_timer < 2)){
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = 20;
			
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + pull_to_x;
			grabbed_player_obj.y = y + pull_to_y;
		}
	}
}

if (attack == AT_FSPECIAL && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		can_move = true;
		can_wall_jump = true
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 4) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 40 * spr_dir;
			var pull_to_y = -20;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + lerp(grabbed_player_relative_x, pull_to_x, 0.2);
			grabbed_player_obj.y = y + lerp(grabbed_player_relative_y, pull_to_y, 0.2);
		}
		if(window == 5){
			var loopa_start = 13;
			var loopa_finish = 30;
			if(window_timer > loopa_start and window_timer < loopa_finish){ //window timer of the loop with the opponent
				loopa(loopa_start, loopa_finish);
				
			}else{ //not when in loop
				
				if(window_timer <= loopa_start){ // Before the loop
					var pull_to_x = 40 * spr_dir;
					var pull_to_y = -60;
					
					var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
					grabbed_player_obj.x = x + pull_to_x;
					grabbed_player_obj.y = y + pull_to_y;
					
				}else{ //After the loop
					var pull_to_x = 0 * spr_dir;
					var pull_to_y = 20;
					
					var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
					grabbed_player_obj.x = x + pull_to_x;
					grabbed_player_obj.y = y + pull_to_y;
				}
			}
		}
		
		if(window == 6 or (window == 7 and window_timer < 2)){ //Let them below the belly please
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = 20;
			
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + pull_to_x;
			grabbed_player_obj.y = y + pull_to_y;
		}
	}
}

#define loopa(start, finish)

//window_timer_to_period()
//period_to_coordinate()
//update_x_y()

var anim_frames = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
var anim_steps = get_window_value(attack, window, AG_WINDOW_LENGTH) / anim_frames;

if(floor(window_timer % anim_steps) == 0){
	var period = ((window_timer - start) / (finish - start)) + 0.2; //Head start in period by a bit, 0.2
	if(period > 0.75) period = 0.75;
	
	var new_x = spr_dir*cos(period*2*pi)*40
	var new_y = -1*sin(period*2*pi)*40
	
	grabbed_player_obj.x = x + new_x;
	grabbed_player_obj.y = y + new_y + -20;
}

