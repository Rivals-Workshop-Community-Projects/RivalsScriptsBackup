//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}











switch(attack){
    
    case AT_DTILT:
    
        if free{
            hsp = clamp(hsp, -5, 5);
        }
        
        switch(window){
            case 1: //Startup
                if (window_timer == phone_window_end - 4){
                    sound_play(sfx_rev[1]);
                }
                if (window_timer == phone_window_end){
                    hsp = 20 * spr_dir;
                    x += 10 * spr_dir;
                    sound_play(asset_get("sfx_swipe_weak2"));
                    spawn_hit_fx(x,y,vfx_dtilt_spark);
                }
                vsp = 0;
                can_fast_fall = false;
                break;
            case 2: //Active
                if !free hsp -= 0.5 * sign(hsp);
                if has_hit_player && !hitpause && melee_hit_player.state_cat == SC_HITSTUN{
                    melee_hit_player.hsp = hsp;
                    melee_hit_player.y += vsp;
                }
                break;
            case 3: //Active 2
                if !free hsp -= 1 * sign(hsp);
                break;
        }
        
        set_attack_value(attack, AG_NUM_WINDOWS, free ? 3 : 4);
        
        break;
    
    
    
    case AT_DATTACK:
        
        switch(window){
            case 1:
                if (window_timer == 1){
                    set_attack_value(attack, AG_CATEGORY, 2);
                }
                if (window_timer == phone_window_end){
                    hsp = 12 * spr_dir;
                    x += hsp * 3;
                    sound_play(asset_get("sfx_ell_arc_taunt_end"));
                }
            case 2:
            case 3:
                vsp = 0;
                can_fast_fall = false;
                break;
            case 4:
                if free set_attack_value(attack, AG_CATEGORY, 1);
                break;
                
        }
        
        can_move = false;
        
        break;
    
    
    
    case AT_DAIR:
    
        if (window == 1) dair_check = false;
        
        if hitpause{
            if !dair_check{
                if old_vsp == fast_fall old_vsp += 0.01;
                dair_check = true;
            }
            if old_vsp != fast_fall{
                old_vsp = -10;
                if down_pressed{
                    do_a_fast_fall = true;
                    old_vsp = fast_fall;
                }
            }
        }
        
        break;
    
    
    
    case AT_USTRONG:
        
        can_move = false;
        can_fast_fall = false;
        
        set_attack_value(attack, AG_OFF_LEDGE, window > 1);
        
        switch(window){
            case 1:
                vsp = 0;
                if free && abs(hsp) hsp -= 0.5 * sign(hsp);
                if (window_timer == 1) sound_play(asset_get("sfx_ori_ustrong_charge"));
                break;
            case 2:
                if (window_timer == phone_window_end){
                    spawn_hit_fx(x,y,vfx_dtilt_spark);
                    vsp = -16;
                    hsp = 8 * spr_dir;
                    
                    hsp *= lerp(0.6, 1, strong_charge / 60);
                    vsp *= lerp(0.6, 1, strong_charge / 60);
                    sound_play(asset_get("sfx_ell_arc_taunt_end"));
                }
                break;
            case 3:
                if !hitpause{
                    hsp = ease_sineIn(10, 4, window_timer, phone_window_end) * spr_dir;
                    // vsp = ease_sineIn(14, 20, window_timer, phone_window_end) * -1;
                }
                break;
            case 4:
                if !(has_hit_player || has_hit_ball || has_hit_bike){
                    window = 7;
                }
                else{
                    if (window_timer == 1 && right_down ^^ left_down){
                        spr_dir = right_down - left_down;
                        hsp = abs(hsp) * spr_dir;
                    }
                }
                break;
            case 5:
                can_fast_fall = true;
                do_a_fast_fall = down_pressed && hitpause; //because the fastfall won't work otherwise... why
            case 6:
                fall_through = true;
                if !free{
                    attack_end();
                    set_state(PS_LAND);
                }
                break;
            case 7:
                if (window_timer < phone_window_end / 2){
                    vsp -= gravity_speed;
                    hsp *= 0.8;
                    vsp *= 0.8;
                }
        }
        
        if (window < 5){
            var move_type = (window == 4 && window_timer == phone_window_end);
            if has_hit_player && melee_hit_player.state_cat == SC_HITSTUN with melee_hit_player ustrongDrag(move_type, other);
            if has_hit_ball with melee_hit_ball ustrongDrag(move_type, other);
            if "hit_bike_obj" in self && !instance_exists(hit_bike_obj) has_hit_bike = 0
            if has_hit_bike with hit_bike_obj ustrongDrag(move_type, other);
            if has_hit_bike hit_bike_obj.hitpause = 0
            if has_hit_bike hit_bike_obj.hitpause_timer = 0
            if has_hit_bike hit_bike_obj.state = 0
            if has_hit_bike hit_bike_obj.state_timer = 0
        }
        
        break;
    
    
    
    case AT_DSTRONG:
    
    	switch(window){
    		case 2:
    			if (window_timer == phone_window_end && !hitpause){
    				bass_sound = sound_play(sfx_bass1);
    			}
    			break;
    		case 4:
    			if (window_timer == phone_window_end && !hitpause){
    				sound_stop(bass_sound);
    				sound_play(sfx_bass2);
    				reset_hitbox_value(AT_DSTRONG, 2, HG_WIDTH);
    				if has_hit_player && !hit_player_obj.free set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, get_hitbox_value(AT_DSTRONG, 2, HG_WIDTH) * 2);
    			}
    			break;
    	}
        
        break;
    
    
    
    case AT_NSPECIAL:
    
        can_fast_fall = false;
        
        switch(window){
            case 1:
                if (window_timer == 1){
                    nspecial_spin = 0;
                    nspecial_charge = 0;
                    sound_play(asset_get("sfx_ori_ustrong_charge"));
                    if instance_exists(ball){
                        ball.state = 4;
                        ball.state_timer = 0;
                    }
                }
                
                if window_timer == phone_window_end{
                	switch(nspecial_charge){
                		case 0:
                			sound_play(ball_sounds[nspecial_spin + 1]);
                			spawn_hit_fx(x + 64 * spr_dir, y - 28, vfx_hit_tiny);
                			break;
                		case 1:
                			ball.y -= 8;
                			break;
	                	case 15:
	                		nspecial_spin = -1;
	                		sound_play(ball_sounds[nspecial_spin + 1]);
                			spawn_hit_fx(x + 64 * spr_dir, y - 28, vfx_hit_tiny);
                			ball.y -= 8;
	                		break;
	                	case 30:
	                		nspecial_spin = 1;
	                		special_down = 0;
	                		sound_play(ball_sounds[nspecial_spin + 1]);
                			ball.y -= 8;
	                		break;
                	}
                	
                	if special_down{
                		window_timer--;
                		nspecial_charge++;
                	}
                }
                
                // if up_down nspecial_spin = -1;
                // else if down_down nspecial_spin = 1;
                // else nspecial_spin = 0;
                
                if (window_timer == phone_window_end) && false{
                    if special_down && nspecial_charge < 30{
                        nspecial_charge++;
                        window_timer--;
                        vsp = min(vsp, 2);
                        hsp = clamp(hsp, -2, 2);
                    }
                }
                break;
            case 2:
                if (window_timer == phone_window_end){
                    var new_ball = create_hitbox(AT_NSPECIAL, nspecial_spin + 2, x + 54 * spr_dir, y - 28 + nspecial_spin * 20 * 0);
                    new_ball.am_ball = 1;
                    if free vsp = min(vsp, -5);
                    
                    spawn_hit_fx(x + 64 * spr_dir, y - 28, vfx_hit_tiny);
                    
                    with ball{
                        var hfx = noone;
                        if other.nspecial_spin == -1 hfx = spawn_hit_fx(x + 12 * spr_dir, y, other.vfx_spin_u);
                        else if other.nspecial_spin == 1 hfx = spawn_hit_fx(x + 12 * spr_dir, y, other.vfx_spin_d);
                        if hfx != noone{
                            hfx.depth = other.depth - 1;
                            hfx.otto = other;
                            hfx.off_x = hfx.x - other.x;
                            hfx.off_y = hfx.y - other.y;
                        }
                        state = -1;
                    }
                    ball = noone;
                    ball_time = get_gameplay_time();
                    
                    sound_play(sfx_ball_shoot);
                    // sound_play(ball_sounds[nspecial_spin + 1]);
                }
                break;
            case 3:
                if !down_down vsp = min(vsp, 4);
            	break;
        }
        
        break;
        
    
    
    case AT_FSPECIAL:
        
        can_wall_jump = true;
        
        switch(window){
            case 1:
                if free vsp = clamp(vsp, ((vsp > -short_hop_speed) ? -5 : -100), 3);
                hsp *= 0.9;
                if (window_timer == 1){
                    sound_play(asset_get("sfx_ori_ustrong_charge"));
                    sound_play(sfx_rev[1]);
                }
                if (window_timer == phone_window_end){
                    if ball_id != noone && abs(right_down - left_down) spr_dir = right_down - left_down;
                    vsp = -8.5;
                    hsp = 16 * spr_dir;
                    spawn_hit_fx(x,y,vfx_dtilt_spark);
                    x += 30 * spr_dir;
                    sound_play(asset_get("sfx_ell_arc_taunt_end"));
                    sound_play(sfx_rev[0]);
                }
                break;
            case 2:
                // hsp = lerp(hsp, clamp(hsp, -air_max_speed, air_max_speed), 0.1);
                break;
            case 3:
                if (window_timer == 1){
                    cancel = has_hit && !has_uspecialed;
                    // set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, cancel ? 1 : 7);
                }
                
                hsp = lerp(hsp, clamp(hsp, -air_max_speed, air_max_speed), 0.5);
                
                if !free hsp *= 0.7;
                break;
            case 4:
                if cancel && !was_parried{
                    iasa_script();
                    has_uspecialed = true;
                }
                if !free && !was_parried{
                    attack_end();
                    set_state(PS_LAND);
                }
                break;
        }
        
        if ("ball_id" in self && ball_id != noone){
            x = clamp(x, 0, room_width); //don't SD lol
            y = min(y, room_height);
        }
        
        break;
        
    
    
    case AT_USPECIAL:
        
        can_fast_fall = !hitpause;
        can_wall_jump = true;
        
        switch(window){
            case 1:
                if free vsp = min(vsp, 1);
                hsp *= 0.9;
                if (window_timer == 1){
                    sound_play(asset_get("sfx_ori_ustrong_charge"));
                    sound_play(sfx_rev[1]);
                }
                if (window_timer == phone_window_end){
                    if abs(right_down - left_down) spr_dir = right_down - left_down;
                    vsp = -17;
                    spawn_hit_fx(x,y,vfx_dtilt_spark);
                    sound_play(asset_get("sfx_ell_arc_taunt_end"));
                    sound_play(sfx_rev[0]);
                }
                break;
            case 2:
                break;
            case 3:
                if (window_timer == 1){
                    cancel = has_hit && !has_uspecialed;
                    set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, cancel ? 1 : 7);
                }
                break;
            case 4:
                if cancel && !was_parried{
                    iasa_script();
                    has_uspecialed = true;
                    if !free{
                        attack_end();
                        set_state(PS_LAND);
                    }
                }
                break;
        }
        
        if (window > 2 && !free && !cancel){
            attack_end();
            set_state(PS_PRATFALL);
        }
        
        break;
        
    
    
    case AT_DSPECIAL_AIR:
        
        can_wall_jump = true;
        
        switch(window){
            case 1:
                hsp *= 0.9;
                if (window_timer == 1){
                    sound_play(asset_get("sfx_ori_ustrong_charge"));
                    sound_play(sfx_rev[1]);
                    vsp = -5 * (dspecial_air_free ? 1 : 2);
                    ground_bounce = false;
                }
                if (window_timer == phone_window_end){
                    if abs(right_down - left_down) spr_dir = right_down - left_down;
                    vsp = 20;
                    y += 20;
                    spawn_hit_fx(x,y,vfx_dtilt_spark);
                    sound_play(asset_get("sfx_ell_arc_taunt_end"));
                    sound_play(sfx_rev[0]);
                }
                break;
            case 2:
            	if !was_parried && (/*!free || */(has_hit && !hitpause)){
            		setWindow(3);
            		vsp = -14;
            		destroy_hitboxes();
            		ground_bounce = !has_hit;
            		// set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, ground_bounce ? 7 : 1);
            		if !free sound_play(landing_lag_sound);
            	}
            	else if !free && !hitpause set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 1);
                break;
            case 3:
            	if was_parried{
            		window_timer = phone_window_end;
            		break;
            	}
            	if vsp > 0 && !ground_bounce{
            		can_jump = true;
            		can_special = true;
            	}
            	else if !free set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 1);
                break;
        }
        
        break;
        
        
        
    case AT_TAUNT:
    case AT_TAUNT_2:

	switch(window){
		case 1:
			if down_down attack = AT_TAUNT_2;
			break;
		case 3:
			if (window_timer == phone_window_end && taunt_down) window_timer--;
			break;
	}
	
	break;
}



switch(attack){
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_DSPECIAL:
    case AT_DSPECIAL_AIR:
        if (window == 1){
        	
        	can_shield = free;
        	
            if (window_timer == 1){
            	clear_button_buffer(PC_SPECIAL_PRESSED); // for airdodge cancel
            	
                ball_id = noone;
                found_ball = 0;
                // with(asset_get("obj_article1")) if player_id == other{
                //     state = 2;
                //     state_timer = 0;
                //     other.ball = noone;
                //     sound_play(asset_get("sfx_ori_ustrong_charge"));
                // }
            }
            with pHitBox if player_id == other && "am_ball" in self && !has_been_recalled{
                other.ball_x = x;
                other.ball_y = y;
                other.ball_id = self;
                other.found_ball = 1;
                hsp *= 0.9;
                vsp *= 0.9;
                destroy_flag = 1;
            }
            
            with pHitBox if (hit_priority && place_meeting(x, y, other.ball_id)){
            	other.ball_id = noone;
            	if (type == 1){
			        player_id.old_vsp = player_id.vsp;
			        player_id.old_hsp = player_id.hsp;
            		player_id.hitpause = 1;
            		var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
			        if player_id.hitstop < desired_hitstop {
			            player_id.hitstop = desired_hitstop;
			            player_id.hitstop_full = desired_hitstop;
			        }
            	}
            }
            
            if (found_ball && (window_timer == phone_window_end || ball_id == noone)){
                // if (ball_id != noone){
                afterimg_timer = afterimg_timer_max;
                afterimg_x = x + (attack == AT_FSPECIAL) * -30 * spr_dir;
                afterimg_y = y;
                afterimg_sprite = sprite_index;
                afterimg_frame = image_index;
                afterimg_angle = image_angle;
                afterimg_dir = spr_dir;
                
                bike_vfx_time = bike_vfx_time_max;
                
                x = ball_x;
                y = ball_y + 32;
                if instance_exists(ball_id) && ball_id.state != 4 instance_destroy(ball_id);
                
                sound_play(asset_get("mfx_star"));
                
                ball_id = noone;
                // }
            }
        }
        break;
}



#define setWindow(n_w)

window = n_w;
window_timer = 0;



#define ustrongDrag(type, otto)

var off_x = otto.x + (type ? 40 : 24) * otto.spr_dir;
var off_y = otto.y - (type ? 10 : 48);
var amt = type ? 1 : 0.5;

off_x += otto.hsp;
off_y += otto.vsp;

x = lerp(x, off_x, amt);
y = lerp(y, off_y, amt);




