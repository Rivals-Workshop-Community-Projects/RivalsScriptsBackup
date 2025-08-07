
	//B - Reversals

if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL){
    trigger_b_reverse();
}



if attack == AT_FTILT or attack == AT_DTILT or attack == AT_UTILT 
or attack == AT_FAIR or attack == AT_NAIR or attack == AT_UAIR {
	
	if has_hit_player{
		move_cooldown[AT_EXTRA_3] = 0
	}
	
	if window == 1 && window_timer == 1 {
		move_cooldown[AT_EXTRA_3] -= 5
	}
	
	if window == get_attack_value(attack, AG_NUM_WINDOWS) && !has_hit_player {
	    if  move_cooldown[AT_EXTRA_3] <= 0 {
	    	move_cooldown[AT_EXTRA_3] = 20 + random_func(1,50,true)
	    }
	    
	}
	
		if move_cooldown[AT_EXTRA_3] > 0 && move_cooldown[AT_EXTRA_3] < 5 {
	    	move_cooldown[AT_EXTRA_3] = 2
	    }
	    
	if move_cooldown[AT_EXTRA_3] > 0 && window != get_attack_value(attack, AG_NUM_WINDOWS) {
		sound_stop(cur_sound)
	}
   
	
}

switch attack {
	
	case AT_TAUNT :
	 
	 if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 		set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 30);
            set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 60);
	 	 cur_sound = sound_play(sound_get("v_dowitdabear"),false,noone,.9,1.05 - random_func(1,10,true)/100)
	 	}
	 }
	 
	 if window == 5 && window_timer == 9*6 && !hitpause{
	 	window = 6
	 	window_timer = 1
	 }
	  if window == 6 && window_timer == 4*5 && !hitpause{
	    sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
	    sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,0.8,1.2)
	  }
	 
	 if window == 6 && window_timer == 12*5 && !hitpause{
	    sound_play(asset_get("sfx_forsburn_cape_hit"),false,noone,.8,1.15)
	  }
	  
	  if ((window == 7 && window_timer == 30) or (window == 6 && window_timer == 11*5)) && taunt_down {
	  	window_timer -= 1
	  }
	  
	  if window == 7 && window_timer == 13 && !hitpause{
	    sound_play(sound_get("swingm3"),false,noone,0.6,.7)
	  }
	  
	  if window == 7 && window_timer > 13 && window_timer < 29 {
         invincible = true 
         invince_time = 2
         
         nearbyhitbox = collision_circle( x, y - 30, 69, asset_get("pHitBox"), true, true ) 
	               if nearbyhitbox != noone{
	               	if nearbyhitbox.player_id != self && nearbyhitbox.hit_priority > 0  {
	               		heehee = spawn_hit_fx(x,y,dsp)
	               		heehee.depth = -6
	               		move_cooldown[AT_DSPECIAL] = 0
	               		attack = AT_DSPECIAL
	               			 window = 4 
	               			 window_timer = 1 
	               			 hit_player_obj = nearbyhitbox.player_id
	               			 sound_play(sound_get("swingh3"),false,noone,0.7,.7)
	               			 sound_stop(cur_sound)
	               			 cur_sound = sound_play(sound_get("v_heehee"),false,noone,.9,1.05 - random_func(1,10,true)/100)
	               			 hit_player_obj.hitpause = true 
	               			 hit_player_obj.hitstop = 5 //nearbyhitbox.hitpause
	               			 hit_player_obj.old_hsp = hit_player_obj.hsp 
	               			 hit_player_obj.old_vsp = hit_player_obj.vsp
	               	            if hit_player_obj.x > x {
	               		        	target = 46
	               		        } else {
	               		        	target = -46
	               		        }
	               		
	               			 with hit_player_obj {
	               			 	with (asset_get("pHitBox")) {
                                      if(player_id == other.id && type == 1) {
                                      	destroyed = true 
                                      }
	               			 	}
	               			 }
	               }
	               }
	               
	  } else {
	  	
	  }
	  
	 if has_hit_player {
	 	set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 130);
        set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 160);
	 }
	 
	 if window == 4 && window_timer > 12 && taunt_pressed {
	 	has_hit_player = false
	 	window_timer = 0
	 	soundlol += random_func(1,2,true) + 1
      set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 30);
      set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 60);  

         switch soundlol%4 {
             
             case 0 :
              cur_sound = sound_play(sound_get("v_daa"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
             break;
             
             case 1 :
              cur_sound = sound_play(sound_get("v_shchk"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
             break;
             
             case 2 :
              cur_sound = sound_play(sound_get("v_dah"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
             break;
             
             case 3 :
              cur_sound = sound_play(sound_get("v_cha"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
             break;
             
         }
	 }
	
	break ;
	
	case AT_JAB:
	 
	 if window == 3 or window == 6 or window == 9 {
	 
	  if (left_down && side == 1 ) or (right_down && side == -1) {
       can_attack = true
       }
	 	
	 }
	 
	 if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 		cur_sound = sound_play(sound_get("v_daa"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	 sound_play(sound_get("swingm2"),false,noone,0.7,1)
	 	}
	 	if window_timer == 6 { 
	 		
	 	 sound_play(asset_get("sfx_blow_medium3"),false,noone,0.7,1.5)	
	 	}
	 	
	 }
	 if window == 4  && !hitpause {
	 	if window_timer == 1 {
	 		cur_sound = sound_play(sound_get("v_ah"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	 sound_play(sound_get("swingm2"),false,noone,0.7,1.1)
	 	}
	 	if window_timer == 6 { 
	 		
	 	 sound_play(asset_get("sfx_blow_medium3"),false,noone,0.7,1.4)	
	 	}
	 }
	 if window == 7  && !hitpause {
	 	if window_timer == 1 {
	 		cur_sound = sound_play(sound_get("v_ah"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	 sound_play(sound_get("swingm3"),false,noone,0.6,1)
	 	}
	 	if window_timer == 10 { 
	 			 	 sound_play(asset_get("sfx_blow_medium3"),false,noone,0.7,1.3)	
	 	 sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.7,1.2)
	 	}
	 }
	 if window == 10 && !hitpause {
	 	if window_timer == 1 {
	 	cur_sound = sound_play(sound_get("v_yeeyee"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	  	sound_play(sound_get("swingm3"),false,noone,0.7,.8)
	 	}
	 	if window_timer == 15 { 
	 	 sound_play(asset_get("sfx_blow_medium3"),false,noone,0.7,1.2)	
	 	 sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.7,1.1)
	 	}
	 }
	 
	 
	break ;
	
	case AT_FTILT :
	
     	
     if window == 1 && !hitpause {
     	if window_timer == 1 {
     		if (((left_down) or left_stick_down) && side == 1 ) or (((right_down) or right_stick_down) && side == -1) {
     		  side *= -1
     		  spr_dir *= -1
              attack = AT_FTHROW
              window_timer = 0
            }
     	}
	 	if window_timer == 2 {
	 		set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 76);
            set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 36);
	 	 cur_sound = sound_play(sound_get("v_hoo"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
	 	if window_timer == 5 { 
	 		sound_play(sound_get("swingm3"),false,noone,0.6,1)
	 	}
	 }
	 if window == 2 && !hitpause {
	 	if window_timer == 7 { 
	 		if has_hit_player {
	 			set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 106);
                set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 76);
	 		}
	 		sound_play(sound_get("swingm2"),false,noone,0.6,1.3)
	 	}
	 }
	break ;	
	
	case AT_BAIR :
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,0.8,1.2)
	 	 cur_sound = sound_play(sound_get("v_daow"),false,noone,.7,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	if window_timer == 5 { 
	 		sound_play(sound_get("swingm2"),false,noone,0.8,1)
	 	}
	 }
	break ;	
	 
	case AT_FTHROW :
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 		if move_cooldown[AT_UTHROW] == 0 {
	 			set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 0);
	 		} else {
	 			set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
	 		}
	 		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,0.8,1.2)
	 	 cur_sound = sound_play(sound_get("v_taow"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	if window_timer == 4 { 
	 		sound_play(sound_get("swingm3"),false,noone,0.8,1)
	 	}
	 	
	 }
	   if has_hit_player {
	 		move_cooldown[AT_UTHROW] = 30
	 	}
	break ;
	
	case AT_DTILT :
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 	 cur_sound = sound_play(sound_get("v_shchk"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	if window_timer == 6 { 
	 		sound_play(sound_get("swingm2"),false,noone,0.8,1)
	 		hsp = 30*spr_dir
	 	}
	 }
	if window == 2 && !hitpause {
		if window_timer == 1 {
		hsp = 8*spr_dir
		}
	}
	

	
	if has_hit_player && !hitpause {
		window_timer += 0.5
		hsp = 0
	}
		
	break ;
	
	case AT_DATTACK :
	attack = AT_FTILT

	if window == 1 && !hitpause && window_timer == 1{
		set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
	     side = spr_dir 
		 sound_stop(cur_sound) 
	 	 cur_sound = sound_play(sound_get("v_bah"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	 set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 302);
	}
	if window == 1 {
		strong_charge += 5
		if strong_charge >= 60 {
			set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 10);
			set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
		    set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 20);
		    set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 304);
		}
	}
	
	if window == 2 && !hitpause {
     	spr_dir = side
	 	if window_timer == 1 {
	 		set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 76);
            set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 86);
	 	 cur_sound = sound_play(sound_get("v_heehee"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	if window_timer == 6 { 
	 		sound_play(sound_get("swingm2"),false,noone,0.8,1)
	 	}
	 }
	 
	if window == 3 && !hitpause {
		if has_hit_player {
			set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 90);
            set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 96);
		}
		if window_timer == 6 {
		sound_play(sound_get("swingm2"),false,noone,0.8,1.2)
		}
	}
	
	break ;
	
	case AT_UTILT :
	
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 	 cur_sound = sound_play(sound_get("v_cha"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	if window_timer == 6 { 
	 		cur_sound = sound_play(sound_get("v_doo"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 		sound_play(sound_get("swingm3"),false,noone,0.7,1)
	 	}
	 }
	 

	
	break ;
	
	case AT_DSTRONG :
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 		set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 150);
            set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 32);
	 	 cur_sound = sound_play(sound_get("v_dah"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	
	 }
	 
	 if window == 2 && !hitpause {
	   if window_timer == 1 { 
	 		cur_sound = sound_play(sound_get("v_hoo"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 		sound_play(sound_get("swingm3"),false,noone,0.7,.8)
	 	}
	 }
	 if has_hit_player {
	 		set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 160);
            set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 62);	 	
	 }
	break ;
	
	case AT_FSTRONG :
	side = spr_dir
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 		set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 88);
            set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 56);
	 	 cur_sound = sound_play(sound_get("v_cha"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	
	 }
	 
	 if window == 2 && !hitpause {
	   if window_timer == 1 { 
	 		cur_sound = sound_play(sound_get("v_daow"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 		sound_play(sound_get("swingh1"),false,noone,0.7,1.2)
	 	}
	 }
	 if has_hit_player {
	 	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 108);
        set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 96);
	 }
	break ;
	
	case AT_USTRONG :
	side = spr_dir
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 	 cur_sound = sound_play(sound_get("v_hee"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	
	 }
	 
	 if window == 2 && !hitpause {
	   if window_timer == 1 { 
	 		cur_sound = sound_play(sound_get("v_heehee"),false,noone,.85,1.05 - random_func(1,10,true)/100)
	 		sound_play(sound_get("swingh3"),false,noone,0.7,1)
	 	}
	 }
	 
	 if window == 3 && !hitpause {
	   if window_timer == 4 { 
	 		sound_play(sound_get("swingh3"),false,noone,0.7,1.2)
	 	}
	 	
	 	 if window_timer == 8 { 
	 		sound_play(sound_get("swingh3"),false,noone,0.7,1.4)
	 	}
	 }
	 
	 if has_hit_player && window < 4 {
                   if hit_player_obj.state_cat == SC_HITSTUN {
                   	 hit_player_obj.x += floor ((x - hit_player_obj.x)/5) 
                   	 hit_player_obj.y += floor ((y - 50 - hit_player_obj.y)/5) 
                   }
	 }
	break ;
	
	case AT_NAIR :
	side = spr_dir
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 	 cur_sound = sound_play(sound_get("v_yeeyee"),false,noone,.75,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	if window_timer == 8 { 
	 		sound_play(sound_get("swingm2"),false,noone,0.7,1)
	 	}
	 	
	 }
	 

	break ;
	
	case AT_UAIR :
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 		sound_play(sound_get("swingm2"),false,noone,0.7,1.2)
	 	 cur_sound = sound_play(sound_get("v_hoo"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
        if window_timer == 12 { 
	 		sound_play(sound_get("swingm3"),false,noone,0.7,1.2)
	 		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.1)
	 	}
	 	
	 }
	 


	break ;
	
	case AT_DAIR :
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 	 cur_sound = sound_play(sound_get("v_ah"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	}
        if window_timer == 11 { 
	 		sound_play(sound_get("swingh3"),false,noone,0.7,1.2)
	 		cur_sound = sound_play(sound_get("v_doo"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 }
	 


	break ;
	
	case AT_FAIR :
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 	 cur_sound = sound_play(sound_get("v_hee"),false,noone,1,1.05 - random_func(1,10,true)/100)
	 	}
        if window_timer == 8 { 
	 		sound_play(sound_get("swingm3"),false,noone,0.7,1)
	 	}
	 	
	 }
	 


	break ;
	
	
	case AT_FSPECIAL :
	
	if move_cooldown[AT_FSPECIAL_2] == 0 {
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 2);
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
        set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 20)
        set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	} else {
		set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
        set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .1);
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 3);
        set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
        set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 1)
        set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	}
	
	if window == 1 && !hitpause {
	 	if window_timer == 1 {
	 		if right_down - left_down != 0 {
	 			side = right_down - left_down
	 		    spr_dir = right_down - left_down
	 		}
	 	 cur_sound = sound_play(sound_get("v_ah"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
        if window_timer == 12 { 
        	sound_play(asset_get("sfx_spin"),false,noone,.8,1.2)
	 	 cur_sound = sound_play(sound_get("v_cha"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
	 	
	 	
	 	if window_timer > 6 && jump_pressed && djumps < 1 && moonlight < 0 {
	 		if right_down - left_down != 0 {
	 			side = right_down - left_down
	 		    spr_dir = right_down - left_down
	 		}
	 		wahoo = true
	 		can_jump = true
	 	}
	 	
	 }
	 
	 if window == 2 {
	 	if vsp > 0 {
	 		vsp /= 1.2
	 	}
	 	if right_down - left_down != 0 {
	 			side = right_down - left_down
	 		    spr_dir = right_down - left_down
	 	}
	 	if special_down && window_timer == 9{
	 		sound_play(asset_get("sfx_spin"),false,noone,.65,1.2)
	 		window_timer = 0
	 	}
	 	if !free {
	 	   if abs(hsp) < 5	hsp += (right_down - left_down)*1.5
	 	}
	 	if state_timer == 30 && !hitpause{
	 		cur_sound = sound_play(sound_get("v_hee"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	} 
	 	
	 	if state_timer > 30 {
	 		spawn_hit_fx(x - 30 + random_func(1,60,true), y + vsp - 50 + random_func(2,50,true),p1)
            spawn_hit_fx(x - 30 + random_func(3,60,true), y + vsp - 50 + random_func(4,50,true),p2)
	 	}
	 	
	 	if (!special_down or state_timer == 50) && !hitpause {
	 		destroy_hitboxes()
	 		sound_play(sound_get("swingh3"),false,noone,0.7,1.2 - state_timer/150)
	 		sound_stop(cur_sound)
	 		window = 3
	 		window_timer = 0
	 		cur_sound = sound_play(sound_get("v_hoo"),false,noone,.8,1.05 - random_func(1,10,true)/100)
	 	}
	 }
	 
	 if window == 3 && !hitpause{
	 	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12 + floor(state_timer/6));
	 	spawn_hit_fx(x - 30 + random_func(1,60,true) - hsp, y + vsp - 60 + random_func(2,50,true),p1)
        spawn_hit_fx(x - 30 + random_func(3,60,true) - hsp, y + vsp - 60 + random_func(4,50,true),p2)
        
        hsp = (5 + state_timer/4)*spr_dir
        vsp = 0
        
        
        var step_up_height = 30;
         
         if place_meeting(x+hsp,y+vsp,asset_get("par_block")) {
             for (var i = 0; i < step_up_height; i += 2) {
                 if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
                     x = x+hsp; 
                     y = y+vsp-i;
                     break;
                 }
             }
         }
	 }
      if window == 3 && hitpause{
      	hsp = 2*spr_dir
      }
     if window == 4 {
     	if window_timer == 1 {
     		hsp = 2*spr_dir
     	}
     	can_wall_jump = true
     	if vsp > 0 {
	 		vsp /= 1.5
	 	}
     }
     if has_hit_player {
     	djumps = 0
     }
	break ;
	
	
	case AT_NSPECIAL :
	   if window == 1 {
	   	 if state_timer == 1 && !hitpause {
	   	 	reversed = 0
	   	 	cur_sound = sound_play(sound_get("v_daa"),false,noone,.7,1.05 - random_func(1,10,true)/100)
	   	 	side = spr_dir
	   	 }
	   	 if state_timer == 6 && !hitpause {
	   	 	if !left_down && right_down && side == -1 {
	   	 		side = 1
	   	 		spr_dir = 1 
	   	 		reversed = 1
	   	 		sound_play(sound_get("shing"),false, noone, .8, 1.15)
	   	 		brv = spawn_hit_fx(x - 20,y - 50,305)
	   	 		brv.pause = 4
	   	 	}
	   	 	if !right_down && left_down && side == 1 {
	   	 		side = -1
	   	 		spr_dir = -1 
	   	 		reversed = 1
	   	 		sound_play(sound_get("shing"),false, noone, .8, 1.15)
	   	 		brv = spawn_hit_fx(x + 20,y - 50,305)
	   	 		brv.pause = 4
	   	 	}
	   	 }
	   	 
	   	 if state_timer == 8 && !hitpause {
	   	 	sound_play(sound_get("swingm3"),false,noone,0.6,.7)
	   	 	cur_sound = sound_play(sound_get("v_shchk"),false,noone,.7,1.05 - random_func(1,10,true)/100)
	   	 }
	   }
	   
	   if window == 2 && window_timer == 1 && !hitpause {
	   	  nfxx = spawn_hit_fx(x,y,nfx)
	   	  nfxx.depth = -6
	   	  move_cooldown[AT_NSPECIAL] = 60
	   }
	   
	break;
	
	case AT_DSPECIAL :
	   move_cooldown[AT_EXTRA_3] = 0
	   hsp /= 1.2
	   move_cooldown[AT_DSPECIAL] = 20
           parry_cooldown = 20
	   if window < 3 {
	    if vsp > 0 vsp /= 2
	   }
	   if window == 5 {
	   	if special_down { 
	   		window_timer = 1 
	   	} else {
	   		window = 3
	   		window_timer = 1
	   	}
	   	if vsp > 0 vsp /= 1.4
	   }
	   
	   if window == 1 {
	   	 if state_timer == 1 && !hitpause {
	   	 	sound_play(sound_get("swingm3"),false,noone,0.6,.7)
	   	 	cur_sound = sound_play(sound_get("v_hiyeee"),false,noone,.75,1.05 - random_func(1,10,true)/100)
	   	 	side = spr_dir
	   	 }
	   }
	   
	   if window == 2 {
	   	invincible = true 
	   	    if window_timer == 20 && special_down {
	   	    	window = 5
	   	    	window_timer = 1 
	   	    }
	   		nearbyhitbox = collision_circle( x, y - 30, 69, asset_get("pHitBox"), true, true ) 
	               if nearbyhitbox != noone{
	               	if nearbyhitbox.player_id != self && nearbyhitbox.hit_priority > 0  {
	               		moonlight = 280
	               		heehee = spawn_hit_fx(x,y,dsp)
	               		heehee.depth = -6
	               			 window = 4 
	               			 window_timer = 1 
	               			 hit_player_obj = nearbyhitbox.player_id
	               			 sound_play(sound_get("swingh3"),false,noone,0.7,.7)
	               			 sound_stop(cur_sound)
	               			 cur_sound = sound_play(sound_get("v_heehee"),false,noone,.9,1.05 - random_func(1,10,true)/100)
	               			 hit_player_obj.hitpause = true 
	               			 hit_player_obj.hitstop = 10 //max(20, min(40,nearbyhitbox.hitpause*4))
	               			 hit_player_obj.old_hsp = hit_player_obj.hsp 
	               			 hit_player_obj.old_vsp = hit_player_obj.vsp
	               	            if hit_player_obj.x > x {
	               		        	target = 46
	               		        } else {
	               		        	target = -46
	               		        }
	               		
	               			 with hit_player_obj {
	               			 	with (asset_get("pHitBox")) {
                                      if(player_id == other.id && type == 1) {
                                      	destroyed = true 
                                      }
	               			 	}
	               			 }
	               }
	
	   }
	   }
	   
	   if window = 3 or window == 5{
	   	invincible = false
	   }
	
	   if window = 4 {
	   	       move_cooldown[AT_FSTRONG] = 30
	           move_cooldown[AT_DSTRONG] = 30
	           move_cooldown[AT_USTRONG] = 30
	   	if free {
	   		vsp = -3
	   		old_vsp = -4
	   	}
	   	 spawn_hit_fx(x - 20 + random_func(1,40,true), y + vsp - 50 + random_func(2,50,true),p1)
         spawn_hit_fx(x - 20 + random_func(3,40,true), y + vsp - 50 + random_func(4,50,true),p2)
	   	djumps = 0
	   	invincible = true 
	   	invince_time = 30
	   	hsp = 0
	   	 x += floor(hit_player_obj.x - x + target)/8
	   	 y += floor(hit_player_obj.y - y)/8
	   }
	   
	break ;
}


if attack == AT_USPECIAL{
	if window < 3 or (window == 3 && window_timer < 8 ){
	draw_indicator = false
	}
	hsp = 0
	vsp = 0
	can_fast_fall = 0
	
	spr_dir = side
	
     if window == 1 && window_timer == 1 && !hitpause {
     	cur_sound = sound_play(sound_get("v_BAYBE"),false,noone,.85,1.05 - random_func(1,10,true)/100)
     }
    
    if window == 2 && window_timer == 10 && !hitpause {
    	var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
			vsp += -10
			y += -120;
			
		}else{
			hsp += (10 * cos(angle));
			vsp += (10 * sin(angle));
			x += (140 * cos(angle));
			y += (140 * sin(angle)) + 10;
			
		}
		
    }
    
    if window == 2 && window_timer == 2 && !hitpause {
    	
    }
    
    if window == 3 && window_timer == 1 && !hitpause {
    	sound_play(asset_get("sfx_forsburn_reappear"));
    	sound_play(asset_get("sfx_abyss_explosion"),false,noone,0.5,1.2);
    	
    }
    

    if window == 3 && window_timer > 25 && !free {
    	set_state(PS_PRATLAND)
    }

   
}