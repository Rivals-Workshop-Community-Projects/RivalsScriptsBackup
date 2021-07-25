
//munophone
//user_event(14);

//inertia logic: reset other_update_performed for the next frame.
with (oPlayer) {
	epinel_other_update_performed = false;
}

if (free) 
{	
	var grav_accel_factor = 2 / max(gravity_speed,0.01);
	
	//var heavy_falling = (move_cooldown[AT_USPECIAL] > 0);
	
	
	
	if (epinel_heavy_state > 0) {
		max_fall = 12;
		
		if (epinel_heavy_state > 1) move_cooldown[AT_USPECIAL] = max(move_cooldown[AT_USPECIAL], 2);
	}
	else {
		max_fall = 10.5;
	}
	
	image_alpha = c_gray;
	
	

	
	//increase air acceleration only when falling.
	if (vsp >= fast_fall) //fastfalling
	{
		air_accel = 0.5;
	}
	else if (vsp > -grav_accel_factor) 
	{
		air_accel = min(0.5, (vsp + grav_accel_factor) * 0.05 + 0.156); // * 0.05 + 0.15
	}
	else 
	{
		air_accel = 0.156;
		
		//stop old_jump when rising too quickly upwards.
		if (!hitpause && vsp <= -10) old_jump = false;
	}
	//if (state == PS_ATTACK_AIR && was_parried) {
	//	air_accel *= 0.5;
	//}
	
	//allow fastfalling at an earlier threshold than normal.
	if (!hitpause && epinel_heavy_state == 0 && down_hard_pressed && can_fast_fall && vsp < 0.01 && vsp >= -1.24) { //1.25
		vsp = -0.01;
		clear_button_buffer( PC_DOWN_STRONG_PRESSED );
	}

	
	//floaty jump code. we do this before setting epinel's gravity, 
	// in case a different player changed Epinel's gravity last frame in the other_update script.
	
	if (!hitpause && epinel_heavy_state == 0 && (state_cat == SC_AIR_NEUTRAL || (state == PS_PRATFALL && !was_parried) || (state == PS_ATTACK_AIR && attack != AT_FSPECIAL && attack != AT_DSPECIAL_AIR)) )
	{
		//reset platform buffer.
		if (state_timer == 5) {
			epinel_buffered_standing_on_platform_id = noone;
		}
		
		var difference = (6 - abs(vsp)) / (1 + (epinel_heavy_state >= 1) * 3);
		if (difference > 0)// && epinel_other_weightless_timer <= 0) 
		{
		    var floaty = gravity_speed / 7.5
			vsp -= difference * floaty;
		}
		
	}
	//refresh uair jump after a walljump.
	else if (state == PS_WALL_JUMP) {
		epinel_uair_jump_counter = 0;
		epinel_consecutive_uair_jumps = 0;
		epinel_consecutive_dair_jumps = 0;
		epinel_nspecial_halt_vsp = true;
		
		if (epinel_heavy_state > 0) {
			sound_play(sound_get("releaseland"), 0, noone, 0.4);
			spawn_hit_fx(x, y+16, epinel_fx_parry).depth = depth + 1;
			spawn_hit_fx(x, y+16, epinel_fx_parry_front).depth = depth - 1;
		}
		
		move_cooldown[AT_USPECIAL] = 0;
		epinel_heavy_state = 0;
	}

	
}
else //if not free
{
    //increase dash speed over time.
    switch (state) {
    	case PS_DASH:
    		epinel_dash_momentum += 1 + runeD * 1.5; //runeD = increases dash acceleration
			dash_speed = 3.25 + min(5.25, sqrt(max(2.56, epinel_dash_momentum)) / 1.5);
    	break;
    	case PS_JUMPSQUAT:
    		recover_from_heavy_state_if_epinel_is_not_in_inertia();
    	break;
    	case PS_DASH_TURN:
    	case PS_DASH_STOP:
    		//do nothing, but don't run default
    	break;
    	
    	case PS_LAND:
    	case PS_LANDING_LAG:
			if (state_timer > 2 && epinel_other_standing_on_platform_id != noone) {
				set_state(PS_IDLE);
				spawn_hit_fx(x, y, epinel_fx_inertia_small).depth = depth - 1;
			}
		case PS_HITSTUN_LAND:
		case PS_PRATLAND:
			recover_from_heavy_state_if_epinel_is_not_in_inertia();
			epinel_dash_momentum = 0;
			dash_speed = 3.25;
			
		break;
		
		case PS_PARRY:
			if (state_timer == 1 && !hitpause) {
				//parry fx
				spawn_hit_fx(x, y, epinel_fx_parry).depth = depth + 1;
				spawn_hit_fx(x, y, epinel_fx_parry_front).depth = depth - 1;
				
				epinel_dash_momentum = 0;
				dash_speed = 3.25;
			}
		break;
		
    	case PS_WAVELAND:
    		if (state_timer == 2 && epinel_other_standing_on_platform_id != noone && instance_exists(epinel_other_standing_on_platform_id) ) {
				//hsp *= 1.05; //+= sign(hsp);
				epinel_other_standing_on_platform_id.hsp = clamp(epinel_other_standing_on_platform_id.hsp + sign(hsp), -epinel_other_standing_on_platform_id.top_speed, epinel_other_standing_on_platform_id.top_speed);
    			if (abs(hsp) > 0.5 && ( sign(epinel_other_standing_on_platform_id.hsp) != sign(hsp) || abs(epinel_other_standing_on_platform_id.hsp) < 4) ) {
    				epinel_other_standing_on_platform_id.hsp = sign(hsp) * 4;
    				//epinel_other_standing_on_platform_id.friction_poll = 4;
    			}
    			spawn_hit_fx(x, y, epinel_fx_inertia_small).depth = depth - 1;
    		}
    		else {
				recover_from_heavy_state_and_reset_inertia();
				//recover_from_heavy_state_if_epinel_is_not_in_inertia()
			}
    		//continue; no break
    	case PS_IDLE:
    		if (recover_from_heavy_state_if_epinel_is_not_in_inertia() == false) {
    			if (state_timer > 2500) {
	    			set_state(PS_ATTACK_GROUND);
	    			attack = AT_EXTRA_2;
	    			window = 1;
	    			window_timer = 0;
    			}
    		}
    		//continue; no break
    	default:
    		epinel_dash_momentum = 0;
			dash_speed = 3.25;
		break;
    }
    
    
	max_jump_hsp = dash_speed;
	
		//regain uair jump when on the ground.
	//if (/*epinel_uair_jump_counter > 0 &&*/ state_cat != SC_AIR_COMMITTED && (state != PS_ATTACK_GROUND || attack != AT_USPECIAL)) { 
	if (attack != AT_USPECIAL) {
		epinel_uair_jump_counter = 0; epinel_consecutive_uair_jumps = 0; epinel_consecutive_dair_jumps = 0; epinel_nspecial_halt_vsp = true; 
		move_cooldown[AT_USPECIAL] = 0;
		
		if (is_epinel_performing_a_move_that_maintains_heavy_state()) {
			epinel_heavy_state = min(epinel_heavy_state, 1);
		}
		else {
			recover_from_heavy_state_if_epinel_is_not_in_inertia();
		}
	}
	
}

//double-jump protection
if (epinel_grav_jump) {
	epinel_grav_jump = 0;
	if (fast_falling && djumps > 0) djumps--;
}
if (state == PS_DOUBLE_JUMP && check_fast_fall && djumps > 0) epinel_grav_jump = 1;

//spawn respawn platform
if (state == PS_RESPAWN && state_timer == 90) {
	var plat = instance_create(x, y, "obj_article_platform");
	plat.player_id = id;
	plat.player = player;
	plat.spr_dir = spr_dir;
	plat.sprite_index = sprite_get("plat_large_by_Gourami");
	plat.hp = 2;
	plat.draw_hp = 500;
	plat.vsp = 0;
	plat.break_when_not_stood_on = true;
	epinel_other_standing_on_platform_id = plat;
}

//kirby + other workshop character fix
if (epinel_fspecial_currently_moving_with_superarmor) {
	switch (state) {
		case PS_ATTACK_GROUND:
		case PS_ATTACK_AIR:
			if (attack != AT_FSPECIAL && attack != AT_FSPECIAL_AIR) {
				epinel_fspecial_currently_moving_with_superarmor = false;
				//window = epinel_fspecial_move_restore_window;
				//window_timer = epinel_fspecial_move_restore_window_timer;
			}
		break;
		
		case PS_FROZEN:
		case PS_WRAPPED:
		case PS_HITSTUN:
		case PS_HITSTUN_LAND:
			epinel_fspecial_currently_moving_with_superarmor = false;
		break;
		
		default:
			hsp = clamp(hsp, -8, 8);
			old_hsp = clamp(old_hsp, -8, 8);
			vsp = clamp(vsp, -8, 8);
			old_vsp = clamp(old_vsp, -8, 8);
			epinel_fspecial_currently_moving_with_superarmor = false;
		break;
	}
}

if (epinel_is_armored) {
	if (attack == AT_FSPECIAL) {
		var restore;
		switch (state) {
			case PS_DEAD:
			case PS_SPAWN:
			case PS_RESPAWN:
			case PS_FROZEN:
				epinel_is_armored = false;
			case PS_ATTACK_GROUND:
			case PS_ATTACK_AIR:
				restore = 0;
			break;
			default:
				restore = 1;
			break;
		}
		
		if (restore) {
			//not even bypassing superarmor can stop epinel's superarmor.
			//print("fspecial restored")
			state = PS_ATTACK_GROUND;
			x = epinel_fspecial_move_restore_x;
			y = epinel_fspecial_move_restore_y;
			window = epinel_fspecial_move_restore_window;
			window_timer = epinel_fspecial_move_restore_window_timer;
			hsp = 0;
			vsp = 0;
			old_hsp = 0;
			old_vsp = 0;
			//sound_play(sound_get("glass_bottle_edited_freesounds_dasebr"), 0, noone, 1, 0.5);
		}
	}
}
else if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_FSPECIAL) {
	epinel_is_armored = false;
}



#define is_epinel_performing_a_move_that_maintains_heavy_state
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) return false;
switch (attack) {
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
	case AT_DSPECIAL_AIR:
	case AT_DAIR:
	case AT_UAIR:
		return true;
	default:
		return false;
}


#define recover_from_heavy_state_if_epinel_is_not_in_inertia
if (epinel_heavy_state > 0 && epinel_other_weightless_timer <= 0) {
	set_attack(AT_EXTRA_3);
	epinel_heavy_state = 0;
	return true;
	
}
return false;

#define recover_from_heavy_state_and_reset_inertia
if (epinel_heavy_state > 0) {
	epinel_other_weightless_timer = 0;
	set_attack(AT_EXTRA_3);
	epinel_heavy_state = 0;
	return true;
}
return false;

