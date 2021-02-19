//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



if slide_chord && !free && !hitpause && abs(right_down - left_down) && !was_parried{
	var new_hsp = hsp + (right_down - left_down) * 0.25;
	
	if (new_hsp == clamp(new_hsp, -chord_objs[0].dash_speed, chord_objs[0].dash_speed)){
		hsp = new_hsp;
	}
}



if (attack == AT_TAUNT){
    
    suppress_stage_music();
    
    taunt_sharp = shield_down;
    
    switch(window){
        case 1:
            if (window_timer == phone_window_end){
                window++;
                window_timer = 10;
                clear_button_buffer(PC_TAUNT_PRESSED);
                sound_play(sfx_guitar_ready);
            }
            break;
        case 4:
            if window_timer == phone_window_end{
                setWindow(3);
            }
        case 3:
        	if taunt_pressed{
        		setWindow(5);
            	clear_button_buffer(PC_TAUNT_PRESSED);
            	sound_play(asset_get("mfx_back"));
        		break;
        	}
        case 2:
            if special_pressed tauntPlay(-1);
            if attack_pressed tauntPlay(0);
            if jump_pressed tauntPlay(1);
            break;
    }
    
    switch(window){ //note menu handling
    	
    	case 1:
    		if (state_timer == 1){
    			taunt_menu_cursor = 0;
		        taunt_menu_cursor_prev = 0;
		        taunt_menu_cursor_timer = 0;
    		}
    		taunt_open_amount = ease_cubeInOut(0, 1, window_timer, phone_window_end);
    		break;
    		
    	case 2:
    	case 3:
    	case 4:
    		taunt_open_amount = lerp(taunt_open_amount, 1, 0.25);
    		
    		if (taunt_menu_cursor_prev != taunt_menu_cursor){
                taunt_menu_cursor_timer = 0;
            }
            
            var pointer = (360 - joy_dir + 90) % 360;
            if !joy_pad_idle taunt_menu_cursor = (round(pointer / 45) % 8);
            
            taunt_menu_cursor_prev = taunt_menu_cursor;
            taunt_menu_cursor_timer++;
    		break;
    		
    	case 5:
    		taunt_open_amount = ease_cubeInOut(1, 0, window_timer, phone_window_end);
    		break;
    }
}



if (attack == AT_NSPECIAL){
    switch(window){
        case 1:
            break;
        case 2:
            if (window_timer == phone_window_end && chord_menu_state == clamp(chord_menu_state, 1, 2)){
                window_timer--;
            }
            break;
        case 3:
            if (window_timer >= 20) iasa_script();
            if (window_timer == clamp(window_timer, 6, 10)) invincible = true;
            if !chord_success setWindow(4);
            break;
    }
}



if (attack == AT_FSPECIAL){
    fspecialShared();
    if (window < 3 && (guitar.following || guitar.state == 13)) guitar.buffered_state = 2;
    switch(window){
        case 1: //startup 1
            if (window_timer == 1){
                var vfx = spawn_hit_fx(x, y, vfx_fspecial_start);
                vfx.coda_follow = true;
                vfx.coda_owner = id;
                vfx.depth = depth - 1;
            }
            break;
        case 2: //charge
            if fspecial_fully_charged && window_timer == phone_window_end{
                var vfx = spawn_hit_fx(x, y, vfx_fspecial_full);
                vfx.coda_follow = true;
                vfx.coda_owner = id;
                vfx.depth = depth - 1;
            }
            break;
        case 3: //startup 2
            break;
        case 4: //active
            if (window_timer == phone_window_end - 1){
                if (guitar.state == 2){
                    guitar.state = (fspecial_fully_charged) ? 12 : 11;
                    guitar.state_timer = 0;
                    guitar.x = x + 80 * spr_dir;
                    guitar.y = y - 20;
                    guitar.spr_dir = spr_dir;
                }
            }
            break;
        case 5: //endlag
            break;
    }
}



if (attack == AT_FSPECIAL_2){
    fspecialShared();
    switch(window){
        case 1: //startup 1
            if (window_timer == 1){
                var vfx = spawn_hit_fx(guitar.x, guitar.y + 20, vfx_fspecial_start);
                vfx.depth = guitar.depth - 1;
            }
            break;
        case 2: //charge
            if fspecial_fully_charged && window_timer == phone_window_end{
                var vfx = spawn_hit_fx(guitar.x, guitar.y + 20, vfx_fspecial_full);
                vfx.depth = guitar.depth - 1;
            }
            break;
        case 3: //startup 2
            break;
        case 4: //active
            if (window_timer == phone_window_end - 1){
                if (guitar.state != 15){
                    guitar.spr_dir = spr_dir;
                    guitar.state = (fspecial_fully_charged) ? 12 : 11;
                    guitar.state_timer = 0;
                }
            }
            break;
        case 5: //endlag
            break;
    }
}



if (attack == AT_DSPECIAL){
    
    switch(window){
        case 1:
            if (guitar.following || guitar.state == 13) guitar.buffered_state = 2;
            if (window_timer == 1) sound_play(asset_get("sfx_ori_ustrong_charge"));
            if (window_timer == phone_window_end){
                if free vsp = min(vsp, -5);
                sound_play(asset_get("sfx_ell_arc_taunt_end"));
            }
            break;
        case 2:
            if (window_timer == phone_window_end){
                if (guitar.state == 2){
                    guitar.state = 17;
                    guitar.state_timer = 0;
                    guitar.x = x + 20 * spr_dir;
                    guitar.y = y - 40;
                    guitar.spr_dir = spr_dir;
                }
            }
        case 3:
            // phone_arrow_cooldown = special_cooldown_max;
            break;
    }
}



if (attack == AT_DSPECIAL_2){
    
    switch(window){
        case 1:
            // if (guitar.following || guitar.state == 13) guitar.buffered_state = 2;
            if (window_timer == 1) sound_play(asset_get("sfx_ori_ustrong_charge"));
            break;
        case 2:
            if (window_timer == 1){
                if free vsp = min(vsp, -5);
                sound_play(asset_get("sfx_ell_arc_taunt_end"));
            }
            if (window_timer == phone_window_end){
                if (guitar.state != 15){
                    guitar.state = 17;
                    guitar.state_timer = 0;
                    guitar.spr_dir = spr_dir;
                }
            }
        case 3:
            phone_arrow_cooldown = special_cooldown_max;
            break;
    }
}



if (attack == AT_USPECIAL){
    can_fast_fall = false;
    can_wall_jump = true;
    can_move = window != 2;
    
    switch(window){
        case 1:
            var mult = 0.8;
            var timer1height = 1.6;
            if (window_timer == 1){
                uspecial_dir = 0;
                mult = 0.5;
                uspecial_cancel = !free;
                vsp = clamp(vsp, -100, -4.4 * timer1height);
                set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
                sound_play(jump_sound);
            }
            //hsp *= mult;
            //vsp *= mult;
            vsp += 0.52 * timer1height;
            
            
            
            if (window_timer == phone_window_end){
                if up_down{
                    if right_down uspecial_dir = 1;
                    else if left_down uspecial_dir = 3;
                    else uspecial_dir = 2;
                }
                else if down_down{
                    if right_down uspecial_dir = 7;
                    else if left_down uspecial_dir = 5;
                    else uspecial_dir = 6;
                }
                else if left_down uspecial_dir = 4;
                else if right_down uspecial_dir = 0;
                else uspecial_dir = 2;
                
                var fly_dir = uspecial_dir * 45;
                
                var fly_speed = 24;
                var normal_fly_speed = fly_speed;
                
                if jump_chord fly_speed = 37; // 45
                
                //fly_dir = round(joy_dir / 22.5) * 22.5; //pika angles
                
                /*
                
                //auto-aim homing
                
                var nearest_foe = noone;
                var winning_dist = 10000000;
                
                with oPlayer if id != other.id && distance_to_object(other) < winning_dist nearest_foe = id;
                
                var enemy_angle = point_direction(x, y, nearest_foe.x, nearest_foe.y);
                var angle_dif = angle_difference(enemy_angle, fly_dir);
                
                if (abs(angle_dif) < 45) fly_dir = enemy_angle;
                
                */
                
                hsp = lengthdir_x(fly_speed, fly_dir);
                vsp = lengthdir_y(fly_speed, fly_dir);
                
                set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, reverse_chord * 180 + ((uspecial_dir == 2 || uspecial_dir == 6) ? 90 : 50));
                set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, abs(lengthdir_x(normal_fly_speed, fly_dir)));
                set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, lengthdir_y(normal_fly_speed, fly_dir) - 32);
                
                if (right_down ^^ left_down) spr_dir = right_down - left_down;
                
                if (vsp < 0) uspecial_cancel = false;
                
                sound_play(asset_get("sfx_ell_arc_taunt_end"));
            }
            break;
        case 2:
            if (!free && (window_timer > 1 || vsp == 0)) uspecial_cancel = true;
            vsp *= 0.85;
            hsp *= 0.85;
            break;
        case 3:
            if (window_timer < phone_window_end * 3 / 4){
                var mult = 0.9;
                if (window_timer == 1){
                    mult = 0.5;
                }
                hsp *= mult;
                vsp *= mult;
                x += hsp;
                y += vsp;
                can_move = (uspecial_dir != 0 && uspecial_dir != 4)
            }
            else{
                vsp += gravity_speed;
            }
            
            if uspecial_cancel && free && !was_parried iasa_script();
            
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1 + 6 * free);
            if (window_timer == phone_window_end){
                if !free{
                    set_state(PS_LANDING_LAG);
                    landing_lag_time = 10 + 5 * !has_hit;
                    attack_end();
                }
            }
            break;
    }
    
    if ((window > 1 || window_timer == phone_window_end) && (uspecial_dir == 4 || uspecial_dir == 0)){
        if place_meeting(x + hsp, y, asset_get("par_block")){
            var correct_limit = 32;
            var valid_found = 0;
            for (i = 0; i < correct_limit && !valid_found; i++){
                if !place_meeting(x + hsp, y - i, asset_get("par_block")){
                    valid_found = i;
                }
            }
            y -= valid_found;
        }
    }
}



if (attack == AT_JAB){
    switch(window){
        case 1:
            times_through = 0;
            break;
        case 7:
            if (window_timer == 1) hsp = -2 * spr_dir;
            if ((attack_down || attack_pressed) && window_timer == phone_window_end && times_through <= 10){
                setWindow(window);
                attack_end();
                sound_play(asset_get("sfx_swipe_weak1"));
                times_through++;
            }
            break;
        case 6:
            if (attack_pressed && joy_pad_idle){
                sound_play(asset_get("sfx_swipe_weak1"));
                clear_button_buffer(PC_ATTACK_PRESSED);
            }
            break;
    }
}



if (attack == AT_DATTACK){
    var atk_spd = speed_chord ? 14 : 10;
    
    switch(window){
        case 1:
            hsp = clamp(hsp, -3, 3);
            if (window_timer == phone_window_end){
                hsp = atk_spd * 2 * spr_dir;
                if speed_chord sound_play(asset_get("sfx_ell_arc_taunt_end"));
            }
            break;
        case 2:
            if (window_timer == 1){
                if hitpause old_hsp = atk_spd * spr_dir;
                else hsp = atk_spd * spr_dir;
            }
            break;
        case 3:
            if (window_timer == phone_window_end && !slide_chord){
                var max_sp = speed_chord ? 8 : 3;
                hsp = clamp(hsp, -max_sp, max_sp);
            }
    }
}



if (attack == AT_UAIR){
    switch(window){
        case 3:
            if (window_timer == window_end && slide_chord){
            	// vsp = -10;
            }
        case 2:
            if has_hit_player &&  vsp < fast_fall{
                vsp = clamp(vsp, -100, 1);
                hsp = clamp(hsp, -3, 3);
                //vsp = 0;
                //hsp = 0;
                //can_move = false;
                can_fast_fall = hitpause;
                hit_player_obj.x += hsp;
                hit_player_obj.y += vsp;
                
                set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 4);
                set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -84);
                set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 100);
                set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 124);
            }
            else{
                reset_hitbox_value(AT_UAIR, 2, HG_HITBOX_X);
                reset_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y);
                reset_hitbox_value(AT_UAIR, 2, HG_WIDTH);
                reset_hitbox_value(AT_UAIR, 2, HG_HEIGHT);
            }
            break;
    }
}



if (attack == AT_FAIR || attack == AT_BAIR){
	if (slide_chord && window == 1 && window_timer == window_end){
		hsp = 10 * (attack == AT_FAIR ? 1 : -1) * spr_dir;
		sound_play(asset_get("sfx_ell_arc_taunt_end"));
	}
}



if (attack == AT_FSTRONG){
    switch(window){
        case 1: //Startup
            has_spawned_hitbox = false;
            break;
        case 2:
            if (strong_charge == 1 && !has_spawned_hitbox){
                has_spawned_hitbox = true;
                create_hitbox(attack, 2, x, y);
                sound_play(asset_get("sfx_spin"));
            }
            break;
        case 3:
            if (window_timer == 1){
                destroy_hitboxes();
            }
            if (window_timer == phone_window_end){
                //sound_play(asset_get("sfx_tow_anchor_land"));
            }
            break;
    }
}



#define tauntPlay(oct)

setWindow(2);
var note = taunt_menu_cursor + 1 + taunt_sharp * 0.5;
note += oct * 7;

note_oct = -1;
note_sca = 1;
note_key = phone_cheats[cheat_root];
note_sfx = sfx_guitar_note;

chordPlay([note], 1, 0);
taunt_open_amount = 1.1;
if oct == -1 clear_button_buffer(PC_SPECIAL_PRESSED);
if oct == 0  clear_button_buffer(PC_ATTACK_PRESSED);
if oct == 1  clear_button_buffer(PC_JUMP_PRESSED);



#define setWindow(new_window)

window = new_window;
window_timer = 0;



#define fspecialShared

switch(window){
    case 1: //startup 1
        fspecial_charge = 0;
        if (window_timer == 1) with guitar sound_play(asset_get("sfx_ori_ustrong_charge"));
        break;
    case 2: //charge
        if (window_timer == phone_window_end && special_down && fspecial_charge < fspecial_charge_max){
            window_timer--;
            fspecial_charge++;
            vsp = min(vsp, 3);
    	    hsp = clamp(hsp, -3, 3);
    	    can_fast_fall = false;
        }
        fspecial_fully_charged = (fspecial_charge == fspecial_charge_max) || (echo && guitar.following);
        break;
    case 3: //startup 2
        if fspecial_fully_charged && window_timer == 1 with guitar sound_play(asset_get("sfx_diamond_small_collect"));
        if (window_timer == phone_window_end){
            with guitar sound_play(asset_get("sfx_ell_arc_taunt_end"));
            if free{
                vsp = min(vsp, -5);
                hsp += spr_dir;
            }
        }
        break;
    case 4: //active
        break;
    case 5: //endlag
        if !fspecial_fully_charged && attack == AT_FSPECIAL_2{
            phone_arrow_cooldown = special_cooldown_max;
        }
        break;
}



#define chordPlay(notes, all_notes, reset)

if !is_array(notes) notes = [notes];

var len = array_length_1d(notes);

var random = clamp(random_func(20, len, true), 0, len - 1);

if reset{
	note_oct = -1;
	note_sca = 1;
	note_key = 0;
	note_sfx = sfx_guitar_note;
}

for (i = 0; i < len; i++){
	if (i == random || all_notes){
		note_not = notes[i];
		user_event(1);
	}
}