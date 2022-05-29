
switch (state){
    case PS_IDLE:
        hurtboxID.sprite_index = sprite_get("hurtbox")
    break;    
    case PS_IDLE_AIR:
        hurtboxID.sprite_index = sprite_get("hurtbox")
    break;
    case PS_DASH:
        hurtboxID.sprite_index = sprite_get("dhurtbox")
    break;
    case PS_FIRST_JUMP:
        hurtboxID.sprite_index = sprite_get("ahurtbox")
    break;
    case PS_DOUBLE_JUMP:
        hurtboxID.sprite_index = sprite_get("djhurtbox")
    break;    
    case PS_CROUCH:
        hurtboxID.sprite_index = sprite_get("churtbox")
    break;   
    case PS_HITSTUN:
        hurtboxID.sprite_index = sprite_get("hshurtbox")
    break; 
    case PS_WAVELAND:
        hurtboxID.sprite_index = sprite_get("whurtbox")
    break;
    default: break;
}

if ((state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR)) {
	if (attack == AT_FSPECIAL) {
		if ((window == 1) && (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH) - 1))) {
			current_sound_effect = sound_play(sound_get("fblastcharge"), true, noone, 1, 1);
		} else if ((window == 3) && (window_timer == 1)) {
			sound_stop(current_sound_effect);
		}
	    if ((window == 2)
	        && (!special_down))
	    {
	        window = 3;
	        window_timer = 0;
	    }
		if ((window == 1) && (window_timer == 1)) {
			focus_blast_charged_half = false;
			focus_blast_charged_full = false;
			// Destroy existing projectile
			/*
			if (instance_exists(current_focus_blast)) {
				if (current_focus_blast != noone) {
					current_focus_blast.destroyed = true;
					current_focus_blast = noone;
				}
			}
			*/
		} else if ((window == 2)
				   && (window_timer == (ceil(get_window_value(attack, window, AG_WINDOW_LENGTH) / 2))))
		{
			focus_blast_charged_half = true;
			sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
		} else if ((window == 2)
				   && (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)))
		{
			focus_blast_charged_full = true;
		} else if ((window == 4)
				   && (window_timer == 0))
		{
			if (focus_blast_charged_full) {
				// Big blast
				current_focus_blast = create_hitbox(attack, 3,
	                        			            x + (spr_dir * get_hitbox_value(attack, 3, HG_HITBOX_X)),
	                        			            y + get_hitbox_value(attack, 3, HG_HITBOX_Y));
			} else if (focus_blast_charged_half) {
				// Big blast
				current_focus_blast = create_hitbox(attack, 2,
	                        			            x + (spr_dir * get_hitbox_value(attack, 2, HG_HITBOX_X)),
	                        			            y + get_hitbox_value(attack, 2, HG_HITBOX_Y));
			} else {
				// Small blast
				current_focus_blast = create_hitbox(attack, 1,
	                        			            x + (spr_dir * get_hitbox_value(attack, 1, HG_HITBOX_X)),
	                        			            y + get_hitbox_value(attack, 1, HG_HITBOX_Y));
			}
			// Prevent spamming
			move_cooldown[AT_FSPECIAL] = stored_power_cooldown;
		}
	}
	
	if (attack == AT_DSPECIAL_2) {
		if ((window == 3)
			&& (window_timer == 1))
		{
			var current_psyshock = create_hitbox(attack, 1,
						        		         x + (spr_dir * get_hitbox_value(attack, 1, HG_HITBOX_X)),
						                	     y + get_hitbox_value(attack, 1, HG_HITBOX_Y));
			current_psyshock.rise_duration = psyshock_rise_duration;
			current_psyshock.travel_speed = psyshock_travel_speed;
			current_psyshock.rising_speed = psyshock_rise_speed;
			current_psyshock.max_seeking_range = psyshock_max_seeking_range;
			//current_psyshock.allow_reuse = psyshock_allow_reuse;
			current_psyshock.foot_offset = psyshock_foot_offset
			
			if (psyshock_additional_projectile) {
				var current_psyshock = create_hitbox(attack, 1,
							        		         x - (spr_dir * get_hitbox_value(attack, 1, HG_HITBOX_X)),
							                	     y + get_hitbox_value(attack, 1, HG_HITBOX_Y));
				current_psyshock.rise_duration = psyshock_rise_duration;
				current_psyshock.travel_speed = psyshock_travel_speed;
				current_psyshock.rising_speed = psyshock_rise_speed;
				current_psyshock.max_seeking_range = psyshock_max_seeking_range;
				//current_psyshock.allow_reuse = psyshock_allow_reuse;
				current_psyshock.foot_offset = psyshock_foot_offset
				current_psyshock.spr_dir *= -1; // Flip it around the other way
			}
			// Prevent spamming
			move_cooldown[AT_DSPECIAL_2] = psyshock_cooldown;
		} 
	}	
		else if ((window == 3)
			&& (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)))
		{
			if (psyshock_looping_enabled) {
				if (special_down) {
					window = 1;
					window_timer = 1;
				}
			}
	}
}