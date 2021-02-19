///#args attack
// 2B'S Set Attack

state_timer = 0; //no talky me angy

if (move_cooldown[attack] == 0) {
	switch (attack) {
	    case AT_DATTACK:
	    case AT_FTILT:
	    case AT_DTILT:
	    case AT_UTILT:
	    case AT_BAIR:
	    case AT_DAIR:
	        katana.vis = 0;
	        break;
	    case AT_UAIR:
	    case AT_FSTRONG:
	        greatsword.vis = 0;
	        break;
	    case AT_FSPECIAL: 
	    	if (!free) {
	    		spawn_hit_fx(x, y, ground_particle);
	    	}
	        rocket_started = false;
	        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, free ? 8 : 10);
	        moved_up = false;
	        rocket_land_sfx_played = false;
	        fspecial_land_sfx_played = false;
	        fspecial_launch_dust_played = false;
	        break;
	    case AT_DSTRONG:
	        repeat_times = 0;
	        greatsword.vis = 0;
	        break;
	    case AT_EXTRA_1:
	        do_a_fast_fall = false;
	        fast_falling = false;
	        clear_button_buffer(PC_DOWN_HARD_PRESSED);
	        clear_button_buffer(PC_JUMP_PRESSED);
	        break;
	    case AT_USPECIAL:
	    	if (!free) {
	    		spawn_hit_fx(x, y, ground_particle);
	    	}
	        uspecial_looping = false
	        reset_hitbox_value(AT_USPECIAL, 3, HG_WINDOW);
	        break;
	    case AT_FAIR:
	    case AT_JAB:
	        katana.vis = 0;
	        sword_hitpause = [0, 0, 0, 0, 0];
	        sword_hbox_created = [false, false, false, false];
	        sword_created = false;
	        break;
	    case AT_USTRONG:
	        set_pod_attack(PA_USTRONG);
	        if (pod.parry_lag != 0 || !pod.attached) {
	        	set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
	        } else {
	        	set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 0);
	        }
	        if (ds_list_size(spear_ids) != 0) {
				for (i = 0; i < ds_list_size(spear_ids); i++) {
					with (ds_list_find_value(spear_ids, i)) {
						hitstun = 30;
						set_state(PS_HITSTUN);
					}
				}
	        }
	        ds_list_clear(spear_grabbed);
	        ds_list_clear(spear_ids);
	        for (i = 0; i < 4; i++) {
	        	if (spears_hit[@i][@0] > 0) {
	        		spears_destroyed[@i] = [spears_hit[@i][@1], spears_hit[@i][@2], spear_fade, spears_hit[@i][@3]];
	        	}
	        }
	        spears_hit = [[0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0]];
	        spears = [noone, noone, noone, noone];
			set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
			set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
			set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
			set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
			break;
		case AT_TAUNT:
			if (special_down) {
				attack = AT_TAUNT_2;
				sd_text_image_index = 0;
				sd_boom_image_index = 0;
				suicide_loops = 0;
				suicide_timer = 119;
			} else {
				pod.depth = depth - 1;
				set_pod_attack(PA_TAUNT);
				cur_image = 0;
			}
			break;
		case AT_NSPECIAL:
			pod.volt_image_index = 0;
			break;
		case AT_DSPECIAL:
			if (dspecial_stalled) {
				set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
				set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 0);
			} else {
				set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
				set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
			}
			break;
	}
}

#define set_pod_attack(_attack)
with (pod) {
    if (can_attack && !move_cooldown[_attack]) {
        prev_state = state;
        state = PD_ATTACK;
        state_timer = 0;
        attack = _attack;
        window = 1;
        window_timer = 0;
        return true;
    }
}
return false;