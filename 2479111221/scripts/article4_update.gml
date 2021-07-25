display_text--;

switch(state){
    case 0: // Closed
        user = noone;
        
        if practice{
            with oPlayer{
                if place_meeting(x, y + 2, other) and (state == PS_CROUCH){
                    other.user = self;
                }
            }
        }
        
        if (user == noone){
            crouch_time = 0;
        } else {
            crouch_time++;
        }
        
        if (crouch_time == crouch_time_max){
            setState(1);
            with user{
                // lock in place
                set_state(PS_PRATLAND);
            }
            user.was_parried = true;
            user.parry_lag = 10000;
            user.x = x;
            user.y = owner.y + 6;
            has_crouched = true;
            sound_play(asset_get("mfx_star"));
        }
        break;
        
    case 1: // Menu Coming Up
        var state_time_max = 30;
        //print_debug(string(state_timer));
        draw_height = ease_cubeInOut(draw_height_low, draw_height_high, state_timer, state_time_max);
        cursor = 1;
        if state_timer >= state_time_max{
            setState(2);
        }
        break;
        
    case 2: // Menu Open
        var cursor_max = 60;
        if cursor_anim == 1{
            draw_cursor = ease_sineInOut(draw_cursor_in, draw_cursor_out, cursor_timer, cursor_max);
            if cursor_timer == cursor_max{
                cursor_timer = 0;
                cursor_anim = 2;
            }
        } else {
            draw_cursor = ease_sineInOut(draw_cursor_out, draw_cursor_in, cursor_timer, cursor_max);
            if cursor_timer == cursor_max{
                cursor_timer = 0;
                cursor_anim = 1;
            }
        }
        
        if state_timer < 0{
            draw_height = lerp(draw_height, draw_height_high, .5);
            break;
        }
        if !instance_exists(user){
            setState(3);
        } else {
            with user{
                parry_lag = 1000000;
                
                var change = 0;
                
                if shield_pressed or attack_pressed or special_pressed or state != PS_PRATLAND{
                    with other{
                        setState(3);
                    }
                    parry_lag = 10;
                    state_timer = 0;
                    was_parried = false;
                    sound_play(asset_get("mfx_confirm"));
    				clear_button_buffer(PC_SHIELD_PRESSED);
    				clear_button_buffer(PC_ATTACK_PRESSED);
    				clear_button_buffer(PC_SPECIAL_PRESSED);
                }
                
                else if ((left_down or right_down) and "held_timer" in self){
                    held_timer++;
                    
                    var held = held_timer > 24 and held_timer mod 5 == 0;
                    
                    if (right_pressed or (right_down and held)){
                        change = 1;
                    }
                    
                    if (left_pressed or (left_down and held)){
                        change = -1;
                    }
                } else {
                    held_timer = 0;
                }
                
                if (state == 3){
                    // this is just to say fuck off
                }
    			else if up_pressed{
    				other.cursor++;
    				sound_play(asset_get("mfx_move_cursor"));
    			}
    			else if down_pressed{
    				other.cursor--;
    				sound_play(asset_get("mfx_move_cursor"));
    			}
    			
    			else if change != 0{
    			    other.select_timer = other.select_timer_max;
    			    sound_play(asset_get("mfx_move_cursor"));
        			switch(other.cursor){
                        case 1:
                            // Controlling Plat
                            with(obj_stage_main){
                                platform_select += change;
                            }
                            break;
                        case 2:
                            // Controlling Ambience
                            with(obj_stage_main){
                                ambience_on += change;
                                sound_stop(sound_get("sfx_whitenoise"));
                                sound_stop(sound_get("sfx_seagulls"));
                                play_sound = 0;
                                seagull_timer = 0;
                            }
                            break;
        			}
    			}
    			if obj_stage_main.platform_select < 0{
    			    obj_stage_main.platform_select = 5;
    			}
    			if obj_stage_main.platform_select > 5{
    			    obj_stage_main.platform_select = 0;
    			}
    			
    			if other.cursor < 1{
    			    other.cursor = other.options;
    			}
    			if other.cursor > other.options{
    			    other.cursor = 1;
    			}
            }
        }
        break;
        
    case 3: // Closing
		var state_time_max = 30;
		draw_height = ease_cubeInOut(draw_height_high, draw_height_low, state_timer, state_time_max);
		if state_timer == state_time_max{
		    setState(0);
		    crouch_time = 0;
		}
        break;
}
if (state == 0){
    depth = depth_back;
    cursor_timer = 0;
} else {
    depth = depth_front;
    cursor_timer++;
}

state_timer++;

#define setState(newstate)
/// Sets the state
state = newstate;
state_timer = 0;
//print_debug(string(state));