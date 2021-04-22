///
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}



var last_window = get_attack_value(attack, AG_NUM_WINDOWS);

if (window == last_window) && attack != AT_EXTRA_1{
  invitimer = 0
}


if attack == AT_NAIR && has_hit && hitpause{
	window_timer += 0.5
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
            }
            

            
        }
      
                  if window == 4 {
                lockx = x
                locky = y
                 fancyfx();
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
     
     if window_timer == 18 {
     	shake_camera(4,4)
     	 sound_play(sound_get("hs2"),false,noone,1.5)
     	                   spawn_hit_fx(x  , y, ds)  
     	                   
     	        set_attack(AT_FSTRONG)
     	        window = 2
     	        window_timer = 0
     	        
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
     	if window_timer == 11 {
     		    	  sound_play(asset_get("sfx_ice_shieldup"),false,noone,1.4)
     	}
        }
     	
     	
     if window == 2 {
     	if window_timer == 7 or window_timer == 11 {
     		    	  sound_play(asset_get("sfx_ice_shieldup"),false,noone,1.4)
     	}
     	
     	   if window_timer < 10 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
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
     move_cooldown[AT_NSPECIAL] = 20
     if window == 1 && window_timer == 1 && !free {
        vsp = -6
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
     	
     	    if (place_meeting(x+10*spr_dir, y, asset_get("par_block"))) {
                 set_attack (AT_FAIR)
                 window = 1
                 window_timer = 10
                 vsp = -9
                 hsp = -5*spr_dir
                  spawn_hit_fx (x+10*spr_dir, y - 20, 305)
                  sound_play(sound_get("slicew2")); 
                  shake_camera (2,4)
             }
             
     }
     
     if has_hit_player && window < 4 {
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
		            hit_player_obj.vsp = ((y) + 10 - hit_player_obj.y) / 2
            }
            
            
        	fancyfx();
        	vsp = 18
        if (y > room_height/2 + 300){
        	can_shield = true
        }
        	can_wall_jump = true
        	
        	if !free {
        		              	     create_hitbox(AT_NSPECIAL,2,x + 50,y - 22)
        		              	     create_hitbox(AT_NSPECIAL,2,x - 50,y - 22)
        		sound_play(asset_get("sfx_bird_downspecial_end"),false,noone,1)
        		window = 3 
        		window_timer = 0
        		shake_camera(2,4)
        	}
        }
     
     break ; 
  
  
       case AT_USPECIAL: 
       
       
               can_fast_fall = false 
        can_wall_jump = true
        
        if window == 3 {
         hsp /= 1.4
        vsp = -0.5
        shake_camera(1,4)
        
        if left_down && !right_down {
        	spr_dir = -1
        }
        if !left_down && right_down {
        	spr_dir = 1
        }
        
        
        }
        
        if window == 3 && window_timer == 15 {
        	  	 sound_play(sound_get("swingw2"));  
                  spawn_hit_fx(x  , y - 40, shit5)  
                  
        if !up_down  {
            vsp = 0
            hsp = 20*spr_dir
       	}
       	
       	
       	if up_down  {
            vsp = -16
            hsp = 20*spr_dir
       	}
       	
       	
        }
        
        if window >= 4 {
        	

        	
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
        		can_move = false 
        		if vsp > 0 {
        		vsp = 0
        	}
        }
        
       if window == 1 {
       	
       	prat_land_time = 24;
       	
       	if window_timer == 10 && special_down {
       		prat_land_time = 12;
       		window = 3
       		window_timer = 0
       	}
       	hsp /= 1.4
        vsp = 0
        can_shield = true
        
        if left_down && !right_down {
        	spr_dir = -1
        }
        if !left_down && right_down {
        	spr_dir = 1
        }
        
        if window_timer == 1 {
        	sound_play(sound_get("Uspec1"),false,noone,0.6); 
        }
        
        if window_timer == 15 {
       	       		sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
       		      	 sound_play(sound_get("swingw2")); 
       		      spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 40, shit5)  	
       	
       	
       	if !up_down  {
       		uspec = 0
                x += 130*spr_dir
                hsp = 20*spr_dir

                set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -26);
                set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -26);
       	}
       	
       	
       	if up_down  {
       		uspec = 1
                x += 130*spr_dir
                hsp = 20*spr_dir
                y -= 60
                vsp = -20
                

                 set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 26);
                set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 66);
       	}
       	
       	       	
       	
       	
       }
       }
       
       
       if window == 2 {
       	
       	if window_timer <= 1 {
       		if uspec = 0 {
       			spawn_hit_fx(x  , y - 35 - random_func(1,10,true), shit1)              
                spawn_hit_fx(x - 50*spr_dir  , y - 30 - random_func(2,10,true), shit1)   
                spawn_hit_fx(x - 100*spr_dir  , y - 30 - random_func(3,10,true), shit1)              
                
                spawn_hit_fx(x - 30*spr_dir  , y - 30, lpar4)              
                spawn_hit_fx(x - 60*spr_dir  , y - 30, lpar4)   
                spawn_hit_fx(x - 120*spr_dir  , y - 30, lpar4)              
                spawn_hit_fx(x - 150*spr_dir  , y - 30, lpar4)   
                
                 hsp = 6*spr_dir
                vsp = -3
       		} else {
       			spawn_hit_fx(x - 10*spr_dir  , y - 15 - random_func(1,10,true), shit1)              
                spawn_hit_fx(x - 50*spr_dir  , y + 5 - random_func(2,10,true), shit1)   
                spawn_hit_fx(x - 100*spr_dir  , y + 45 - random_func(3,10,true), shit1)              
                
                spawn_hit_fx(x - 30*spr_dir  , y - 10, lpar4)              
                spawn_hit_fx(x - 60*spr_dir  , y + 10, lpar4)   
                spawn_hit_fx(x - 120*spr_dir  , y + 30, lpar4)              
                spawn_hit_fx(x - 150*spr_dir  , y + 50, lpar4)   
                
                hsp = 5*spr_dir
                vsp = -6
       		}
       	}
       	
         if window_timer == 25 or (window_timer > 5 && !free) {
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