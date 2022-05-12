//B - Reversals
if ( attack == AT_DSPECIAL ){
    trigger_b_reverse();
}


if left_stick_down or right_stick_down or up_stick_down or down_stick_down {
	ihatecstick = true 
} else {
	ihatecstick = false
}

last_frame = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;


if (attack_down or ihatecstick) and window == 1 {
	move_cooldown[AT_DTHROW] += 2
} 

if (!attack_down and !ihatecstick) or window != 1 {
	move_cooldown[AT_DTHROW] = 0
}

if has_hit_player && (hitpause) && timeflow >= 100 && special_pressed && RCing == 0 && !projecting{
	djumps = 0
	move_cooldown[AT_NSPECIAL_2] = 10
	move_cooldown[AT_EXTRA_2] = 30
	hitstop = 0
	RCX = x
    RCY = y
    RCspr = sprite_index
    RCimg = image_index
    RCside = spr_dir
    move_cooldown[AT_EXTRA_1] = 60
	set_attack(AT_USPECIAL)
	window = 1
	window_timer = 0
	sound_play(asset_get("sfx_abyss_hex_hit"),false,noone,.65,0.8)
	RCing = 1
	has_player = false
	hit_player_obj.hitpause = true 
	hit_player_obj.hitstop = 30	
	timeflow -= 100
}


if attack != AT_JAB && attack != AT_USPECIAL && attack != AT_TAUNT   { 
if (((window == 1) && (((special_down or move_cooldown[AT_DTHROW] >= 7)) or (strong_charge > 0)))) && window_timer == last_frame && timeflow > 10 {
     	if !hitpause {
     		drifttime = 0
     		if timeflow > 30 {
     		ps = spawn_hit_fx(x + 2,y,pause)
     		ps.depth = -6
     		ps.spr_dir = 1
     		sound_play(asset_get("sfx_spin"),false,noone,.65,0.8)
     		sound_play(asset_get("mfx_back"),false,noone,1,2)
     		old_vsp = vsp 
     	    old_hsp = hsp 
     	    hitpause = true 
     	    hitstop = 2
     	   }
     	} else {
     		strong_charge = 0
     		drifttime ++
     		fall_through = true 
     		move_cooldown[AT_EXTRA_2] = 30
     		can_fast_fall = false
     	if !projecting {
     	if abs(old_vsp) > 7 old_vsp/= 1.15
     	if abs(old_hsp) > 7 old_hsp/= 1.15
     	}
     	hitpause = true  
     	hitstop = 2
     	vsp = old_vsp 
     	hsp = old_hsp
     	pausing = true
     	timeflow -= 2
     	}
     }
}    



if window_timer == 1 && window == 1 && attack != AT_USPECIAL && attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_DSPECIAL && attack != AT_DTILT
&& attack != AT_FSTRONG && attack != AT_DSTRONG && attack != AT_USTRONG {
	if !free {
		set_attack_value(attack, AG_CATEGORY, 0);
		set_attack_value(attack, AG_OFF_LEDGE, 0);
	} else {
		set_attack_value(attack, AG_CATEGORY, 1);
		set_attack_value(attack, AG_OFF_LEDGE, 0);
	}
}

if pausing == true && hitpause && drifttime < 30 && attack != AT_DSTRONG{
	set_attack_value(attack, AG_CATEGORY, 2);
	set_attack_value(attack, AG_OFF_LEDGE, 1);
	
	if (joy_pad_idle){
		
	} else {
	var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180

			old_hsp += (.25 * cos(angle));
			if free old_vsp += (.25 * sin(angle));
	}
}

if pausing == true && !hitpause {
     	pl = spawn_hit_fx(x + 2,y,play)
     	pl.depth = -6	
     	pl.spr_dir = 1
     	sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.6)
     	sound_play(asset_get("sfx_waveland_abs"),false,noone,1,1)
     	pausing = false
}
     
switch attack {
	
	case AT_TAUNT :
	
	   if state_timer > 30 {
	   	can_jump = true 
	   	can_dash = true 
	   	can_shield = true
	   	can_attack = true 
	   	can_special = true 
	   	can_strong = true 
	   	can_ustrong = true 
	   }
	   
	   draw_indicator = false 
		if state_timer % 10 == 0 {
			sound_play(asset_get("sfx_may_arc_talk"),false,noone,1,1.8 + pitch)
			 timeflow += 10
			 move_cooldown[AT_UTHROW] = 15
		} 
	break;
	
	
	case AT_FSPECIAL:
        var step_up_height = 40;

        if place_meeting(x+hsp,y+vsp,asset_get("par_block")) {
            for (var i = 0; i < step_up_height; i += 2) {
                if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
                    y = y+vsp-i;
                    break;
                }
            }
        }

	    if window == 1 && window_timer == 1 && !hitpause {
	    	timeflow -= 100
        	sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1.2)
        	sound_play(asset_get("sfx_forsburn_split"),false,noone,1,1)
        	
        }
        
        if window == 1 && window_timer == 15 && !hitpause {
        	y -= 5
        	move_cooldown[AT_UTHROW] = 15
        	hsp = 10*spr_dir
        	sound_play(asset_get("sfx_clairen_dspecial_counter_success"),false,noone,1,.8)
        	projectx = x - 10*spr_dir
            projecty = y
            vfx = spawn_hit_fx(x,y,fspec)
            vfx.depth = -10
        }

        
        if window == 3 {
        	can_move = false 
        	vsp = 0
        }
        
	break;
	
	
	case AT_DSPECIAL:
	
	    if has_hit_player && esave = 0{
        	saveid = hit_player_obj
            esave = 150
            esavex = hit_player_obj.x
            esavey = hit_player_obj.y
            hit_player_obj.clone = false
        }
        
        if window > 2 {
        hsp /= 1.1
        vsp /= 1.1
        if free {
        	hsp /= 1.02
        	vsp /= 1.05
        }
        }
        
        can_fast_fall = false 
        
        if (window == 2 && window_timer > 4) or (window == 3 && window_timer < 6) {
        	vsp = 0
        	hsp = 0
        }
        
	    if window == 1 && window_timer == 1 && !hitpause {
	    	move_cooldown[AT_DSPECIAL] = 60
	    	vfx = spawn_hit_fx(x + 6*spr_dir,y - 32,305)
        	vfx.pause = 4
        	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.9,1.2)
        	sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,1,1)
        	sound_play(asset_get("sfx_ori_grenade_aim"),false,noone,.9,1.2)
        }
        
        if window == 2 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_ori_grenade_launch"),false,noone,.9,1.4)
        }

        
        
        
	break;
	
	case AT_DSTRONG:
        fall_through = false 
        
	    if window == 1 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,1,1)
        }
        
        if window == 2 && !hitpause{
        	if window_timer % 4 == 0 create_hitbox(AT_DSTRONG,1,x,y)
            if window_timer == 1 && !hitpause {
            	sound_play(asset_get("sfx_ori_grenade_launch"),false,noone,.9,1.4)
            }
            
            if  free && window_timer == 9 {
            	window_timer = 2
            }
           vsp = 8
           hsp = 0
        }
        
        if ((state_timer > 5 && !free) or y > room_height - 50) && window <= 2  {
        	destroy_hitboxes()
        	strong_charge = 60
        	window = 3
        	window_timer = 1
        	create_hitbox(AT_DSTRONG,2,x,y)
        	sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,.9,.75)
        } 
        
        if window == 4 or window == 5 {
        	hsp = 0
        }
        
        if window == 5 && free {
        	vfx = spawn_hit_fx(x,y - 10,302)
        	vfx.pause = 4
        	vsp = -12
        	if !has_hit{
        		set_state(PS_PRATFALL)
        	} else {
        		set_state(PS_IDLE_AIR)
        	}
      
        }
   
	break;
	
	case AT_USTRONG:
	    if window == 1 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,1,1)
        }
        
        if window == 2 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_swipe_weak2"),false,noone,.9,1.2)
        	sound_play(asset_get("sfx_ori_grenade_launch"),false,noone,.9,1.1)
        }

        
        if free {
        	hsp /= 1.02
        	vsp /= 1.05
        }
        
	break;
	
	case AT_FSTRONG:
	    if window == 1 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,1,1)
        }
        
        if window == 2 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_swipe_weak2"),false,noone,.9,1.2)
        	sound_play(asset_get("sfx_ori_grenade_launch"),false,noone,.9,1.2)
        }
         if window == 2 && window_timer == 3 && !hitpause {
         	sound_play(asset_get("sfx_shovel_hit_light2"),false,noone,.9,1.2)
         }
        
        if free {
        	hsp /= 1.02
        	vsp /= 1.05
        }
        
	break;
	
	case AT_NSPECIAL_2:
	  if window == 1 && window_timer == 1 && !hitpause {
	      sound_play(asset_get("sfx_absa_concentrate"),false,noone,1,1.4)
	      sound_play(asset_get("sfx_bird_downspecial"),false,noone,.9,1.2)
	  }
	  if window = 1 && window_timer == 16 && !hitpause {
	     	spawn_hit_fx(x,y, gone )
	  		if (joy_pad_idle){
	    		hsp = 5*spr_dir 
	    		vsp = -5
	    		upbhsp = 5*spr_dir 
	    		upbvsp = -5
	        } else {
	        var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
	        		hsp = (5 * cos(angle));
	        		vsp = (5 * sin(angle));
	        		upbhsp = (5 * cos(angle));
	        		upbvsp = (5 * sin(angle));
	        }
	  }
	  
	  if window == 2 {
	  	  vsp = 0
	  	  hsp = 0
	  	  if window_timer == 2 && !hitpause {
	  	  	spawn_hit_fx(x + 10*spr_dir,y, appear )
	  	  }
	  	  if window_timer == 1 && !hitpause {
	  	  	create_hitbox(AT_USPECIAL,3,x,y - 30)
	  	  x += upbhsp*15
	  	  y += upbvsp*15
	  	  sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.9,1.2)
	  	  hsp = upbhsp 
	  	  vsp = upbvsp 
	  	  }
	  	  if window_timer == 1 && !hitpause {
	  	  	sound_play(asset_get("sfx_ice_on_player"),false,noone,1,.7)
	  	  }
	  	  if window_timer == 6 && !hitpause {
	  	  	sound_play(asset_get("sfx_swipe_weak2"),false,noone,.9,1.2)
        	sound_play(asset_get("sfx_ori_grenade_launch"),false,noone,.9,1.1)
	  	  }
	  } else if window > 2 {
	  	if window == 3 {
	  	  hsp = upbhsp
	  	  vsp = upbvsp 
	  	} else {
	  		hsp /= 1.1
	  		if vsp > 0 vsp /= 1.2
	  		can_wall_jump = true 
	  	}
	  }
	  
	  
	break;
	
	case AT_USPECIAL:
     
	    can_move = false 
        can_fast_fall = false 
	    if !hitpause {
	    	hsp /= 1.12
	    	vsp /= 1.12
	    }
	    if window == 1 && window_timer == 1 && !hitpause {
	    	spr_dir = RCside
	    	if (joy_pad_idle){
	    		vsp = -1
	        } else {
	        var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
	        		hsp = (5 * cos(angle));
	        		vsp = (5 * sin(angle));
	        }
	
        	sound_play(asset_get("sfx_absa_concentrate"),false,noone,1,1.2)
        	sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.6)
        }
        
        if window == 1 && window_timer == 9 && !hitpause {
        	RCing = false
        	sound_play(asset_get("sfx_bird_downspecial"),false,noone,.9,1.2)
        }
        
        if window == 1 && window_timer == 12 && !hitpause {
  	         spawn_hit_fx(x,y,RC)
        	hsp*=4
        	vsp*=4
        }
        
        if window = 2 && has_hit && window_timer > 10 {
        	if window_timer = 15 {
        	set_state(PS_IDLE_AIR)
        	}
        	can_jump = true 
	   	    can_dash = true 
	   	    can_shield = true
	   	    can_attack = true 
	   	    can_special = true 
	   	    can_strong = true 
	   	    can_ustrong = true
        	move_cooldown[AT_USPECIAL] = 30
        } 
        
	break;
	
	 case AT_UAIR:
	 
	     if window != 1 {
	     	set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
	     }else {
	     	set_attack_value(AT_UAIR, AG_LANDING_LAG, 1);
	     }
	     
	    if window == 1 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1,1.2)
        }
        
        if window == 1 && window_timer == 9 && !hitpause {
        	sound_play(asset_get("sfx_swipe_weak1"),false,noone,.9,1.2)
        }
        
        if window = 3 {
        	set_attack_value(attack, AG_CATEGORY, 1);
        	set_attack_value(attack, AG_OFF_LEDGE, 0);
        } 
        
	break;
	
	case AT_DAIR:
	     if window != 1 {
	     	set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
	     }else {
	     	set_attack_value(AT_DAIR, AG_LANDING_LAG, 1);
	     }
	     
	    if window == 1 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med2"),false,noone,.9,1)
        }
        
        if window == 1 && window_timer == 8 && !hitpause {
        	sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1)
        }
        
        if window == 2 &&  window_timer % 4 == 0 && window_timer < 14 && !hitpause {
        		create_hitbox(AT_DAIR,1,x,y)
        }
        	
        if window = 3 {
        	
        	set_attack_value(attack, AG_CATEGORY, 1);
        	set_attack_value(attack, AG_OFF_LEDGE, 0);
        } 
        
	break;
	
	case AT_BAIR:
	
	     if window != 1 {
	     	set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
	     }else {
	     	set_attack_value(AT_BAIR, AG_LANDING_LAG, 1);
	     }
	      
	    if window == 1 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
        }
        
        if window == 1 && window_timer == 8 && !hitpause {
        	//hsp -= 5*spr_dir
        	sound_play(asset_get("sfx_swipe_medium1"),false,noone,.9,1.2)
        }
        
        if window == 2 &&  window_timer == 4 && !hitpause {
        	//	hsp += 4*spr_dir
        }
        	
        if window = 3 {
        	
        	set_attack_value(attack, AG_CATEGORY, 1);
        	set_attack_value(attack, AG_OFF_LEDGE, 0);
        } 
        
	break;
	
	 case AT_FAIR:
	     if window != 1 {
	     	set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
	     }else {
	     	set_attack_value(AT_FAIR, AG_LANDING_LAG, 1);
	     }
	    if window == 1 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1,1.2)
        }
        
        if window == 1 && window_timer == 10 && !hitpause {
        	sound_play(asset_get("sfx_swipe_weak2"),false,noone,.9,1.2)
        }
        
        if window = 3 {
        	set_attack_value(attack, AG_CATEGORY, 1);
        	set_attack_value(attack, AG_OFF_LEDGE, 0);
        } 
        
	break;
	
     case AT_NAIR:
         if window != 1 {
	     	set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
	     }else {
	     	set_attack_value(AT_NAIR, AG_LANDING_LAG, 1);
	     }
	     
	    if window == 1 && window_timer == 1 && !hitpause {
	    	set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 82);
            set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 48);;
        	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.9,1.2)
        }
        
        if has_hit_player {
             set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 102);
             set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 68);
        }
        
        if window == 1 && window_timer == 8
        && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med2"),false,noone,.9,1.2)
        }
        
        if window == 2 && window_timer == 8 && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,.9,1.3)
        }
         
        if window = 3 {
        	set_attack_value(attack, AG_CATEGORY, 1);
        	set_attack_value(attack, AG_OFF_LEDGE, 0);
        } 
	  
	break;
      
     case AT_DTILT:
	    if window == 1 && window_timer == 1 && !hitpause {
	    	set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 46);
            set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 80);
        	sound_play(asset_get("sfx_swipe_heavy1"),false,noone,.9,1.1)
        }
        
        if has_hit_player {
        	set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 66);
            set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 100);
            if !hitpause && window == 3 {
            	window_timer += 0.5 
            }
        }
        if window == 1 && window_timer == 9
        && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,.9,1.2)
        }
        
        
        if window == 2 && window_timer == 8
        && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med2"),false,noone,.9,1.4)
        	vsp = -5
        }
        
	break;
	
     
     case AT_UTILT:
	    if window == 1 && window_timer == 1 && !hitpause {
        	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.9,1.1)
        }
        
        if window == 1 && window_timer == 6
        && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,.9,1.2)
        }
 
	break;
	
	 case AT_FTILT:
	    if window == 1 && window_timer == 1 && !hitpause {
	    	if move_cooldown[AT_FTHROW] > 0 {
	    		set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 0);
	    	} else {
	    		set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
	    	}
        	sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,.9,1)
        }
        
        if window == 1 && window_timer == 5
        && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,.9,1.4)
        }
        
     
	  
	break;
	
	case AT_DATTACK:
	   if free && window != 1 {
	   	hsp /= 1.06
	   }
	    if window == 1 && window_timer == 1 && !hitpause {
	    	set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 76);
            set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 58);
        	sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,.9,1.2)
        }
        
        if has_hit_player {
        	set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 96);
           set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 78);
        }
        
        if window == 1 && window_timer == 12
        && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,.9,1.2)
        }
        
        if window == 2 && window_timer == 11 && !hitpause {
        	sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,.9,1.3)
        }
     
	  
	break;
	case AT_JAB:
     if window == 1 && window_timer == 1 && !hitpause {
     	hsp /= 1.2
     	sound_play(asset_get("sfx_swipe_weak1"),false,noone,.9,1.2)
     }
     
     if window == 3 {
     		if (left_down == spr_dir = 1) or (right_down && spr_dir = -1) {
     			can_attack = true 
     		}
     }
     if window == 4 && window_timer == 1 && !hitpause {
     	sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,.9,1.4)
     }
    
	break;

}