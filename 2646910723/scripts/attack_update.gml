//B - Reversals


if ragemode {
    
     set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 7);
     set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
     
    if window < 4 && attack != AT_EXTRA_1  && attack != AT_UAIR && attack != AT_DAIR && attack != AT_DTILT && attack != AT_TAUNT && attack != AT_JAB && attack != AT_NAIR && !hitpause {
     
     move_cooldown[AT_NSPECIAL] = 5
     
        sound_play(sound_get("fspec3"),false,noone,.8,1)
        
        move_cooldown[AT_EXTRA_2] = 60
        

        window = 3
        window_timer = 1

        
        shake_camera(2,2)
        aafx = spawn_hit_fx(x + 8*spr_dir,y + 8,rl)
               aafx.depth = 1    }
    
    if (attack == AT_JAB or attack == AT_NAIR) && window < 3 {
    	
    	//move_cooldown[AT_NSPECIAL] = 5
     
        sound_play(sound_get("fspec3"),false,noone,.8,1)
        
        //move_cooldown[AT_EXTRA_2] = 60
        

        window = 8
        window_timer = 1

        
        shake_camera(2,2)
        aafx = spawn_hit_fx(x + 8*spr_dir,y + 8,rl)
               aafx.depth = 1  
    	
    }
    
    
}

if (window == 1 && window_timer == 1 && !hitpause) {
   
            
       sound_play(sound_get("whoosh"),false,noone,.9,
        max ( 0.7, 1.2 - get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) )
       
        sound_play(sound_get("whoosh"),false,noone,.7,
        max ( 1.2, 1.7 - get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) )
       
 
}


if hitpause{
    if  move_cooldown[AT_EXTRA_2] != 0 move_cooldown[AT_EXTRA_2] ++ 
    if  move_cooldown[AT_EXTRA_1] != 0 move_cooldown[AT_EXTRA_1] ++ 
}

if !ragemode && state_timer <= 10 && (attack_down or special_down or left_stick_down or down_stick_down or up_stick_down or right_stick_down) && attack != AT_EXTRA_1  && attack != AT_UAIR && attack != AT_DAIR && attack != AT_DTILT && attack != AT_TAUNT && !hitpause {
    
    move_cooldown[AT_EXTRA_1] += 4
    
   
    if move_cooldown[AT_EXTRA_1] < 100 && move_cooldown[AT_EXTRA_1] > 30 {
        
         move_cooldown[AT_NSPECIAL] = 5 
         bragesub += 25
               sound_play(sound_get("fspec3"),false,noone,.8,1)
               shake_camera(2,2)
               aafx = spawn_hit_fx(x + 8*spr_dir,y + 8,rl)
               aafx.depth = 1
               move_cooldown[AT_EXTRA_1] = 0
               move_cooldown[AT_EXTRA_2] = 60
               destroy_hitboxes();
    }
    
}



switch(attack) {
    
    case AT_EXTRA_1:
    
    has_walljump = true
    djumps = 0
    
    if window < 4 {
        move_cooldown[AT_EXTRA_2] = 2
    hitpause = false
    soft_armor = 9999
    }
    
    can_fast_fall = false
    
    bragesub = 0
    
    if window == 1 or window == 3{
        hsp = 0
        vsp = 0
        can_move = false
        
        if window == 3 {
            ragemode = 500
        }
        init_shader();
    }
    
    if window = 2 {
        vsp = (32 - window_timer)/-8
        
        if window_timer % 4 == 0 {
            take_damage(player,-1,1)
    		sound_play(sound_get("wheesh"),false,noone,1.4, 1.4 + window_timer/20)
    		spawn_hit_fx(x - 20 + random_func(1,41,true), y + 40 - random_func(2,41,true), rl)
        }
        
        if window_timer == 36 {
            sound_play(sound_get("hextra"),false,noone,.7, .6)
            shake_camera(10,10)
        }
    }
    
    if window == 4 {
        
        if window_timer < 10 {
           hsp = 0
           vsp = 0
           can_move = false
        } else {
            
            vsp /= 1.4
            hsp /= 1.4
            
        }
        
    }
    
    if window == 1 && window_timer == 2 && !hitpause {
    sound_play(sound_get("hextra"),false,noone,.9, 1)
    shake_camera(6,6)
    take_damage(player,-1,5)
    }
    
    
    break;
    
    
    case AT_TAUNT:
     move_cooldown[AT_EXTRA_2] = 2
     famix = x + 20*spr_dir
     famiy = y + 20
     if window_timer == 1 && !hitpause {
         spawn_hit_fx(famix,famiy,scyfx)
           sound_play(sound_get("swingw2"),false,noone,.7, 1.25)
     }
     
     if window_timer == 5*6 && (get_gameplay_time() < 90 or taunt_down) {
         window_timer = 5*2
     }
     
      if window_timer == 44 && !hitpause {
        move_cooldown[AT_TAUNT] = 10   
        sound_play(sound_get("whoosh"),false,noone,.9, .9)
      }
    
    break;
    
    case AT_UAIR:
        
        can_fast_fall = false
        
        if window > 2 {
            can_wall_jump = true
        }
        
        if window < 6 {
        famix = x
        famiy = y
        move_cooldown[AT_EXTRA_2] = 4
        }
        
        prat_land_time = 16;
        
        if window == 1 && window_timer == 1 && !hitpause {
            bragesub += 25    
            sound_play(sound_get("wheesh"),false,noone,.9, 1.2)
             move_cooldown[AT_NSPECIAL] = 5 
                       spawn_hit_fx(famix,famiy,scyfx)
            sound_play(sound_get("hcine"),false,noone,.4, 1.1)
            sound_play(sound_get("swingw2"),false,noone,.7, 1.25)
        }
        
         if window == 2 && window_timer == 1 && !hitpause {
            sound_play(sound_get("hcine"),false,noone,.5, 1.2)
        }
        
        
     if window == 1 {
         vsp /= 1.1
         if vsp < 0 {
           vsp /= 1.2  
         }
         hsp /= 1.2
     }    
     
     if window >= 2 and window <= 5 {
           
           if window < 4 {
           vsp -= 0.5
           } else {
           	vsp -= 0.2
           }
           
           if !hitpause && (window_timer == 1 or window_timer == 6) {
               create_hitbox(AT_UAIR,2,x,y)
               sound_play(sound_get("swingw1"),false,noone,.7, 1.25)
           }
           
           if !hitpause && window == 5 && window_timer == 9 {
               sound_play(sound_get("swingw1"),false,noone,.5, .8)
           }
           
           create_hitbox(AT_NSPECIAL,2,x,y - 40)
       }
    
    
    break;
    
    case AT_JAB :
       
      if has_hit_player && window == 2{
	    djumps = 0
		with hit_player_obj {
			state_timer -= 1
   	    vsp = 0
   	    hsp = 0
   	    x += floor( (other.x  + 60*other.spr_dir - x)/10 )
   	    y += floor( (other.y + 30 - y)/10 )
    	
       } 
        if !hitpause { 
        	hsp = 6*spr_dir
            attack_end()
        	attack = AT_DAIR
        	window = 5
     		window_timer = 1
     		state_timer = 20
     	} else {
     	    x += 1*spr_dir
     	}
	}
	
       if free && window < 6 && window > 3{
           vsp = -5
           hsp = 2*spr_dir
           can_move = false
       }
       
       if state_timer = 1 {
           set_attack_value(AT_JAB, AG_OFF_LEDGE, 0);
           set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
       }
       
       if move_cooldown[AT_EXTRA_2] > 5 && !hitpause{
           hsp = 6*spr_dir
           spawn_hit_fx(famix,famiy,scyfx)
           sound_play(sound_get("hcine"),false,noone,.5, 1.2)
           move_cooldown[AT_EXTRA_2] = 5
           set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
           set_attack_value(AT_JAB, AG_OFF_LEDGE, 1);
           window = 5
           window_timer = 1
       }
       
       if window > 3 {
           famix = x
           famiy = y
           move_cooldown[AT_EXTRA_2] = 2
       }
       
       if window == 5 or window == 6 {
           
           if !hitpause && (window_timer == 1 or window_timer == 6) {
               create_hitbox(AT_JAB,2,x,y)
               sound_play(sound_get("swingw1"),false,noone,.8, 1.2)
           }
           
           if !hitpause && window == 6 && window_timer == 9 {
               sound_play(sound_get("swingw1"),false,noone,.8, .8)
           }
           
           create_hitbox(AT_NSPECIAL,2,x,y - 40)
       }
       
    break;
 
    case AT_FTILT :
       
       if free {
           set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 7);
           vsp = 0
           hsp /= 1.2
           can_move = false
       } else {
           set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
       }
       
       if state_timer = 1 {
           set_attack_value(AT_FTILT, AG_OFF_LEDGE, 0);
           set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
       }
       
       if move_cooldown[AT_EXTRA_2] > 5 && !hitpause && window == 3{
           hsp = 6*spr_dir
           spawn_hit_fx(famix,famiy,scyfx)
           sound_play(sound_get("swingw1"),false,noone,.8, .8)
           sound_play(sound_get("hcine"),false,noone,.6, 1.1)
           move_cooldown[AT_EXTRA_2] = 5
           set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
           window = 4
           window_timer = 1
           destroy_hitboxes();
       }
       
       if (window > 3 && window < 6) or (window == 6 && window_timer < 8){
           famix = x
           famiy = y
           move_cooldown[AT_EXTRA_2] = 5
       }

       
    break;
 
    case AT_UTILT :
       
       if free {
           vsp = 0
           hsp /= 1.2
           can_move = false
           set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 7);
       } else {
           set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
       }
       
       if state_timer = 1 {
           set_attack_value(AT_UTILT, AG_OFF_LEDGE, 0);
           set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
       }
       
       if move_cooldown[AT_EXTRA_2] > 5 && !hitpause && window == 3{
           hsp = 2*spr_dir
           spawn_hit_fx(famix,famiy,scyfx)
           sound_play(sound_get("swingw1"),false,noone,.8, .8)
           sound_play(sound_get("hcine"),false,noone,.6, 1.1)
           move_cooldown[AT_EXTRA_2] = 5
           set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
           window = 4
           window_timer = 1
           destroy_hitboxes();
       }
       
       if (window > 3 && window < 6) or (window == 6 && window_timer < 8){
           famix = x
           famiy = y
           move_cooldown[AT_EXTRA_2] = 5
       }

       
    break;
    
    
    case AT_DTILT :   
        
        move_cooldown[AT_EXTRA_2] = 4
        
        if window == 1 && window_timer == 1 && !hitpause {
                       spawn_hit_fx(famix,famiy,scyfx)
            sound_play(sound_get("tauntflash"),false,noone,.6, 1.2)
            
        }
     
        if window == 2 && window_timer == 1 && !hitpause {
            bragesub += 25
                       spawn_hit_fx(famix,famiy,scyfx)
            sound_play(sound_get("fspec"),false,noone,.7, 1)
            
        }
     
     
     
    break;
    
    
      case AT_NAIR :
       
       if free && window < 6 && window > 3{
           vsp /= 1.06
           if vsp > 0 {
               vsp /= 1.06
           }
           hsp /= 1.06
           can_move = false
       }
       
       if state_timer = 1 {
           set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
           set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
       }
       
       if move_cooldown[AT_EXTRA_2] > 5 && !hitpause{
           spawn_hit_fx(famix,famiy,scyfx)
           sound_play(sound_get("hcine"),false,noone,.5, 1.2)
           move_cooldown[AT_EXTRA_2] = 5
           set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 7);
           set_attack_value(AT_NAIR, AG_LANDING_LAG, 12);
           window = 5
           window_timer = 1
           destroy_hitboxes();
       }
       
       if window > 3 && window <= 6 {
           famix = x
           famiy = y
           move_cooldown[AT_EXTRA_2] = 2
       }
       
       if window == 5 or window == 6 {
           
           if !hitpause && (window_timer == 1 or window_timer == 6) {
               create_hitbox(AT_NAIR,2,x,y)
               sound_play(sound_get("swingw1"),false,noone,.8, 1.2)
           }
           
           if !hitpause && window == 6 && window_timer == 9 {
               sound_play(sound_get("swingw1"),false,noone,.8, .8)
           }
           
           create_hitbox(AT_NSPECIAL,3,x + 36*spr_dir,y - 38)
       }
       
    break;
   
    case AT_FAIR :
    case AT_BAIR :
       if has_hit {
           set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
       } else {
           if !ragemode {
           set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
           }
       }
       
       if window >= 4 {
           if vsp > 0 {
               vsp /= 1.1
           }
           hsp /= 1.07
           can_move = false
       }
       
       if window == 4 or window == 5 {
           set_attack_value(AT_FAIR, AG_CATEGORY, 2);
       } else {
           set_attack_value(AT_FAIR, AG_CATEGORY, 1);
       }
       
       if window == 4 && window_timer == 14 && !hitpause {
         if !ragemode {
         vsp /= 2
         vsp -= 4
         }
           
       }
       
       if state_timer = 1 {
           set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
           set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
       }
       
       if move_cooldown[AT_EXTRA_2] > 5 && !hitpause && window == 3{
           if attack == AT_BAIR {
           attack = AT_FAIR
           spr_dir *= -1
           }
           
           hsp = 6*spr_dir
           spawn_hit_fx(famix,famiy,scyfx)
           sound_play(sound_get("swingw1"),false,noone,.8, .8)
           sound_play(sound_get("hcine"),false,noone,.6, 1.1)
           prat_land_time = 14;
           move_cooldown[AT_EXTRA_2] = 5
           set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 6);
           set_attack_value(AT_FAIR, AG_LANDING_LAG, 14);
           window = 4
           window_timer = 1
       }
       
       if (window > 3 && window < 6) or (window == 6 && window_timer < 8){
           famix = x
           famiy = y
           move_cooldown[AT_EXTRA_2] = 5
       }

       
    break;
    
    case AT_DAIR:

can_fast_fall = false

if window == 1 {

	set_attack_value(AT_DAIR, AG_CATEGORY, 2);
	if window_timer % 4 == 0 {
	sound_play(sound_get("slam1"),false,noone,1, 1/(window_timer/40))
    }
	hsp /= 1.2
	vsp /= 1.05
	if vsp > 0 {
		vsp /= 1.1
	}
	

	
	if window_timer == 13 && !hitpause {
	    hsp = 9*spr_dir
	    vsp = 9
		sound_play(sound_get("wheeshshort"),false,noone,.9,1.2)
	}
	
}

if window == 6 {
	if window_timer < 32 {
		vsp = 0
		hsp = 0
		can_move = 0
	}
	if window_timer == 1 && !hitpause {
	  sound_play(sound_get("slam1"))	
	}
	if window_timer == 32 && !hitpause {
	    vsp = -10
		hsp = -2*spr_dir
		sound_play(sound_get("wheeshshort"),false,noone,1,1.1)
	}
	
}

if window == 2 {
    
	fall_through = true
	
   if (place_meeting( x , y + 8, asset_get("par_block"))) && !hitpause && get_attack_value(AT_DAIR, AG_CATEGORY) == 2 && !has_hit_player{
       set_attack_value(AT_DAIR, AG_CATEGORY, 1);
       sound_play(sound_get("slam1"),false,noone,.7,.7)
       shake_camera(4,4)
       hsp = 0
   }

	
	if !hitpause {
	hsp = 4*spr_dir
	vsp = 9
	} else {
		hsp = 3*spr_dir
	}
	
	if has_hit_player {
	    djumps = 0
		with hit_player_obj {
			state_timer -= 1
   	    vsp = 0
   	    hsp = 0
   	    x += floor( (other.x  + 60*other.spr_dir - x)/10 )
   	    y += floor( (other.y + 30 - y)/10 )
    	
       } 
        if !hitpause { 		
        	window = 5
     		window_timer = 1
     		state_timer = 10
     	} else {
     	    x += 1*spr_dir
     	    y += 1
     	}
	}

        if state_timer == 30 && !hitpause && free{
	        sound_play(sound_get("swingw1"),false,noone,.5,1.2)
	        djumps = 0
               aafx = spawn_hit_fx(x + 8*spr_dir,y + 8,rl)
               aafx.depth = 1
	    }
	    
	if ( (jump_pressed && state_timer >= 35) or (place_meeting( x + 30*spr_dir, y, asset_get("par_block")))) && !hitpause {
	    

		set_state(PS_PRATFALL)
		prat_land_time = 10;
		
		state_timer = 0
		
		vsp = -10
		
		if (place_meeting( x + 30*spr_dir, y, asset_get("par_block"))) {
		hsp = -3*spr_dir
		x -= 6*spr_dir
		spawn_hit_fx(x + 26*spr_dir,y - 10,302)
		sound_play(sound_get("slam1"),false,noone,.6,.8)
		} else {
		    hsp = 0
		}
		
		
       shake_camera(2,2)
	}	
}

if window == 3 {
	if window_timer > 2 {
	set_attack_value(AT_DAIR, AG_CATEGORY, 1);
	}
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 10 - (window_timer/3) );
	
 if window_timer == 1 && !hitpause{
   sound_play(sound_get("jumpcrunch"),false,noone,1, )
 }	
 hsp /= 1.05
}


if window == 5 && window_timer < 12{ 
	soft_armor = 99
	vsp = 0
	hsp /= 1.1
	can_move = false
	
	if ragemode {
	    
	    ragemode += 2
	    
	}
	
	if !hitpause && (state_timer < 40) && state_timer % 6 == 0 {
		sound_play(sound_get("hit1"),false,noone,1, 1 + window_timer/40)
		
		if brage >= 10 {
		brage -= 10
		} else {
		brage = 0	
		}
		if bragesub >= 10 {
		bragesub -= 10
		} else {
		bragesub = 0		
		}
		
		if state_timer < 35 {
		window_timer = 1
		x += 4*spr_dir
		}
		
		take_damage(player,1,-1)
		
		with hit_player_obj {
		take_damage(player,1,2)	
		y += 20
		x -= 20*spr_dir
		}
		
    spawn_hit_fx(x + 40*spr_dir ,y - 60,301)
    
	}
	

   with hit_player_obj {
   	    vsp = 0
   	    hsp = 0
   	    x += floor( (other.x  + 30*other.spr_dir - x)/6 )
   	    y += floor( (other.y - 40 - y)/6 )
    	
   } 	
 
}

if window == 5 && window_timer == 12 && !hitpause {
    vsp = -9
    hsp = -3*spr_dir
}

    
break;

}