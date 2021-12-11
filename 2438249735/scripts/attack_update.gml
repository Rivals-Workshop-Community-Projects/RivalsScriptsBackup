///
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}



var last_window = get_attack_value(attack, AG_NUM_WINDOWS);

if (window == last_window) && attack != AT_EXTRA_1{
  invitimer = 0
}


if attack == AT_NAIR && has_hit && hitpause{
	//window_timer += 0.5
	state_timer += 1

	
	        	if state_timer % 5 == 0{
     		    	  sound_play(asset_get("sfx_ice_shieldup"),false,noone,1.4)
     	   }
     	   
}

if attack != AT_NAIR && hitpause && invitimer == -1{
	if has_hit_player {
		
		if get_gameplay_time() % 2 == 0 {
		target.x -= 4
		} else {
		target.x += 4	
		}
	}

}

if attack == AT_BAIR && window == 1 && window_timer == 1{
	spr_dir *= -1
     	   
}

if !hitpause {
    
    switch attack {
    
         case AT_TAUNT :
         
         vsp /= 1.2
    

               	x += 3*spr_dir
                if window == 3 && window_timer == 12{
                	window_timer = 0
                }	
                
                
          if !taunt_down && window < 4 && state_timer > 40{
           	window = 4 
           	window_timer = 0
           }
           
           if window = 3 {
           	if !free {
           	   hsp += 0.15
           	}
           	   if window_timer % 4 == 0 {
           	   	sound_play(asset_get("sfx_clairen_tip_loop"),false,noone,0.6)
           	   	create_hitbox(AT_TAUNT,1,x,y)
           	   }
           }
           
           
         break ;   
         
         
         
         case AT_EXTRA_1 :
         
         
         if down_hard_pressed && !free{
         	y += 10
         }
         if invisound == 0 {
         	sound_play(asset_get("sfx_bird_nspecial"),false,noone,0.4)
    	     sound_play(sound_get("steath"),false,noone,1)
    	     
    	     if get_player_color(player) == 18 {
		    	     	    sound_stop(sound_get("JCsteath"))
		    	     	    sound_play(sound_get("JCsteath"),false,noone,1.88)
		     }
		     
    	     invisound = -1
         }
         invitimer += 1
               	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
            draw_indicator = false
            can_wall_jump = true
            if (attack_pressed or special_pressed or shield_pressed or taunt_pressed 
            or left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed
            or (jump_pressed ) or invitimer == 60){
                
                invitimer = 1
                                  if free && shield_down {
                  	y += 8
                  	vsp = 0
                  }
                  
                  spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 40, shit5)  
                  

                  sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.4)
                    sound_play(sound_get("steathend"),false,noone,1)
                  set_state(PS_IDLE)
                  destroyed = true
              }
              
              hsp /= 1.1
        
              if left_down && hsp > -8 {
                  hsp -= 0.6
                  x -= 6
                  if !free {
                      spr_dir = -1
                  }
              }

              if right_down && hsp < 8 {
                  hsp += 0.6
                  x += 6
                  if !free {
                      spr_dir = 1
                  }
              }
              

              

              
          if !free {
              djumped = 0

          
          if get_gameplay_time() % 3 == 0 && (left_down or right_down) {
           	 switch get_gameplay_time() % 2 {
    	         case 0:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar2)
    	         break ;
          
    	         case 1:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar3)
    	         break ;
           	 }
          }
          
          if get_gameplay_time() % 15 == 0 && !left_down and !right_down {
           	 switch get_gameplay_time() % 2 {
    	         case 0:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar2)
    	         break ;
          
    	         case 1:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar3)
    	         break ;
           	 }
          }
          
      }
      
      
        if free {
          

             if left_down && hsp > -8 {
                  x += 5
              }

              if right_down && hsp < 8 {
                  x -= 5
              }
              
              
              if down_hard_pressed {
                  y += 2
              }
              
              
          
          
           if get_gameplay_time() % 6 == 0 {
           	 switch get_gameplay_time() % 2 {
    	         case 0:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar2)
    	         break ;
          
    	         case 1:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar3)
    	         break ;
           	 }
          }
      }
      
      
         break ;        
        
    case AT_JAB :
        if has_hit_player {
            
            if window < 4 && hit_player_obj.state_cat == SC_HITSTUN {
                	hit_player_obj.hsp = (x + 20*spr_dir - hit_player_obj.x) / 3
		            hit_player_obj.vsp = ((y) - 20 - hit_player_obj.y) / 3
            }
            
            if window == 2 && window_timer == 6 {
                if left_down and !right_down {
                    spr_dir = 1
                }
                if !left_down and right_down {
                    spr_dir = -1
                }
            }
            if window == 3 && window_timer == 6 {
                sound_play(asset_get("sfx_swipe_heavy2"))
                                  sound_play(asset_get("sfx_bird_nspecial"),false,noone,0.4)
                hsp = -4*spr_dir
                vsp = -6
                window = 4
                window_timer = 0
            spawn_hit_fx(x  , y, ds) 
            	
            }
            

            
        }
      
                  if window == 4 {
                lockx = x
                locky = y
                 fancyfx();
                 
                  if get_player_color(player) == 18 && !hitpause && window_timer == 1 {
		    	     	    sound_stop(sound_get("JCsteath"))
		    	     	    sound_play(sound_get("JCsteath"),false,noone,1.88)
		            }
		            
                if window_timer == 17 {
                	 move_cooldown[AT_FSPECIAL_2] = 0	
                    set_attack (AT_EXTRA_1)
                    invitimer = 0
                    djumped = 1
                    invisound = -1
                    
                }
            }
            
    break ;
    
    
     
        
    case AT_DTILT :
     if has_hit_player && window < 4 {
     	window = 4
     	window_timer = 0
     }
     
     if window == 1 && window_timer == 1 {
     	  sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1)
     }
     
     if window == 1 && window_timer == 6 {
     	  sound_play(sound_get("swingw1"),false,noone,0.4)
     }
     
    break ;      
     
     
     case AT_FTILT :
     if window == 1 && window_timer == 1 {
     	  sound_play(asset_get("sfx_swipe_weak1"),false,noone,1)
     }
     break ;   
     
     case AT_UTILT :
     if window == 1 && window_timer == 1 {
     	  sound_play(asset_get("sfx_swipe_weak2"),false,noone,1)
     }
     
     
     if window == 1 && window_timer == 7 {
     	  sound_play(sound_get("swingw1"),false,noone,1)
     }
     
    break ; 
    
    case AT_FSTRONG :
    can_move = false
    can_fast_fall = false
    vsp /= 2
     if window == 2 && window_timer == 4 {
     	  sound_play(asset_get("sfx_ori_dtilt_perform"),false,noone,1)
     }
     
    break ; 
    
    
     case AT_USTRONG :
     if window == 2 && window_timer == 4 {
     	  sound_play(asset_get("sfx_ori_glide_featherout"),false,noone,1)
     }
     
    break ; 
    
    
     case AT_DSTRONG :
     if window_timer == 7 or window_timer == 12 {
     	  sound_play(sound_get("hs"),false,noone,1)
     }
     
     if window == 1 {
     	     switch get_gameplay_time() % 2 {
    	         case 0:
	 	         spawn_hit_fx(x - 160 - 20 + random_func(2,40,true) , y + 12 - random_func(3,60,true), lpar2)
	 	          spawn_hit_fx(x + 160 - 20 + random_func(2,40,true) , y + 12 - random_func(3,60,true), lpar2)
    	         break ;
          
    	         case 1:
	 	         spawn_hit_fx(x - 160 - 20 + random_func(2,40,true) , y  - random_func(3,60,true), lpar1)
	 	         spawn_hit_fx(x + 160 - 20 + random_func(2,40,true) , y  - random_func(3,60,true), lpar1)
    	         break ;
           	 }
     }
     
     if window_timer == 18 {
     	shake_camera(4,4)
     	 sound_play(sound_get("hs2"),false,noone,1.5)
     	                   spawn_hit_fx(x  , y, ds)  
     	                   
     	        set_attack(AT_FSTRONG)
     	        window = 1
     	        window_timer = 11
     	        
     	        if !left_down and !right_down {
                    spr_dir *= -1
                    x -= 140 * spr_dir
                }
                
     	        if left_down and !right_down {
                    spr_dir = 1
                    x -= 140
                }
                
                if !left_down and right_down {
                    spr_dir = -1
                    x += 140
                }
        spawn_hit_fx(x  , y - 30, shit5)          
     }
     
    break ; 
    
    
    
     case AT_DATTACK :
     

        if window == 1 {
     	if window_timer == 8 {
     		    	  sound_play(asset_get("sfx_ice_shieldup"),false,noone,1.4)
     	}
        }
     	
     	
     if window == 2 {
     	if window_timer == 2 or window_timer == 4 {
     		    	  sound_play(asset_get("sfx_ice_shieldup"),false,noone,1.4)
     	}
     	
     	   if window_timer < 8 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
                	hit_player_obj.x += (x + 60*spr_dir - hit_player_obj.x) / 3
		            hit_player_obj.vsp = ((y) - 20 - hit_player_obj.y) / 2
            }
            
            
     }
 
      if window == 3 {
     	if window_timer == 3 {
     		    	  sound_play(asset_get("sfx_ice_on_player"),false,noone,0.7)
     	}
     }
     
     
     break ;    


     case AT_NAIR :
     
      if window == 1 && window_timer == 1 {
     		    	  sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1)
        }
     
     
         if window == 3 {
        	if window_timer == 0 or state_timer % 3 == 0{
     		    	  sound_play(asset_get("sfx_ice_shieldup"),false,noone,1.4)
     	   }
        }
     
     break ; 
     
     
     
     case AT_DAIR :
     
     if down_down {
     	fall_through = true
     }
     if window == 1 && window_timer == 1 {
     	  sound_play(sound_get("swingw1"),false,noone,1)
     }
     
     
     if window == 1 && window_timer == 12 {
     	  sound_play(sound_get("swingh"),false,noone,1)
     }
     
     
     can_wall_jump = true
     	
	if has_hit && window < 4 && !hitpause {
		window = 4
		window_timer = 0
	
	}
	
	if window == 4 && window_timer == 1 && has_hit && !hit_pause{
		y -= 6
		vsp = -9
	}
	    if (y > room_height/2 + 300){
    	can_shield = true
    }
    
    break ;


     
     
     
     case AT_NSPECIAL:    
     move_cooldown[AT_NSPECIAL] = 30
     if window == 1 && window_timer == 1 && !free {
        vsp = -8
     }

     if window == 2 && window_timer == 1 {
     	  sound_play(asset_get("sfx_spin"),false,noone,1)
     }
     
     
     break ; 

     case AT_FSPECIAL:    
                 move_cooldown [AT_FSPECIAL] = 999
     hsp /= 1.05
     if window == 1 && window_timer == 1 {
         sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
         set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
     }


     
     if window == 2 && window_timer == 1 {
     	sound_play(asset_get("sfx_spin"),false,noone,1)
     	  vsp = -0.5
     }
     
     if window == 3 {
     	fancyfx();
     	vsp = -0.5
     	
             
     }
     
     if has_hit_player && window < 4 {
     	
     	if get_player_color(player) == 18 && !hitpause {
		    	     	    sound_stop(sound_get("JCsteath"))
		    	     	    sound_play(sound_get("JCsteath"),false,noone,1.88)
		}
		            
     	djumps = 0
     	move_cooldown [AT_FSPECIAL] = 999
     	          set_attack (AT_JAB)
     	           move_cooldown[AT_FSPECIAL_2] = 0	
     	window = 4
     	window_timer = 1
     	vsp = -8
     	hsp = 6 * spr_dir
     }
     if window == 4 {
     	can_wall_jump = true
     }
     
     break ; 


     case AT_DSPECIAL:  
       move_cooldown[AT_DSPECIAL] = 2
           	 if down_down or special_down {
      	 	fall_through = true 
      	 }
      	 
     can_fastfall = false
      if window == 1 && window_timer == 1 {
      	 sound_play(sound_get("swingw2")); 
      	 

      	 if !free {
      	 	

      	 	
      	 	sound_play(asset_get("sfx_bird_sidespecial_start")); 
      	 	
      	 	      spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 30, shit1)  
                  
      	 	vsp = -30
      	 	
      	 	if left_down && !right_down {
      	 		hsp = -20 
      	 	}
      	 	
      	 	if !left_down && right_down {
      	 		hsp = 20 
      	 	}
      	 	
      	 } else {
      	 	vsp = -20
      	    if left_down && !right_down {
      	 		hsp = -10 
      	 	}
      	 	
      	 	if !left_down && right_down {
      	 		hsp = 10 
      	 	}
      	 	
      	 }
      	 
        }
        
        if window == 1 {
      	 	vsp /= 1.15
      	 	hsp /= 1.15
      	 	fancyfx();
      	 	if window_timer == 17 {
      	 		sound_play(sound_get("swingh"));
      	 	}
        }
        
        if window == 2 {
        	
        	if  has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
                	hit_player_obj.hsp = (x + 20*spr_dir - hit_player_obj.x) / 10
		            hit_player_obj.vsp = ((y) - 10 - hit_player_obj.y) / 2
            }
            
            
        	fancyfx();
        	vsp = 18
        	
        if !has_hit_player {	
        if (y > room_height/2 + 300){
        	can_shield = true
        }
        	can_wall_jump = true
        } else {
        	
        	if (y > room_height/2 + 320){
        	set_attack(AT_JAB)
        	sound_play(asset_get("sfx_swipe_heavy2"))
                                  sound_play(asset_get("sfx_bird_nspecial"),false,noone,0.4)
                hsp = -4*spr_dir
                vsp = -6
                window = 4
                window_timer = 0
            spawn_hit_fx(x  , y, ds) 
        	}
        	
        }
        	if !free {
     
      	 	
        		              	     create_hitbox(AT_NSPECIAL,2,x + 50,y - 22)
        		              	     create_hitbox(AT_NSPECIAL,2,x - 50,y - 22)
        		sound_play(asset_get("sfx_bird_downspecial_end"),false,noone,1)
        		window = 3 
        		window_timer = 0
        		shake_camera(2,4)
        	}
        }
        
        if window == 4 {
        	    if has_hit {
                 fancyfx();
                if window_timer == 19 {
                	attack_end();
             sound_play(asset_get("sfx_bird_nspecial"),false,noone,0.4)
    	     sound_play(sound_get("steath"),false,noone,1)
    	     
    	     if get_player_color(player) == 18 {
		    	     	    sound_stop(sound_get("JCsteath"))
		    	     	    sound_play(sound_get("JCsteath"),false,noone,1.88)
		     }
		    	          
                	 move_cooldown[AT_FSPECIAL_2] = 0	
                    set_attack (AT_EXTRA_1)
                    invitimer = 0
                    djumped = 1
                    invisound = -1
                }  
      	     	}   
        }
     
     break ; 
  
  
       case AT_USPECIAL: 
       
          	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
          	

               can_fast_fall = false 
        can_wall_jump = true
        
        if window == 3 {
        	
        if window_timer == 1 {
       	sound_play(sound_get("Uspec1"),false,noone,0.6); 
        }
        
        	       		//mask_index = asset_get("empty_sprite");
        	       
         hsp /= 1.4
        vsp = -0.5
        shake_camera(1,4)
        
        
        
        }
        
        if window == 3 && window_timer == 15 {
        	  	 sound_play(sound_get("swingw2"));  
                  spawn_hit_fx(x  , y - 40, shit5)  
                  
        if choosendir = 1  {
            vsp = -2
            hsp = 14*spr_dir
 
       	}
       	
       	if choosendir = 2  {
            vsp = -16
            hsp = 8*spr_dir

       	}
       	
       	if choosendir = 3  {
            vsp = 14
            hsp = 8*spr_dir

       	}
       	

        }
        
        if window >= 4 {
        	
            fall_through = true
        	
        	if window == 4 {
        		       switch state_timer % 3 + 1 {
                    	case 1:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar2)
                    	break ;
                 
                    	case 2:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar3)
                    	break ;
                    	    	
                
                    	case 3:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar5)
                    	break ;
                	 }
        		x += 4*spr_dir
        	if window_timer % 6  == 0 {
        		 sound_play(sound_get("swingw1")); 
        		 state_timer = 2
        	}
        	
        	if window_timer % 6  == 3 {
        		 sound_play(sound_get("swingw2")); 
        	}
        	
        	
        	if window_timer == 21 {
        		sound_play(sound_get("swingh")); 
        		state_timer = 2
        	}
        	
        	if  has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
                	hit_player_obj.x += (x + 40*spr_dir - hit_player_obj.x) / 4 
		            hit_player_obj.y += ((y) - 30 - hit_player_obj.y) / 4
            }
            
        		
        	}
        	hsp /= 1.1
        	vsp /= 1.1
        	if window < 6 && vsp != 0{
        		vsp -= 0.4
        	}
        		can_move = false 
        	if window == 6 && vsp > 0 {
        		vsp = 0
        	}
        }
        
       if window == 1 {
       	
       	prat_land_time = 12;
       	
       	if window_timer == 1 {
       	choosen_dirx = x
       	choosen_diry = y 
       	sound_play(sound_get("Uspec1"),false,noone,0.6); 
       	} else {
       		
       		if !up_down and !down_down {
       		choosen_dirx += (right_down - left_down)*10
       		} else {
       		choosen_dirx += (right_down - left_down)*6	
       		}
       		
       		if !left_down and !right_down {
       		choosen_diry -= (up_down - down_down)*10
       		} else {
       		choosen_diry -= (up_down - down_down)*6
       		}
       		
       		if state_timer % 2 == 0 {
       			spawn_hit_fx( floor(choosen_dirx) - 10 + random_func(1,20,true) , floor(choosen_diry - 20) - 10 + random_func(2,20,true) , lpar1)   
       			
       		}
       		
       		if state_timer % 3 == 0 {
       			spawn_hit_fx( floor(choosen_dirx) - 10 + random_func(1,20,true)  , floor(choosen_diry - 20) - 10 + random_func(2,20,true), lpar2)   
       			
       		}
       		
       		if state_timer % 3 == 1 {
       			spawn_hit_fx( floor(choosen_dirx) - 10 + random_func(1,20,true)  , floor(choosen_diry - 20) - 10 + random_func(2,20,true), lpar4)   
       			
       		}
       		
       	}
       	
       	
       	//if window_timer == 10 && special_down {
       	//	prat_land_time = 12;
       	//	window = 3
       	//	window_timer = 0
       	//}
       	hsp /= 1.4
        vsp = 0
        can_shield = true
        
        
        if window_timer == 25 {
       	       		sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
       		      	 sound_play(sound_get("swingw2")); 
       		      	 
       		     spawn_hit_fx(x   , y - 30 , shit1)   
                spawn_hit_fx(floor(x + floor(choosen_dirx))/2   , floor(y + floor(choosen_diry))/2 - 30, shit1)     
                spawn_hit_fx(floor(x + floor(choosen_dirx*8))/9   , floor(y + floor(choosen_diry*8))/9 - 30, shit1)    
                //spawn_hit_fx(floor(x*2 + floor(choosen_dirx))/3   , floor(y*2 + floor(choosen_diry))/3 - 30, shit1)    
                
       		      spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(floor(x + floor(choosen_dirx))/2  , floor(y + floor(choosen_diry))/2 - 30, lpar4)              
                  spawn_hit_fx(floor(x + floor(choosen_dirx))/2   , floor(y + floor(choosen_diry))/2 - 30, lpar4)   
                  
                  spawn_hit_fx(x  , y - 40, shit5)  	
                  
         x = floor(choosen_dirx)
       	 y = floor(choosen_diry)
     	  
     	 vsp = -4
     	 
     	 prat_land_time = 12
     	 
     	      if (place_meeting(x+10*spr_dir, y, asset_get("par_block"))) {
                 set_state (PS_PRATFALL)
                 window_timer = 1
                 vsp = -6
                  spawn_hit_fx (x+10*spr_dir, y - 20, 14)
                  sound_play(sound_get("slicew2")); 
                  sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,1,0.8 + random_func(1,5,true)/10)
                  shake_camera (2,4)
                  move_cooldown[AT_USPECIAL_2] = 10
             }
       }
       
       
       
       }
       
       
       if window == 2 {

       	 
         if window_timer == 20 or (window_timer > 5 && !free) {
         	set_state(PS_PRATFALL)
         }
       	
       }
       
       
       break ;  
       
     
    }
}


#define fancyfx {
                	 	if state_timer % 2 == 0 {
	 		             	spawn_hit_fx(x - 20 + random_func(4,40,true) , y - 16 - random_func(5,40,true), lpar1)
	                    }
	         
                	 switch state_timer % 3 + 1 {
                    	case 1:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar2)
                    	break ;
                 
                    	case 2:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar3)
                    	break ;
                    	    	
                
                    	case 3:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar5)
                    	break ;
                	 }
}