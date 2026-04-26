//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch attack {

	case AT_JAB:

		if window == 4 and window_timer == 1 and !hitpause{
    		var pitch = 0.05 - (random_func(4, 100, true) / 1000)
    		
			sound_play(sound_get("sfx_fj_swipe_metalarm"), false, noone, 0.6, 1.12+pitch)
		}  
	break;
	case AT_DATTACK:
		if window == 1 && window_timer == 6 and !hitpause{
			sound_play(asset_get("sfx_waveland_oly"),false,noone,0.6,1.1);
		}
	break;
    case AT_UTILT:
        if window == 1 and window_timer == 3 and !hitpause {
            sound_play(sound_get("sfx_fj_sword_swipe_medium2"), false, noone, 0.8, 1.3)
        }
    break;
    case AT_FAIR:
    	if window == 1 and window_timer == 4 and !hitpause {
    		sound_play(sound_get("sfx_fj_sword_swipe_heavy2"), false , noone, 0.8, 1.2)
    	}
    break;
    case AT_FTILT:
        if window == 1 and window_timer == 10 and !hitpause {
            sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.6, 1.3)
            sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.4, 1.1)
        }
    break;
    case AT_NAIR:
        if window == 1 { 
            if window_timer == 3 and !instance_exists(jake_obj) and !hitpause { 
                sound_play(asset_get("sfx_shovel_swing_med1"), false, noone, 1.0, 1.0) 
            }
        }
    break;
    case AT_BAIR:
        if window == 1 and window_timer == 5 and !hitpause {
            sound_play(sound_get("sfx_fj_sword_swipe_medium2"), false, noone, 0.8, 1.3)
        }
    break;
    case AT_UAIR:
        if window == 1{
        	if window_timer == 3 and !hitpause{
        		var pitch = 0.05 - (random_func(4, 100, true) / 1000)
        		
				sound_play(sound_get("sfx_fj_swipe_metalarm"), false, noone, 0.6, 1.0+pitch)
			}
        }
    break;
    case AT_FSTRONG:
    	if window == 3 && window_timer == 1 && !hitpause && !instance_exists(jake_obj){
    		sound_play(asset_get("sfx_charge_blade_swing"))
    		sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.7, 0.9)
    	}
    break;
    case AT_USTRONG:
    	if window == 3 && window_timer == 1 && !hitpause && !instance_exists(jake_obj){
    		sound_play(asset_get("sfx_charge_blade_swing"))
    	}
    break;
    case AT_DSTRONG:
    	if hitpause break;
    	
    	switch window {
    		case 2:
    			if window_timer != 4 break;
    		
	            sound_play(sound_get("sfx_fj_sword_swipe_medium2"), false, noone, 0.8, 1.3)
	            if !instance_exists(jake_obj){
	            	sound_play(asset_get("sfx_shovel_swing_med1"), false, noone, 0.9, 1.0) 
	            }
    		break;
    		case 3:
    			if instance_exists(jake_obj) break;
    			
    			switch window_timer {
    				case 8:
    					sound_play(asset_get("sfx_charge_blade_swing"))
    				break;
    				case 11:
    					sound_play(asset_get("sfx_ori_stomp_hit"), false, noone, 0.7, 1.0)	
    				break;
    			}
    		break;
    	}
    break;
    case AT_NSPECIAL:
    	can_fast_fall = false;
    	
    	switch window {
    		case 1:
    			vsp = clamp(vsp, ((vsp > -short_hop_speed) ? -5 : -100), 3);
    			switch window_timer {
    				case 1:
    					nspecial_spin_sound = sound_play(sound_get("sfx_fj_cartoon_spin"), false, noone, 1, 0.82)
    					nspecial_sound_pitch = 0.82
    				break;
    				default:
    					nspecial_sound_pitch+=0.04
    					sound_pitch(nspecial_spin_sound, nspecial_sound_pitch)
    				    if window_timer > 10 && special_pressed{
			    			window = 4
							window_timer = 0
							sound_stop(nspecial_spin_sound)
			    		}
    				break;
    			}
    			
    		break;
    		case 2:
    			if hitpause break;
    			
    			if window_timer == 4 {
    				sound_stop(nspecial_spin_sound)
    				sound_play(sound_get("sfx_fj_boing2"), false, noone, 0.6, 1.2)
    			}
    			if window_timer == 2 sound_play(sound_get("sfx_fj_boing_whip"), false, noone, 0.8, 0.2)
    		break;
    		case 4:
    			if hitpause break;
    			
    			switch window_timer {
    				case 7:
    					sound_play(asset_get("sfx_swipe_heavy1"))
    				break;
    				case 9:
    					if hitpause break
    					
    					jake_obj = instance_create(x+(16*spr_dir),y-30,"obj_article1")
				    	jake_obj.state = PS_IDLE_AIR
				    	jake_obj.spr_dir = spr_dir
				    	jake_obj.hsp = (spr_dir*6)
				    	jake_obj.vsp = -7.5 + min(vsp, 0)
				    	jake_obj.window_timer = 0
				    	change_finn_sprites(instance_exists(jake_obj))
				    	
    					
    					
    					if !free break;
    					
    					vsp = -3
    				break;
    			}
    		break;
    	}
    break;
    case AT_NSPECIAL_2:
	
		if window == 2 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) and has_hit_player {
			window = 4
			window_timer = 0
			if right_down-left_down == -spr_dir {
				spr_dir*=-1
			}
		}
	
		if window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) {
			move_cooldown[AT_NSPECIAL_2] = 30
			if free {
				set_state(was_parried ? PS_PRATFALL : PS_IDLE_AIR)
			} else {
				set_state(was_parried ? PS_PRATFALL : PS_IDLE)
			}
		}
		
		if window == 4 {
			var thing = (max(2-window_timer,0))*0.05
			
			for (var i = 0; i < array_length(nspecial_grabbed_opps); i++) {
				var grab_opp = nspecial_grabbed_opps[i];
				grab_opp.x = lerp(grab_opp.x, x-(spr_dir*5), 0.5-thing)
				grab_opp.y = lerp(grab_opp.y, y-10, 0.5-thing)
			}
			if vsp > 0 {
				vsp *= 0.8
			}
			if window_timer == 1{
				sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.8, 0.9)
			}
		}
		if window == 5 and free and !hitpause {
			vsp = -5
			hsp *= 0.9
		}
	break;
    case AT_FSPECIAL_2:
    	can_wall_jump = true;
    	if window == 1 and window_timer == 7 and !hitpause {
    		sound_play(sound_get("sfx_fj_boing_whip"), false, noone, 0.7, 0.3)
    	}
    	if window == 2 {
    		if instance_exists(jake_obj) and jake_obj.state == PS_IDLE and place_meeting(x+hsp,y+vsp,jake_obj) {
    			instance_destroy(jake_obj)
    			with spawn_hit_fx(x,y-15,vfx_thing) {
    				depth = other.depth+1
    			}
    			sound_play(sound_get("sfx_fj_jake_collect"))
    			white_flash_timer = 10
    			change_finn_sprites(false)
    		}
    		
    		if window_timer == 1 and !hitpause {
    			vsp = -1
    		}
    		
			if vsp > 0 vsp *= 0.9
    		with oPlayer {
    			var top_left = other.fspecial_2_rect.top_left
    			var bottom_right = other.fspecial_2_rect.bottom_right
    			if other == self continue;
    			
    			// If we hit something, great. Go to next window.
    			if (amount_of_rectangle_overlap(
    				other.x + (spr_dir*(spr_dir == -1 ? bottom_right.x : top_left.x)),
    				other.y + top_left.y,
    				other.x + (spr_dir*(spr_dir == 1 ? bottom_right.x : top_left.x)),
    				other.y + bottom_right.y, 
    				bbox_left,
    				bbox_top, 
    				bbox_right,
    				bbox_bottom) > 40) {
    					//print("lol")
    					other.window = 3
    					other.window_timer = 0
    					other.vsp = 0
    					other.hsp *= 0.5
    			} else {
    				//print("no")
    			}
    		}
    		
    	} else if window == 3 {
    		hsp *= 0.9
    		
    		if window_timer == 1 and !hitpause {
    			sound_play(sound_get("sfx_fj_sword_swipe_medium2"), false, noone, 0.7, 1)
    			sound_play(sound_get("sfx_fj_sword_swipe_heavy"), false, noone, 0.8, 0.85)
    			sound_play(sound_get("sfx_fj_sword_swipe_medium3"), false, noone, 0.9, 0.8)
    		}
    	}
    	if window == 4 && free && !hitpause{
    		vsp = -4;
    	}
    	if window == 5 {
    		if free{
    			set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 7);
    		}else{
    			reset_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE);
    		}
    	}
    break;
    case AT_FSPECIAL:
    	move_cooldown[AT_FSPECIAL] = 999;
    	can_fast_fall = false;
    	can_wall_jump = true;

    	
    	if window == 1 {
    		if window_timer > 6 {
    			if !fspecial_cache and special_pressed {
		    		fspecial_cache = true
		    	}
    		}
    		vsp = clamp(vsp, ((vsp > -short_hop_speed) ? -5 : -100), 3);
        	hsp *= 0.6;
        	
        	if shield_pressed {
        		vsp = -7;
        		hsp += spr_dir*4
        		set_state(PS_PRATFALL)
        	}
    	}
    	if window == 2 {
			if !fspecial_cache and special_pressed {
	    		fspecial_cache = true
	    	}
    		if window_timer >= 5 && fspecial_cache {
    			window = 4;
				window_timer = 0;
    		}
    		if free{
    			if window_timer <= 4 && !hitpause{
    				vsp = -4;
    			}
    			if window_timer == 21{
    				window = 3;
					window_timer = 0;
    			} 
    		}
    	}
    	
    	if window == 5 && !free{
			window = 6;
			window_timer = 0;
		}
    break;
    
    case AT_USPECIAL:
    	can_fast_fall = false;
    	can_wall_jump = true;
    	
    	if window < 4 {
    		if instance_exists(jake_obj) and jake_obj.state == PS_IDLE and place_meeting(x+hsp,y+vsp,jake_obj) {
    			instance_destroy(jake_obj)
    			with spawn_hit_fx(x,y-15,vfx_thing) {
    				depth = other.depth+1
    			}
    			sound_play(sound_get("sfx_fj_jake_collect"))
    			white_flash_timer = 10
    			change_finn_sprites(false)
    		}
    	}
    	
    	if window == 1{
    		uspecial_timer = 0;
			uspecial_max_reached = false;
			if window_timer == 7 && !hitpause{
				sound_play(sound_get("sfx_fj_boing_whip"), false, noone, 0.7, 0.3)
				sound_play(sound_get("sfx_fj_sword_swipe_heavy2"), false , noone, 0.9, 1.1)
			}
    	}
    	if window == 3{
    		if (instance_exists(jake_obj) || shield_down || jake_cooldown != 0){
    			set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 7);
    		}else{
    			reset_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO);
    		}
    	}
    	if window == 4 && window_timer == 1{
    		sound_play(sound_get("sfx_fj_boing"), false , noone, 0.6, 1.3)
    	}
    	if window == 5 && !hitpause{
        	uspecial_timer ++;
			if (uspecial_timer > uspecial_max_time) || (down_pressed || shield_down) {
				uspecial_max_reached = true;
				window = 6;
				window_timer = 0;
			}else if !free{
				attack_end();
    			set_state(PS_PRATFALL);
			}
			
        }
        if (window == 6 || window == 7) && !free{
        	attack_end();
    		set_state(PS_PRATFALL);
        }
    break;
    
    case AT_DSPECIAL:
    	can_fast_fall = false;
    	if window == 1 && window_timer == 4{
    		sound_play(sound_get("sfx_fj_boing"), false , noone, 0.6, 1.3)
    		move_cooldown[AT_DSPECIAL_2] = 90
    	}
    	if window == 2 && free{
    		vsp = -3;
    	}

    break;
    case AT_DSPECIAL_2:
    	if window == 2 and window_timer == 1 {
    		if jake_obj.state == PS_FIRST_JUMP or jake_obj.state == PS_DOUBLE_JUMP or jake_obj.state == PS_IDLE {
    			with jake_obj {
    				target_cooldown = 0
    				state = PS_RESPAWN
    				window_timer = 0;
    				window = 0;
    				lock_state = true
    				target_position = {x:other.x,y:other.y}
    				stretch_position = {x:x,y:y}
	            	image_angle = point_direction(x,y-10,player_id.x, player_id.y-(player_id.char_height/2))
	            	mask_index = asset_get("empty_sprite")
	            	visible = false
	            	spr_dir = 1
	            	sprite_index = player_id.detached_jake_data[? state].sprite;
	            	image_index = 0
	            	y-=10
    			}
    			
    		}
    	}
    break;
    case AT_TAUNT:
    	 if window == 1 and window_timer == 2 {
    			sound_play(sound_get("sfx_fj_boing"), false , noone, 0.6, 1.5)
    	 }
	break;
	case AT_EXTRA_2:
		if window == 1 and window_timer == 1 {
			with jake_obj {
				if state != PS_IDLE break;
				
				state = PS_PRATFALL
				window_timer = 0;
				window = 0;
				lock_state = true
			}
		}
	
		if window == 1 and window_timer == 5 {
			sound_play(asset_get("sfx_orca_roll"), false, noone, 0.8, 1.4)
		}
    	 if window == 2 and window_timer == 27 && !taunt_down {
    			window = 4;
				window_timer = 0;
				
    	 }
    	 
    	 if window == 3 and window_timer == 6 and !hitpause {
    	 	var random = 0.1 - (0.2*(random_func(10, 100, false)/100))
    	 	sound_play(asset_get("sfx_orca_roll"), false, noone, 0.65, 1.4+ random)
    	 }
    	 if window == 3 and window_timer == 43 && taunt_down {
    			window = 2;
				window_timer = 0;
				var random = 0.1 - (0.2*(random_func(10, 100, false)/100))
				sound_play(asset_get("sfx_orca_roll"), false, noone, 0.75, 1.3+ random)
    	 }
    	 
    	 if window == 4 and window_timer == 1 and instance_exists(jake_obj) {
    	 	jake_obj.window = 2
    	 	jake_obj.window_timer = 0
    	 }
	break;
}




#define amount_of_rectangle_overlap(left1, top1, right1, bottom1, left2, top2, right2, bottom2)
// #define rectangle_in_rectangle(left1, top1, right1, bottom1, left2, top2, right2, bottom2)
    var intersect_left = max(left1, left2)
    var intersect_right = min(right1, right2)

    var intersect_top = max(top1, top2)
    var intersect_bottom = min(bottom1, bottom2)
    if intersect_right < intersect_left or intersect_bottom < intersect_top {
        return 0
    }

    var overlap = (intersect_left-intersect_right) * (intersect_top-intersect_bottom)
    return  overlap

#define change_finn_sprites(detached)

var attack_sprites = jake_sprites[? PS_ATTACK_AIR]
if !detached {
	var keys = ds_map_keys(attack_sprites)
	var values = ds_map_values(attack_sprites)
	for (var i = 0; i < ds_map_size(attack_sprites); i++) {
		set_attack_value(keys[i], AG_HURTBOX_SPRITE, values[i].hurtbox)
	}
	
	// JAB
	reset_attack_value(AT_JAB, AG_NUM_WINDOWS);

	// NAIR
	reset_attack_value(AT_NAIR, AG_LANDING_LAG)
	reset_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_NAIR, 2, HG_LIFETIME)
	
	// FSTRONG
	reset_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME)
	reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE)
	reset_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING)
	reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX)
	reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
	reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING)
	reset_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME)
	
	// USTRONG
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME)
	reset_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
	reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
	reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT)
	reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP);
	reset_hitbox_value(AT_USTRONG, 3, HG_LIFETIME);
	
	// DSTRONG
	reset_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER);
	reset_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH);
	reset_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE);
	reset_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME);
	reset_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME);
	
	
} else {
	var keys = ds_map_keys(attack_sprites)
	for (var i = 0; i < ds_map_size(attack_sprites); i++) {
		reset_attack_value(keys[i], AG_HURTBOX_SPRITE)
	}
	// JAB
	set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
	
	// NAIR
    set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
    set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 14);
    set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 0);	
    
    // FSTRONG
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4)
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 22)
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4)
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11)
	set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0)
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"))
	set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0)
	set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 0)
	
	// USTRONG
	set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7)
	set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4)
	set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 24);
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
	set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, HFX_GEN_BIG)
	set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
	set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 0);
	
	// DSTRONG
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH,6)
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 22)
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
	set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
	set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 0);
	set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 0);
}
