

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

///sfx && cosmetic

if attack == AT_EXTRA_3 {
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	usednsp = 0
	usedfst = 0
	if vsp > 0 {
	vsp /= 2
	}
	hsp /= 1.1
	
	
	if window == 7 && window_timer == 1 && timefreeze > 1{
		timestop = timefreeze / 3.5
		timefreeze = 1
        move_cooldown[AT_DSPECIAL] = 60
		create_hitbox(AT_USPECIAL , 6 , x, y );
		
		   with (asset_get("oPlayer")) {

	
           }
   
  }
	
}

if attack == AT_DTHROW && !hitpause  {
	if window == 4 && window_timer == 1 {
	 ts1 = spawn_hit_fx(x,y-40,306)
	 ts2 = spawn_hit_fx(x,y-40,304)
	}
	if window == 4 && window_timer == 6 {
		create_hitbox(AT_DTHROW , 1 , x, y );
		set_attack(AT_UTHROW)
				sound_stop(sound_get("RI"));
		sound_play(sound_get("RI"),false,noone,1,.6);
		sound_play(asset_get("sfx_spin"),false,noone,1,.6);
		shake_camera(4,6)
	}
	
}

if attack == AT_DSPECIAL && !hitpause  {
	
    if window == 1 && (timestop < 100 or (state_timer == 8 && !special_down)) {
     set_attack(AT_DTHROW)
     if timestop <= 30 {
     	timestop = 0
     } else {
     	timestop -= 22
     }
    }

	set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 1);
	
	if vsp > 0 {
	vsp /= 2
	}
	hsp /= 2
	
	 if  window == 1 && window_timer == 1 {
    sound_play(asset_get("sfx_swipe_heavy1"));
    sound_play(asset_get("sfx_ice_on_player"));
}

if window == 5 && window_timer == 1 {
		create_hitbox(AT_USPECIAL , 3 , x, y );
		sound_stop(sound_get("RI"));
		sound_play(sound_get("RI"));
	spawn_hit_fx( x - (10 * spr_dir) , y - 40 , 306 )
	spawn_hit_fx( x - (10 * spr_dir) , y - 40 , 302 )
}


if window == 5 && window_timer == 2 && !has_hit_player{
	timestop = 60
}

if window == 5 && get_gameplay_time() % 2 == 0 && window_timer < 12{
    
		spawn_hit_fx( x - (40 * spr_dir) + (random_func(1, 80, true) * spr_dir) , y - 80 + random_func(2, 60, true) , lighten )
}

if window <= 4 {
	
		if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 50 + random_func(2, 40, true) , tauntpar1 )
        }
        
}
}

if attack == AT_DTILT && !hitpause  {
    if  window == 1 && window_timer == 1 {
    sound_play(asset_get("sfx_jumpground"));
    sound_play(asset_get("sfx_ice_on_player"));
}


if window == 2 {
	if window_timer == 1{
		 spawn_hit_fx( x + ((25 + random_func(5, 20, true)) * spr_dir) , y - 50 + random_func(6, 20, true) , tauntpar1 )
	}
	
	if window_timer == 3 {
		spawn_hit_fx( x + ((15 + random_func(5, 30, true)) * spr_dir) , y - 40 + random_func(6, 30, true) , tauntpar1 )
	}
	
	if window_timer == 5 {
		spawn_hit_fx( x + ((0 + random_func(5, 30, true)) * spr_dir) , y - 20 + random_func(6, 30, true) , tauntpar1 )
	}
	
}
    
}

if attack == AT_JAB && !hitpause {
    if window == 2 && window_timer == 1 {
    sound_play(asset_get("sfx_swipe_weak1"))
    sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
    }
    
    if window == 3 {
    		if window_timer == 1 {
		 spawn_hit_fx( x + ((35 + random_func(5, 20, true)) * spr_dir) , y - 50 + random_func(6, 20, true) , tauntpar1 )
	}
	
	if window_timer == 3 {
		spawn_hit_fx( x + ((55 + random_func(5, 30, true)) * spr_dir) , y - 50 + random_func(6, 30, true) , tauntpar1 )
	}
    }
    
    if window == 4 && window_timer == 1{
        sound_play(asset_get("sfx_swipe_weak2"))
    }
    
    
    if window == 5 {
    		if window_timer == 1 {
		 spawn_hit_fx( x + ((45 + random_func(5, 20, true)) * spr_dir) , y - 20 + random_func(6, 20, true) , tauntpar1 )
	}
	
	if window_timer == 3 {
		spawn_hit_fx( x + ((65 + random_func(5, 30, true)) * spr_dir) , y - 20 + random_func(6, 30, true) , tauntpar1 )
	}
    }
    
}

if attack == AT_UTILT && !hitpause {
	
     if window == 1 && window_timer == 1 {
    sound_play(asset_get("sfx_jumpground"));
    sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
    sound_play(asset_get("sfx_ice_shatter"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
     }
     
     if window == 2 {
     		if window_timer == 2 {
		 spawn_hit_fx( x + ((15 + random_func(5, 20, true)) * spr_dir) , y - 40 + random_func(6, 20, true) , tauntpar1 )
	}
	
	if window_timer == 5 {
		spawn_hit_fx( x + ((25 + random_func(5, 30, true)) * spr_dir) , y - 60 + random_func(6, 30, true) , tauntpar1 )
	}
     }
    
    
}

if attack == AT_TAUNT && window == 2 && window_timer <= 3 && !hitpause {
    
    sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
}

if attack == AT_DATTACK {
	
	if window == 1 {
			if window_timer == 1 {
		 spawn_hit_fx( x - ((25 + random_func(5, 20, true)) * spr_dir) , y - 20 + random_func(6, 20, true) , tauntpar1 )
	}
	
	if window_timer == 3 {
		spawn_hit_fx( x - ((15 + random_func(5, 30, true)) * spr_dir) , y - 20 + random_func(6, 30, true) , tauntpar1 )
	}
	
	if window_timer == 5 {
		spawn_hit_fx( x - ((0 + random_func(5, 30, true)) * spr_dir) , y - 20 + random_func(6, 30, true) , tauntpar1 )
	}
	}
	
	
	if window == 2 {
		
			if window_timer == 3 {
		spawn_hit_fx( x + ((15 + random_func(5, 30, true)) * spr_dir) , y - 50 + random_func(6, 30, true) , tauntpar1 )
	}
	
	if window_timer == 5 {
		spawn_hit_fx( x + ((25 + random_func(5, 30, true)) * spr_dir) , y - 40 + random_func(6, 30, true) , tauntpar1 )
	}
	
	if window_timer == 7 {
		spawn_hit_fx( x + ((35 + random_func(5, 30, true)) * spr_dir) , y - 20 + random_func(6, 30, true) , tauntpar1 )
	}
	}
	
	
    if window == 1 && window_timer == 1{
        sound_play(asset_get("sfx_ori_bash_launch"));
    }
    
     if window == 2 && window_timer == 1{
        sound_play(asset_get("sfx_ice_on_player"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
    }
    
}


if attack == AT_NAIR && !hitpause {
	
	if window == 1 {
		set_attack_value(AT_NAIR, AG_CATEGORY, 2);
	}
	
	if window == 4 {
		set_attack_value(AT_NAIR, AG_CATEGORY, 1);
	}
	
	if window == 3 {
	if window_timer == 1  {
		 spawn_hit_fx( x + ((-15 + random_func(5, 20, true)) * spr_dir) , y - 50 + random_func(6, 20, true) , tauntpar1 )
	}
	
	if window_timer == 3 {
		spawn_hit_fx( x + ((35 + random_func(5, 20, true)) * spr_dir) , y - 40 + random_func(6, 30, true) , tauntpar1 )
	}
	
	if window_timer == 5 {
		spawn_hit_fx( x + ((0 + random_func(5, 20, true)) * spr_dir) , y - 20 + random_func(6, 30, true) , tauntpar1 )
	}
	
}


    if window == 1 && window_timer == 1{
       sound_play(asset_get("sfx_spin"),false,noone,1,0.7);
       
        sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.7,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
    }
    
     if window == 2 && window_timer == 1{
        sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.7,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
         sound_play(asset_get("sfx_spin"));
            sound_play(asset_get("sfx_ice_on_player"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
         
    }
    
}

if attack == AT_DAIR && !hitpause {
	
	
		if window == 2 {
	if window_timer == 1  {
		 spawn_hit_fx( x + ((-15 + random_func(5, 20, true)) * spr_dir) , y - 50 + random_func(6, 20, true) , tauntpar1 )
	}
	
	if window_timer == 3 {
		spawn_hit_fx( x + ((35 + random_func(5, 20, true)) * spr_dir) , y - 20 + random_func(6, 30, true) , tauntpar1 )
	}
	
	if window_timer == 4 {
	spawn_hit_fx( x - ((15 + random_func(5, 20, true)) * spr_dir) , y - 20 + random_func(6, 30, true) , tauntpar1 )
	}
	
	if window_timer == 5 {
		spawn_hit_fx( x + ((0 + random_func(5, 20, true)) * spr_dir) , y + 10 + random_func(6, 30, true) , tauntpar1 )
	}
		}
	
    if window == 1 && window_timer == 1{

        sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
        sound_play(asset_get("sfx_ori_bash_launch"));
        
    }
    
     if window == 1 && window_timer == 9{
        sound_play(asset_get("sfx_ice_on_player"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
    }
    
}

if attack == AT_FAIR && !hitpause {
	
	can_wall_jump = true
    
 if window == 1 && window_timer == 10 {
     sound_play(asset_get("sfx_bird_downspecial"));
 }   
    
}

if attack == AT_UAIR && !hitpause {

     if window == 1 && window_timer == 1{
        sound_play(asset_get("sfx_ice_shatter"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
    }

if window == 3 {
		if window_timer == 1 {
		spawn_hit_fx( x + ((15 + random_func(5, 20, true)) * spr_dir) , y - 60 + random_func(6, 30, true) , tauntpar1 )
	}
	
	if window_timer == 2 {
	spawn_hit_fx( x - ((25 - random_func(5, 20, true)) * spr_dir) , y - 60 + random_func(6, 30, true) , tauntpar1 )
	}
	
	
		if window_timer == 5{
	spawn_hit_fx( x + ((10 - random_func(5, 20, true)) * spr_dir) , y - 80 + random_func(6, 30, true) , tauntpar1 )
	}
	
}
    
     if window == 2 && window_timer == 1{
        sound_play(asset_get("sfx_ice_shatter"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
    }
    
}


if attack == AT_USTRONG && !hitpause {

    if window == 2 && window_timer == 3 {
    	spawn_hit_fx( x + ((10 - random_func(5, 20, true)) * spr_dir) , y - 70 , tauntpar1 )
    }
     if window == 2 && window_timer == 1{
     	
        sound_play(asset_get("sfx_swipe_medium2"));
    }
    
}


if attack == AT_DSTRONG  {

if window == 4 && window_timer == 15 && timefreeze <= 0{
	if left_down && !right_down && spr_dir == 1{
		hitstop = 10
		hitpause = true
		spr_dir = -1
		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1.2,1.4);
		sound_play(asset_get("sfx_blow_medium1"),false,noone,1.2,1.4);
		spawn_hit_fx(x - 30*spr_dir,y - 40, 302)
		window_timer = 16
	}
	
	if !left_down && right_down && spr_dir == -1{
		hitstop = 10
		hitpause = true
		spr_dir = 1
		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1.2,1.4);
		sound_play(asset_get("sfx_blow_medium1"),false,noone,1.2,1.4);
		spawn_hit_fx(x - 30*spr_dir,y - 40, 302)
		window_timer = 16
	} 
}

if window == 2 && !hitpause{
	 			if window_timer == 1 {
		spawn_hit_fx( x + ((55 + random_func(5, 20, true)) * spr_dir) , y - 44 + random_func(6, 30, true) , tauntpar1 )
	}
	
			if window_timer == 2 {
		spawn_hit_fx( x - ((75 - random_func(5, 20, true)) * spr_dir) , y - 44 + random_func(6, 30, true) , tauntpar1 )
	}
	
	 			if window_timer == 4 {
		spawn_hit_fx( x + ((25 + random_func(5, 20, true)) * spr_dir) , y - 44 + random_func(6, 30, true) , tauntpar1 )
	}
	
			if window_timer == 5 {
		spawn_hit_fx( x - ((45 - random_func(5, 20, true)) * spr_dir) , y - 44 + random_func(6, 30, true) , tauntpar1 )
	}
	
}

    if window == 1 && window_timer == 1 && !hitpause{
        sound_play(asset_get("sfx_swipe_medium1"));
    }
    
    if window == 1 && window_timer == 6 && !hitpause{
        sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
    }
    
    if window == 2 && window_timer == 1 && !hitpause{
        sound_play(asset_get("sfx_ori_bash_launch"));
    }
    
}

if attack == AT_FSTRONG && !hitpause {

if window == 1 && window_timer == 1{
	sound_play(asset_get("sfx_spin"),false,noone,1,0.8);
    sound_play(asset_get("sfx_ice_shieldup"));
}
    
    
     if window == 2 && window_timer == 1{
        sound_play(asset_get("sfx_coin_collect"));
    }
    
}

if attack == AT_NSPECIAL && !hitpause {
	if window == 1 && window_timer == 1{
        sound_play(asset_get("sfx_ori_glide_start"));
    }
    
    if window = 3 or window = 5 {
    	if window_timer == 1 {
    		if ncharge >= 60 {
    		sound_play(asset_get("sfx_bird_sidespecial"));
    		}
    		sound_play(asset_get("sfx_ori_bash_launch"));
    	}
    }
	
	
}


if attack == AT_FSPECIAL && !hitpause {
	


	 if window = 3 && window_timer == 1 {
	 	sound_play(asset_get("sfx_ori_bash_launch"));
	 }
	
	if window = 4 && window_timer == 1 && !hitpause{
	 	 sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
         sound_play(asset_get("sfx_spin"));
            sound_play(asset_get("sfx_ice_on_player"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
	 	
	 }
}




/// function

if attack == AT_USPECIAL {
 
can_fast_fall = false
if timefreeze > 40  {
	vsp /= 1.1
} 
if uspechit && timefreeze > 40 && !hitpause {
	vsp = 6

	
   with (asset_get("oPlayer")) {



		if x != other.x {
			
					
		 xrange = abs(x - other.x);
         yrange = abs(other.y - y);
         
         if xrange <= 260 and yrange <= 260 {
			x += floor((other.x - x)/7)
            y += floor((other.y - y)/7)
			
		}
	}
   }
	
}

if window < 3 {
	
if left_down {
	hsp -= 0.1
}

if right_down {
	hsp +=  0.1
}
}

if window == 5 && window_timer > 6 {
	if jump_pressed {
		set_state(PS_IDLE_AIR)
		clear_button_buffer( PC_JUMP_PRESSED ); 
		state_timer = 1
		vsp = -12
		hsp = -6*spr_dir
		sound_play(asset_get("sfx_spin"));
	}
	
}

if window = 3 && window_timer = 1 {
	hsp /= 1.5
}
	if window == 1 && window_timer == 4 {
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
			move_cooldown[AT_USPECIAL] = 999
		sound_play(asset_get("sfx_ori_bash_launch"));
	}
	
	 if window == 2 && (get_gameplay_time() % 4 == 0 or ((get_gameplay_time() % 4 == 2 or window_timer == 0) && !hitpause)) {
	 		
	 sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))	
	 if !hitpause {
	 spawn_hit_fx( x  , y - 50 + random_func(2, 40, true) , tauntpar1 )
	 }
	 }
     
     if window == 2 or window == 3 {
     	can_wall_jump = true
     }
     
     if window == 5 {
     	
     	if window_timer < 5 {
     	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
     	clear_button_buffer( PC_JUMP_PRESSED ); 
     	}
     	
     	can_move = false
     	can_fast_fall = false 
     	if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x , y - 40 + random_func(2, 40, true) , tauntpar1 )
        }
        
        
	if get_gameplay_time() % 6 == 0 {
	    sound_play(sound_get("skating"));
	}
	
	hsp += 0.5 * spr_dir
	
	if (spr_dir == 1 && hsp > 1) or (spr_dir == -1 && hsp < -1) or window_timer == 44 {
		move_cooldown[AT_USPECIAL] = 10
		set_state(PS_IDLE_AIR)
		clear_button_buffer( PC_JUMP_PRESSED ); 
		hsp = 0
		vsp = -9
		sound_play(asset_get("sfx_spin"));
	} 
	
	
	
     }

}


if attack == AT_FSPECIAL {
	move_cooldown[AT_FSPECIAL] = 999
	can_fast_fall = false
	can_move = false
	
	vsp /= 2
	hsp /= 2
	
if window = 1 {
	fcharge = 0
	fver = 0
}	
	

if window == 3 && window_timer = 1 {
sound_play(asset_get("sfx_ice_shatter"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
spawn_hit_fx( x + ((60 + (fcharge * 8)) * spr_dir) , y - 40 + fver*6 , tauntpar1 )
	
}	


if window == 4 && window_timer = 1 {
spawn_hit_fx( floor(x + ((12 + (fcharge * 8)) * spr_dir)) , y - 44 + fver*6 , icicle3 )
create_hitbox(AT_FSPECIAL , 2,  floor(x + ((66 + (fcharge * 8)) * spr_dir)) , y - 43 + fver*6);	
}	

if window == 4 && window_timer == 2 {
	fver = 0
}

if (window == 1 and window_timer > 8) {
	if !special_down {
		window = 3 
		window_timer = 0
	}
	
}
if window = 2 {
	
	if up_down {
		fver -= 1
	}
	
	if down_down {
		fver += 1
	}
	
	fcharge += 1.5
	
if window == 2 {
	
	if !special_down {
		window = 3 
		window_timer = 0
	}
}
}

}

if attack == AT_NSPECIAL {
	move_cooldown[AT_NSPECIAL] = 40
	if free {
		can_fast_fall = false
	}
	if free && window < 4{
		window = 4 
	}
	
	if (window == 2 or (window == 1 && window_timer > 10)) && !special_down {
		window = 3
		window_timer = 0
		sound_play(asset_get("sfx_swipe_heavy1"));
	}
	
	if window == 2 && special_down {
		
		if ncharge % 10 == 0 or ncharge == 0{
			sound_play(asset_get("sfx_bird_sidespecial"));
			
		}
		
		
		if window_timer % 6 == 0 or window_timer == 0 {
			sound_play(sound_get("skating"));
			
		}
		
		can_jump = true
		
		if left_pressed or right_pressed or shield_pressed {
			set_state (PS_PARRY_START)
		}
        
        if timestop > 10 {
		ncharge += 1 
        } else {
        	timestop = 0
        set_attack (AT_FSTRONG)
        window = 5
        window_timer = 6
        }
		
			if window_timer % 3 == 0 {
			 spawn_hit_fx( x - ((15 + random_func(1, 40, true)) * spr_dir) , y - 30 + random_func(2, 40, true) , tauntpar1 )
		}
		
		if ncharge == 20 {
			sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
			spawn_hit_fx( x - (40 * spr_dir) , y - 10, 305 )
			ncharge = 30
			if timestop > 10 {
				timestop -= 10
			}

		}
		
		if ncharge == 60 {
			sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
				spawn_hit_fx( x - (40 * spr_dir) , y - 10 , 304 )
				ncharge = 70
			if timestop > 10 {
				timestop -= 10
			}
		}
		
		if window_timer == 8 {
			window_timer = 0
		}
	}
	
	if window == 4 && window_timer == 12 {
		
	
		window = 5 
		window_timer = 0
		vsp = -2
		hsp /= 2
	}
	
	
if !hitpause and ((window == 3 && window_timer == 4) or (window == 5 && window_timer == 1)){
	   move_cooldown[AT_NSPECIAL] = 30
	   
	if ncharge < 20 {
			create_hitbox(AT_NSPECIAL , 1,  x + (10 * spr_dir)  , y - 20  );
			ncharge = 0
	}
	
		
	if ncharge >= 20 && ncharge < 60 {
			create_hitbox(AT_NSPECIAL , 2,  x + (20 * spr_dir)  , y - 30  );
			ncharge = 0
	}
	
		if ncharge >= 60 {
			create_hitbox(AT_NSPECIAL , 3,  x + (30 * spr_dir)  , y - 50 );
			ncharge = 0
	}
}




}
if attack == AT_FSTRONG {

if (window == 2 && window_timer > 2) or window == 3 or (window == 4  && window_timer < 12) {
		if timefreeze < 1 {
			set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
	if window_timer % 3 == 0 && !hitpause {
	
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
			create_hitbox(AT_FSTRONG , 1 ,  x - ((40 + random_func(1, 40, true)) * spr_dir) , y - 60 + random_func(2, 40, true) );
			spawn_hit_fx(  x - ((40 + random_func(1, 40, true)) * spr_dir) , y - 60 + random_func(2, 40, true) , icepar1 )
		}
	}
	
	if window == 4 && window_timer == 11 && !hitpause {
		sound_play(asset_get("sfx_ori_energyhit_medium"))
		shake_camera(4,4)
	}
			if timefreeze > 0 {
				set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
				
	if window_timer % 2 == 0  {
	
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
			create_hitbox(AT_FSTRONG , 1 ,  x - (( 40 + (window_timer * 6)) * spr_dir)   , y - 60 + random_func(2, 40, true) );
			spawn_hit_fx(  x - (( 40 + (window_timer * 6)) * spr_dir) , y - 60 + random_func(2, 40, true) , icepar1 )
	}
		
	}
	
}

}

if attack == AT_DSTRONG {
	
	if window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_spin"),false,noone,1,0.75);
		sound_play(asset_get("sfx_ori_glide_featherout"),false,noone,.5);
	}
	
	 if has_hit_player && window < 5 {
	 	with asset_get("oPlayer") {
	 				 xrange = abs(x - other.x);
         yrange = abs(other.y - y);
         
         if xrange <= 260 and yrange <= 100 {
	 		if state_cat == SC_HITSTUN && x != other.x {
	 			 hsp = ((other.x + (30 * other.spr_dir)) - x) / 4
		         vsp = ((other.y - 10) - y) / 6
	 		}
         }
         
	 	}
       
    }
	 
    
    if window < 3 && grabbed && !hitpause{
    	window_timer += 0.5
    }
    
     if grabbed && window == 3 && window_timer > 6 {
     	if hit_player_obj.x < x {
     		spr_dir = -1
     	} else {
     		spr_dir = 1
     	}
        window = 4
        window_timer = 0
    }
	
	if window == 4 {
		if window_timer == 1 && !hitpause {
			create_hitbox(AT_DSTRONG , 3 , x, y );
		}
		
		if window_timer == 6*3 {
			sound_play(asset_get("sfx_swipe_heavy2"));
		}
		
		if window_timer == 6*4 {
			window = 5 
			window_timer = 0
			sound_play(asset_get("sfx_swipe_medium2"));
			x += 30 * spr_dir
		}
		grabbed = false
	}
    
    if window == 5 && window_timer == 0 && !hitpause {
    	create_hitbox(AT_DSTRONG , 4 , x, y );
    }
	
}

if attack == AT_USTRONG {
    
        if timefreeze > 10 {
        	vsp = 0
        }
        
    if grabbed && window == 2 && !hitpause {
        window = 4
        window_timer = 0
        vsp = -8
         spawn_hit_fx( x  , y - 80, tauntpar1 )
    }
    
    if window == 2 && has_hit_player && window_timer < 12 && hitpause {
        window_timer += 1
    }
    

    if window = 4 && window_timer = 16 {
        window = 5
        window_timer = 0 
        
    }
    
    if grabbed && window < 5 && hit_player_obj.state_cat == SC_HITSTUN && !hitpause{
        hit_player_obj.hsp = ((x + (0 * spr_dir)) - hit_player_obj.x) / 3
		hit_player_obj.y += ((y - 20) - hit_player_obj.y) / 4
    }
    
    if grabbed && window == 5 && window_timer == 1 && !hit_pause {
      hit_player_obj.y = y + 20   
      create_hitbox(AT_USTRONG , 3 , x, y );	
      window_timer = 2
      grabbed = false
    }
    
    if window = 4 {
        vsp += 0.3
    }
    
}


if attack == AT_DAIR {

   if window == 2 {
       if window_timer = 1 && !hitpause {
            sound_play(asset_get("sfx_ice_shatter_big"),false,noone,1,max(0.5,(1.6-get_window_value(attack,1,AG_WINDOW_LENGTH)/30) - (random_func(1,20,true)/100) ))
       }
   }
}

if attack == AT_BAIR {

    if window == 4 && window_timer == 1{
       
        hsp += 4*spr_dir
    }
    
}


if attack == AT_FAIR {
    
    if window == 1 {
    	fairhit = 0
    }
    
    if window == 3 && has_hit{
        if window_timer == 1 && timefreeze <= 2 {
        	if !down_down {
             vsp = -7
        	} 
            hsp /= 3
        }
        
    }
    
    if window == 2 {
    	if down_down && !hitpause{
    		y += 2
    	}
    	
    	if up_down && !hitpause {
    		y -= 2
    	}
    	
    	if timefreeze > 1 {
    		hsp /= 1.2
    		window_timer += 1
    	}
         hsp /= 1.08
        can_move = false
        vsp = -0.5
        if get_gameplay_time() % 2 == 0 && !hitpause {
        spawn_hit_fx( x - (20 * spr_dir) , y - 30 + random_func(4, 20, true) , tauntpar1 )
        }
        
        if fairhit = 1 && !hitpause {
            window = 3
            window_timer = 0
            
                 if timefreeze > 1 {
            		hsp = 2*spr_dir
            	}
    	
        }
    }
}


if attack == AT_TAUNT {
   if timefreeze > 2 && get_gameplay_time() % 2 == 0 {
		timefreeze += 1
	}
	
	if window == 1{
		songplay = 0
		songtimer = 0
	}
	

    
    if window == 3 {
        
        if window_timer == 42 {
            window = 3
            window_timer = 0
        }
        
        if taunt_pressed{
            window = 4
            window_timer = 0
        }
    }
    
    if window == 3 {
    if left_down && !down_down && !up_down && !right_down {
        if window_timer % 2 == 0 {
        spawn_hit_fx( x - 30 - random_func(1, 40, true) , y - 60 + random_func(2, 40, true) , tauntpar1 )
        }
    }
    
     if !left_down && !down_down && !up_down && right_down {
        if window_timer % 2 == 0 {
        spawn_hit_fx( x + 60 - random_func(1, 40, true) , y - 60 + random_func(2, 40, true) , tauntpar1 )
        }
    }
    
      if !left_down && down_down && !up_down && !right_down {
        if window_timer % 2 == 0 {
        spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 00 + random_func(2, 40, true) , tauntpar1 )
        }
    }
    
       if !left_down && !down_down && up_down && !right_down {
        if window_timer % 2 == 0 {
        spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 110 + random_func(2, 40, true) , tauntpar1 )
        }
    }
    
       if left_down && down_down && !up_down && !right_down {
        if window_timer % 2 == 0 {
        spawn_hit_fx( x - 20 - random_func(1, 40, true) , y - 20 + random_func(2, 40, true) , tauntpar1 )
        }
    }
    
           if left_down && !down_down && up_down && !right_down {
        if window_timer % 2 == 0 {
        spawn_hit_fx( x - 20 - random_func(1, 40, true) , y - 90 + random_func(2, 40, true) , tauntpar1 )
        }
    }
    
        if !left_down && down_down && !up_down && right_down {
        if window_timer % 2 == 0 {
        spawn_hit_fx( x + 50 - random_func(1, 40, true) , y - 20 + random_func(2, 40, true) , tauntpar1 )
        }
    }
    
           if !left_down && !down_down && up_down && right_down {
        if window_timer % 2 == 0 {
        spawn_hit_fx( x + 50 - random_func(1, 40, true) , y - 90 + random_func(2, 40, true) , tauntpar1 )
        }
    }
    
if attack_pressed {
       clear_button_buffer( PC_ATTACK_PRESSED ); 
if left_down && !down_down && !up_down && !right_down {
       sound_play(sound_get("t1"), false, noone, 0.6);
         spawn_hit_fx( x - 56 , y - 36 , 302 )
}

if left_down && down_down && !up_down && !right_down {
        spawn_hit_fx( x - 40 , y  , 302 )
        sound_play(sound_get("t2"), false, noone, 0.6);
}    

if !left_down && down_down && !up_down && !right_down {
        spawn_hit_fx( x  , y + 16  , 302 )
        sound_play(sound_get("t3"), false, noone, 0.6);
}

if !left_down && down_down && !up_down && right_down {
    spawn_hit_fx( x + 40 , y  , 302 )
        sound_play(sound_get("t4"), false, noone, 0.6);
}

if !left_down && !down_down && !up_down && right_down {
    spawn_hit_fx( x + 56 , y - 36 , 302 )
        sound_play(sound_get("t5"), false, noone, 0.6);
}

if !left_down && !down_down && up_down && right_down {
        spawn_hit_fx( x + 40 , y - 80  , 302 )
        sound_play(sound_get("t6"), false, noone, 0.6);
}   

if !left_down && !down_down && up_down && !right_down {
    spawn_hit_fx( x , y - 96  , 302 )
        sound_play(sound_get("t7"), false, noone, 0.6);
}   

if left_down && !down_down && up_down && !right_down {
    spawn_hit_fx( x - 40 , y - 80  , 302 )
        sound_play(sound_get("t8"), false, noone, 0.6);
}   

}

if special_pressed {
       clear_button_buffer( PC_SPECIAL_PRESSED ); 
if left_down && !down_down && !up_down && !right_down {
       sound_play(sound_get("t1d"), false, noone, 0.6);
         spawn_hit_fx( x - 56 , y - 36 , 302 )
}

if left_down && down_down && !up_down && !right_down {
        spawn_hit_fx( x - 40 , y  , 302 )
        sound_play(sound_get("t2d"), false, noone, 0.6);
}    

if !left_down && down_down && !up_down && !right_down {
        spawn_hit_fx( x  , y + 16  , 302 )
        sound_play(sound_get("t3d"), false, noone, 0.6);
}

if !left_down && down_down && !up_down && right_down {
    spawn_hit_fx( x + 40 , y  , 302 )
        sound_play(sound_get("t4d"), false, noone, 0.6);
}

if !left_down && !down_down && !up_down && right_down {
    spawn_hit_fx( x + 56 , y - 36 , 302 )
        sound_play(sound_get("t5d"), false, noone, 0.6);
}

if !left_down && !down_down && up_down && right_down {
        spawn_hit_fx( x + 40 , y - 80  , 302 )
        sound_play(sound_get("t6d"), false, noone, 0.6);
}   

if !left_down && !down_down && up_down && !right_down {
    spawn_hit_fx( x , y - 96  , 302 )
        sound_play(sound_get("t7d"), false, noone, 0.6);
}   

if left_down && !down_down && up_down && !right_down {
    spawn_hit_fx( x - 40 , y - 80  , 302 )
        sound_play(sound_get("t8d"), false, noone, 0.6);
}   

}


	if jump_down && shield_down && up_down {
		songplay = 1
		songtimer = 0
	}
	
	if songplay != 0 && get_gameplay_time() % 15 = 0{
		songtimer += 1
	}
	
	if songplay = 1 && get_gameplay_time() % 15 = 0 {
		switch (songtimer) {
		  case 1 :
		  sound_play(sound_get("t1"), false, noone, 0.6);
          spawn_hit_fx( x - 56 , y - 36 , 302 )
          break;
          
          case 2 :
		   spawn_hit_fx( x - 40 , y  , 302 )
           sound_play(sound_get("t2"), false, noone, 0.6);
          break;
          
          case 3 :
		  spawn_hit_fx( x  , y + 16  , 302 )
          sound_play(sound_get("t3"), false, noone, 0.6);
          break;
          
          case 4 :
          spawn_hit_fx( x + 40 , y  , 302 )
        sound_play(sound_get("t4"), false, noone, 0.6);
          break;
          
          case 5 :
         spawn_hit_fx( x + 56 , y - 36 , 302 )
        sound_play(sound_get("t5"), false, noone, 0.6);
          break;
          
          case 7 :
          spawn_hit_fx( x - 40 , y - 80  , 302 )
        sound_play(sound_get("t8"), false, noone, 0.6);
          break;
          
          case 8 :
          spawn_hit_fx( x + 40 , y - 80  , 302 )
        sound_play(sound_get("t6"), false, noone, 0.6);
          break;
          
          case 9 :
           spawn_hit_fx( x + 56 , y - 36 , 302 )
        sound_play(sound_get("t5"), false, noone, 0.6);
          break;
          
          case 11:
          sound_play(sound_get("t1"), false, noone, 0.6);
          spawn_hit_fx( x - 56 , y - 36 , 302 )
          break;
          
          case 13 :
             spawn_hit_fx( x + 56 , y - 36 , 302 )
        sound_play(sound_get("t5"), false, noone, 0.6);
          break;
  
          case 14 :
                    spawn_hit_fx( x + 40 , y  , 302 )
        sound_play(sound_get("t4"), false, noone, 0.6);      
          break;
          
          case 15 :
          		  spawn_hit_fx( x  , y + 16  , 302 )
          sound_play(sound_get("t3"), false, noone, 0.6);
          break;
          
          case 16 :
          spawn_hit_fx( x - 40 , y  , 302 )
           sound_play(sound_get("t2"), false, noone, 0.6);
          break;
          
          case 17 :
             songtimer = 18
             sound_play(sound_get("t1"), false, noone, 0.6);
             spawn_hit_fx( x - 56 , y - 36 , 302 )
          break;
          
          
         case 18 :
		  sound_play(sound_get("t1"), false, noone, 0.6);
          spawn_hit_fx( x - 56 , y - 36 , 302 )
          break;
          
          case 19 :
		   spawn_hit_fx( x - 40 , y  , 302 )
           sound_play(sound_get("t2"), false, noone, 0.6);
          break;
          
          case 20:
		  spawn_hit_fx( x  , y + 16  , 302 )
          sound_play(sound_get("t3"), false, noone, 0.6);
          break;
          
          case 21 :
          spawn_hit_fx( x + 40 , y  , 302 )
        sound_play(sound_get("t4"), false, noone, 0.6);
          break;
          
          case 22 :
         spawn_hit_fx( x + 56 , y - 36 , 302 )
        sound_play(sound_get("t5"), false, noone, 0.6);
          break;
          
          
           case 24 :
             spawn_hit_fx( x + 56 , y - 36 , 302 )
        sound_play(sound_get("t5"), false, noone, 0.6);
          break;
  
          case 25 :
                    spawn_hit_fx( x + 40 , y  , 302 )
        sound_play(sound_get("t4"), false, noone, 0.6);      
          break;
          
          case 26 :
          		  spawn_hit_fx( x  , y + 16  , 302 )
          sound_play(sound_get("t3"), false, noone, 0.6);
          break;
          
          case 27 :
          spawn_hit_fx( x - 40 , y  , 302 )
           sound_play(sound_get("t2"), false, noone, 0.6);
          break;
          
          case 28 :
           spawn_hit_fx( x  , y + 16  , 302 )
          sound_play(sound_get("t3"), false, noone, 0.6);
          break;
          
          case 29 :
           spawn_hit_fx( x  , y + 16  , 302 )
          sound_play(sound_get("t4"), false, noone, 0.6);
          break;
          
          case 30 :
           spawn_hit_fx( x  , y + 16  , 302 )
          sound_play(sound_get("t3"), false, noone, 0.6);
          break;
          
           case 31 :
          spawn_hit_fx( x - 40 , y  , 302 )
           sound_play(sound_get("t2"), false, noone, 0.6);
          break;
          
           case 32:
           sound_play(sound_get("t1"), false, noone, 0.6);
          spawn_hit_fx( x - 56 , y - 36 , 302 )
          break;
          
           case 33:
          spawn_hit_fx( x  , y + 16  , 302 )
          sound_play(sound_get("t3"), false, noone, 0.6);
          break;
          
          
		}
	}
}
    
    
 
}



///////// timefreeze

if timefreeze > 1{

if attack == AT_FSTRONG {
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	if window = 1 {
        if usedfst < 2 {
		window = 2 
		usedfst += 1
        } else {
        set_attack (AT_FTILT)	
        }
        
	}
	
	if window >= 4 {
		set_state (PS_IDLE)
		sound_play(asset_get("sfx_holy_lightning"));
		spawn_hit_fx( x  , y - 40 , 305 )
	}
}


if attack == AT_NSPECIAL {



	
	

	if window == 3 && window_timer == 11 {
		set_state (PS_IDLE)
		sound_play(asset_get("sfx_holy_lightning"));
		spawn_hit_fx( x  , y - 40 , 305 )
	}
	
	if window == 5 && window_timer == 6 {
		set_state (PS_IDLE)
		sound_play(asset_get("sfx_holy_lightning"));
		spawn_hit_fx( x  , y - 40 , 305 )
	}
	
	
}

}

