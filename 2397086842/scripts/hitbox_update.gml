////

if attack == AT_NSPECIAL && hbox_num == 12 {
	if player_id.hitpause == true {
		hitbox_timer -= 1
	}
	  if hitbox_timer == 10 {
	  	create_hitbox(AT_NSPECIAL,1,x,y)
	  	destroyed = true
	  }
	
}


if attack == AT_NSPECIAL && hbox_num == 13 {
	if player_id.hitpause == true {
		hitbox_timer -= 1
	}
	  if hitbox_timer == 10 {
	  	create_hitbox(AT_NSPECIAL,2,x,y)
	  	destroyed = true
	  }
	
}	


if attack == AT_NSPECIAL && hbox_num == 14 {
	if player_id.hitpause == true {
		hitbox_timer -= 1
	}
	  if hitbox_timer == 10 {
	  	create_hitbox(AT_NSPECIAL,3,x,y)
	  	destroyed = true
	  }
	
}	


if attack == AT_NSPECIAL && hbox_num == 11 {
	  if (place_meeting(x, y , asset_get("par_block"))) {
	  	y += 30
    		sound_play(asset_get("sfx_absa_singlezap2"))
    		destroyed = true
      }
	
}	

if attack == AT_FSPECIAL {
	nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.type == 2 {
		               create_hitbox(AT_NSPECIAL,7,x,y)
		               create_hitbox(AT_NSPECIAL,8,x,y)
		               create_hitbox(AT_NSPECIAL,9,x,y)
		nearbyhitbox.destroyed = true
	}
}
	

if attack == AT_NSPECIAL && hbox_num > 3{
	
	if x < room_width and x > 0 and y < room_height { 

	} else {
			destroyed = true
		sound_play(asset_get("sfx_absa_singlezap1"))
	}
	

}

if attack == AT_NSPECIAL && hbox_num <= 3{
	
	
	
	if hitbox_timer == 259 {
		hitbox_timer -= 1
		//destroyed = true
		//sound_play(asset_get("sfx_spin"),false,noone,1,1.3)
	}

		if player_id.move_cooldown[AT_NSPECIAL] > 0{
        	player_id.move_cooldown[AT_NSPECIAL] = 5
		}
		
	if bouncing == true {
			
			if bouncenum == 0 {
	        	bouncing = 0
	        	bouncenum = -1
	        }
	        
	        
	  		if hitbox_timer > 50 {
	  		hitbox_timer = 10
			}
			
			if batted == 1 {
           		if get_gameplay_time() % 6 == 0 {
             	spawn_hit_fx(x - 10 + random_func(1,20,true),y - 10 + random_func(2,20,true), bfx5)
             	}
			} else {
				if get_gameplay_time() % 16 == 0 {
					spawn_hit_fx(x - 10 + random_func(1,20,true),y - 10 + random_func(2,20,true), bfx5)
				}
			}
          }
          
           
           if x > room_width   {
           	 x -= hsp*2
           	//if bouncing == false {
           	 destroyed = true
           	 sound_play(asset_get("sfx_spin"),false,noone,1)
           	//} else {
           	//sound_stop(asset_get("sfx_absa_singlezap1"))
	    	//sound_play(asset_get("sfx_absa_singlezap1"),false,noone,1)	
	    	//bouncenum -= 1
           	//}
           	if batted == 1 {
           	vsp = -14
           	hsp = -10
           	} else {
           	vsp = -18
           	hsp = -15	
           	}
            shake_camera(2,2)

	    	sound_stop(asset_get("sfx_blow_medium1"))
	    	sound_play(asset_get("sfx_blow_medium1"))
           }

           if x < 0 {
           	x -= hsp*2
           	//if bouncing == false {
           	 destroyed = true
           	 sound_play(asset_get("sfx_spin"),false,noone,1)	
           	//} else {
           	//sound_stop(asset_get("sfx_absa_singlezap1"))
	    	//sound_play(asset_get("sfx_absa_singlezap1"),false,noone,1)	
	    	//bouncenum -= 1
           	//}
           	if batted == 1 {
           	vsp = -14
           	hsp = 10
           	} else {
           	vsp = -18
           	hsp = 15	
           	}
            shake_camera(2,2)

	    	sound_stop(asset_get("sfx_blow_medium1"))
	    	sound_play(asset_get("sfx_blow_medium1"))
           }
           
           if y > room_height {
           	  vsp = -18
           	  hsp += 2*spr_dir
           	  shake_camera(2,2)
           	  sound_stop(asset_get("sfx_absa_singlezap1"))
	          sound_play(asset_get("sfx_absa_singlezap1"),false,noone,0.7)
	          sound_stop(asset_get("sfx_blow_medium1"))
	    	  sound_play(asset_get("sfx_blow_medium1"))
           }
           


	

}

if attack == AT_DSPECIAL{
	    if hitbox_timer % 2 == 0 {
    	spawn_hit_fx(x - 40 + random_func(1,80,true),y - 40 + random_func(2,80,true), bfx2)
    	}
    	
    	  if hitbox_timer % 2 == 1 {
    	spawn_hit_fx(x - 40 + random_func(1,80,true),y - 40 + random_func(2,80,true), bfx3)
    	}
	
}

if attack == AT_NSPECIAL  && hbox_num <= 3{

if hbox_num == 1 && hitbox_timer == 1 {
    if player_id.ncharge >= 20 && player_id.ncharge < 50 {
              batted = 1
              vsp = -9
    }
    
    if player_id.ncharge >= 50 && player_id.ncharge < 65 {
        vsp = -16
        batted = 1
    }	
    player_id.ncharge = 0
}

if player_id.move_cooldown[AT_FSPECIAL_2] != 0 {
	hit_priority = 0
}

if lockouttimer < 0 {
	lockouttimer += 1
}


    if batted == 0 {
    	
    	hit_priority = 0
    	
    	if hsp > 4 or hsp < -4 {
    		hsp /= 1.05
    	}	
    	
    if player_id.move_cooldown[AT_UTILT] > 0 {
    		can_hit_self = true
    }
    
    
    	//if player == orig_player {
    	//if hitbox_timer % 4 == 0 and (hbox_num == 2 or hbox_num == 3)  {
    	//spawn_hit_fx(x - 4 + random_func(1,8,true),y - 4 + random_func(2,8,true), bfx2)
    	//}
    	//
    	//if hit_priority == 9 {
    	//if hitbox_timer % 4 == 2 and  hbox_num == 3 {
    	//spawn_hit_fx(x - 8 + random_func(1,16,true),y - 8 + random_func(2,16,true), bfx3)
    	//}
    	//	if hitbox_timer % 2 == 1 { 
    	//spawn_hit_fx(x,y ,bfx1)
    	//	}
    	//} else {
	//
    	//}
    	//}
    	
    	
    if vsp < 0 {
    vsp /= 1.05
    }
    
    if hitbox_timer == 259 {
        spawn_hit_fx(x,y,0)
        sound_play(asset_get("sfx_absa_singlezap2"))
    }
    
    grav = 0.1
    if (place_meeting(x, y-6, asset_get("par_block"))) && vsp > 0{
    	if abs(vsp) < 1 && abs(hsp) < 1 {
    		sound_play(asset_get("sfx_absa_singlezap1"),false,noone,1,.8)
    	   spawn_hit_fx(x,y+8,13)
    		destroyed = true
    	}
    	hsp /= 1.05
    	sound_play(asset_get("sfx_blow_medium1"),false,noone,abs(vsp/8))
    	ax = spawn_hit_fx(x,y+8,14)
    	ax.draw_angle = random_func(1,306,true)
    	ax.spr_dir = vsp/4
    	ax.image_yscale = vsp/4
    	vsp *= -0.9
    	if hbox_num == 3 {
    		sound_play(asset_get("sfx_absa_singlezap2"),false,noone,abs(vsp/8))
    	}
    }
   
    
    }


    if batted = 1 {
    	
    	hit_priority = 9
    	
    	if player == orig_player {
    	if hitbox_timer % 2 == 0 and (hbox_num == 2 or hbox_num == 3)  {
    	spawn_hit_fx(x - 4 + random_func(1,8,true),y - 4 + random_func(2,8,true), bfx2)
    	}
    	
    	  if hitbox_timer % 2 == 1 and  hbox_num == 3 {
    	spawn_hit_fx(x - 8 + random_func(1,16,true),y - 8 + random_func(2,16,true), bfx3)
    	}
    	spawn_hit_fx(x,y ,bfx1)
    	}else {
    	      spawn_hit_fx(x,y ,bfx4)
    	}
    	
        if hsp < 0 {
            spr_dir = -1
        } else {
            spr_dir = 1
        }
        
      if (place_meeting(x, y - 8 + vsp, asset_get("par_block"))) && vsp > 0  {
      	if abs(vsp) < 4 && abs(hsp) < 4 {
    		sound_play(asset_get("sfx_absa_singlezap1"),false,noone,1,.8)
    	   spawn_hit_fx(x,y+8,13)
    		destroyed = true
    	}
    	hsp /= 1.1
    	sound_play(asset_get("sfx_blow_medium1"),false,noone,abs(vsp/8))
    	ax = spawn_hit_fx(x,y+8,14)
    	ax.draw_angle = random_func(1,306,true)
    	ax.spr_dir = min(1,vsp/4)
    	ax.image_yscale = min(1,vsp/4)
    	vsp *= -0.8
    	if hbox_num == 3 {
    		sound_play(asset_get("sfx_absa_singlezap2"),false,noone,abs(vsp/8))
    	}
      }
        grav = 0.4
    }

    

        
    nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && (lockouttimer == 0 or player != nearbyhitbox.player) {
		hit_priority = 9 
		if player == nearbyhitbox.player {
		lockouttimer = -15
		}
		
		if nearbyhitbox.type == 1 && nearbyhitbox.hit_effect_x != -0.69 {
			
			if batted == 0{
			nearbyhitbox.hitbox_timer -= 1
			}

			for (var i = 1; i < 20; i++) can_hit[i] = true
		    player = nearbyhitbox.player
		    if hitbox_timer > 1 {
		    		
		     spawn_hit_fx(x,y,14) 
		    shake_camera(4,4)
		    sound_play(asset_get("sfx_ori_energyhit_medium"))
		   sound_play(asset_get("sfx_kragg_rock_land"),false,noone, 0.4 + nearbyhitbox.damage/20)
             if nearbyhitbox.hit_effect_x == 0.69 {
                 if player == orig_player {
                 	

                 	if get_player_color(player) != 21 {
                     sound_stop(sound_get("bathit"))	
                     sound_play(sound_get("bathit"),false,noone,0.5 + nearbyhitbox.damage/20)
                 	} else {
                 	 sound_stop(sound_get("Lycahit"))	
                     sound_play(sound_get("Lycahit"),false,noone,1 + nearbyhitbox.damage/26,1.1)	
                 	}
                 	
                 }
             }
             
             
      if player != orig_player && string_count("bat bat", string_lower( get_char_info(player, INFO_STR_NAME))) > 0 {
      	
      		x += floor(nearbyhitbox.x - x)/2
			y += floor(nearbyhitbox.y - y)/2
			
             	 sound_play(asset_get("sfx_absa_whip"),false,noone,1.2) 
             	sound_play(asset_get("sfx_blow_heavy2"),false,noone,1.2)
             	destroyed = 1
               switch hbox_num {
               case 1 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,2,floor(other.x),floor(other.y))
               }
               break;
               
               case 2 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.7)
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,3,floor(other.x),floor(other.y))
               }
               break;
               
               case 3 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,3,floor(other.x),floor(other.y))
               }
               break;     
               	
        }
        }
        	sound_stop(asset_get("sfx_bird_downspecial"))
             switch hbox_num {
               case 1 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.4)
               damage = 4
               break;
               
               case 2 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.7)
               sound_play(sound_get("b1"),false,noone,0.6)
               damage = 6
               break;
               
               case 3 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
               sound_play(sound_get("b3"),false,noone,0.6)
               damage = 10
               break;
               
             }
		    }
		    
               if nearbyhitbox.attack != AT_JAB {
               if (nearbyhitbox.kb_angle > 0 and nearbyhitbox.kb_angle <= 45) or
               nearbyhitbox.kb_angle  == 361{
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = -3
               } 
               
               if nearbyhitbox.kb_angle > 45 and nearbyhitbox.kb_angle <= 90 {
                   hsp = 3 * nearbyhitbox.spr_dir
                   vsp = -12
               }  
               
               if nearbyhitbox.kb_angle > 90 and nearbyhitbox.kb_angle <= 135 {
                   hsp = -3 * nearbyhitbox.spr_dir
                   vsp = -12
               }  
               
               if nearbyhitbox.kb_angle > 135 and nearbyhitbox.kb_angle <= 180 {
                   hsp = -12 * nearbyhitbox.spr_dir
                   vsp = -6
               }  
               
              if nearbyhitbox.kb_angle > 180 and nearbyhitbox.kb_angle <= 215 {
                   hsp = -10 * nearbyhitbox.spr_dir
                   vsp = 3
               }  
               
               if nearbyhitbox.kb_angle > 215 and nearbyhitbox.kb_angle <= 250 {
                   hsp = -6 * nearbyhitbox.spr_dir
                   vsp = 6
               }  
               
               if nearbyhitbox.kb_angle > 250 and nearbyhitbox.kb_angle <= 295 {
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = 6
               }  
               
               
               if nearbyhitbox.kb_angle > 295 and nearbyhitbox.kb_angle <= 325 {
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = 3
               }  
               
               
               if nearbyhitbox.kb_angle > 325 and nearbyhitbox.kb_angle <= 360 {
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = 3
               }  
               } else {
               	   hsp = 7 * nearbyhitbox.spr_dir
                   vsp = -2
               }
               
               hitbox_timer = 0
               batted = 1
               
	    }
	}
/// projectile interaction	    


    nearbyhitbox2 = collision_circle( x - hsp, y - vsp , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox2 != noone {
	   if nearbyhitbox2.type == 2 && nearbyhitbox2.hit_effect_x != -0.69 && hitbox_timer > 5 && nearbyhitbox2.hit_priority >= 1 && hitbox_timer > 5{
	   	    shake_camera(4,4)
	   	    if hitbox_timer > 10 {
		    sound_play(asset_get("sfx_absa_singlezap1"))
		    spawn_hit_fx((x + nearbyhitbox2.x)/2,(y + nearbyhitbox2.y)/2,302)
	   	    }
	   	    
            hitbox_timer = 5
            
             if nearbyhitbox2.x < x {
             hsp += 2
	   	     } else {
             hsp -= 2
	   	     }
	   	     
	   	     if nearbyhitbox2.y < y {
             vsp += 2
	   	     } else {
             vsp -= 2
	   	     }
	   	     
               batted = 1
	   }
	}
	   
/// special interaction

    nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone {
         if nearbyhitbox.type == 1 && nearbyhitbox.hit_effect_x == -0.69 {
            player = nearbyhitbox.player
         		
         	if 	nearbyhitbox.attack == AT_FSTRONG or  nearbyhitbox.attack == AT_USTRONG or 	nearbyhitbox.attack == AT_DSTRONG {
         	player = nearbyhitbox.player
         	spr_dir = nearbyhitbox.spr_dir
         	nearbyhitbox.hitbox_timer -= 2
         	        shake_camera(5,8)
         		spawn_hit_fx(x,y ,304)
         	 sound_play(sound_get("strongb"),false,noone,1.2)

                 	if get_player_color(player) != 21 {
                     sound_stop(sound_get("bathit"))	
                     sound_play(sound_get("bathit"),false,noone,0.5 + nearbyhitbox.damage/20)
                 	} else {
                 	 sound_stop(sound_get("Lycamax"))	
                     sound_play(sound_get("Lycamax"),false,noone, 3,1)
                 	}
              
              sound_play(asset_get("sfx_ori_energyhit_medium"))
         	 sound_play(asset_get("sfx_absa_whip"),false,noone,1.2) 
         	  
         	  switch hbox_num {
               case 1 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,4,other.x,other.y)
               }
               break;
               
               case 2 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.7)
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,5,other.x,other.y)
               }
               break;
               
               case 3 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,6,other.x,other.y)
               }
               break;
               }
               
               destroyed = true 
         	}
         	
         if nearbyhitbox.attack == AT_FSPECIAL && (hitbox_timer > 30 or vsp > 0) {
         	   sound_play(sound_get("strongb"),false,noone,1.2)
         	   shake_camera(5,8)
         	   spawn_hit_fx(x,y ,305)
         	   
         	   if bouncing == 1 {
         	   		switch hbox_num {
                     case 1 :
                     create_hitbox(AT_NSPECIAL,7,x,y)
                     create_hitbox(AT_NSPECIAL,1,x,y)
                     break;
                     
                     case 2 :
                     create_hitbox(AT_NSPECIAL,8,x,y - 20)
                     create_hitbox(AT_NSPECIAL,9,x,y + 20)
                     create_hitbox(AT_NSPECIAL,2,x,y)
                     break;
                     
                     case 3 :
                     create_hitbox(AT_NSPECIAL,7,x,y)
                     create_hitbox(AT_NSPECIAL,8,x,y - 20)
                     create_hitbox(AT_NSPECIAL,9,x,y + 20)
                     create_hitbox(AT_NSPECIAL,3,x,y)
                     break;
                     
                    }
                   destroyed = true
         	   	} else {
         	   	
         	   switch hbox_num {
         	   	
         	   	
               case 1 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,2,other.x,other.y)
               //create_hitbox(AT_NSPECIAL,10,other.x,other.y + 20)
               }
               
               break;
               
               case 2 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,3,other.x,other.y)
               //create_hitbox(AT_NSPECIAL,10,other.x,other.y + 20)
               }
               break;
               
               case 3 :
               with nearbyhitbox.player_id {
                        sagefx1 = x
                        sagefy1 = y
                    
                    
                        sagefx2 = x
                        sagefy2 = y
                    
                        sagefx3 = x
                        sagefy3 = y
                    
                    
                        sagefx4 = x
                        sagefy4 = y
                        
                    
                        sagefx5 = x
                        sagefy5 = y
                
                sound_play(sound_get("sage"),false,noone,1.2)

                 	if get_player_color(player) == 21 {
                 	 sound_play(sound_get("Lycasage"),false,noone,1)
                 	}
   
                 	
                sound_play(asset_get("sfx_absa_whip3"),false,noone,1)
                sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
                    spawn_hit_fx(x, y - 36, 306)
                    sagemode = 6
               
               }
               break;
              }
              destroyed = true
         	   }
         	   
         	}
         	
         	 if nearbyhitbox.attack == AT_USPECIAL {
         	 	
         	   sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1)
         	   if get_player_color(player) == 21 {
         	       sound_stop(sound_get("Lycamax"))	
                   sound_play(sound_get("Lycamax"),false,noone, 0.7,1)
         	   }
         	   shake_camera(5,8)
         	   spawn_hit_fx(x,y ,305)
         	   switch hbox_num {
               case 1 :
               nearbyhitbox.player_id.uspecbat += 1
               break;
               
               case 2 :
               nearbyhitbox.player_id.uspecbat += 2
               break;
               
               case 3 :
               nearbyhitbox.player_id.uspecbat += 3
               break;
              }
              destroyed = true
              nearbyhitbox.player_id.window = 2
              nearbyhitbox.player_id.window_timer = 1
         	}
         	
         	if nearbyhitbox.attack == AT_DSPECIAL {
         		
         		if bouncing == false {
         	    spawn_hit_fx(x,y ,b4)
                hitbox_timer = 30
                shake_camera(2,2)
         		bouncing = true
         		bouncenum = 1
         		sound_play(sound_get("shockready"),false,noone,.8,0.8)
         		hsp = 2*player_id.spr_dir
         		}
         		
               batted = 1
         	}
         	
         }
	}
	
	
	   if player == orig_player {     
	   	
	   	//if player_id.attacking == true and player_id.attack == AT_DSPECIAL and player_id.window == 1
        // and player_id.window_timer == 6 {
        // 	if bouncing == true {
        // 		spawn_hit_fx(x,y ,bfx5)
        // 		destroyed = true
        // 		shake_camera(4,4)
        // 		sound_play(asset_get("sfx_absa_singlezap1"))
        //		
        // 	}
        // }
         
         if player_id.attacking == true and player_id.attack == AT_DSPECIAL and player_id.window == 1
         and player_id.window_timer == 7 {
         	  // spr_dir = player_id.spr_dir
              // sound_play(sound_get("b1"),false,noone,1)
         	  // shake_camera(5,8)
         	  // spawn_hit_fx(x,y ,302)
         	  // switch hbox_num {
              // case 1 :
              // create_hitbox(AT_NSPECIAL,7,x,y)
              // break;
              // 
              // case 2 :
              // create_hitbox(AT_NSPECIAL,8,x,y)
              // create_hitbox(AT_NSPECIAL,9,x,y)
              // break;
              // 
              // case 3 :
              // create_hitbox(AT_NSPECIAL,7,x,y)
              // create_hitbox(AT_NSPECIAL,8,x,y)
              // create_hitbox(AT_NSPECIAL,9,x,y)
              // break;
              //}
              //destroyed = true
             	//if bouncing == false { 
                   hsp = (player_id.x - x)/55
                   vsp = (player_id.y - 600 - y)/60
                   batted = 1
                   hit_priority = 9
                   for (var i = 1; i < 20; i++) can_hit[i] = true
                   spawn_hit_fx(x,y ,b4)
                   hitbox_timer = 30
                   shake_camera(2,2)
             	//}
         	}  
	   }


	   
         	
}



///strong bat

if attack == AT_NSPECIAL && hbox_num > 3 && hbox_num < 12{
	
		if player_id.move_cooldown[AT_NSPECIAL] > 0 && hbox_num <= 6{
        	player_id.move_cooldown[AT_NSPECIAL] = 5
		}
		
		        	hit_priority = 9
	nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
		if nearbyhitbox != noone {
	        if nearbyhitbox.type == 1 && nearbyhitbox.hit_effect_x == -0.69 {
	        	player = nearbyhitbox.player
	        	spr_dir = nearbyhitbox.spr_dir
	        	if nearbyhitbox.attack == AT_FSTRONG {
	        		batted = 1
	        	}
	        	
	        	if nearbyhitbox.attack == AT_USTRONG {
	        		batted = 2
	        	}
	        	
	        	if nearbyhitbox.attack == AT_DSTRONG {
	        		batted = 3
	        	}

	        }

	       ////hitback 
	       if nearbyhitbox.type == 1 && nearbyhitbox.player_id != player_id {
	       	        player = nearbyhitbox.player
                   switch hbox_num {
                     case 4 :
                     create_hitbox(AT_NSPECIAL,1,x,y)
                     break;
                     
                     case 5 :
                     create_hitbox(AT_NSPECIAL,2,x,y)
                     break;
                     
                     case 6 :
                     create_hitbox(AT_NSPECIAL,3,x,y)
                     break;
                   }
                   
                   destroyed = 1
	       	
	       }
		}
		
	if batted == 1 {
		hsp = 7*spr_dir
		if hitbox_timer % 14 < 6 {
			y -= 22
		} 
		if hitbox_timer % 14 >= 6{
			y += 14
		}
	}
	
	if batted == 2{
		
		if hitbox_timer <= 2{
			hsp = 20*spr_dir
			vsp = -20
		} 
		
		if hitbox_timer < 20 {
			y -= 4
			vsp += 0.95
			hsp -= 2*spr_dir
		}
		
				
		if hitbox_timer >= 20 && hitbox_timer < 40 {
			vsp += 1.2
			hsp += 2*spr_dir
			y += 3
		}


		if hitbox_timer >= 40 && hitbox_timer < 60 {
			vsp -= 2.2
			hsp += 2*spr_dir
			y -= 1
		}
		
		
	}
	
    if batted == 3{
		
		if hitbox_timer <= 2{
			hsp = 8*spr_dir
			vsp = -8
		} 
		
		if hitbox_timer == 60 {
			destroyed = true
		}
		
		if hitbox_timer == 10{
			spawn_hit_fx(x,y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			spr_dir *= -1
			hsp = 16*spr_dir
			vsp = 2
		} 
		
    	if hitbox_timer == 20{
			spawn_hit_fx(x,y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			hsp *= -0.8
			spr_dir *= -1
			vsp = 6
		} 
		
		if hitbox_timer == 30{
			spawn_hit_fx(x,y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			hsp *= -2
			spr_dir *= -1	
			vsp = 0
		} 
		
	}
	    kb_value = 12
    	    	if hitbox_timer % 2 == 0 and (hbox_num >= 5) {
    	spawn_hit_fx(x - 4 + random_func(1,8,true),y - 4 + random_func(2,8,true), bfx2)
    	}
    	
    	  if hitbox_timer % 2 == 1 and  hbox_num >= 6 {
    	spawn_hit_fx(x - 8 + random_func(1,16,true),y - 8 + random_func(2,16,true), bfx3)
    	}
    	spawn_hit_fx(x,y ,bfx1)


        
	
}