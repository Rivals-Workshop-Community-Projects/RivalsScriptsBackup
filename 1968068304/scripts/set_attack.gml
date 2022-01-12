//set_attack.gml



if (free) {
	switch (attack) {
		case AT_FSPECIAL:
			attack = AT_FSPECIAL_AIR;
			if (move_cooldown[AT_FSPECIAL] <= 0) { scr_epinel_reset_consecutive_move_counters_and_buffers(); }
		break;
		
		case AT_DSPECIAL:
			//snap back to the platform if this was an accidental drop-through d-special.
			if (epinel_buffered_standing_on_platform_id != noone 
				&& instance_exists(epinel_buffered_standing_on_platform_id) 
				&& y > epinel_buffered_standing_on_platform_id.y
				&& y <= epinel_buffered_standing_on_platform_id.y + 20
				) {
			
				y = epinel_buffered_standing_on_platform_id.y + epinel_buffered_standing_on_platform_id.vsp;
				epinel_other_standing_on_platform_id = epinel_buffered_standing_on_platform_id;
				epinel_other_platform_collision_check_timer = 4;
				vsp = 1;
				old_jump = false; //prevents double-jump rising
				
				//temporarily let this attack work 'in the air'
				set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
			}
			
			else {
				attack = AT_DSPECIAL_AIR;
				epinel_buffered_standing_on_platform_id = noone;
			}
			epinel_consecutive_uair_jumps = 0;
			epinel_consecutive_dair_jumps = 0;
		break;
		
		case AT_NSPECIAL:
			if (move_cooldown[AT_NSPECIAL] <= 0) {
				scr_epinel_reset_consecutive_move_counters_and_buffers(); 
				//this move has first-frame invincibility
				//invincible = true;
				//invince_time = max(1, invince_time);
			}
		break;
		
		case AT_UAIR:
			if (move_cooldown[AT_UAIR] <= 0) {
				epinel_consecutive_uair_jumps++; //increase consecutive uair jump counter
				epinel_consecutive_dair_jumps = 0;
				epinel_buffered_standing_on_platform_id = noone;
			}
		break;
		
		case AT_DAIR:
			if (move_cooldown[AT_DAIR] <= 0) {
				epinel_consecutive_dair_jumps++; //increase consecutive uair jump counter
				epinel_consecutive_uair_jumps = 0;
				epinel_buffered_standing_on_platform_id = noone;
			}
		break;
		
		
		case AT_USPECIAL:
			if (epinel_heavy_state == 1) {
				attack = AT_USPECIAL_2;
			}
			else {
				scr_epinel_reset_consecutive_move_counters_and_buffers();
			}
		break;
		
		
		case AT_TAUNT:
		case AT_TAUNT_2:
			if (state != PS_RESPAWN && prev_state != PS_RESPAWN) scr_epinel_reset_consecutive_move_counters_and_buffers();
		break;
		
		default:
			scr_epinel_reset_consecutive_move_counters_and_buffers();
		break;
		
	}
	

}
else {
	//nspecial has first-frame invincibility
	if (attack == AT_NSPECIAL && move_cooldown[AT_NSPECIAL] <= 0) {
		//invincible = true;
		//invince_time = max(1, invince_time);
	}
	else if (attack == AT_TAUNT) {
		if (up_down || up_stick_down) attack = AT_EXTRA_2;
		else if  (!joy_pad_idle || down_stick_down || left_stick_down || right_stick_down) attack = AT_TAUNT_2; //(down_down || right_down || left_down || down_stick_down || left_stick_down || right_stick_down) attack = AT_TAUNT_2;
		
	}
	
	//buffers
	scr_epinel_reset_consecutive_move_counters_and_buffers();
}

//munophone
//user_event(13);


#define scr_epinel_reset_consecutive_move_counters_and_buffers
epinel_consecutive_uair_jumps = 0;
epinel_consecutive_dair_jumps = 0;
epinel_buffered_standing_on_platform_id = noone;