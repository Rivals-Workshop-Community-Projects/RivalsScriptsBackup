//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Taunts
if (attack == AT_TAUNT_2) {
    user_event(0);
    
    if (!place_meet(bbox_right - 160, bbox_bottom + 4)) {
        x += 16;
    }
    if (!place_meet(bbox_left + 160, bbox_bottom + 4)) {
        x -= 16;
    }
}

if (attack == AT_TAUNT) {
    if (window == 2){
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            if (!taunt_down) {
                window = 3;
                window_timer = 0;
            }
        }
    }
    
    if (window < 3 && !free) {
        if (left_down)
            hsp = -1;
        else if (right_down)
            hsp = 1;
        hsp *= 0.6;
    }
}

//Attacks
if (attack == AT_DATTACK) {
    if (window == 3 && has_hit && !hitpause) {
        can_ustrong = true
    }
}
if (attack == AT_DAIR) {
    if ((window == 2) || (window == 3 && window_timer >= 0 && window_timer <= 12)) {
        if (attack_down || strong_down || down_stick_down) {
	        set_attack_value(attack, AG_CATEGORY, 2);
	        if (!free && !hitpause) {
	            window = 4;
	            window_timer = 0;
	            destroy_hitboxes();
	        }
        }
    }
    else if (window < 4 || window >= 5) { 
        reset_attack_value(attack, AG_CATEGORY);
    }
}


//Strongs
if (attack == AT_FSTRONG) {
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	grabbed_player_timer = 0;
    }
    if (instance_exists(grabbed_player_obj)) {
    	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
    	if (window >= 5) { grabbed_player_obj = noone; }
    	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
    		grabbed_player_obj = noone; 
    	}
    
    	else {
    		if (window_timer <= 1) {
    			grabbed_player_relative_x = grabbed_player_obj.x - x;
    			grabbed_player_relative_y = grabbed_player_obj.y - y;
    		}
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		grabbed_player_timer++;
    		//if this is the first frame of a window, store the grabbed player's relative position.
    		var pull_to_x = 36 * spr_dir
    		var pull_to_y = 0;
    		var window_length = 24;
    		if (grabbed_player_timer > window_length)
    		    grabbed_player_timer = window_length;
			grabbed_player_obj.x = x + ease_linear( grabbed_player_relative_x, pull_to_x, grabbed_player_timer, window_length);
			grabbed_player_obj.y = y + ease_linear( grabbed_player_relative_y, pull_to_y, grabbed_player_timer, window_length);
	    }
    }
}
if (attack == AT_USTRONG){
    if (window == 3 && !hitpause) {
        var card_travel_spd = 17
        switch (card_charge) {
            case 1:
                if (window_timer == 1) {
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 90, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 60, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 120, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
            break;
            case 2:
                if (window_timer == 1) {
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 120, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 80, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 60, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 100, 1);
                }
            break;
            case 3:
                if (window_timer == 1) {
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 90, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 60, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 45, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 120, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 135, 1);
                }
            break;
            default:
                if (window_timer == 1) {
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 100, 1);
                    shoot_card(attack, 2, 2 * spr_dir, -48, card_travel_spd, 80, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
            break;
        }
    }
    if (window == 4) {
        card_charge = 0;
    }
}

if (attack == AT_DSTRONG){ 
    can_move = window == 5;
    can_fast_fall = false;
    set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, window >= 2);
    set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, lerp(-6.5, -9.5, strong_charge / 60));
    if (window == 4 && !hitpause) {
        var card_travel_spd = 17
        switch (card_charge) {
            case 1:
                if (window_timer == 1) {
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 330, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 315, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 300, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
            break;
            case 2:
                if (window_timer == 1) {
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 330, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 315, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 300, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 285, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
            break;
            case 3:
                if (window_timer == 1) {
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 330, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 315, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 300, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 285, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 270, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
            break;
            default:
                if (window_timer == 1) {
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 315, 1);
                    shoot_card(attack, 1, 16 * spr_dir, -32, card_travel_spd, 300, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
            break;
        }
    }
    if (window == 5) {
        card_charge = 0;
    }
    if (window >= 5) {
    		if (!free) {
    			set_state(PS_LANDING_LAG);
    			landing_lag_time = 9;
    		}
    		can_fast_fall = window_timer >= ceil(get_window_value(attack, window, AG_WINDOW_LENGTH) / 2)
    }
    if (window == 1) {
    	set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
    	can_fast_fall = false;
    }
}

//Specials
if (attack == AT_NSPECIAL){
    if (free && window != 6 && window < 8) {
        hsp *= 0.88;
    }
    can_fast_fall = window >= 6;
    if (window < 8) {
        vsp = min(vsp, 8);
    }
    
    if (window == 1 && (!special_down || card_charge == 3)) {
        window = 6;
        window_timer = 0;
    }
    
    if (window == 1 && window_timer == 1) {
        if (card_charge == 1) {
            window = 2;
            window_timer = 17;
        }
        if (card_charge == 2) {
            window = 3;
            window_timer = 17;
        }
        if (card_charge >= 3) {
            window = 6;
            window_timer = 0;
        }
        reset_window_value(attack, 8, AG_WINDOW_LENGTH);
    }
    //Storing card charges
    if (window == 2 && window_timer == 16) {
        sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
        card_charge = 1;
    }
    if (window == 3 && window_timer == 16) {
        sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
        card_charge = 2;
    }
    if (window == 4 && window_timer == 16) {
        sound_play(asset_get("sfx_frog_fspecial_charge_full"));
        card_charge = 3;
    }
    
    if (window >= 2 && window <= 4) {
        if (!free) {
            if ((left_pressed || right_pressed) || shield_pressed) {
                if (shield_pressed)  {
                    window = 5;
                    window_timer = 0;
                    sound_play(asset_get("mfx_star"));
                    clear_button_buffer(PC_SHIELD_PRESSED)
                }
                else 
                {
                    attack_end();
                    if (left_pressed)
                        spr_dir = -1;
                    if (right_pressed)
                        spr_dir = 1;
                    set_state(PS_ROLL_FORWARD)
                    invincible = 1;
                    invince_time = 12;
                    window = 1;
                }
            }
        }
        else {
            if (shield_down) {
                can_shield = true;
            }
        }
        if (!special_down) {
            window = 6;
            window_timer = 0;
        }
    }
    if (window == 6 && window_timer == 1 && !hitpause) {
        vsp *= 0.6;
    }
    
    if (window == 7 && !hitpause) {
        if (free && window_timer == 1 && !fast_falling){
            hsp = -2 * spr_dir
            vsp += -7.25;
        } 
        
        var card_travel_spd = 17
        switch (card_charge) {
            case 1:
                if (window_timer == 1) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 0, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 300, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                if (window_timer == 3) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 15, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 285, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                set_window_value(attack, 8, AG_WINDOW_LENGTH, 16);
            break;
            case 2:
                if (window_timer == 1) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 0, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 315, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                if (window_timer == 3) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 15, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 300, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                if (window_timer == 5) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 30, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 285, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                set_window_value(attack, 8, AG_WINDOW_LENGTH, 14);
            break;
            case 3:
                if (window_timer == 1) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 0, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 330, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                if (window_timer == 3) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 15, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 315, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                if (window_timer == 5) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 30, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -32, card_travel_spd, 300, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                if (window_timer == 7) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 45, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 285, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                set_window_value(attack, 8, AG_WINDOW_LENGTH, 12);
            break;
            default:
                if (window_timer == 1) {
                    if (!free) shoot_card(attack, 1, 44 * spr_dir, -32, card_travel_spd, 0, 1);
                    else shoot_card(attack, 1, 48 * spr_dir, -24, card_travel_spd, 315, 1);
                    sound_play(sound_get("sfx_lucy_nspecial1"));
                }
                reset_window_value(attack, 8, AG_WINDOW_LENGTH);
            break;
        }
    }
    if (window == 8) {
        card_charge = 0;
    }
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR ){
    move_cooldown[AT_FSPECIAL] = 25;
    move_cooldown[AT_FSPECIAL_AIR] = 25;
    can_fast_fall = false;
    if (window == 1 && window_timer == 1) {
        fspecial_hit = false;
        if (instance_exists(lucy_card_id) && distance_to_point(lucy_card_id.x, lucy_card_id.y) <= 44 && sign (lucy_card_id.x - x) == spr_dir) {
            if (left_down)
                lucy_card_id.spr_dir = -1
            if (right_down)
                lucy_card_id.spr_dir = 1;
            spr_dir = lucy_card_id.spr_dir;
            window = 4;
            window_timer = 0;
        }
    }
    
    if (window == 2) {
        if (attack == AT_FSPECIAL) {
            hsp = 0;
            vsp = 0;
            grav = 0;
        }
        if (window_timer == 1 && !hitpause) {
            if (attack == AT_FSPECIAL_AIR) {
                vsp = -6;
            }
            if (instance_exists(lucy_card_id)) {
                lucy_card_id.state = 4;
                lucy_card_id.state_timer = 0;
                lucy_card_id.window = 1;
                lucy_card_id.window_timer = 0;
            }
            if (attack == AT_FSPECIAL) {
                lucy_card_id = instance_create(x + 40 * spr_dir, y - 24 , "obj_article1")
                lucy_card_id.spr_dir = spr_dir;
            }
            else {
                lucy_card_id = instance_create(x, y + 24 , "obj_article1")
                lucy_card_id.spr_dir = spr_dir;
            }
        }
    }
    
    if (window == 3) {
        if (attack == AT_FSPECIAL) {
            hsp = 0;
            vsp = 0;
            grav = 0;
        }
        else {
            hsp *= 0.8;
        }
        var window_l = get_window_value(attack, window, AG_WINDOW_LENGTH);
        if (window_timer >= window_l - 2) {
            if (!special_down || was_parried) {
                window = 10;
                window_timer = 0;
            }
        }
    }
    
    if (window == 4 && window_timer == 1) {
        if (instance_exists(lucy_card_id)) {
            lucy_card_id.state = 2;
            lucy_card_id.state_timer = 0;
            lucy_card_id.window = 1;
            lucy_card_id.window_timer = 0;
        }
    }
    
    if (window == 4 || window == 5 || window == 6) {
        hsp = 0;
        vsp = 0;
        grav = 0;
        fspecial_hit = has_hit;
    }
    if (window == 7 && window_timer == 1) {
        destroy_hitboxes();
        hsp = get_window_value(attack, window, AG_WINDOW_HSPEED);
        vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
        set_window_value(attack, window, AG_WINDOW_TYPE, fspecial_hit ? 0 : 7);
        if (fspecial_hit) djumps = 0;
    }
    if (window == 7) {
        hsp *= 0.8;
    }
}

if (attack == AT_USPECIAL) {
    can_fast_fall = false;
    can_move = window == 2;
    if (window == 1) {
        uspecial_angle = 90;
        uspecial_angle_real = uspecial_angle;
        uspecial_angle_time = 0;
        spr_angle = 0;
    }
    if(window == 2){
        if(window_timer == 1){
            if (free) vsp = -6;
            else vsp = -3;
        }
    }
    if(window <= 3){
        hsp *= 0.9;
    }
    if (window == 4) {
        if (window_timer == 1) {
            draw_y = -16;
        }
        hsp *= 0.9;
        vsp *= 0.9;
        if (!joy_pad_idle) {
            var ang = joy_dir
            uspecial_angle_real += angle_difference(ang,uspecial_angle_real) * 0.1;
       
            if (uspecial_angle_real > 270 || uspecial_angle_real < 30) {
                uspecial_angle_real = 30;
            }
            if (uspecial_angle_real > 150 && uspecial_angle_real < 270) {
                uspecial_angle_real = 150;
            } 
        	
        }
        spr_angle = uspecial_angle_real - 90;
    }
    
    if(window == 5 && !hitpause) {
        if(window_timer == 1){
        vsp = sin(degtorad(spr_angle - 90))*28
        hsp = -cos(degtorad(spr_angle - 90))*28
            if(hsp > 0){
                spr_dir = 1;
            }else{
                spr_dir = -1;
            }
            
        }
        hsp = lerp(hsp, 0, .1)
        vsp = lerp(vsp, 0, .1)
        
        //Card interaction
        
        if (window_timer >= 8 && !hitpause && (special_down || attack_down)) {
            destroy_hitboxes();
            window = 7;
            window_timer =  0;
            spr_angle = 0;
            draw_y = 0;
        }
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            spr_angle = 0;
            draw_y = 0;
        }
    }
    
    if(window >= 5) {
        can_wall_jump = true;
    }
    
    if (window == 7) {
        hsp *= 0.8;
        vsp *= 0.8;
        if (window_timer == 1) {
            spr_angle = 0;
        }
    }
    
}

if (attack == AT_DSPECIAL){
    var statrup_window = window == 1 || window == 4 || window == 7 || window == 10 || window == 13 || window == 16 || window == 19 || window == 22;
    var active_window = window == 2 || window == 5 || window == 8 || window == 11 || window == 14 || window == 17 || window == 20 || window == 23 || window == 24 || window == 25;
    var end_window = window == 3 || window == 6 || window == 9 || window == 12 || window == 15 || window == 18 || window == 21 || window == 26;
    
    if (state_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	grabbed_player_timer = 0;
    }
    
    if (statrup_window || active_window || window == 26) {
        hsp *= 0.75;
        vsp *= 0.75;
        grav = 0;
    }
    can_jump = end_window && has_hit && window <= 12;
    if (end_window && window != 26) {
        grav = 0.25;
        if (!has_hit && !has_hit_player && window_timer == 1 && blackjack_cooling_timer <= 0) {
        	blackjack_meter /= 2;
        	blackjack_meter = round(blackjack_meter);
        }
    }
    if (statrup_window && window_timer == 1) {
        blackjack_meter_stored = blackjack_meter;
    }
    if (window < 22 || window >= 23) {
        var window_anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
        var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
        var window_div = round(window_length / window_anim_length)
        if (window < 22) {
            for (var i = 1; i <= window_length; i+= window_div) {
                if (window_timer == i && !hitpause) {
                        blackjack_max_timer ++;
                }
            }
            
        }
        else {
            if (!was_parried)
            {
                if (window_timer % 3 == 0 && !hitpause) {
                    blackjack_max_timer ++;
                }
            }
            else {
                if (window_timer % 3 == 0 && !hitpause) {
                    blackjack_max_timer --;
                }
            }
        }
    }
    
    if (window >= 22) {
        if (window < 26) {
            soft_armor = 7;
        }
        else {
            soft_armor = 0;
        }
        if (window == 22 && window_timer == 1) {
            blackjack_max_timer = 2;
        }
        blackjack_cooling_timer = 1;
        if (window < 25) {
            if (!was_parried) {
                if (blackjack_max_timer < 21 && !hitpause) {
                    if (state_timer % 12 == 0 && blackjack_max_timer >= 4) {
                        sound_play(asset_get("sfx_ell_small_missile_fire"))
                    }
                    if (blackjack_max_timer >= 3 && blackjack_max_timer < 6)
                        create_hitbox(AT_DSPECIAL, 10, x, y);
                    if (blackjack_max_timer >= 6 && blackjack_max_timer < 9)
                        create_hitbox(AT_DSPECIAL, 11, x, y);
                    if (blackjack_max_timer >= 9 && blackjack_max_timer < 12)
                        create_hitbox(AT_DSPECIAL, 12, x, y);
                    if (blackjack_max_timer >= 12 && blackjack_max_timer < 15)
                        create_hitbox(AT_DSPECIAL, 13, x, y);
                    if (blackjack_max_timer >= 15 && blackjack_max_timer < 21)
                        create_hitbox(AT_DSPECIAL, 14, x, y);
                }
                if (blackjack_max_timer >= 21 && !hitpause) {
                    window = 25;
                    window_timer = 0;
                    sound_play(asset_get("sfx_ell_arc_taunt_end"))
                }
            }
            else {
                if (blackjack_max_timer <= 0 && !hitpause) {
                    window = 25;
                    window_timer = 1;
                }
            }
        }
    
        if (instance_exists(grabbed_player_obj)) {
            //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
        	if (window >= 26) { grabbed_player_obj = noone; }
        	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
        
            else {
        		//keep the grabbed player in hitstop until the grab is complete.
        		grabbed_player_obj.hitstop = 2;
        		grabbed_player_obj.hitpause = true;
        		grabbed_player_timer++;
        		//if this is the first frame of a window, store the grabbed player's relative position.
        		if (grabbed_player_timer <= 1) {
        			grabbed_player_relative_x = grabbed_player_obj.x - x;
        			grabbed_player_relative_y = grabbed_player_obj.y - y;
        		}
        		 
        		//on the first window, pull the opponent into the grab.
        		if (window < 25) { 
        			//chane as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
        			var pull_to_x = 0;
        			var pull_to_y = 0;
        			
        			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
        			var window_length = 48;
        			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, grabbed_player_timer, window_length);
        			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, grabbed_player_timer, window_length);
        		}
        		//the above block can be copied for as many windows as necessary.
        		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
        	}
        }
        
        if (window > 23 && window <= 24 && blackjack_cooling_timer >= 3) {
            shake_camera(3, 2)
        }
        if (window == 25 && window_timer == 1) {
            if (!was_parried) {
                shake_camera(12, 4)
            }
        }
        
        if (window == 22 && window_timer == 1 && !hitpause) {
            if (instance_exists(lucy_card_id)) {
                lucy_card_id.state = 4;
                lucy_card_id.state_timer = 0;
                lucy_card_id.window = 1;
                lucy_card_id.window_timer = 0;
            }
        }
        if (window == 26) {
            var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
            if (window_timer >= window_length && !hitpause && free) {
                attack_end();
                set_state(PS_PRATFALL);
            }
        }
    }
    can_fast_fall = false;
    can_move = false;
    force_depth = 1;
    depth = 1;
}

#define is_ditto(_source, _target) 
return (_source.url == _target.url && get_char_info(_source.player, INFO_STR_NAME) == get_char_info(_target, INFO_STR_NAME))

#define shoot_card(_attack, _num, _x, _y, _spd, _dir, _charge)
///Shoots a card.
var hbox = create_hitbox(_attack, _num, round(x + _x), round(y + _y));
hbox.hsp = lengthdir_x(_spd, _dir) * spr_dir;
hbox.vsp = lengthdir_y(_spd, _dir);
hbox.lucy_card_charge = _charge;
return hbox;    

#define place_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
return (place_meeting(__x,__y,asset_get("solid_32_obj")) || 
        place_meeting(__x,__y,obj_stage_article_solid) || 
        place_meeting(__x,__y,asset_get("jumpthrough_32_obj")) || 
        place_meeting(__x,__y,obj_stage_article_platform));