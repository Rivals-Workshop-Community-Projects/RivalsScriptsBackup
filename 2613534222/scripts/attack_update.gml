
//B - Reversals
if (attack == AT_JAB or attack == AT_NAIR){
    if ((left_down && state_timer <= 5 && spr_dir == 1) || (right_down && state_timer <= 5 && spr_dir == -1) &&     
     (b_reversed == false)) {
      hsp *= -1;
      spr_dir *= -1;
      b_reversed = true;
} else if (state_timer == 6) {
    b_reversed = false;
  }
}

switch(attack){
	case AT_JAB:
	case AT_NAIR:

		if(window == 1) {
			move_cooldown[AT_JAB] = 50;
			move_cooldown[AT_NAIR] = 50;
			shadowball_hit = false;
			proj_size = 1;
			if(window_timer == get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH)){
				sound_play(sound_get("charge"+string(proj_size)));
			}
		}
		if(window == 2){
			if(window_timer == get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH)){
				sound_play(sound_get("charge"+string(proj_size+1)));
				if(proj_size > 3){
					window_timer = 0;
					window = 3;
					sound_play(sound_get("charge"+string(proj_size+1)));
				} else {
					proj_size++;
				}
			}
			if(!(attack_down or right_stick_down or left_stick_down or special_down) and proj_size > 0){
				window_timer = 0;
				window = 3;
				sound_play(sound_get("charge"+string(proj_size+1)));
			}
		} else if (window == 3){
			if(window_timer == 1){
				//print_debug(proj_size);
				create_hitbox(AT_JAB, proj_size, x, y-32);
			}
		}
		
		if(shadowball_hit_timer > 0){
			if(up_down and (attack_down or special_down or strong_down) or up_stick_down){
				attack_end();
				attack = AT_USPECIAL;
				window = 0;
				window_timer = 0;
			}
		}
		break;
	case AT_FTILT:
		if(window == 1 and window_timer == 1){
			ftilt_punch_distance = -110;
			ftilt_accel = .1
		} else if(window == 2){
			ftilt_punch_distance+=4*ftilt_accel;
			ftilt_accel += .05;
			if(!(attack_down or right_stick_down or left_stick_down or special_down or strong_down) or ftilt_punch_distance > 400){
				sound_stop(sound_get("shadowpunch"));
				sound_play(sound_get("charge5"));
				window_timer = 0;
				create_hitbox(AT_FTILT, 1, floor(x+spr_dir*(ftilt_punch_distance)), y);
				window++;
			}
		}
		break;
	case AT_USPECIAL:
		if(window == 1){
			shadowball_hit_timer = 60;
		}
		if(window == 5){
			shadowball_hit_timer = 0;
		}
	case AT_UAIR:
		trigger_b_reverse();
		can_move = false;
		can_fast_fall = false;
		if (window < 3) {
			if (window == 1 and window_timer == 1 and u_player_reset) {
				u_player = noone;
			}
			if (window_timer > 8 or attack == AT_USPECIAL) {
				//print_debug(shadowball_hit);
				if(!joy_pad_idle and shadowball_hit_timer <= 0){
					var joy = joy_dir;
					vsp = lerp(vsp, lengthdir_y(14,joy), 0.25)
					hsp = lerp(hsp, lengthdir_x(14,joy), 0.25)
				} else if(shadowball_hit and shadowball_hit_timer > 0){
					x = lerp(x, shadowball_hit_player.x, 0.3)
					y = lerp(y, shadowball_hit_player.y, 0.3)
				}
			} 
		}else if (window == 3) {
			//shadowball_hit = false;
			vsp = 0;
			hsp = 0;
			if window_timer == 5
			{
				if !u_player_reset u_cooldown = u_max_cool;	
				u_player_reset = true;
			}
			
		} else if(window == 5){
			if(has_hit){
				if(window_timer == get_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH)){
					attack_end();
					set_state(PS_IDLE_AIR);
				}
				can_attack = true;
			} 
		}

		break;
	case AT_DAIR:
		if (window == 2 and window_timer == 6 and !hitpause) { 
			sound_play(sound_get("whoosh"));
		}
		break;
	case AT_TAUNT:
		if (taunt_down or window < 3) {
			if (window == 3 and window_timer >= get_window_value(attack, 1, AG_WINDOW_LENGTH)-1) {
				window_timer = 0
			}
		}
		else {
			set_state(PS_IDLE)
		}
		break;
}