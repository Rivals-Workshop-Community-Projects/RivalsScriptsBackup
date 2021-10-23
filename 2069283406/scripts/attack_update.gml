

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

if attack == AT_NAIR && !hitpause{
	if  has_hit {
		window_timer += 0.5
	}

}


if attack != AT_NSPECIAL && attack != AT_DSPECIAL && attack != AT_USPECIAL && attack != AT_FSPECIAL  &&	move_cooldown[AT_TAUNT_2] != 0 {
		fall_through = 1
		
		if window_timer % 2 = 0 {
		spawn_hit_fx( x   , y , dsshadow )
		}
		
		
		
         
         if attack != AT_BAIR {
		x += (hit_player_obj.x + hit_player_obj.hsp - 20*spr_dir - x) / 12
         } else {
         x += (hit_player_obj.x + hit_player_obj.hsp + 40*spr_dir - x) / 12
         }
		y += ((hit_player_obj.y) - y + hit_player_obj.vsp*2) / 12

        
       	y += (hit_player_obj.y - y) / 12
       
		

   	if hit_player_obj.x < x - 100  {
		x -= 10
	} 
	
	if hit_player_obj.x > x + 100{
	    x += 10
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
	
	if window == 2 && !hitpause && window_timer < 3 {
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

if state_timer == 1 {
	 set_attack_value(AT_UAIR, AG_CATEGORY, 1);
	 set_attack_value(AT_NAIR, AG_CATEGORY, 1);
	 set_attack_value(AT_BAIR, AG_CATEGORY, 1);
	 set_attack_value(AT_FAIR, AG_CATEGORY, 1);
}
if attack == AT_JAB{
	
	if window == 3 && window_timer >= 2 && (attack_pressed or up_stick_down or down_stick_down or left_stick_down or up_stick_down) {
		 if up_down  {
        set_attack (AT_UTILT)
        window = 1
        window_timer = 5
       }
       
       if down_down {
        set_attack (AT_DTILT)
        window = 1
        window_timer = 5
        sound_play(asset_get("sfx_swipe_weak2"));
       }
       
       if (left_down && spr_dir == -1) or (right_down && spr_dir == 1){
        set_attack (AT_FTILT)
        window = 1
        window_timer = 5
       }
       
       if (left_down && spr_dir == 1) or (right_down && spr_dir == -1){
       	spr_dir *= -1
        set_attack (AT_FTILT)
        window = 1
        window_timer = 5
       }
	}
	
	 if window == 6 && attack_pressed {
               
       if up_down  {
       	hsp = 3*spr_dir
        set_attack (AT_UTILT)
        window = 1
        window_timer = 5
       }
       
       if down_down {
        set_attack (AT_DTILT)
         sound_play(asset_get("sfx_swipe_weak2"));
        window = 1
        window_timer = 5
       }
       
       if (left_down && spr_dir == -1) or (right_down && spr_dir == 1){
        set_attack (AT_FTILT)
        window = 1
        window_timer = 5
       }
       
       if (left_down && spr_dir == 1) or (right_down && spr_dir == -1){
       	spr_dir *= -1
        set_attack (AT_FTILT)
        window = 1
        window_timer = 5
       }
       
       
    }
    
	if window == 7 && window_timer == 1 {
		sound_play(asset_get("sfx_swipe_heavy1"));
	}
	
	
	
	if !hitpause && window_timer <= 3 && has_hit_player && (window == 4 or window == 7){
			hsp = (hit_player_obj.x - (x + (30 * spr_dir))) / 6
			
			if hsp > 6 {
				hsp = 6
			}
			if hsp < -6 {
				hsp = -6
			}
	}
	

	
}


if attack == AT_BAIR{
	if window == 1 && window_timer == 6 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium2"));
	}
	
	
}

if attack == AT_USTRONG{
	can_move = false
	can_fast_fall = false 
	
	if window == 1 && free {
		set_state(PS_IDLE)
	}
	if window == 2 && window_timer == 1 && !hitpause{
		sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1,1);
			sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1,.6);
		sound_play(asset_get("sfx_burnapplied"),false,noone,1,.8)
	}
	
	
	if window == 2 && window_timer == 6 && !hitpause{
		vsp = -12
		hsp = 2*spr_dir
		spawn_hit_fx(x + 20*spr_dir ,y - 60,fc)
	}
	
	if window == 3 && window_timer > 11 && !has_hit{
		set_state (PS_PRATFALL)
	}
	
	///if window == 3 && has_hit_player && special_down  && firerange > 0 && inrange {
	///	shunpo = 1
	///    set_attack (AT_DSTRONG)
	///	window = 4
	///	window_timer = 0
	///}
	

	
}

if attack == AT_FSTRONG{


   if has_hit_player {
   	window_timer += 0.3
   }
		if window == 1 && window_timer == 1 {
			set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
			set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 9);
			set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
		sound_play(asset_get("sfx_ori_charged_flame_release"));
	}
	
	if window == 2 && window_timer == 1 && !hitpause{
		sound_play(asset_get("sfx_burnapplied"));
	}
	
	////	if window == 3 && has_hit_player && special_down  && firerange > 0 && inrange{
	////	shunpo = 2
	////    set_attack (AT_DSTRONG)
	////	window = 4
	////	window_timer = 0
	////}
}


if attack == AT_DSTRONG {
	
	if state_timer <= 1 {
		if left_down && !right_down {
            hsp = -7
		}
		
		if !left_down && right_down {
            hsp = 7
		}
	}
	
	if hitstop < 14  && (left_down or right_down) {
		hitstop = 0
		hitpause = 0
	}
	
	if has_hit_player && window < 3 && !hitpause{
		if left_down && !right_down {
			spr_dir = 1
            window = 3
            window_timer = 0
            vsp = 0
            hsp = -9.5
            		sound_play(sound_get("RZ2"),false, noone, 0.8);
		}
		
		if !left_down && right_down {
			spr_dir = -1
            window = 3
            window_timer = 0
            vsp = 0
            hsp = 9.5
            		sound_play(sound_get("RZ2"),false, noone, 0.8);
		}
	}
	
	if has_hit_player && !hitstop{
		can_attack = true
	}
	
	if window == 2 {
		if window_timer <= 1 && !hitpause{
			shake_camera(4,6)
			sound_play(asset_get("sfx_forsburn_combust"));
			sound_play(asset_get("sfx_zetter_downb"));
			sound_play(sound_get("RI2"));
		} 
		
	}
	
	///if window == 2 && window_timer > 12 && has_hit_player && special_down  && firerange > 0 && inrange{
	///	   window = 4
	///	   window_timer = 0
	///	   shunpo = 0
	///}
	
	
   if window == 5  { 
   	
   	if move_cooldown[AT_NAIR] >= 110 {
   		
   		hsp = 30*spr_dir
   			if window_timer == 1 {
        	  spawn_hit_fx( x   , y , firepar2 )	
        	}
        	
   		if window_timer % 3 = 0 {
        	spawn_hit_fx( x   , y , dsshadow )
        }   
   		
   	} else {
            move_cooldown[AT_FSPECIAL_AIR] = 999
        	move_cooldown[AT_NSPECIAL_2] = 30
        			firetimer += 1
        		if window_timer == 1 {
        	  spawn_hit_fx( x   , y , firepar2 )	
        	}
        	
        	if window_timer % 3 = 0 {
        	spawn_hit_fx( x   , y , dsshadow )
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
}


/*
if attack == AT_DATTACK {
	
	if has_hit_player or window == 4{
	   hsp /= 1.1	
	}
	
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
*/

if attack == AT_DATTACK {
	if window == 1 && window_timer == 1 && !hitpause 
	sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.1);
	
}

if attack == AT_DAIR{
	
	
	if window == 1 && window_timer == 1 &&  !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"));
	}
	
	if window < 4 && has_hit && !hitpause {
		window = 4
		window_timer = 0
	}
	
	if window == 4 && window_timer == 1 && has_hit && !hit_pause{
		vsp = -10
	}
	
	

}


if attack == AT_NSPECIAL{
	
		if window == 3 && (!inrange or firerange <= 0){
		
		if window_timer > 1{
			if left_down && spr_dir = 1 {
				hsp -= 0.2
			}
			
			if right_down && spr_dir = -1 {
				hsp += 0.2
			}
		}
		
			///if up_down{
         	///	y -= 2
         	///} 
         	///if down_down{
         	///    y += 2
         	///} 
		
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
	
	if fireon == 3 && state_timer < 30 {
		if state_timer % 5 == 0 {
		spawn_hit_fx( (hit_player_obj.x*2 + x)/3 - 20 + random_func(1,40,true) , (hit_player_obj.y*2 + y)/3 - 20 + random_func(2,40,true), firepar1)
		}
			
		if state_timer % 5 == 1 {
		spawn_hit_fx( (hit_player_obj.x + x)/2 - 20 + random_func(1,40,true) , (hit_player_obj.y + y)/2 - 20 + random_func(2,40,true), firepar1)
		}
		
		if state_timer % 5 == 2 {
		spawn_hit_fx( (hit_player_obj.x + x*2)/3 - 20 + random_func(1,40,true) , (hit_player_obj.y + y*2)/3 - 20 + random_func(2,40,true) , firepar1)
		}
		
	   if state_timer % 5 == 3 {
		spawn_hit_fx( (hit_player_obj.x*3 + x)/4 - 20 + random_func(1,40,true) , (hit_player_obj.y*3 + y)/4 - 20 + random_func(2,40,true) , firepar1)
		}
		
		if state_timer % 5 == 4 {
		spawn_hit_fx( (hit_player_obj.x + x*3)/4 - 20 + random_func(1,40,true) , (hit_player_obj.y + y*3)/4 - 20 + random_func(2,40,true) , firepar1)
		}
		
		
		if window == 1 && window_timer == 5{
			state_timer = 15
			window = 2
			window_timer = 0
		}
	}
	

	can_fast_fall = false
	move_cooldown[AT_NSPECIAL] = 999
	
	if window == 1 && window_timer == 1 && !hitpause{
		shake_camera (2,10)
	}

   if window == 4 && window_timer == 1{
		vsp = -2
		move_cooldown[AT_TAUNT_2] = 0
	}
	
	if window == 4 && window_timer == 11 && firerange > 0{ 
		fireon = 0
		firerange = -100
	}
	
		if window <= 2 {
			
			hsp /= 1.2
			
			if fireon > 0 && window_timer > 1 and firerange > 0 && inrange {
				
			}
	}
	
	if window >= 3 && state_timer >= 25 {
		
		if fireon < 3 && window == 3 {
	 	window_timer += 2
     	}
     	
     		if fireon != 3 {
		can_jump = true
	}
	
	
		if attack_pressed or up_stick_down or down_stick_down or left_stick_down or up_stick_down {
			if  firerange > 0 {
			firerange = -100
			fireon = 0
			}

			if hsp > 4 or hsp < -4{
			hsp = 4*spr_dir
			}
			vsp = -4
			sound_play(asset_get("sfx_ori_bash_launch"));
	        if !up_down && !down_down && !left_down && !right_down {
	        set_attack(AT_NAIR)
	        window = 1
			window_timer = 5
	        }
	        
	        if up_stick_down or (up_down && !down_down)  {
	        set_attack(AT_UAIR)
	        window = 1
			window_timer = 5
	        }
	        
	        if down_stick_down or (!up_down && down_down)  {
	        set_attack(AT_DAIR)
	        window = 1
			window_timer = 5
	        }
		
			if right_stick_down or (!up_down && !down_down && !left_down && right_down) {
				if spr_dir == 1 {
	        set_attack(AT_FAIR)
	        window = 1
			window_timer = 5
				}
				
				if spr_dir == -1 {
	        set_attack(AT_BAIR)
	        window = 1
			window_timer = 5
				}	
	        }
	        
	       	if right_stick_down or (!up_down && !down_down && left_down && !right_down) {
				if spr_dir == -1 {
	        set_attack(AT_FAIR)
	        window = 1
			window_timer = 5
				}
				
				if spr_dir == 1 {
	        set_attack(AT_BAIR)
	        window = 1
			window_timer = 5
				}	
	        } 
		}

	}
	
	
	if window == 3 && firerange > 0 && inrange  {

		move_cooldown[AT_FSPECIAL_AIR] = 999

		
		move_cooldown[AT_TAUNT_2] = 15
		firetimer += 1
		mask_index = asset_get("empty_sprite");
		fall_through = 1
		if window_timer == 1 {
		  spawn_hit_fx( x   , y , firepar2 )	
		}
		
		if window_timer % 2 = 0 {
		spawn_hit_fx( x   , y , dsshadow )
		}
		
		
		if hit_player_obj.state_cat == SC_HITSTUN {
			hit_player_obj.state_timer -= 0.5
		}
		spr_dir = (hit_player_obj.x > x?1:-1)
		

		hsp = (hit_player_obj.x + hit_player_obj.hsp - 30*spr_dir - x) / 20
		vsp = ((hit_player_obj.y) - y + hit_player_obj.vsp*2) / 20

        
       	y += (hit_player_obj.y - y) / 20
       
		

   	if hit_player_obj.x < x - 50  {
		x -= 10
	} 
	
	if hit_player_obj.x > x + 50{
	    x += 10
	} 	
	
		
		
	}
	
	
	if window = 3 && has_hit {
				y = hit_player_obj.y - 20
			window = 4
			window_timer = 0
		}
		
		

	
	if window == 1 && window_timer == 1{
		sound_play(asset_get("sfx_burnapplied"))
		sound_play(asset_get("sfx_ori_bash_launch"))
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
	
	//if vsp > 12 && dspecon == 0 {
	//	sound_play(sound_get("RI"),false,noone,1,1.4)
	//	dspecon = 1
	//	spawn_hit_fx(x,y - 50, 305)
	//	
	//}
	
	if window == 1 && window_timer > 16 && free{
          if !has_hit_player {
		    can_wall_jump = true
		    vsp *= 1.05
               if vsp < 16 {
		        
               } else {
                if shield_pressed or special_pressed or jump_pressed{
                spawn_hit_fx(x,y-20,14)	
                vsp = -7
                attack_end()
                set_attack(AT_DAIR)
                window = 5
                window_timer = 1
                sound_play(asset_get("sfx_burnapplied"),false,noone,1,1.2)
               }	
            }
            
            
          } else {
          	
          	if y + vsp > room_height {
          		vsp = -20
          		attack_end()
          		set_attack(AT_USTRONG)
          	    window = 2
          	    window_timer = 6
          	    sound_play(asset_get("sfx_burnapplied"),false,noone,1.2,.9);
		        sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,.8,.9);
		        sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,.9);
		       spr_dir *= -1
			   spawn_hit_fx(x + 10*spr_dir ,y - 20,fc)
			   spr_dir *= -1
			   spawn_hit_fx(x + 10*spr_dir ,y - 20,fc)
          	}
          	
          }
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
			
			y += 1
			
			if shunpo == 0{
				shunpo = 2
				vsp = -8
				window = 2
				window_timer = 14
			}	
		hit_player_obj.state_timer -= 1
		hit_player_obj.x += (x - hit_player_obj.x) / 6
		hit_player_obj.vsp = ((y) - hit_player_obj.y) / 4
		
	}

	
	if window == 1 && window_timer == 1{
		shunpo = 0
		hsp /= 2
	}
	
	if window == 2 && window_timer == 1  && !hitpause {

		sound_play(asset_get("sfx_burnapplied"))
		
		if dspecon = 1{
		create_hitbox(AT_DSPECIAL , 2 , hit_player_obj.x , y - 20 );
		sound_play(asset_get("sfx_ori_bash_launch"))
		}
		
		spawn_hit_fx( x + 5 * spr_dir , y + 20 , firepar2 )
	}
	
	if window == 1 && window_timer > 17 && free {
		
  
	   spawn_hit_fx( x + 20 - random_func(13, 40, true) , y - 10 , firepar1 )
		window_timer = 16
	}
	
	
	
	if window == 1 && !free {
		destroy_hitboxes();
		window = 2
		window_timer = 1
		shake_camera(4,6)
		    
		    sound_play(asset_get("sfx_burnapplied"),false,noone,1.2,.9);
		     sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,.8,.9);
		     sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,.9);
		    spr_dir *= -1
			spawn_hit_fx(x + 10*spr_dir ,y - 20,fc)
			spr_dir *= -1
			spawn_hit_fx(x + 10*spr_dir ,y - 20,fc)
	}
	
	if window == 2 && window_timer > 15 && has_hit && !free{
       set_state(PS_IDLE)
	}
	
	if dspecon = 1{
		
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
		
      spawn_hit_fx( x + 500 - random_func(10, 1000, true) , y + 20 + random_func(2,10,true) , firepar1 )
	      spawn_hit_fx( x + 500 - random_func(11, 1000, true) , y + 20 + random_func(3,10,true) , firepar1 )
			
	}

	
	
}


if attack == AT_FSPECIAL{
	

	
	if window == 2 {
		if window_timer == 6{
			if free {
			vsp = 0
			}
		}
	   if window_timer > 19{
	   	move_cooldown[AT_FSPECIAL] = 45
	   	set_state (PS_IDLE)
	   }
	}
	

if window == 4 && window_timer < 2{
	
	move_cooldown[AT_FSPECIAL] = 60
	
    with (asset_get("pHitBox")) {
if(player_id == other.id && attack == AT_FSPECIAL && hbox_num == 2) {
    destroyed = true;
}
}

		if vsp > 0 {
		vsp /= 1.2
		}
	}
	
	if window == 3 && window_timer % 3 = 0 {
		spawn_hit_fx( x + 20 - random_func(13, 40, true), y + 20 , firepar1 )
	}
	
	if window == 1 && window_timer == 1  {
		window = 3
		window_timer = 2
	}
	
		if window == 4 {
		
}
}


if attack == AT_USPECIAL {
	
		can_fast_fall = false 
		
	
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

if attack != AT_NSPECIAL {
	mask_index = sprite_get("stand_box");
}
