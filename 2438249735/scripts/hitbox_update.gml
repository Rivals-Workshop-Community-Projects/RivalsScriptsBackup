///


if attack == AT_NSPECIAL && hbox_num == 1 {
    
                     switch hitbox_timer % 3 + 1 {
                    	case 1:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar2)
                    	break ;
                 
                    	case 2:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar3)
                    	break ;
                    	    	
                
                    	case 3:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar5)
                    	break ;
                	 }
                	 
                	 if !free {
                	     create_hitbox(AT_NSPECIAL,2,x,y)
                	     create_hitbox(AT_NSPECIAL,2,x + 15*spr_dir,y)
                	     create_hitbox(AT_NSPECIAL,2,x + 22*spr_dir,y)
                	     sound_play(asset_get("sfx_plant_ready"))
                	     destroyed = 1 
                	 }
}

if attack == AT_NSPECIAL && hbox_num == 3 {
hsp /= 1.01
  if vsp > 3 {
      vsp = 3
  }
  
  if y > room_height {
  	destroyed = true
  }
      if player_id.invitimer == -1 {
        destroyed = true
        			          
        			    sound_stop(sound_get("grassblade"))
        			    sound_play(sound_get("grassblade"),false,noone,1)
        			    sound_stop(sound_get("tstrong"))  
        			    sound_play(sound_get("tstrong"),false,noone,0.6)
        create_hitbox(AT_NSPECIAL,4,x,y - 20)
        spawn_hit_fx(x,y,305)
    }
    
                	 if !free {
                	     create_hitbox(AT_NSPECIAL,2,x,y - 20)
                	     sound_play(asset_get("sfx_plant_ready"))
                	     destroyed = 1 
                	 }
}

if attack == AT_NSPECIAL && hbox_num == 2 {
    
    
     if player_id.invitimer == -1 {
        destroyed = true
        			          
        			    sound_stop(sound_get("grassblade"))
        			    sound_play(sound_get("grassblade"),false,noone,1)
        			    sound_stop(sound_get("tstrong"))  
        			    sound_play(sound_get("tstrong"),false,noone,0.6)
        create_hitbox(AT_NSPECIAL,4,x,y - 20)
    }
    
    if hitbox_timer > 6 {
        
        var heal_player = instance_place(x, y, oPlayer)
	if (heal_player != noone) {
	    image_index = 1
	    
	                  switch (hitbox_timer + x) % 12 + 1 {
                    	case 1:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar2)
                    	break ;
                 
                    	case 6:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar3)
                    	break ;
                    	    	
                
                    	case 9:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar5)
                    	break ;
                	 }
                	 
	}else {
	    image_index = 3
	}
        
    
    with oPlayer{
	if clone continue
	var heal_player = instance_place(x, y, other)
	if (heal_player != noone) {
	    
	    	      
	    	       
    	if  url != other.player_id.url && other.hitbox_timer < 294 {
			other.hitbox_timer = 294
    	            	shake_camera(1,2)
        }
        
    	    if url == other.player_id.url {
    	        
    	        if attacking && attack == AT_TAUNT && window == 3 {
    	        	other.destroyed = 1
    	        		 sound_stop(asset_get("sfx_rag_root"))  
                          sound_play(asset_get("sfx_rag_root"),false,noone,0.7)  
                          sound_stop(asset_get("sfx_syl_nspecial_flowerhit"))  
                          sound_play(asset_get("sfx_syl_nspecial_flowerhit"),false,noone,0.9)  
    	               spawn_hit_fx(other.x , other.y, shit1)  
    	               shake_camera(2,2)
    	               take_damage(player,-1,-1)
    	        }
    	        
    	        if invitimer > 0 {
    	            	        invitimer = 1

    	        }
    	            	        
    	        if !free {
    	        	if id != other.player_id {
    	        		
    	        	  switch ((state_timer) % 3){
                    	case 1:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar2)
                    	break ;
                 
                    	case 2:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar3)
                    	break ;
                    	    	
                
                    	case 3:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar5)
                    	break ;
                      } 
      
    	        		other.destroyed = true
    	        		create_hitbox(AT_NSPECIAL, 2, other.x, other.y )
    	        	}
    	        }    	 
    	        
    	        if !free and state_cat != SC_HITSTUN and (state_cat == SC_GROUND_NEUTRAL or state == PS_DASH or 
    	        state == PS_DASH_START or state == PS_DASH_STOP or state == PS_DASH_TURN) {

    	        	
    	        if invitimer == 0{
    	        set_attack (AT_EXTRA_1)
    	        window = 1
    	        window_timer = 1
    	        invisound = 0
    	            shake_camera(1,4)
    	         
    	               spawn_hit_fx(x , y - 30, shit1)  
    	               
                  spawn_hit_fx(x , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  spawn_hit_fx(x , y - 6, lpar5)  

    	        }

    	    }
       }    
        
    } 
    }
    }


if hitbox_timer == 295 {
	 sound_stop(asset_get("sfx_rag_root"))  
    sound_play(asset_get("sfx_rag_root"),false,noone,0.7)  
}

    if hitbox_timer > 6 {
        if free {
            destroyed = 1
            spawn_hit_fx(x , y , lpar4)
        }
    }
    
    
    if hitbox_timer > 294 {
       switch ((hitbox_timer + x) % 3) + 1{
                    	case 1:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar2)
                    	break ;
                 
                    	case 2:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar3)
                    	break ;
                    	    	
                
                    	case 3:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar5)
                    	break ;
     } 
    }
    
    



}


if attack == AT_NSPECIAL && hbox_num == 4 {
 

 player_id.target.hsp = 1 * spr_dir
 player_id.target.vsp = -1
 
 
 if hitbox_timer > 10 {
      if x < player_id.target.x {
         hsp += 0.2
     } else {
         hsp -= 0.2
     }
     
     if y < player_id.target.y - 40 {
         vsp += 0.2
     } else {
         vsp -= 0.2
     }
     
}


if hitbox_timer == 1 {
	              spawn_hit_fx(x , y + 10, lpar1)              
                  spawn_hit_fx(x , y + 10, lpar4)   
	vsp -= x % 6
	spr_dir = player_id.spr_dir
}

 if hitbox_timer < 40 {
     image_index = hitbox_timer/3
     vsp /= 1.05
 } else {
     
                      switch ((hitbox_timer + x) % 3) + 1{
                    	case 1:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar4)
                    	break ;
                 
                    	case 2:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar1)
                    	break ;
                    	    	
                
                    	case 3:
                	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 20 - random_func(3,40,true), lpar2)
                    	break ;
                	 }
                	 
     image_index = 13 + hitbox_timer % 4
     hit_priority = 3
     
      if x < player_id.target.x {
         hsp += 0.6
     } else {
         hsp -= 0.6
     }
     
     if y < player_id.target.y - 30 {
         vsp += 0.6
     } else {
         vsp -= 0.6
     }
     
     x += floor((player_id.target.x - x) / 12)
     y += floor((player_id.target.y - 30 - y ) / 12)
 }
 

    
    
}