	//B - Reversals

if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

var last_window = get_attack_value(attack, AG_NUM_WINDOWS);

var STRONGPLEZ = up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed;

if state_timer <= 2 {
		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}

if nfloat > 4 && !STRONGPLEZ{
        switch attack{
            
            case AT_NAIR:
                    attack = AT_JAB;
            break;
            
            case AT_FAIR:
                  if !left_hard_pressed and !right_hard_pressed {
                    attack = AT_FTILT;
                  } else {
                  	attack = AT_DATTACK;
                  	hsp = 5*spr_dir
                  }
            break;
            
            case AT_BAIR:
            
                spr_dir *= -1;
                
                   if !left_hard_pressed and !right_hard_pressed {
                    attack = AT_FTILT;
                  } else {
                  	attack = AT_DATTACK;
                  	hsp = 5*spr_dir
                  }
            break;
            
            case AT_UAIR:
                attack = AT_UTILT;
            break;
            
            case AT_DAIR:
                attack = AT_DTILT;
            break;
            
        }
}

if nfloat > 4 && STRONGPLEZ{
        switch attack{
            
            case AT_NAIR:
                if move_cooldown[AT_FSTRONG] == 0 {
                    attack = AT_FSTRONG;
                }
            break;
            
            case AT_FAIR:
                    if move_cooldown[AT_FSTRONG] == 0 {
                    attack = AT_FSTRONG;
                }
            break;
            
            case AT_BAIR:
                if move_cooldown[AT_FSTRONG] == 0 {
                    attack = AT_FSTRONG;
                    spr_dir *= -1
                }
                    
            break;
            
            case AT_UAIR:
                if move_cooldown[AT_USTRONG] == 0 {
                    attack = AT_USTRONG;
                }
            break;
            
            case AT_DAIR:
                if move_cooldown[AT_DSTRONG] == 0 {
                    attack = AT_DSTRONG;
                }
            break;
            
        }
}


switch attack {


 case AT_TAUNT :
 
    can_jump = true
    
	move_cooldown[AT_TAUNT] = 5
	
	draw_indicator = false



   if window <= 2 {
	nctimer += 1
	
	if nctimer == 1{
		if hit_player_obj == self {
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
		}	

		sound_play(sound_get("taunt1"));
		sound_play(sound_get("tauntloop"));
	}
	
	if window == 2 && state_timer % 40 == 0 && taunt_down {
		sound_play(sound_get("tauntloop"));
	}
	
	if window <= 2 {
				spawn_hit_fx((room_width/2 + ((x - room_width/2)/2) - 100)+ 10 - 200 + random_func(3,400,true) ,y  - random_func(4,200,true), hpar3)
		spawn_hit_fx((room_width/2 + ((x - room_width/2)/2) - 100)+ 10 - 200 + random_func(1,400,true) ,y  - random_func(2,200,true), hpar2)

	}
	
	if (state_timer < 30 or taunt_down) && window == 2 && window_timer == 4*7 - 2 {
		window_timer = 1
	}
	
     if window == 2 && state_timer > 30 && !taunt_down && window_timer < 4*7 {
     	window_timer = 4*7 + 1
     }
   } else {
   	  	spawn_hit_fx( thundervictim.x + 70 - random_func(5, 140, true) , thundervictim.y  - 400 +  random_func(7, 800, true) , hpar2)
      spawn_hit_fx( thundervictim.x + 70 - random_func(6, 140, true) , thundervictim.y  - 400 +  random_func(8, 800, true) , hpar3)	
       spawn_hit_fx( thundervictim.x + 70 - random_func(3, 140, true) , thundervictim.y  - 400 +  random_func(4, 800, true) , hpar2)
      spawn_hit_fx( thundervictim.x + 70 - random_func(1, 140, true) , thundervictim.y  - 400 + random_func(2, 800, true) , hpar3)	
   }
 
////it's funking time 
   if state_timer == 1 && up_down {
   	    window = 3
   	    window_timer = 0
   	    
   	    		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			thundervictim = shortest_id
			
   }
   
   if window == 3 && window_timer == 12 {
   	 window = 4
   	 window_timer = 0
   	 sound_play(asset_get("sfx_coin_collect"));
   }
   
   
   if window == 4 {
   	 if window_timer == 30 window_timer = 1 ;
   }
  
   	
   if window >= 4  && move_cooldown[AT_TAUNT_2] == 0 {	 

   	 
   	 if left_pressed or right_pressed or up_pressed or down_pressed {
   	 	move_cooldown[AT_TAUNT_2] = 8
   	 	
   	 	shake_camera(4,2)
         if random_func(4,3,true) == 0 {
           spawn_hit_fx( x + 45*spr_dir, y - 58 , fxspark1)
         }
        
         if random_func(4,3,true) == 1 {
           spawn_hit_fx( x  + 30*spr_dir , y - 40 , fxspark2)
         }
           
         if random_func(4,3,true) == 2{
           spawn_hit_fx( x + 50*spr_dir , y - 16 , fxspark3)
         }
   	 }
   	 
   	 if left_pressed {
   	 	if spr_dir == 1 {
   	 		sound_play(sound_get("glitch6"),false,noone,0.4, 1 + (random_func(11,6,true)/20));
   	 		sound_play(sound_get("beepv3"),false,noone,0.8, 0.95 + (random_func(10,4,true)/20));
   	 		window = 7
   	 	} else {
   	 		sound_play(sound_get("glitch6"),false,noone,0.4, 1 + (random_func(11,6,true)/20));
   	 		sound_play(sound_get("beepv2"),false,noone,0.8, 0.9 + (random_func(10,4,true)/20));
   	 		window = 8
   	 	}
   	 	window_timer = 0
   	 }
   	 
   	 if right_pressed {
   	 	if spr_dir == 1 {
   	 		sound_play(sound_get("glitch6"),false,noone,0.4, 1 + (random_func(11,6,true)/20));
   	 		sound_play(sound_get("beepv2"),false,noone,0.8, 0.95 + (random_func(10,4,true)/20));
   	 		window = 8
   	 	} else {
   	 		sound_play(sound_get("glitch6"),false,noone,0.4, 1 + (random_func(11,6,true)/20));
   	 		sound_play(sound_get("beepv3"),false,noone,0.8, 0.9 + (random_func(10,4,true)/20));
   	 		window = 7
   	 	}
   	 	window_timer = 0
   	 }
   	 
   	 if up_pressed {
   	 	sound_play(sound_get("glitch6"),false,noone,0.4, 1 + (random_func(11,6,true)/20));
   	 	sound_play(sound_get("beepv4"),false,noone,0.8, 1 + (random_func(10,4,true)/20));
   	 	window = 5 window_timer = 0 
   	 }
   	 
   	 if down_pressed { 
   	 	sound_play(sound_get("glitch6"),false,noone,0.4, 1 + (random_func(11,6,true)/20));
   	 	sound_play(sound_get("beepv1"),false,noone,0.8, 0.8 + (random_func(10,4,true)/20));
   	 	window = 6 window_timer = 0 
   	 }
   }
   
   if window > 4 {
   	
   	if window_timer == 15 {
   	  window = 4
   	  window_timer = 0
   	}
   }
   
      if window == 9 && window_timer == 1 {
      	
	     
	   switch random_func(2, 6, true ) {
        case 0 :
        sound_play(sound_get("glitch1"),false,noone,0.8);
        break ;
        
        case 1 :
       sound_play(sound_get("glitch2"),false,noone,0.8);
        break ;
        
        case 2 :
        sound_play(sound_get("glitch3"),false,noone,0.8);
        break ;
        
        case 3 :
        sound_play(sound_get("glitch4"),false,noone,0.8);
        break ;
        
        case 4 :
        sound_play(sound_get("glitch5"),false,noone,0.8);
        break ;
        
        case 5 :
        sound_play(sound_get("glitch6"),false,noone,0.8);
        break ;
    
      }
      }
      
 break;
 

case AT_NSPECIAL:


            has_walljump = true    
            can_fast_fall = true
            has_airdodge = true
            djumps = 0
            move_cooldown [AT_NSPECIAL] = 999
            
        if window == 1 {
                
                 if get_gameplay_time() % 8 == 1 {	
                 	spawn_hit_fx( x + hsp + 4 - random_func(1, 8, true) , y + 8  - random_func(2, 4, true), gpar2)
                 }
                 
                  if get_gameplay_time() % 4 == 1 {	
                 	spawn_hit_fx( x + hsp + 4 - random_func(1, 8, true) , y + 8  - random_func(2, 4, true), gpar2)
                 }       
                 if window_timer = 12 {
                 nfloat = 90
                 spawn_base_dust(x, y, "land", spr_dir)
                 }
                 
                 if window_timer % 5 == 0 or state_timer == 1 {
                      spawn_base_dust(x, y, "land", spr_dir)
                 }
                 vsp /= 1.1
                 hsp /= 1.2
                 
                 if state_timer == 1  {
                     vsp = -8         

                 sound_play(sound_get("glitch6"),false,noone,0.8);
                 sound_play(sound_get("glitch5"),false,noone,0.8);
             
             }
    
        }
    
    
    
    if window == 2 {
        
        if move_cooldown[AT_FSPECIAL] == 0{
        	can_special = true
        }
        if nfloat = 0 or down_hard_pressed{
            nfloat = 0
            set_state(PS_IDLE)
        }
        if jump_pressed {
        	spawn_base_dust(x, y, "djump", spr_dir)
            set_state (PS_JUMPSQUAT)
            nfloat = 4
        }
        
     can_attack = true
     can_strong = true
            if shield_pressed && !left_down && !right_down && !up_down && !down_down{
                move_cooldown [AT_EXTRA_3] = 0
                set_attack(AT_EXTRA_3)
                window = 1
                window_timer = 0
                nfloat = 20
            }
            
                    
            if shield_pressed && (left_down or right_down or up_down or down_down){
                set_state(PS_PARRY)
                nfloat = 0
            }
            
            hsp /= 1.01
            
            if left_down && !right_down {
                spr_dir = -1
            } 
            if !left_down && right_down  {
                spr_dir = 1
            }
            
            if !free {
                state = PS_LAND
                state_timer = 0
            }
        }
break;


case AT_EXTRA_3 :

        hsp /= 1.05
        can_move = false
        can_fastfall = false 
        
        move_cooldown [AT_EXTRA_3] = 120
            if window == 2 {
                perfect_dodging = true
            } else {
                perfect_dodging = false
            }
            
break;

case AT_JAB :

        if window_timer == 8 && (window == 2 or window == 5)  && !hitpause{
            sound_play(asset_get("sfx_swipe_medium1"),false,noone,1);
        }
        
        if window_timer == 11 && (window == 7) && !hitpause{
            sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,1);
        }
        
        if free {
            can_move = false
            can_fast_fall = false
            hsp /= 1.03
            nfloat = 5
        }
        
        if hitpause && window < 7{
            window_timer += 1
        }
         
	    if !hitpause  && has_hit_player && (window = 2 or window == 5 or window == 7){
	    		hsp = (hit_player_obj.x - (x + (30 * spr_dir))) / 6
	    			
	    	
	    		if hsp > 3 {
	    			hsp = 3
	    		}
	    		
	    		if hsp < -3 {
	    			hsp = -3
	    		}
	    }

break;



case AT_FTILT :

///HHH
  if hhh != 0 {
  	
  	if hitpause {
  		state_timer += 2
  	}
  	
  	set_num_hitboxes(AT_FTILT,3);
  	
  	
  	if window == 1 {
  	
  	if window_timer == 1 {
  	   sound_play(asset_get("sfx_clairen_swing_strong"))
  	}
  	
  	if state_timer < 5 {	
      spawn_hit_fx( x + 20 - random_func(3, 40, true) - 40*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 40*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
  	}
  		move_cooldown[AT_USPECIAL_GROUND] += 5
  	window_timer -= 0.5
  	}
  	
  	
  	if window == last_window {
  	

      
  	if window_timer == 1 {
  		move_cooldown[AT_USPECIAL_GROUND] = 20
  	}	
  	
  	if state_timer%2 == 0 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	window_timer -= 0.5	
  	}
  	
  	}
  	
  } else {
  	
  	if window == 1 && window_timer < 5{
  		x += window_timer*spr_dir*2
  	}
  	set_num_hitboxes(AT_FTILT,1);
  	
  	
  }
//////


    if window_timer == 1 && (window == 1)  && !hitpause{
        sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,1);
    }
    
     if free {
         can_move = false
         can_fast_fall = false
         hsp /= 1.03
         nfloat = 2
     }
break;

case AT_UTILT :


///HHH
  if hhh != 0 {
  	
  	if hitpause {
  		state_timer += 2
  	}
  	
  	set_num_hitboxes(AT_UTILT,3);
  	

  	
  	if window == 1 {
  		
  		  	if window_timer == 3 {
  	   sound_play(asset_get("sfx_clairen_swing_mega_instant"))
  	}
  	
  	if state_timer < 5 {	
      spawn_hit_fx( x + 20 - random_func(3, 40, true) - 40*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 40*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
  	}
  	
  	
  		famix += 8*spr_dir
  		move_cooldown[AT_USPECIAL_GROUND] += 3
  	window_timer -= 0.5
  	}
  	
  	if window == last_window {
  	
  	if window_timer == 1 {
  		move_cooldown[AT_USPECIAL_GROUND] = 20
  	}	
  	
  	if state_timer%2 == 0 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 26*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 26*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	
  	window_timer -= 0.5	
  	}
  	
  	}
  	
  } else {
  	set_num_hitboxes(AT_UTILT,1);
  	
  	 if window == 1 && window_timer == 1 {
  		hsp += 4*spr_dir
  	 }
  	  	 if window == 2 && window_timer == 1 {
  		hsp -= 3*spr_dir
  	 }
  }
//////
  
       if window_timer == 5 && (window == 1)  && !hitpause{
           sound_play(asset_get("sfx_ice_shieldup"),false,noone,1);
       }
       
        if free {
            can_move = false
            can_fast_fall = false
            hsp /= 1.03
            nfloat = 2
        }
break;


case AT_DTILT :


///HHH
  if hhh != 0 {
  	set_num_hitboxes(AT_DTILT,3);
  	
  	  if hitpause {
  		state_timer += 2
  	}
  	
  	
  	if window == 1 {
  	
  	if window_timer == 1 {
  	   sound_play(asset_get("sfx_clairen_spin"))
  	}
  	
  	if state_timer < 5 {	
      spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
  	}
  		move_cooldown[AT_USPECIAL_GROUND] += 5
  	window_timer -= 0.5
  	}
  	
  	
  	if window == last_window {
  	

      
  	if window_timer == 1 {
  		move_cooldown[AT_USPECIAL_GROUND] = 20
  	}	
  	
  	if state_timer%2 == 0 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	window_timer -= 0.5	
  	}
  	
  	}
  	
  } else {
  	
  	
  	if window == 1 {
  		x += 12*spr_dir - window_timer*spr_dir*2
  	}
  	
  	set_num_hitboxes(AT_DTILT,1);
  	
  	
  }
//////

        if window_timer == 1 && (window == 1)  && !hitpause{
             sound_play(asset_get("sfx_shovel_swing_light2"),false,noone,1);
             sound_play(asset_get("sfx_clairen_poke_weak"),false,noone,1);
        }
        
         if free {
             can_move = false
             can_fast_fall = false
             hsp /= 1.03
             nfloat = 2
         }
break;


case AT_DATTACK :

        if window_timer == 1 && (window == 1)  && !hitpause{
             sound_play(asset_get("sfx_clairen_spin"),false,noone,1);
        }
       
         if window_timer == 1 && (window == 2)  && !hitpause {
              spawn_base_dust(x, y, "dash_start", spr_dir)
        }
       
        if window_timer == 1 && (window == 4)  && !hitpause {
              spawn_base_dust(x, y, "land", spr_dir)
        }
        
        if window > 2 {
           hsp /= 1.06	
        }
        
        if window == 3 && window_timer == 11 && free {
           window_timer -= 1
           create_hitbox(AT_DATTACK,3,x,y)
        }
        
        can_wall_jump = true
        if y > room_height/2 + 300 {
        	can_shield = true
        	can_jump = true
        	can_special = true
        }
        
         if free && state_timer < 22{
             can_move = false
             can_fast_fall = false
             hsp /= 1.03
             nfloat = 2
         }
break;


case AT_NAIR :
    
        if window_timer == 9 && (window == 1)  && !hitpause{
            sound_play(asset_get("sfx_swipe_medium1"),false,noone,1);
        }

break;

case AT_FAIR :


///HHH
  if hhh != 0 {
  	set_num_hitboxes(AT_FAIR,3);
  	set_attack_value(AT_FAIR, AG_LANDING_LAG, 12);
  	
  	 if hitpause {
  		state_timer += 2
  	}
  	
  	
  	if window == 1 {
  	
  	if window_timer == 2 {
  	   sound_play(asset_get("sfx_clairen_poke_strong"))
  	}
  	
  	
  	if state_timer < 5 {	
      spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
  	}
    move_cooldown[AT_USPECIAL_GROUND] += 5
    window_timer -= 0.5
    
    if state_timer % 2 == 0 && window_timer > 3 {
    window_timer -= 0.3
    state_timer = 0
  	}
  	
  	}
  	
  	if window == last_window {
  
  	if window_timer == 1 {
  		move_cooldown[AT_USPECIAL_GROUND] = 20
  	}	
  	
  	if state_timer%2 == 0 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	window_timer -= 0.5	
  	}
  	
  	}
  	
  } else {
  	set_num_hitboxes(AT_FAIR,1);
  	set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
  	
  }
//////



        if window_timer == 1 && (window == 1)  && !hitpause{
             sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,1);
             sound_play(asset_get("sfx_clairen_poke_weak"),false,noone,1);
        }
        
        if window_timer == 3 && (window == 2)  && !hitpause{
            hsp -= 3*spr_dir
        }

break;


case AT_UAIR :
///HHH
  if hhh != 0 {
  	set_num_hitboxes(AT_UAIR,7);
  	set_attack_value(AT_UAIR, AG_LANDING_LAG, 12);
  	set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 15);
  	 if hitpause {
  		state_timer += 2
  	}
  	
  	if has_hit_player && window == 3 && window_timer < 13 && hitpause {
  		hit_player_obj.x += floor((x - hit_player_obj.x) / 12)
  		hit_player_obj.y += floor((y - 90 - hit_player_obj.y) / 7)
  	}
  	
  	if window == 1 {
  	
  	if window_timer == 2 {
  	   sound_play(asset_get("sfx_clairen_spin"))
  	}
  	
  	
  	if state_timer < 5 {	
      spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
  	}
    move_cooldown[AT_USPECIAL_GROUND] += 5
    
    window_timer -= 0.5
    
    
  	
  	}
  	
  	if window == 3 {
  		state_timer = 10
  	}
  	
  	if window == last_window {
  
  	if window_timer == 1 {
  		move_cooldown[AT_USPECIAL_GROUND] = 20
  	}	
  	
  	if state_timer%2 == 0 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	window_timer -= 0.5	
  	}
  	
  	}
  	
  } else {
  	set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
  	set_num_hitboxes(AT_UAIR,2);
  	set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
  	
  }
//////


break;


case AT_DAIR :


///HHH
  if hhh != 0 {
  	set_num_hitboxes(AT_DAIR,4);
  	set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
  	
  	 if hitpause {
  		state_timer += 2
  	}
  	
  	
  	if window == 1 {
  		
  	
  	if window_timer == 7 {
  	   sound_play(asset_get("sfx_clairen_swing_mega_instant"))
  	}
  	
  	
  	if state_timer < 5 {	
      spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
  	}
    move_cooldown[AT_USPECIAL_GROUND] += 5
    
    if state_timer%2 == 0 {	
    window_timer -= 0.5
    }
  	
  	}
  	
  	if window == last_window {
  
  	if window_timer == 1 {
  		move_cooldown[AT_USPECIAL_GROUND] = 20
  	}	
  	
  	if state_timer%2 == 0 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	window_timer -= 0.5	
  	}
  	
  	}
  	
  } else {
  	set_num_hitboxes(AT_DAIR,1);
  	set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
  	
  }
//////

        if window_timer == 6 && (window == 1)  && !hitpause{
             sound_play(asset_get("sfx_ice_on_player"),false,noone,1,0.95 + (random_func(10,4,true)/15));
        }
        

break;

case AT_BAIR :
	///HHH
  if hhh != 0 {
  	set_num_hitboxes(AT_BAIR,3);
  	set_attack_value(AT_BAIR, AG_LANDING_LAG, 12);
  	set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
  	set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
  	 if hitpause {
  		state_timer += 2
  	}
  	
  	
  	if window == 1 {
  		
  	
  	if window_timer == 4 {
  		sound_play(asset_get("sfx_shovel_swing_heavy1"))
  	}
  	
  	if window_timer == 1 {
  		  sound_play(asset_get("sfx_clairen_swing_strong"))
  	}
  	
  	if state_timer < 5 {	
  		famix += 5 *spr_dir
      spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
  	}
    move_cooldown[AT_USPECIAL_GROUND] += 5
    
    if window_timer < 6 {	
    window_timer -= 0.5
    }
    
  	
  	}
  	
  	if window == last_window {
  
  	if window_timer == 1 {
  		move_cooldown[AT_USPECIAL_GROUND] = 20
  	}	
  	
  	if state_timer%2 == 0 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	window_timer -= 0.5	
  	}
  	
  	}
  	
  } else {
  	set_num_hitboxes(AT_BAIR,2);
  	set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
  	set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
  	set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 9);
  }
//////
break;


case AT_FSPECIAL  :
	
if window > 2 {
	famix += floor(((x-30*spr_dir)-famix)/4)
    famiy += floor((y-56-famiy)/4)
}	
nfloat = 0
    if  move_cooldown[AT_EXTRA_1] == 0 && window == 1 && window_timer == 1{
    	set_attack (AT_EXTRA_1)
    	window = 1
    	window_timer = 1
    	state_timer = 0
    sound_play(asset_get("sfx_bird_downspecial")) 	
    }
  
  
    if state_timer%2 == 0 or state_timer < 15 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	}
  	
  	
  fall_through = true
  can_fast_fall = false
  if window == 1 {
  vsp /= 2
  hsp /= 2
  }
  
  if window == 3 && hsp == 0 && !hitpause {
  	hsp = 15*spr_dir
  	y -= 5
  }
  
    if has_hit_player && window == 3 && window_timer < 15 && hitpause && hit_player_obj.state_cat == SC_HITSTUN{
  		hit_player_obj.x += floor((x + 20*spr_dir - hit_player_obj.x) / 4)
  		hit_player_obj.y += floor((y - 20 - hit_player_obj.y) / 4)
  	}
  	
  if window == 1 && window_timer == 2 && !hitpause{
	move_cooldown [AT_FSPECIAL] = 999
	move_cooldown [AT_DSPECIAL] = 999
	move_cooldown [AT_USPECIAL] = 999
  	sound_play(asset_get("sfx_clairen_fspecial_slash"))
  	move_cooldown[AT_USPECIAL_GROUND] = 100
  }
  
  if window == 1 && window_timer == 15 {
  	x = famix
  	y = famiy
  }
  
  if window == 2 && window_timer == 1 && !hitpause{
  	sound_play(sound_get("teleport1"))
  	shake_camera(2,5)
  	sound_play(asset_get("sfx_absa_cloud_pop"))
  	move_cooldown[AT_EXTRA_1] = 300
  }
  
   if window == 2 && window_timer == 10 && !hitpause{
  	  	sound_play(asset_get("sfx_clairen_spin"),false,noone,1)
  	  	sound_play(asset_get("sfx_bird_nspecial"),false,noone,1)
  }
  
  if window >= 2 && !hitpause {
  	
  	if window == 3 && (window_timer == 1 or window_timer % 3 == 0) && window_timer < 15{
  	sound_play(asset_get("sfx_ice_shieldup"))	
  		create_hitbox (AT_FSPECIAL,1,x,y)
  	} 
  	
  	if window == 3 && window_timer == 15 {
  		  move_cooldown[AT_USPECIAL_GROUND] = 20
  	}
  	
  	vsp = 0
  	can_move = false
  	can_wall_jump = true
  	hsp /= 1.08
  	
  }
  
break;



case AT_USPECIAL :

if window > 2 {
	famix += floor(((x-30*spr_dir)-famix)/4)
    famiy += floor((y-56-famiy)/4)
}

	
prat_land_time = 10;
nfloat = 0
  if move_cooldown[AT_EXTRA_1] == 0 && window == 1 && window_timer == 1{
  	set_attack (AT_EXTRA_1)
  	window = 1
  	window_timer = 1
  	state_timer = 0
  	sound_play(asset_get("sfx_bird_downspecial")) 	
  }
  
  
    if state_timer%2 == 0 or state_timer < 15{	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 30*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 30*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
  	}
  	
  
  if down_down {	
  fall_through = true
  }
  can_fast_fall = false
  if window == 1 {
  vsp /= 2
  hsp /= 2
  }
  
  
    if has_hit_player && window == 3 && window_timer < 15 && hitpause && hit_player_obj.state_cat == SC_HITSTUN {
  		hit_player_obj.x += floor((x  - hit_player_obj.x) / 4)
  		hit_player_obj.y += floor((y - 30 - hit_player_obj.y) / 4)
  	}
  	
  if window == 1 && window_timer == 2 && !hitpause{
  	
	move_cooldown [AT_FSPECIAL] = 999
	move_cooldown [AT_DSPECIAL] = 999
	move_cooldown [AT_USPECIAL] = 999
  	sound_play(asset_get("sfx_clairen_fspecial_slash"))
  	move_cooldown[AT_USPECIAL_GROUND] = 100
  }
  
   if window == 1 && window_timer == 15 {
  	x = famix
  	y = famiy
  }
  
  if window == 2 && window_timer == 1 && !hitpause{
  	sound_play(sound_get("teleport1"))
  	shake_camera(2,5)
  	sound_play(asset_get("sfx_absa_cloud_pop"))
  	move_cooldown[AT_EXTRA_1] = 300
  }
  
   if window == 2 && window_timer == 12 && !hitpause{
      	spawn_base_dust(x, y, "djump", spr_dir)
  	  	sound_play(asset_get("sfx_clairen_spin"),false,noone,1)
  	  	sound_play(asset_get("sfx_bird_nspecial"),false,noone,1)
  }
  
  if window >= 2 && !hitpause {
  	
  	if window == 3 && (window_timer == 1 or window_timer % 3 == 0) && window_timer < 15{
  	sound_play(asset_get("sfx_ice_shieldup"))	
  		create_hitbox (AT_USPECIAL,1,x,y)
  	} 
  	
  	if window == 3 && window_timer == 15 {
  		  move_cooldown[AT_USPECIAL_GROUND] = 20
  	}
  	
  	if vsp < 0 {
  		vsp /= 1.02
  	} else {
  		vsp -= 0.4
  	}
  	can_move = true
  	can_wall_jump = true
  	hsp /= 1.25
  }
  
    
break;



case AT_DSPECIAL :

if window > 2{
	famix += floor(((x-30*spr_dir)-famix)/4)
    famiy += floor((y-56-famiy)/4)
}

  		  move_cooldown[AT_USPECIAL_GROUND] = 20
  		  
prat_land_time = 30;
nfloat = 0
  if  move_cooldown[AT_EXTRA_1] == 0 && window == 1 && window_timer == 1{
  	set_attack (AT_EXTRA_1)
  	window = 1
  	window_timer = 1
  	state_timer = 0
 	sound_play(asset_get("sfx_bird_downspecial")) 	
  }
  
  
    if window != 5 {	
  	  spawn_hit_fx( x + 20 - random_func(3, 40, true) , y - 20 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 20 -  random_func(2, 60, true) , hpar3)	
  	}
  	
  
  if down_down {	
  fall_through = true
  }
  can_fast_fall = false
  
  if window == 1 {
  vsp /= 2
  hsp /= 2
  }
  
  
  if window < 5 && window > 2 {
  	spawn_hit_fx( x + 50 - random_func(5, 100, true) , y  - 20 +  random_func(7, 800, true) , hpar2)
      spawn_hit_fx( x + 50 - random_func(6, 100, true) , y  - 20 +  random_func(8, 800, true) , hpar3)	
       spawn_hit_fx( x + 50 - random_func(3, 100, true) , y  - 20 +  random_func(4, 800, true) , hpar2)
      spawn_hit_fx( x + 50 - random_func(1, 100, true) , y  - 20 + random_func(2, 800, true) , hpar3)	
  }
  
  	
  if window == 1 && window_timer == 2 && !hitpause{
  	
	move_cooldown [AT_FSPECIAL] = 999
	move_cooldown [AT_DSPECIAL] = 999
	move_cooldown [AT_USPECIAL] = 999
	
  	sound_play(asset_get("sfx_clairen_fspecial_slash"))
  	move_cooldown[AT_USPECIAL_GROUND] = 100
  	
  }
  
   if window == 1 && window_timer == 15 {
  	x = famix
  	y = famiy
  }
  
  if window == 2 && window_timer == 1 && !hitpause{
  	sound_play(asset_get("sfx_absa_cloud_pop"))
  	move_cooldown[AT_EXTRA_1] = 300
  	sound_play(sound_get("teleport1"))
  }
  
   if window == 2 && window_timer == 1 && !hitpause{
   	    shake_camera(2,40)
      	spawn_base_dust(x, y, "djump", spr_dir)
      	sound_play(sound_get("glitch2"),false,noone,1.4)
      	sound_play(sound_get("fspec"),false,noone,1)
  	  	sound_play(asset_get("sfx_clairen_spin"),false,noone,1)
  	  	sound_play(asset_get("sfx_bird_nspecial"),false,noone,1)
  }
  
    	 if hitpause {
  			window_timer += 0.5
  			y -= 2
  		}
  		
  
  if window >= 2 && !hitpause {
  	
  	if window == 2 {
  		vsp = (42-window_timer)/-5
  	}
  	
  	if window == 2 && window_timer == 41 && !hitpause {
  	sound_play(sound_get("dspec"),false,noone,0.6)
  	sound_play(sound_get("mhit3"),false,noone,1)
  	sound_play(sound_get("bigcannon"),false,noone,0.6)
  	sound_play(asset_get("sfx_absa_kickhit"))
  	shake_camera (8,12)
  	spawn_hit_fx(x, y , lighten)
  	spawn_hit_fx(x, y + 450 , dbeam)
  	spawn_hit_fx(x, y  , fxblow1)
  	window = 3
  	window_timer = 0
  	} 
  	
  	if window == 5{
  		  
  		  if !free {
  		  	set_state(PS_PRATLAND)
  		  }
  	}
  	
  	if window == 3 {
  		vsp -= 1 
  		hsp = 0
  	}
  	

  		
  	if window == 4 {
  		vsp -= 0.5
  		hsp = 0
  	}

  		vsp /= 1.2
  	
  	can_move = true
  	can_wall_jump = true
  	hsp /= 1.1
  	
  }
  
break;



case AT_EXTRA_1 :
   	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
  
nfloat = 0
if window == 1 && window_timer == 2 && !hitpause {
	sound_play(sound_get("swipe1")) 
}
if window == 1 && window_timer <= 5 {
	
	if right_down - left_down != 0 {
	spr_dir = right_down - left_down 
	}

	if (!left_down and !right_down) && up_down && !down_down {
		set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 0);
        set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, -15);
        throw_dir = 90
	}
	
	if (left_down or right_down) && up_down && !down_down {
		set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 10);
        set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, -12);
        throw_dir = 45
	}
	
	if (left_down or right_down) && !up_down && !down_down {
		set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 12);
        set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, -3.5);
        throw_dir = 0
	}
    
    if (left_down or right_down) && !up_down && down_down {
		set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 10);
        set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, 3.5);
        throw_dir = 325
	}

    if (!left_down and !right_down) && !up_down && down_down {
		set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 0);
        set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, 8);
        throw_dir = 270
	}
}

  move_cooldown[AT_USPECIAL_GROUND] += 2
   can_fast_fall = false
   if window == 1 {
   	
   	  spawn_hit_fx( x + 20 - random_func(3, 40, true) - 20*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) - 20*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)	
      
   	 vsp /= 1.2
   	 hsp /= 1.2
   }

  if window == 2 {
  	hhh = 0
   	 vsp = 0
   	 hsp = 0
   }

break;


case AT_FSTRONG:
	nfloat = 2
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, (120 - state_timer)/6);	
	can_move = false
	can_fast_fall = false
	hsp /= 1.06
	
	if hitpause {
		hitstop = 0
	}

if !hitpause {	
if window == 1 && window_timer == 1{
	cur_sound = sound_play(sound_get("strongcharge"))
	state_timer = 1
	
}

if window == 2 {
	
    if state_timer == 61 {
    	spawn_hit_fx(x - 20*spr_dir, y - 36,302)
    	sound_play(asset_get("sfx_absa_kickhit"))
    	  	sound_play(asset_get("sfx_absa_cloud_pop"))
    }

    if state_timer == 120 {
    	spawn_hit_fx(x - 20*spr_dir, y - 36,302)
    	sound_play(asset_get("sfx_absa_kickhit"))
    	  	sound_play(asset_get("sfx_absa_cloud_pop"))
    }
    
    	     if state_timer < 60 && window == 2 {
	     	if get_gameplay_time() % 10 == 0 {
	         		spawn_base_dust(x - state_timer/2, y, "dash", 1)
	         		spawn_base_dust(x + state_timer/2, y, "dash", -1)
               }
	     }
		if state_timer > 60 && window == 2 {
				shake_camera(1,2)
	        spawn_hit_fx( x + 30 - random_func(3, 60, true) - 10*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
            spawn_hit_fx( x + 30 - random_func(1, 60, true) - 10*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
               if get_gameplay_time() % 10 == 0 {
               	spawn_base_dust(x, y, "land", spr_dir)
	         		spawn_base_dust(x - state_timer/2, y, "dash_start", 1)
	         		spawn_base_dust(x + state_timer/2, y, "dash_start", -1)
               }
	     }
	     
	if state_timer < 120 {
	
	     
		if state_timer % 8 == 0 {
		sound_play(asset_get("sfx_boss_laser"),false,noone, 0.2 + state_timer/160)
		}
		
	} else {
		
		shake_camera(2,40)
      	spawn_base_dust(x, y, "dash_start", spr_dir)
        sound_play(asset_get("sfx_absa_boltcloud"))
      	

		window = 3
		window_timer = 0
	}
	
	if state_timer > 20 &&  (free or 
	(!strong_down and !left_strong_pressed and !right_strong_pressed and !left_stick_down and !right_stick_down)){
	    shake_camera(2,40)
      	spawn_base_dust(x, y, "dash_start", spr_dir)
        sound_play(asset_get("sfx_absa_boltcloud"))
      	
		window = 3
		window_timer = 0
	}
	
}

if window == 3 {
	state_timer -= 1
}

if window == 4 && window_timer == 1 {
		sound_stop(cur_sound)
	if state_timer <= 60 {
		spawn_hit_fx(x + 30*spr_dir,y - 40,305)
		create_hitbox(AT_FSTRONG,1,x + 30*spr_dir ,y - 40)
		shake_camera(4,10)
		hsp = -5*spr_dir
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 30);
		spawn_base_dust(x, y, "land", spr_dir)
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.6)
	}
	
	if state_timer > 60 && state_timer < 119 {
		spawn_hit_fx(x + 610*spr_dir,y - 46, fstrong2)
		spawn_hit_fx(x ,y - 40, fxslash1)
		shake_camera(6,10)
		hsp = -8*spr_dir
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 30);
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1.2)
		spawn_base_dust(x, y, "land", spr_dir)
		spawn_base_dust(x - 10*spr_dir, y, "dash_start", spr_dir)
		
		create_hitbox(AT_FSTRONG,2,x + 30*spr_dir ,y - 40)
	}

	if state_timer >= 119 {
		
		state_timer = 300
		
		spawn_hit_fx(x + 620*spr_dir,y - 46, fstrong3)
		spawn_hit_fx(x ,y - 40, fxslash1)
		spawn_hit_fx(x ,y - 40, lighten)
		
		spawn_hit_fx(x + 30*spr_dir, y - 130,fxblow2)
		spawn_hit_fx(x + 30*spr_dir, y - 60,fxblow2)
		spawn_hit_fx(x , y - 100,fxblow2)
		spawn_hit_fx(x - 30*spr_dir, y - 100,fxblow2)
		shake_camera(8,30)
		hsp = -12*spr_dir
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 40);
		set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 40);
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1.6)
		sound_play(sound_get("fstrong1"))
		sound_play(sound_get("bigcannon"))
		spawn_base_dust(x, y, "land", spr_dir)
		spawn_base_dust(x - 10*spr_dir, y, "dash_start", spr_dir)
		spawn_base_dust(x - 30*spr_dir, y, "dash_start", spr_dir)
		spawn_hit_fx(x + 20*spr_dir,y - 46, 306)
		create_hitbox(AT_FSTRONG,3,x + 30*spr_dir ,y - 40)
	}	
}
}



if window == 4 {
	
	if has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
		hit_player_obj.y += floor((y - 10 - hit_player_obj.y)/6)
	}
	       
	            if get_gameplay_time() % 4 == 0 {
               	    spawn_base_dust(x, y, "land", spr_dir)
	         		spawn_base_dust(x + hsp - random_func(1,50,true)*spr_dir, y, "dash", spr_dir)
               }
}


	       if state_timer > 300 {
	       	
	       	if window == 4 && state_timer % 4 == 0 {
	       		spawn_hit_fx(x + 610*spr_dir,y - 46, fstrong2)
	       		create_hitbox(AT_FSTRONG,3,x + 30*spr_dir ,y - 40)
	         	spawn_hit_fx(x + 620*spr_dir,y - 46, fstrong3)
	       	if state_timer % 12 == 0 {
	       	spawn_hit_fx(x + 20*spr_dir,y - 46, 306)
	       	spawn_hit_fx(x - window_timer*spr_dir, y - 110,fxblow2)
	       	}
	       	}
	       	
	       	if window_timer < 360 {
	       	
	               spawn_hit_fx( x + random_func(5, 1200, true)*spr_dir , y + 20 -  random_func(7, 120, true) , hpar2)
                   spawn_hit_fx( x + random_func(6, 1200, true)*spr_dir , y + 20 -  random_func(8, 120, true) , hpar3)	
                   spawn_hit_fx( x + random_func(3, 1200, true)*spr_dir , y + 20 -  random_func(4, 120, true) , hpar2)
                   spawn_hit_fx( x + random_func(1, 1200, true)*spr_dir , y + 20 -  random_func(2, 120, true) , hpar3)
	       	}
	       	
	       }
	       
break;



case AT_USTRONG:
	nfloat = 2
	
	set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, (120 - state_timer)/4);
	
	can_move = false
	can_fast_fall = false
	hsp /= 1.03
	
	if hitpause {
		hitstop = 0
	}

if !hitpause {	
if window == 1 && window_timer == 1{
	cur_sound = sound_play(sound_get("strongcharge"),false,noone,0.7)
	state_timer = 1
	
}

if window == 2 {
	
    if state_timer == 45 {
    	spawn_hit_fx(x - 20*spr_dir, y - 36,302)
    	  	sound_play(asset_get("sfx_absa_singlezap1"))
    }

    if state_timer == 90 {
    	spawn_hit_fx(x - 20*spr_dir, y - 36,302)
    	  	sound_play(asset_get("sfx_absa_singlezap1"))
    	  	sound_play(asset_get("sfx_absa_current_pop"))
    }
    
    	     if state_timer < 45 && window == 2 {
	     	if get_gameplay_time() % 10 == 0 {
	         		spawn_base_dust(x - state_timer/2, y, "dash", 1)
	         		spawn_base_dust(x + state_timer/2, y, "dash", -1)
               }
	     }
	     
		if state_timer > 45 && window == 2 {
				shake_camera(1,2)
	        spawn_hit_fx( x + 30 - random_func(3, 60, true) - 10*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
            spawn_hit_fx( x + 30 - random_func(1, 60, true) - 10*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
               if get_gameplay_time() % 10 == 0 {
               	spawn_base_dust(x, y, "land", spr_dir)
	         		spawn_base_dust(x - state_timer/2, y, "dash_start", 1)
	         		spawn_base_dust(x + state_timer/2, y, "dash_start", -1)
               }
	     }
	     
	if state_timer <= 90 {
	
	     
		if state_timer % 4 == 0 {
		sound_play(asset_get("sfx_clairen_tip_loop"),false,noone, 0.2 + state_timer/160)
		}
		
	} else {
		
		shake_camera(2,40)
      	spawn_base_dust(x, y, "dash_start", spr_dir)
        sound_play(asset_get("sfx_absa_boltcloud"))
      	

		window = 3
		window_timer = 0
	}
	
	if (!strong_down and !up_strong_pressed and !up_stick_down) or free {
	    shake_camera(2,40)
      	spawn_base_dust(x, y, "dash_start", spr_dir)
        sound_play(asset_get("sfx_absa_boltcloud"))
      	
		window = 3
		window_timer = 0
	}
	
}

if window == 3 {
	state_timer -= 1
}

if window == 3 && window_timer == 12 {
		sound_stop(cur_sound)
	if state_timer <= 45{
		set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
		shake_camera(6,4)
       sound_play(asset_get("sfx_absa_cloud_crackle"))
       sound_play(sound_get("ustrong1"))
       spawn_hit_fx(x,y - 506,ustrong1)
	}
	
	if state_timer > 45 && state_timer < 90 {
		set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 90);
      		shake_camera(8,6)
      sound_play(asset_get("sfx_absa_cloud_crackle"))
       sound_play(sound_get("ustrong2"))
       
       spawn_hit_fx(x + 20,y - 506,ustrong1)
       var ulv2 = spawn_hit_fx( x - 20,y - 506, ustrong1 )
			ulv2.draw_angle = 180
			
			spawn_hit_fx(x,y - 50, fxblow1) 
	}

	if state_timer >= 90 {
		set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 120);
	   shake_camera(12,8)
       spawn_hit_fx(x,y - 50, lighten)
       sound_play(asset_get("sfx_absa_cloud_crackle"))
       sound_play(sound_get("ustrong2"))
       sound_play(sound_get("tstrong"))
       spawn_hit_fx(x,y - 506, ustrong2)
       
       var ulv2 = spawn_hit_fx( x ,y - 506, ustrong2 )
			ulv2.draw_angle = 180
spawn_hit_fx(x + 50,y - 506,ustrong1)
spawn_hit_fx(x - 50,y - 506,ustrong1)
spawn_hit_fx(x + 25,y - 506,ustrong3)
spawn_hit_fx(x - 25,y - 506,ustrong3)

		  spawn_hit_fx(x-20,y - 50, fxblow1) 
		  spawn_hit_fx(x+20,y - 50, fxblow1) 
	}	
}
}



if window == 4 {
	       
	            if get_gameplay_time() % 2 == 0 {
               	    spawn_base_dust(x - window_timer*2, y, "dash_start", 1)
	         		spawn_base_dust(x + window_timer*2, y, "dash_start", -1)
               }
}


	       
break;


case AT_DSTRONG :

   move_cooldown[AT_DSTRONG] = 30
		nfloat = 2
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, (120 - state_timer)/4);
	can_move = false
	can_fast_fall = false
	hsp /= 1.03
	
	if hitpause {
		hitstop = 0
	}

if !hitpause {	
if window == 1 && window_timer == 1{
	cur_sound = sound_play(sound_get("strongcharge"),false,noone,0.7)
	state_timer = 1
	
}

if window == 2 {
	
    if state_timer == 45 {
    	spawn_hit_fx(x , y - 44,305)
    	  	sound_play(asset_get("sfx_absa_singlezap1"))
    }

    if state_timer == 90 {
    	spawn_hit_fx(x , y - 44,305)
    	  	sound_play(asset_get("sfx_absa_singlezap1"))
    	  	sound_play(asset_get("sfx_absa_current_pop"))
    }
    
    	     if state_timer < 45 && window == 2 {
	     	if get_gameplay_time() % 10 == 0 {
	         		spawn_base_dust(x - state_timer/2, y, "dash", 1)
	         		spawn_base_dust(x + state_timer/2, y, "dash", -1)
               }
	     }
	     
		if state_timer > 45 && window == 2 {
				shake_camera(1,2)
	        spawn_hit_fx( x + 30 - random_func(3, 60, true) - 10*spr_dir , y - 30 -  random_func(4, 60, true) , hpar2)
            spawn_hit_fx( x + 30 - random_func(1, 60, true) - 10*spr_dir , y - 30 -  random_func(2, 60, true) , hpar3)
               if get_gameplay_time() % 10 == 0 {
               	spawn_base_dust(x, y, "land", spr_dir)
	         		spawn_base_dust(x - state_timer/2, y, "dash_start", 1)
	         		spawn_base_dust(x + state_timer/2, y, "dash_start", -1)
               }
	     }
	     
	if state_timer <= 90 {
	
	     
		if state_timer % 4 == 0 {
		sound_play(asset_get("sfx_clairen_tip_loop"),false,noone, 0.2 + state_timer/160)
		}
		
	} else {
		
		shake_camera(2,40)
      	spawn_base_dust(x, y, "dash_start", spr_dir)
        sound_play(asset_get("sfx_absa_boltcloud"))
      	

		window = 3
		window_timer = 0
	}
	
	if state_timer > 20 && ((!strong_down and !down_strong_pressed and !down_stick_down) or free) {
	    shake_camera(2,40)
      	spawn_base_dust(x, y, "dash_start", spr_dir)
        sound_play(asset_get("sfx_ell_eject"))
      	
		window = 3
		window_timer = 0
	}
	
}

if window == 3 {
	state_timer -= 1
}

if window == 3 && window_timer == 5 {
		sound_stop(cur_sound)
	if state_timer <= 45{
		shake_camera(4,4)
       sound_play(asset_get("sfx_absa_cloud_crackle"))
       create_hitbox(AT_DSTRONG,1,x - 40, y - 40)
       create_hitbox(AT_DSTRONG,1,x + 40, y - 40)
	}
	
	if state_timer > 45 && state_timer < 90 {
      		shake_camera(4,6)
      sound_play(asset_get("sfx_absa_cloud_crackle"))
      sound_play(asset_get("sfx_ell_overheat"))
      create_hitbox(AT_DSTRONG,1,x - 40, y - 50)
       create_hitbox(AT_DSTRONG,1,x + 40, y - 50)
       
       move_cooldown [AT_FSPECIAL_2] = 10
	}

	if state_timer >= 90 {
	   shake_camera(4,8)
       sound_play(asset_get("sfx_absa_cloud_crackle"))
       sound_play(asset_get("sfx_ell_overheat"))
       sound_play(asset_get("sfx_ell_steam_release"))
       create_hitbox(AT_DSTRONG,1,x - 40, y - 55)
       create_hitbox(AT_DSTRONG,1,x + 40, y - 55)
       
       move_cooldown [AT_FSPECIAL_2] = 15
	}	
}
}


if  move_cooldown [AT_FSPECIAL_2] == 6  {
	   create_hitbox(AT_DSTRONG,1,x - 30, y - 20)
       create_hitbox(AT_DSTRONG,1,x + 30, y - 20)
        sound_play(asset_get("sfx_ell_eject"))
}

if  move_cooldown [AT_FSPECIAL_2] == 11  {
	   create_hitbox(AT_DSTRONG,1,x - 30, y - 100)
       create_hitbox(AT_DSTRONG,1,x + 30, y - 100)
        sound_play(asset_get("sfx_ell_eject"))
}


if window == 4 {
	       
	            if get_gameplay_time() % 4 == 0 {
               	    spawn_base_dust(x - window_timer*2, y, "dash", 1)
	         		spawn_base_dust(x + window_timer*2, y, "dash", -1)
               }
}

break; 

	



}


#define spawn_base_dust(x, y, name, dir)
var dlen;
var dfx;
var dfg;
var dust_color = 0;

switch (name) {
    default:
    case "dash_start":
        dlen = 21;
        dfx = 3;
        dfg = 2626;
    break;
    case "dash":
        dlen = 16;
        dfx = 4;
        dfg = 2656;
    break;
    case "jump":
        dlen = 12;
        dfx = 11;
        dfg = 2646;
    break;
    case "doublejump":
    case "djump":
        dlen = 21;
        dfx = 2;
        dfg = 2624;
    break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg;
newdust.dust_color = dust_color;
newdust.spr_dir = dir;