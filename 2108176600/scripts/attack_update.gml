// attack_update
was_attacking = true;
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_EXTRA_1 {
    //char_height = -300;
    char_height = lerp(char_height,-300,char_height);
    if window_timer == 60 char_height = char_heigh_orig;
}
if window == 1 && window_timer == 1 strong_charge = 0; 
if attack == AT_DSPECIAL {
    char_height = dspec_char_height; 
    if window == 2 {
        sound_play(sound_get("elu"));
        if (attack_down || special_down || taunt_down || left_strong_down || right_strong_down || up_strong_down || down_strong_down){
            dspec_attack = attack_down;
            dspec_special = special_down;
            dspec_down = down_down;
            dspec_up = up_down;
            dspec_left = left_down;
            dspec_right = right_down;
            dspec_taunt = taunt_down;
            dspec_left_strong = left_strong_down;
			dspec_right_strong = right_strong_down;
			dspec_up_strong = up_strong_down;
			dspec_down_strong = down_strong_down;
            window_timer = 0;
            window = 3;
        }
        if state_timer > 120 {
        	window_timer = 0;
            window = 3;
        }
    }
    if window == 3 {
    	with oPlayer {
    		if id != other.id {
    			if ((other.dspec_taunt && taunt_down) || (other.dspec_attack && attack_down) || (other.dspec_special && special_down) && 
    			(other.dspec_down == down_down || other.dspec_left == left_down || other.dspec_right == right_down || other.dspec_up == up_down)) {
    			    with other {
                        create_hitbox(AT_DSPECIAL,1,other.x,other.y);
                        sound_play(asset_get("jack_grunt"));
                        window_timer = 0;
                        window = 4;
                    }
    			}
    		}
    	}
    }
    // if window == 3 {
    //     with asset_get("oPlayer") {
    //         if id != other.id {
    //             if ((other.dspec_left_strong == left_strong_down && other.dspec_right_strong == right_strong_down && other.dspec_up_strong == up_strong_down && other.dspec_down_strong == down_strong_down) && ((attack_down == other.dspec_attack) && (special_down == other.dspec_special)) && 
    //             (other.dspec_down == down_down && other.dspec_up == up_down && (other.dspec_left == left_down || other.dspec_right == right_down))) {
    //                 print_debug("AAAA");
    //                 with other {
    //                     create_hitbox(AT_DSPECIAL,1,other.x,other.y);
    //                     sound_play(asset_get("jack_grunt"));
    //                     window_timer = 0;
    //                     window = 4;
    //                 }
    //             }
    //         }
    //     }
    // }
    if window == 4 char_height = char_heigh_orig;
}
if attack == AT_DTILT && window == 3 && window_timer == get_window_value(AT_DTILT,3,AG_WINDOW_LENGTH) {
    dtilt_end = true;
}

if attack == AT_DAIR && window == 3 && (attack_down || special_down) {
    hsp -= dair_vel[0]*spr_dir*(1 - .2*dair_count);
    vsp -= dair_vel[1]*(1 - .2*dair_count);
    if window_timer == 1 dair_count++;
}

if attack == AT_DSTRONG && free can_jump = true;

if attack == AT_USTRONG {
    if window == 2 && window_timer == 3 {
        instance_create(x-ustrong_offset[0]*spr_dir,y-ustrong_offset[1],"obj_article3");
        
    }
}

if attack == AT_JAB && window == 2 && window_timer == 1 {
    temp_jab_offset = jab_offset;
    while (!collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("par_block"),true,true) && 
           !collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("jumpthrough_32_obj"),true,true)) && 
           !free && temp_jab_offset > -10 {
        temp_jab_offset -= 1;
    }
    //if !collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("par_block"),true,true) temp_jab_offset = 0;
    jab_art = instance_create(x+spr_dir*temp_jab_offset,y,"obj_article1");
    jab_art.att = AT_JAB;
    jab_art.strong_charge = strong_charge;
    //jab_art._init = 1;
}

if attack == AT_FSTRONG && window == 4 && window_timer == 1 && !instance_exists(fstr_art) {
    fstr_art = instance_create(x,y,"obj_article1");
    fstr_art.att = AT_FSTRONG;
    //fstr_art._init = 1;
}



if attack == AT_USPECIAL {
	// fall_through = false;
	go_through = true;
    if window == 1 {
        if uspecial_state == 1 {
            window_timer = 0;
            window = 2;
            uspecial_state = 0; 
            stat_reset = 1;
            
        }
        if window_timer >= get_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH) - 1 {
            uspecial_state = 1;
            stat_reset = 1;
            set_state(PS_IDLE_AIR);
        }
    }
    if window == 2 && window_timer == 10 move_cooldown[AT_USPECIAL] = 120;
}

if attack == AT_DATTACK {
    if window == 2 && window_timer == 1 {
        x += dattack_offset*spr_dir;
        spr_dir *= -1;
        hsp *= -1;
    }
}

if attack == AT_TAUNT {
    with pet_obj {
		if variable_instance_exists(self,"yebth_eaten") && yebth_eaten == false && point_distance(x,y,other.x,other.y) < other.cone_dist {
			yebth_eaten = true;
			with other set_attack(AT_EXTRA_1);
		}
	}
    if window == 1 {
        //sound_play(sound_get("weird_hit1"));
        if window_timer == 1 sound_play(sound_get("ssstop"));
        taunt_type = 0; 
        
    } else sound_stop(sound_get("ssstop"));
    //if window == 3 sound_play(sound_get("weird_hit1"));
}

if attack == AT_EXTRA_1 {
    if window_timer == 10 sound_play(asset_get("sfx_swipe_medium1"));
    if window_timer == 35 sound_play(asset_get("sfx_syl_fspecial_bite"));
    if window_timer == 20 sound_play(sound_get("snap1"));
}