

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

if attack == AT_NAIR && !hitpause{
	if  has_hit {
		window_timer += 0.5
	}

}

if shade = 1 {
	
	shadeshine = 1
}

if window == 1 && window_timer == 1 {
	set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
    set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
    set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
    set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
    set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
}

if attack == AT_FTILT{
	if window == 1 && window_timer == 1 {
		sound_play(asset_get("sfx_jumpground"));
	}

	
}

if attack == AT_FAIR{
	
	if window == 2 && hitpause {
		if has_hit_player && hitpause {
				hit_player_obj.x += ((x + (34 * spr_dir)) - hit_player_obj.x) / 6
				hit_player_obj.y += ((y + (10)) - hit_player_obj.y) / 6
			}
	}
	if window == 1 && window_timer == 11 {
		sound_play(asset_get("sfx_swipe_medium1"));
	}
	
	if window == 2 && window_timer == 3 && !hitpause{
		sound_play(asset_get("sfx_swipe_medium2"));
	}
	
}

if attack == AT_JAB{
	if window == 7 && window_timer == 1 {
		sound_play(asset_get("sfx_swipe_heavy1"));
	}
	
	
	
	if window < 3 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN{
			hit_player_obj.x += ((x + (50 * spr_dir)) - hit_player_obj.x) / 10
	}
	

	
}


if attack == AT_BAIR{
	if window == 1 && window_timer == 6 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium2"));
	}
	
	if has_hit_player && window == 2{
		    vsp = 0
			hit_player_obj.y += ((y - 10) - hit_player_obj.y) / 5
	}
	
}

if attack == AT_USTRONG{
	
	if window == 2 && window_timer == 1 && !hitpause{
		sound_play(asset_get("sfx_swipe_heavy2"));
	}
	
	
	if window == 2 && window_timer == 3 && !hitpause{
		vsp = -12
	}
	
	if window == 3 && window_timer > 11 && !has_hit{
		set_state (PS_PRATFALL)
	}
	
	if window == 3 && has_hit_player && special_down  && firerange > 0 && inrange {
		shunpo = 1
	    set_attack (AT_DSTRONG)
		window = 4
		window_timer = 0
	}
	

	
}

if attack == AT_FSTRONG{

		if window == 1 && window_timer == 1 {
		sound_play(asset_get("sfx_ori_charged_flame_release"));
	}
	
	if window == 2 && window_timer == 1 && !hitpause{
		sound_play(asset_get("sfx_burnapplied"));
	}
	
		if window == 3 && has_hit_player && special_down  && firerange > 0 && inrange{
		shunpo = 2
	    set_attack (AT_DSTRONG)
		window = 4
		window_timer = 0
	}
}


if attack == AT_DSTRONG {
	
	if window == 2 {
		
		if window_timer <= 1 && !hitpause{
			sound_play(asset_get("sfx_forsburn_combust"));
			sound_play(asset_get("sfx_zetter_downb"));
			sound_play(sound_get("RI2"));
		} 
		
	}
	
	if window == 2 && window_timer > 12 && has_hit_player && special_down  && firerange > 0 && inrange{
		window = 4
		window_timer = 0
		shunpo = 0
	}
	
	if window == 4 && hit_player_obj.state_cat == SC_HITSTUN { 
		
			if window_timer == 1 {
		  spawn_hit_fx( x   , y , firepar2 )	
		}
		
		if window_timer % 3 = 0 {
		spawn_hit_fx( x   , y , dsshadow )
		}

		if window_timer == 1 {
			sound_play(sound_get("RZ"));
		}
	if hit_player_obj.x > x {
		spr_dir = 1 
	} else {
		spr_dir = -1
	}
		hsp = (hit_player_obj.x - x) / 30 + (5 * spr_dir)
		vsp = (hit_player_obj.y - y) / 16
		
		x += (hit_player_obj.x - x) / 20 + (6 * spr_dir)
		y += (hit_player_obj.y - y) / 10
		
	
		hit_player_obj.vsp /= 1.04
		hit_player_obj.hsp /= 1.04	
		
			if window_timer == 6 {
			window_timer = 2
		}
		
	}
}


if attack == AT_DATTACK {
	
	if window == 1 && window_timer == 1{
		sound_play(asset_get("sfx_jumpground"));
	}
	
	if window == 3 && window_timer > 9 && has_hit_player{
		window = 4
		window_timer = 0
	}
	
	if (window != 5 && has_hit_player) && hit_player_obj.state_cat == SC_HITSTUN{
		hit_player_obj.x += ((x + (35 * spr_dir)) - hit_player_obj.x) / 5
		hit_player_obj.y += ((y - 10) - hit_player_obj.y) / 5
		hit_player_obj.vsp = 0
	}
	
	if (window == 5 && window_timer < 20) && hit_player_obj.state_cat == SC_HITSTUN{
		hit_player_obj.x += ((x + (50 * spr_dir)) - hit_player_obj.x) / 5
		hit_player_obj.y += ((y - 10) - hit_player_obj.y) / 5
		hit_player_obj.vsp = 0
	}
	
	if window == 4 && (window_timer == 10){
	   window = 5
	   window_timer = 0
	}
	
	if window == 4 {
		
		if left_down {
				hit_player_obj.x = x - 30
			spr_dir = -1
			set_attack(AT_FTILT)
	   window = 1
	   window_timer = 5
			
		}
		
			if right_down {
				hit_player_obj.x = x + 30
			spr_dir = 1
			set_attack(AT_FTILT)
	   window = 1
	   window_timer = 5
			
		}
		
		if down_down {
				set_attack(AT_DTILT)
	   window = 1
	   window_timer = 3
		
		}
		
		if up_down {
		set_attack(AT_UTILT)
	   window = 1
	   window_timer = 5
		}
		
		if attack_down {
			set_attack(AT_JAB)
	   window = 4
	   window_timer = 0
		}
	}
	
	if window == 5 && window_timer == 1{
		sound_play(asset_get("sfx_ori_bash_launch"));
	}
	
	
}


if attack == AT_DAIR{
	
		if window == 1 && window_timer == 18 && !hitpause  {
	
	}
	
	if has_hit && window < 4 && !hitpause {
		window = 4
		window_timer = 0
	
	}
	
	if window == 4 && window_timer == 1 && has_hit && !hit_pause{
		vsp = -10
	}
}


if attack == AT_NSPECIAL{
	if window == 1 && window_timer == 1 && !hitpause{
		shake_camera (2,10)
	}

	can_fast_fall = false
	can_wall_jump = true
	
	if window == 4 && window_timer == 1 && !has_hit{
		vsp = -10
		hsp /= 1.4
	}
	
	if window == 4 && window_timer > 11 && !has_hit{
	

    if fireon < 3 {
	set_state (PS_PRATFALL)
    } else {
    	 fireon = 0
         firerange = -100
         hsp = 0
    }
    
	
	
	}
	
	
		if window <= 2 {
			
			hsp /= 1.2
			
			if fireon > 0 && window_timer > 1 and firerange > 0 && inrange {
				
			}
	}
	
	if window == 3 {
		
		if (x < hit_player_obj.x + 10 and x > hit_player_obj.x - 10) and 
		(y < hit_player_obj.y + 30 and y > hit_player_obj.y - 30) and hit_player_obj != self {
					vsp = -4
		                hsp /= 1.5
		                set_attack (AT_NAIR)
                        window = 2
                        window_timer = 2
                        if fireon == 3 {
                        fireon = 0
                        firerange = 0
                        }
		}

	}
	
	if window == 3 && firerange > 0 && inrange  {
		
		fall_through = 1
		if window_timer == 1 {
		  spawn_hit_fx( x   , y , firepar2 )	
		}
				if window_timer % 3 = 0 {
		spawn_hit_fx( x   , y , dsshadow )
		}
		
		
		spr_dir = (hit_player_obj.x > x?1:-1)
		

		hsp = (hit_player_obj.x - x) / 20 + (5 * spr_dir)
		vsp = ((hit_player_obj.y * 1.2) - y) / 30

        
        if (hit_player_obj.x - x < 30) and (hit_player_obj.x - x > -30) {
        		y += (hit_player_obj.y - y) / 40
        }
		
	if hit_player_obj.y - y < 0 {
		y -= 10
	} else {
	    y += 10
	} 
   	if hit_player_obj.x - x < 0 {
		x -= 10
	} else {
	    x += 10
	} 	
	
		
		
	}
	
	
	if window = 3 && has_hit {
				y = hit_player_obj.y - 20
			window = 4
			window_timer = 0
		}
		
		
	if window == 3 && (!inrange or firerange <= 0){
		
		if window_timer > 1{
			if left_down && spr_dir = 1 {
				hsp -= 0.2
			}
			
			if right_down && spr_dir = -1 {
				hsp += 0.2
			}
		}
		
			if up_down{
         		y -= 2
         	} 
         	if down_down{
         	    y += 2
         	} 
		
		if window_timer <= 1 && "ai_target" not in self{
			if left_down {
				spr_dir = -1
			}
			
			if right_down {
				spr_dir = 1
			}
			hsp = 5 * spr_dir
			
		}
		
			if window_timer % 5 = 0 {
		spawn_hit_fx( x   , y , dsshadow )
		}

		
		x += 7 * spr_dir
		vsp = 0
		
	}
	
	if window == 1 && window_timer == 1{
		sound_play(asset_get("sfx_burnapplied"))
		sound_play(asset_get("sfx_ori_bash_launch"))
	}
	
	if window == 4 && !has_hit && fireon == 3 && inrange {
		move_cooldown[AT_NSPECIAL] = 999
	}
	
	if window == 4 && window_timer == 1 && has_hit{
	
		vsp = -4
		hsp /= 1.5
		set_attack (AT_NAIR)
        window = 2
        window_timer = 2
	}

}

if attack == AT_DSPECIAL {
	move_cooldown[AT_DSPECIAL] = 10
	can_fast_fall = false
	
		if window == 1 && window_timer > 16 {
		
		vsp *= 1.05
		
	}
	
	
	if window == 2 && shunpo = 2  {
		
		
		hit_player_obj.x += (x - hit_player_obj.x) / 6
		hit_player_obj.y += (y - hit_player_obj.y) / 4
		vsp *= 1.05
		if window_timer >= 30 {
		
		window_timer += 2
		shunpo = 1
		window = 1
		window_timer = 16
		}
	}

			if window == 1 && has_hit_player && !hitpause{
			
			if shunpo == 0{
				shunpo = 2
				vsp = -8
				window = 2
				window_timer = 14
			}	
		
		hit_player_obj.x += (x - hit_player_obj.x) / 6
		hit_player_obj.y += ((y) - hit_player_obj.y) / 4
		
	}

	
	if window == 1 && window_timer == 1{
		shunpo = 0
		hsp /= 2
	}
	
	if window == 2 && window_timer == 1  && !hitpause {

		sound_play(asset_get("sfx_burnapplied"))
		
		if fireon >= 3 && inrange{
		create_hitbox(AT_DSPECIAL , 2 , hit_player_obj.x , y - 20 );
		sound_play(asset_get("sfx_ori_bash_launch"))
		}
		spawn_hit_fx( x + 5 * spr_dir , y + 20 , firepar2 )
	}
	
	if window == 1 && window_timer > 17 && free {
		
  
	   spawn_hit_fx( x + 20 - random_func(13, 40, true) , y - 10 , firepar1 )
		window_timer = 16
	}
	
	if window == 1 && window_timer > 16 && free{
          if !has_hit_player {
		can_wall_jump = true
          }
	}
	
	if window == 1 && !free {
		window_timer = 18
	}
	
	if window == 2 && window_timer < 10 && fireon >= 3 && inrange{
		
		if sakura = 1 {
		if window_timer == 1 {
   		spawn_hit_fx( x , y - 40 , shit6 )
   		spawn_hit_fx( x + (20 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x - (20 * spr_dir) , y - 30 , shit8 )
   	}
   	
   	if window_timer == 3 {
   		spawn_hit_fx( x + (40 * spr_dir) , y - 60 , shit6 )
   		spawn_hit_fx( x - (40 * spr_dir) , y - 60 , shit6 )
   	}
   	
   	if window_timer == 6 {
   		spawn_hit_fx( x + (80 * spr_dir) , y - 50 , shit7 )
   		spawn_hit_fx( x - (80 * spr_dir) , y - 50 , shit7 )
   		spawn_hit_fx( x + (120 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x - (120 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x + (90 * spr_dir) , y - 90 , shit8 )
   		spawn_hit_fx( x - (90 * spr_dir) , y - 90 , shit8 )
   	}
		}
		
      spawn_hit_fx( x + 300 - random_func(10, 600, true) , y + 20 , firepar1 )
		
	}

	
	
}


if attack == AT_FSPECIAL{
	
	if window == 1 && window_timer >= 9 && firerange > 0 && inrange && move_cooldown[AT_EXTRA_3] = 0   {
	
     	move_cooldown[AT_EXTRA_3] = 180
		window = 4
		window_timer = 0
		spawn_hit_fx( x, y - 20 , 305 )
	
	}
	
	if window == 2 {
		if window_timer == 6{
			if free {
			vsp = 0
			}
			hsp = -6 * spr_dir
		}
	   if window_timer > 19{
	   	move_cooldown[AT_FSPECIAL] = 30
	   	set_state (PS_IDLE)
	   }
	}
	

if window == 4 && window_timer < 2{
	if "fp" in self {
			fp.destroyed = true
}
		if vsp > 0 {
		vsp /= 1.2
		}
	}
	
	if window == 3 && window_timer % 3 = 0 {
		spawn_hit_fx( x + 20 - random_func(13, 40, true), y + 20 , firepar1 )
	}
	
	if window == 1 && window_timer > 8 && special_down && move_cooldown[AT_EXTRA_3] = 0 {
		move_cooldown[AT_EXTRA_3] = 180
		window = 3
		window_timer = 1
		if free && !down_down {
		vsp = -6
		}
	}
	
		if window == 4 {
		if window_timer == 8{
			vsp = 0
			hsp = -6 * spr_dir
		}
		
}
}


if attack == AT_USPECIAL {
	
	if window < 4 {
	can_fast_fall = false
	} else {
	can_fast_fall = true	
	}
	
	if window > 4 && !free {
		set_state (PS_PRATLAND)
	}
	
	if window == 5 && window_timer == 8 {
		
		set_state (PS_PRATFALL)
		
	}
can_wall_jump = true
	
	if window == 2 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && free {
		hit_player_obj.hsp = ((x + (35 * spr_dir)) - hit_player_obj.x) / 10
		hit_player_obj.vsp = ((y - 70) - hit_player_obj.y) / 10
	}
	
	
	
	if window == 1 && window_timer == 1 {
		sound_play(asset_get("sfx_swipe_heavy1"))
		hsp /= 1.6
		if vsp < 0 {
		vsp /= 1.6
		}
		
		if vsp > 0 {
			vsp = -3
		}
	}
	
	if window < 5 && window > 1 {
		hsp /= 1.2
	}
	
}

if attack == AT_TAUNT { 
	
	if window == 1 && window_timer == 1 {
	if !up_down{
		window = 4
		window_timer = 0

	}
     
     if up_down {
     	sound_play(asset_get("sfx_ori_glide_end"));
     	spawn_hit_fx( x - (10 * spr_dir), y - 0, firepar1 )
     			hsp = 5 * spr_dir
     }
    if down_down{
		window = 7
		window_timer = 0
	}
	
	}
     
      
    if window == 5 {
    	
    	if get_gameplay_time() % 5 = 0 {
	spawn_hit_fx( x + 23 * spr_dir , y - 30 + random_func(13, 20, true) , firepar1 )
	 }
    	
    }
    
    if window == 2 && window_timer == 4 {
    	sound_play(asset_get("sfx_burnapplied"))
    	sound_play(asset_get("sfx_ori_glide_start"));
    	
    }
    
    if window == 3 && window_timer > 19{
    	set_state (PS_IDLE)
    }
    
    if window == 6 && window_timer > 19{
    	set_state (PS_IDLE)
    }
    
    if window == 6 && window_timer == 4 {
    	create_hitbox(AT_EXTRA_3 , 1 , x - 20 * spr_dir , y - 50 );
    }
    
    
    if window == 8 && window_timer == 10 {
    	sound_play(asset_get("sfx_ori_taunt2"));
		sound_play(asset_get("sfx_ori_taunt2"));
    	}
    	
    	
    if window == 8 && (window_timer == 14 or window_timer == 18) {
    	spawn_hit_fx( x - 100 + random_func(16, 200, true) , y - 50 + random_func(13, 40, true) , tauntpar1 )
    	spawn_hit_fx( x - 100 + random_func(17, 200, true) , y - 50 + random_func(14, 40, true) , tauntpar1 )
    	spawn_hit_fx( x - 100 + random_func(18, 200, true) , y - 50 + random_func(15, 40, true) , tauntpar1 )
    	
    	if get_gameplay_time() % 1 = 0 {
    	create_hitbox(AT_EXTRA_3 , 3 + random_func(19, 4, true) , x - 100 + random_func(16, 200, true) , y - 35);
    	spawn_hit_fx( x - 150 + random_func(16, 300, true) , y - 15 , tauntpar1 )
    	}
    	
    	if get_gameplay_time() % 2 = 0 {
    	create_hitbox(AT_EXTRA_3 , 3 + random_func(20, 10, true) , x - 100 + random_func(17, 200, true) , y - 35);
    	spawn_hit_fx( x - 150 + random_func(17, 300, true) , y - 15 , tauntpar1 )
    	}
    	
    	if get_gameplay_time() % 3 = 0 {
    	create_hitbox(AT_EXTRA_3 , 3 + random_func(21, 10, true) , x - 100 + random_func(18, 200, true) , y - 35);
    	spawn_hit_fx(x - 150 + random_func(18, 300, true) , y - 15 , tauntpar1 )
    	}
    	
    		if get_gameplay_time() % 4 = 0 {
    	create_hitbox(AT_EXTRA_3 , 11 , x - 100 + random_func(18, 200, true) , y - 35);
    	spawn_hit_fx(x - 150 + random_func(18, 300, true) , y - 15 , tauntpar1 )
    	}
    	
    			if get_gameplay_time() % 6 = 0 {
    	create_hitbox(AT_EXTRA_3 , 5 , x - 100 + random_func(18, 200, true) , y - 35);
    	spawn_hit_fx(x - 150 + random_func(18, 300, true) , y - 15 , tauntpar1 )
    	}
    }
	
}


