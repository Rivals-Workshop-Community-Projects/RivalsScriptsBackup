///

if attack == AT_DSPECIAL && hbox_num == 3 {
	plasma_safe = true
	with player_id.thundervictim {
		
		other.x = x
		other.y = y - 30
		
		if vsp < 0 {
			other.hit_priority = 9
			invincible = false
		}
		
		if y + vsp > room_height {
			other.kb_scaling = 1.4
			vsp = -4
			y = room_height - 60
			other.hit_priority = 9
		}
	}
	
	
}

if attack == AT_TAUNT && hbox_num == 5 && get_gameplay_time() <= 200 {
 plasma_safe = true
 

 vsp *= 1.01
 if get_gameplay_time() == 2 {
 	spr_dir *= -1
 	vsp = -2
 }
 	if get_gameplay_time() == 90 {
	     hsp = -12*spr_dir
	     vsp = 0
	}
	
	 if get_gameplay_time() < 90 {
	     hsp -= 0.1*spr_dir
	     vsp /= 1.01
	}
	
	if get_gameplay_time() >= 100 {
		 hsp *= 1.05
	      vsp -= 0.2
	}
	
 
       spawn_hit_fx( x + 40 - random_func(5, 80, true) , y + 20 -  random_func(6, 60, true) , hpar1)
      spawn_hit_fx( x + 40 - random_func(3, 80, true) , y + 20 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 40 - random_func(1, 80, true) , y + 20  -  random_func(2, 60, true) , hpar3)
      
}

if attack == AT_TAUNT && hbox_num <= 4 {
 plasma_safe = true
 
 if player_id.jump_pressed = true {
 	destroyed = true
 }
 
 x = player_id.thundervictim.x 
 y = player_id.thundervictim.y - hitbox_timer*5 + 160 
 
 if hbox_num == 1 {
 	image_index = 5
 	
 	if hitbox_timer == 1 or hitbox_timer == 89{
	   spawn_hit_fx(x + 22*spr_dir,y - 50,27)
    }
    
    if hitbox_timer > 68 && hitbox_timer < 75 {
    	if player_id.thundervictim.up_down = true {
    		destroyed = true
    		spawn_hit_fx(x + 18*spr_dir,y - 54,305)
    		player_id.move_cooldown[AT_NSPECIAL_2] = 15
    		sound_play(asset_get("sfx_coin_collect"),false,noone,0.5,1.3 + random_func(2,2,true)/10);
    		
    		   	with player_id.thundervictim {
    		       take_damage(player,-1,-1)
    	        }
    	    with player_id {
    	    	window = 9
    	    	window_timer = 0
    	    }
    	
    	}
    	
 
    	
    }

 }


 if hbox_num == 2 {
 	image_index = 4
 	
 	if hitbox_timer == 1 or hitbox_timer == 89 {
	   spawn_hit_fx(x - 25*spr_dir,y - 50,27)
    }
    
    if hitbox_timer > 68 && hitbox_timer < 75 {
    	if player_id.thundervictim.down_down= true {
    		destroyed = true
    		spawn_hit_fx(x - 20*spr_dir,y - 54,305)
    		player_id.move_cooldown[AT_NSPECIAL_2] = 15
    		sound_play(asset_get("sfx_coin_collect"),false,noone,0.5,0.8 + random_func(2,2,true)/10);
    	
    	
    	    	with player_id.thundervictim {
    		       take_damage(player,-1,-1)
    	        }
    	    with player_id {
    	    	window = 9
    	    	window_timer = 0
    	    }
    	
    	}	
    }
    
    
 }
	
 if hbox_num == 3 {
 	image_index = 3
 	
 	 if hitbox_timer == 1  or hitbox_timer == 89{
     	spawn_hit_fx(x - 60*spr_dir,y - 50,27)
    }
    
    if hitbox_timer > 68 && hitbox_timer < 75 {
    	if player_id.spr_dir == 1 {
    	        if player_id.thundervictim.left_down = true {
    	        	destroyed = true
    	        	spawn_hit_fx(x - 60*spr_dir,y - 54,305)
    	        	player_id.move_cooldown[AT_NSPECIAL_2] = 15
    	        	sound_play(asset_get("sfx_coin_collect"),false,noone,0.5,1 + random_func(2,2,true)/10);
    	        
    	        
    	      	with player_id.thundervictim {
    		       take_damage(player,-1,-1)
    	        }
    	    with player_id {
    	    	window = 9
    	    	window_timer = 0
    	    }
    	        }
    	        
    	
        } else {
        	    if player_id.thundervictim.right_down = true {
    	        	destroyed = true
    	        	spawn_hit_fx(x + 60*spr_dir,y - 54,305)
    	        	player_id.move_cooldown[AT_NSPECIAL_2] = 15
    	        	sound_play(asset_get("sfx_coin_collect"),false,noone,0.5,1.1 + random_func(2,2,true)/10);
    	               	with player_id.thundervictim {
    	            	       take_damage(player,-1,-1)
    	                    }
    	                with player_id {
    	                	window = 9
    	                	window_timer = 0
    	                }    	        
        	    	
        	    	
        	    }
        }
    }
    
 }		
 
  if hbox_num == 4 {
 	image_index = 6
 
 	if hitbox_timer == 1  or hitbox_timer == 89{
	   spawn_hit_fx(x + 60*spr_dir,y - 50,27)
    }
    
     	if hitbox_timer > 68 && hitbox_timer < 75 {
 	    	if player_id.spr_dir == 1 {
    	            if player_id.thundervictim.right_pdown= true {
    	            	destroyed = true
    	            	spawn_hit_fx(x - 60*spr_dir,y - 54,305)
    	            	player_id.move_cooldown[AT_NSPECIAL_2] = 15
    	            	sound_play(asset_get("sfx_coin_collect"),false,noone,0.5,1 + random_func(2,2,true)/10);
    	            	with player_id.thundervictim {
    	            	       take_damage(player,-1,-1)
    	                    }
    	                with player_id {
    	                	window = 9
    	                	window_timer = 0
    	                }   
    	            }
        } else {
        	  if player_id.thundervictim.left_down = true {
    	        	destroyed = true
    	        	spawn_hit_fx(x + 60*spr_dir,y - 54,305)
    	        	player_id.move_cooldown[AT_NSPECIAL_2] = 15
    	        	sound_play(asset_get("sfx_coin_collect"),false,noone,0.5,1.1 + random_func(2,2,true)/10);
    	        	with player_id.thundervictim {
    	            	       take_damage(player,-1,-1)
    	                    }
    	                with player_id {
    	                	window = 9
    	                	window_timer = 0
    	                }   
    	        }
        }
 	} 
 	
    
 }		
 
}

if attack == AT_DSTRONG {

if player_id.hitpause == true {
	destroyed = true
}

if hbox_num == 1 && sentrymode == 0 {
	
	
	    if get_gameplay_time() % 2 == 0{
    	sound_stop(asset_get("sfx_clairen_tip_weak"))
    	sound_play(asset_get("sfx_clairen_tip_weak"),false,noone,1)
    	}
    	
    	
    	vsp -= 0.1
    	vsp *= 1.06
    	if hitbox_timer == 1 {
    		vsp = 1.4
    		if x > player_id.x {
    			hsp = 1
    			spr_dir = 1
    		} else {
    			hsp = -1
    			spr_dir = -1
    		}
    		
    	}
    	
     spawn_hit_fx( x + 20 - random_func(3, 40, true) , y + 20 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) , y + 20  -  random_func(2, 60, true) , hpar3)
      
      hsp *= 1.05
      
    }
    
        if hbox_num == 3 {
        	
                           if ((place_meeting(x + hsp, y + vsp , asset_get("par_block")))) {
                                 y += vsp*2
                                 x += hsp*2
                                  sound_play(asset_get("sfx_ori_energyhit_weak"))
                      
                              
                          } 
    
        	 if hitbox_timer == 1{
        	 	    	hsp = (player_id.thundervictim.x - x)/12
                       vsp = (player_id.thundervictim.y - 30 - y)/12
        	 }
        }
        
    if hbox_num == 1 && sentrymode == 1 {
    	
    	player_id.move_cooldown[AT_DSTRONG] = 2  
    	
    nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.hitbox_timer > 2  {
            
        if nearbyhitbox.x < x {
            if hsp < 5  {     
                  hsp += 2
                }
                x += 3
	   	     } else {
               if hsp > -5 {     
                 hsp -= 2
               }
                x -= 3
	   	     }
	   	 if nearbyhitbox.y < y {
            if vsp < 5  {     
                  vsp += 2
                }
                x += 3
	   	     } else {
               if vsp > -5 {     
                 vsp -= 2
               }
                x -= 3
	   	    }   
           
    
	 }
	    
	    if hitbox_timer = 4*6 {
	    	sound_stop(sound_get("dronefire"))
	    	sound_play(sound_get("dronefire"))
	    }
	    
	    sprite_index = sprite_get("dstrong2")
    	image_index = hitbox_timer/4
    	
    	if image_index < 6 {
    		if get_gameplay_time() % 2 == 1 {
    			hitbox_timer -= 1
    		}
    	} 
    	
    	if image_index > 23 {
    		hitbox_timer = 999
    		sound_play(asset_get("sfx_clairen_tip_weak"))
    	}
    	
    	if hitbox_timer == 1 {
    	sound_stop(asset_get("sfx_clairen_tip_weak"))
    	   	vsp = -6
    		if x > player_id.x {
    			hsp = 6
    		} else {
    			hsp = -6
    		}
    		
    	 hitbox_timer += (x % 8)
     	}
    	
    	if image_index < 17 {
    		
    	if hitbox_timer == 4*7 or hitbox_timer == 4*10 or hitbox_timer == 4*13 {
    		sound_stop(asset_get("sfx_holy_lightning"))
    		sound_play(asset_get("sfx_holy_lightning"),false,noone,0.7)
    		spawn_hit_fx(x,y,305)
    		create_hitbox(AT_DSTRONG,3,x,y)
    	}
    	
    	x += floor((player_id.thundervictim.x + 120*spr_dir + 30 - randoy -  x)/20)
        y += floor((player_id.thundervictim.y - 40 + randox - y)/20)
    	}
    if get_gameplay_time() % 2 {
    	sound_stop(asset_get("sfx_clairen_tip_loop"))
    	sound_play(asset_get("sfx_clairen_tip_loop"),false,noone,0.6)
     spawn_hit_fx( x + 20 - random_func(3, 40, true) , y + 20 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) , y + 20  -  random_func(2, 60, true) , hpar3)
    }

      
    }
    
}


if attack == AT_FSTRONG {
          spawn_hit_fx( x + 20 - random_func(3, 40, true) , y + 20 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) , y + 20 -  random_func(2, 60, true) , hpar3)
}

if attack == AT_EXTRA_1 {
	
	
	///woag
	uspecialHudX = clamp(x, view_get_xview() + uspecialMinX , (view_get_xview() + view_get_wview()) - uspecialMaxX )
		uspecialHudY = clamp(y, view_get_yview() + uspecialMinY, (view_get_yview() + view_get_hview()) - (44 + uspecialMaxY ))
		uspecialNum = 0
		if uspecialHudX == (view_get_xview() + uspecialMinX) { //Left
			uspecialNum = 3
		}
		if uspecialHudX == ((view_get_xview() + view_get_wview()) - uspecialMaxX) { //Right
			uspecialNum = 6
		}
		if uspecialHudY == (view_get_yview() + uspecialMinY) { //Up
			uspecialNum += 1
		}
		if uspecialHudY == ((view_get_yview() + view_get_hview()) - (44 + uspecialMaxY )) { //Down
			uspecialNum += 2
		}
		switch(uspecialNum) {
			//Cardinal
			case 0:
			break;
			case 1: //Up
				uspecialRot= 180
				uspecialShape = 0
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 2: //Down
				uspecialRot= 0
				uspecialShape = 0
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;			
			case 3: //Left
				uspecialRot= 270
				uspecialShape = 0
				uspecialHudX = (view_get_xview() + 33)
			break;
			case 6: //Right
				uspecialRot= 90
				uspecialShape = 0
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
			break;
			
			//Diagonal
			case 4: //Left Up
				uspecialRot= 270
				uspecialShape = 1
				uspecialHudX = (view_get_xview() + 33)
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 5: //Left Down
				uspecialRot= 0
				uspecialShape = 1
				uspecialHudX = (view_get_xview() + 33)
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;			
			
			case 7: //Right Up
				uspecialRot= 180
				uspecialShape = 1
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 8: //Right Down
				uspecialRot= 90
				uspecialShape = 1
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;
		}
	
	////
    plasma_safe = true
///goodbye clairen
          
    if hsp > 0 {
        spr_dir = 1
    }
    if hsp < 0 {
        spr_dir = -1
    }
    
    
    
    with asset_get("pHitBox") {
    	
    	nearbyhitbox = collision_circle( x, y , 32, other, true, true ) 
    	
	if nearbyhitbox != noone && (other.hbox_num == 1 or (other.hbox_num == 2 && other.damage == 4) ) {

		    
       	// if nearbyhitbox.type == 2 {
	   	//    if hitbox_timer > 10 {
	   	//    sound_stop(asset_get("sfx_absa_singlezap1"))
		//    sound_play(asset_get("sfx_absa_singlezap1"))
		//    
		//     if floor(x) % 3 == 0 {
        //       spawn_hit_fx( (x + nearbyhitbox.x)/2,(y + nearbyhitbox.y)/2 , fxspark1)
        //     }
        //    
        //     if floor(x) % 3 == 1 {
        //       spawn_hit_fx( (x + nearbyhitbox.x)/2,(y + nearbyhitbox.y)/2 , fxspark2)
        //     }
        //       
        //     if floor(x) % 3 == 2{
        //       spawn_hit_fx( (x + nearbyhitbox.x)/2,(y + nearbyhitbox.y)/2 + 20 , fxspark3)
        //     }//

	   	//    }
	   	//    
	   	//    hitbox_timer = 5
        //    
        //     if nearbyhitbox.x < x {
        //        if hsp < 5  {     
        //          hsp += 2
        //        }
        //        x += 3
	   	//     } else {
        //       if hsp > -5 {     
        //         hsp -= 2
        //       }
        //        x -= 3
	   	//     }
	   	//     
        //     if vsp > -5 {  
        //         y -= 6
        //          vsp -= 2
        //    }
	   	//     
	   	//     
	    //}
        
		if type == 1 && hit_priority > 0 && throws_rock != 1.111{
			
			if player != other.orig_player {
				other.player_id.move_cooldown[AT_EXTRA_2] = 60
			}
					other.hit_priority = 9 
		other.damage = 4
        other.kb_scaling = 0.4
        other.hit_effect_x = 0
        other.spr_dir = spr_dir
		    other.player = player
		    
			throws_rock = 1.111
			
			with other {
				
				
			for (var i = 1; i < 20; i++) can_hit[i] = true
			sound_stop(asset_get("sfx_shovel_hit_light1"));	
			sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.8);
			
			if vsp == 0 {
				y -= 10
			}
			 
			 
			
			  if random_func(4,3,true) == 0 {
                spawn_hit_fx( x + 45*spr_dir , y - 18 , fxspark1)
              }
             
              if random_func(4,3,true) == 1 {
                spawn_hit_fx( x  + 30*spr_dir , y - 10 , fxspark2)
              }
                
              if random_func(4,3,true) == 2{
                spawn_hit_fx( x + 50*spr_dir , y - 16 , fxspark3)
              }
  
			}
			


		    
		    other.hitbox_timer = 0
               if attack != AT_JAB {
               if (kb_angle > 0 and kb_angle <= 45) or
               kb_angle  == 361{
                   other.hsp = 6 * spr_dir
                   other.vsp = -3
               } 
               
               if kb_angle > 45 and kb_angle <= 90 {
                   other.hsp = 2 * spr_dir
                   other.vsp = -8
               }  
               
               if kb_angle > 90 and kb_angle <= 135 {
                   other.hsp = -2 * spr_dir
                   other.vsp = -8
               }  
               
               if kb_angle > 135 and kb_angle <= 180 {
                   other.hsp = -6 * spr_dir
                   other.vsp = -6
               }  
               
              if kb_angle > 180 and kb_angle <= 215 {
                   other.hsp = -5 * spr_dir
                   other.vsp = 3
               }  
               
               if kb_angle > 215 and kb_angle <= 250 {
                   other.hsp = -3 * spr_dir
                   other.vsp = 6
               }  
               
               if kb_angle > 250 and kb_angle <= 295 {
                   other.hsp = 6 * spr_dir
                   other.vsp = 6
               }  
               
               
               if kb_angle > 295 and kb_angle <= 325 {
                   other.hsp = 6 * spr_dir
                   other.vsp = 3
               }  
               
               
               if kb_angle > 325 and kb_angle <= 360 {
                   other.hsp = 6 * spr_dir
                   other.vsp = 3
               }  
               } else {
               	  other.hsp = 4 * nearbyhitbox.spr_dir
                   other.vsp = -2
               }
	    }
	}
    }
    
    player_id.famix = x
    player_id.famiy = y
    
    if player_id.attack == AT_FSPECIAL or player_id.attack == AT_DSPECIAL or player_id.attack == AT_USPECIAL {
        vsp /= 1.2
        hsp /= 1.2
        with player_id {
            if window == 1 && window_timer == 11 {
                x = other.x
                y = other.y + 30
                other.destroyed = true
            }
        }
    }

    
    
    player_id.move_cooldown[AT_EXTRA_1] = 300
    

    hitbox_timer -= 1
    

    if x  > room_width/2 + 750 or x < room_width/2 - 750 {
        damage = 4
        kb_scaling = 0.4
        hit_effect_x = 0
        if hitbox_timer < 3 {
            hitbox_timer = 4
        } else {
            sound_play(asset_get("sfx_shovel_hit_med1"))
            destroyed = true
        }
        hit_priority = 9
        sound_play(asset_get("sfx_shovel_hit_light1"))
        hsp *= -1.05
        vsp *= -1.05
        vsp -= 2

        shake_camera(2,4)
        	for (var i = 1; i < 20; i++) can_hit[i] = true
    }
    
    if y - 120 > room_height {
        damage = 4
        kb_scaling = 0.4
        hit_effect_x = 0
        if hitbox_timer < 3 {
            hitbox_timer = 4
        } else {
            sound_play(asset_get("sfx_shovel_hit_med1"))
            destroyed = true
        }
        hit_priority = 9
        sound_play(asset_get("sfx_shovel_hit_light1"))
        vsp = -20
        hsp /= 2
        shake_camera(2,4)
        	for (var i = 1; i < 20; i++) can_hit[i] = true
    }
    
    if free {
      spawn_hit_fx( x + 20 - random_func(3, 40, true) , y + 20 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true) , y + 20 -  random_func(2, 60, true) , hpar3)
    }
    
    if player_id.move_cooldown[AT_EXTRA_2] > 0 or (vsp < 0.5 && vsp > -0.5 && hsp = 0) {
        image_index = 2
    } else {
        image_index = get_gameplay_time() / 3
    }

    if ((place_meeting(x + hsp, y + vsp , asset_get("par_block")))) {
        damage = 4
        kb_scaling = 0.4
        hit_effect_x = 0
        
                for (var i = 1; i < 20; i++) can_hit[i] = true
                
        if get_gameplay_time() % 2 == 0 {
            spawn_hit_fx( x + 20 - random_func(3, 40, true) , y + 20 -  random_func(4, 60, true) , hpar2)
      spawn_hit_fx( x + 20 - random_func(1, 40, true)  , y + 20 - random_func(2, 60, true) , hpar3)
        }
        
        
        if hitbox_timer < 10 {
        
            y += vsp
            
            shake_camera(2,4)
            hitbox_timer = 10
            spawn_hit_fx(x,y+10,fxspark2)
            spawn_hit_fx(x,y+20,305)
            sound_play(asset_get("sfx_shovel_hit_med1"))
        }
     
    if ((place_meeting(x , y - 20, asset_get("par_block")))) && free && hsp != 0 {
    	 y -= 7
    	 vsp = -9
    	 x -= 10*spr_dir
    	         hit_priority = 9
    }
    
    if ((place_meeting(x , y + vsp , asset_get("par_block")))) {
        vsp = 0
        hsp = 0
        grav = 0
                hit_priority = 0
    }
    
    if ((place_meeting(x + hsp, y , asset_get("par_block")))) && hsp != 0 {
        vsp = -9
        hsp = -2*spr_dir
        grav = 0
                hit_priority = 9
    }
    
    } else {
        grav = .4/1.25
    }
}