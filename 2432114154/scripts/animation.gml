///


/// have an intro, you're welcome
if get_gameplay_time() <= 120 {
	visible = true
with (asset_get("oPlayer")) {
	
			if (player != other.player) {
				//character that have intro literally just spawn an vfx 
				
			    if string_count("lynk", string_lower( get_char_info(player, INFO_STR_NAME) )) == 0 and 
			    string_count("tengia", string_lower( get_char_info(player, INFO_STR_NAME) )) == 0 and 
			    string_count("ase", string_lower( get_char_info(player, INFO_STR_NAME) )) == 0  and 
			    string_count("yanchang", string_lower( get_char_info(player, INFO_STR_NAME) )) == 0 and  
			    string_count("lucah", string_lower( get_char_info(player, INFO_STR_NAME) )) == 0 and  
			    string_count("elri", string_lower( get_char_info(player, INFO_STR_NAME) )) == 0
			    and get_gameplay_time() == 6 and visible and draw_y == 0 and (sprite_index == sprite_get("idle") or select <= 19) {
			    	if "needintro" not in self {
			    	print("This bozo didn't have an intro")
			    	needintro = true
			    }
			    }
			    
			    if get_gameplay_time() > 6 {
			    	
			    	if select > 19 {
			    	if "needintro" in self {
			    		
                         if get_gameplay_time() == 40 {
                         	with other {
                         		create_hitbox(AT_UTHROW, other.player, x,y + 60 - other.player*40)
                         	}
                         }
                         
			    		 if get_gameplay_time() == 62 {spr_dir *= 1.2 sound_stop(asset_get("sfx_blow_medium3")) sound_play(asset_get("sfx_blow_medium3"),false,noone,1,1.3) 
			    		 shake_camera(4,4) spawn_hit_fx(x -10*spr_dir,y - 14,14)
			    		 	with other { introfx = spawn_hit_fx(other.x,other.y - 46, SC)
			    		 	             introfx.depth = -20 }
			    		    }
			    		 
			    		 if get_gameplay_time() == 70 { spr_dir /= 1.2  }
			    		  
			    		 if get_gameplay_time() == 90 {sound_stop(asset_get("sfx_clairen_spin")) sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.15)}
			    		 
			    		 if get_gameplay_time() < 20 {
			    		 	draw_indicator = false 
			    		 	sprite_index = asset_get("empty_sprite")
			    		 	image_index = (get_gameplay_time()-3)/3
			    		
			    		 	
			    		 } else if get_gameplay_time() < 62{
			    		 	draw_indicator = false 
			    		 	visible = false
			    		 	sprite_index = sprite_get("hurt")
			    		 	image_index = 0
			    		 } else if get_gameplay_time() < 70 {
			    		 	sprite_index = sprite_get("hurt")
			    		 	visible = true 
			    		 	image_index = (get_gameplay_time()-82)/5
			    		 } else if get_gameplay_time() <= 90 {
			    		 	sprite_index = sprite_get("hurt")
			    		 } else if get_gameplay_time() <= 113 {
			    		 	sprite_index = sprite_get("roll_forward")
			    		 	image_index = (get_gameplay_time()-90)/4
			    		 } 
			    		 else if get_gameplay_time() <= 120 {
			    		 	sprite_index = sprite_get("crouch")
			    		 	image_index = 0
			    		 }
			    	} 
			    } else {
			    	if get_gameplay_time() == 40 {
                         	with other {
                         		create_hitbox(AT_UTHROW, other.player, x,y + 60 - other.player*40)
                         	}
                         }
                         
			    		 if get_gameplay_time() == 62 {spr_dir *= 1.2 sound_stop(asset_get("sfx_blow_medium3")) sound_play(asset_get("sfx_blow_medium3"),false,noone,1,1.3) 
			    		 shake_camera(4,4) spawn_hit_fx(x -10*spr_dir,y - 14,14)
			    			with other { introfx = spawn_hit_fx(other.x,other.y - 46, SC)
			    		 	             introfx.depth = -20 }
			    		 }
			    		 
			    		 if get_gameplay_time() == 70 { spr_dir /= 1.2  }
			    		  
			    		 if get_gameplay_time() == 90 {sound_stop(asset_get("sfx_clairen_spin")) sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.15)}
			    		 
			    		 if get_gameplay_time() < 62 {
			    		 	draw_indicator = false 
			    		 	sprite_index = asset_get("empty_sprite")
			    		 	image_index = (get_gameplay_time()-3)/3
			    		 	visible = false
			    		 }  else if get_gameplay_time() <= 90 {
			    		 	visible = true 
                            set_state(PS_CROUCH)
                            state_timer = 2
			    		 }
			    }
			    
			    
			    
			    
			    }
			    
			    
			}
			
			
}

}


///////

  if state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP{
        
        if jumping == 0 {
            if state == PS_FIRST_JUMP {
            sprite_index = sprite_get("jump");
            image_index = min(state_timer/5,5); 
            } else {
             sprite_index = sprite_get("doublejump");
            image_index = min(state_timer/5,7);    
            }
        }
        
        if jumping == 1 {
            sprite_index = sprite_get("djump3");
            image_index = min(state_timer/3,9);
        }
        
        if jumping == -1 {
            sprite_index = sprite_get("djump4");
            image_index = min(state_timer/4,7);
        }        
        
    }
    
  if state == PS_RESPAWN {
      if state_timer == 90 {
          sound_play(sound_get("zoice_respawn"),false,noone,zolume,zitch)
          sound_play(sound_get("zoice_respawn"),false,noone,zolume,zitch)
      shake_camera(5,5)
      sound_stop(sound_get("counterhit"))
      sound_play(sound_get("counterhit"),false,noone,1,1.4)
      spawn_hit_fx(x ,y - 40, 306)
      }
      
      sprite_index = sprite_get("idle");
      image_index = 5 + (state_timer%24/6) 
  }
  
  

if get_gameplay_time() <= 126 {
    
  if get_gameplay_time() == 5 {
      sound_stop(asset_get("sfx_boss_vortex_end"))
          sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1.2,1)
          sound_stop(asset_get("sfx_orca_absorb"))
          sound_play(asset_get("sfx_orca_absorb"),false,noone,1,.5)
  }
  
  
  if get_gameplay_time() == 20 {
      
      if taunt_down {
          zolume = 1
          zitch = 1
      }

      sound_stop(asset_get("sfx_boss_vortex_end"))
          sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,2)
          sound_stop(asset_get("sfx_orca_absorb"))
          sound_play(asset_get("sfx_orca_absorb"),false,noone,1,2)
  }
  
  
  if get_gameplay_time() == 40 {
      shake_camera(5,5)
      sound_stop(asset_get("sfx_ori_energyhit_medium"))
      sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1)
      sound_stop(asset_get("sfx_waterhit_heavy"))
      sound_play(asset_get("sfx_waterhit_heavy"),false,noone,1,1)
      sound_stop(asset_get("sfx_orca_absorb"))
      sound_play(asset_get("sfx_orca_absorb"),false,noone,1,.8)
  }
  
  
  if get_gameplay_time() == 4*17 {
      sound_stop(asset_get("sfx_waterhit_medium"))
      sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,1)
      sound_stop(sound_get("Fstrong"))
      sound_play(sound_get("Fstrong"),false,noone,1,.8)
  }
  
  if get_gameplay_time() == 4*25 {
      shake_camera(5,5)
      spawn_hit_fx(x - 10*spr_dir,y - 70, 302)
      sound_stop(sound_get("counterhit"))
      sound_play(sound_get("counterhit"),false,noone,1,1.4)
  }
  
  if get_gameplay_time() == 4*30 {
      spawn_hit_fx(x,y - 40, 302)
      sound_stop(asset_get("sfx_waterhit_medium"))
      sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,.6)
  }
    sprite_index = sprite_get("empty");
    draw_y = 999
    draw_indicator = false
    
}

if move_cooldown[AT_NAIR] > 0 {
    
  if move_cooldown[AT_NAIR] >= 48 {
          sound_stop(asset_get("sfx_boss_vortex_end"))
          sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1.2,1)
  }
if move_cooldown[AT_NAIR] % 2 == 0   draw_y = 1 ;
if move_cooldown[AT_NAIR] % 2 == 1   draw_y = -1  ;
 
} else {
    draw_y = 0
}

if isyellow {
    if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
        if state_timer == 1 spawn_hit_fx(x - 10*spr_dir,y,i1)
    if state_timer < 15 {
     sprite_index = sprite_get("rollin");
     image_index = state_timer/4 - 1   
    } else {
     sprite_index = sprite_get("parry");
     image_index = (state_timer - 10)/4   
    }
    }
    
    switch (state) {
    
    case PS_IDLE :
    if get_gameplay_time() < 200  {
        sprite_index = sprite_get("idle");
        image_index = (state_timer%24/6) 
    } else { 
        sprite_index = sprite_get("idle");
     
     if state_timer < 600 {
     image_index = (state_timer%24/6) 
     
     if random_func(1,60,true) == 6 && state != PS_RESPAWN && state != PS_SPAWN {
         state_timer = 600
         switch random_func(2,3,true) {
    	     	case 0:
    	     	sound_play(sound_get("zoice_idle1"),false,noone,zolume,zitch)
    	     	break;
    	     	
    	     	case 1 :
    	     	sound_play(sound_get("zoice_idle2"),false,noone,zolume ,zitch)
    	     	break;
    	     	
    	     	case 2 :
    	     	sound_play(sound_get("zoice_idle3"),false,noone,zolume ,zitch)
    	     	break;
       }
     }
     
     } else if state_timer < 605 {
     image_index = 4    
     } else if state_timer >= 605 {
     image_index = 5 + (state_timer%24/6)       
     }
    }
    break;
    
    case PS_DASH :
     sprite_index = sprite_get("dash2");
     image_index = state_timer/2.5    
    break;
    
    case PS_DASH_START :
     sprite_index = sprite_get("dash2");
     image_index = state_timer/4     
    break;
    
    
    case PS_PARRY :
  
    break;
    
    

    
    case PS_PRATFALL :
     sprite_index = sprite_get("jump");
     image_index = 4 
    break;
    
    case PS_AIR_DODGE :
    if state_timer == 2  spawn_hit_fx(x - 10*spr_dir,y + 6,i1)
     sprite_index = sprite_get("nspecial");
     image_index = state_timer/8.4
     
    break;
    
    case PS_LAND :
    image_index = 1
    break;
    }
    
  
    
}


if (state == PS_DASH
   	or state == PS_IDLE
   	or state == PS_CROUCH
   	or state == PS_WALK
   	or state == PS_WALK_TURN
   	or state == PS_DASH_STOP
   	or state == PS_DASH_TURN
   	or state == PS_WAVELAND) && UImode = 4  {
   		
	invincible = true 
	invince_time = 1
	
		nearbyhitbox = collision_circle( x, y - 30, 30, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone{
		if nearbyhitbox.player_id != self && nearbyhitbox.hit_priority > 0  {
			if nearbyhitbox.type == 1 {
				 set_state(PS_PARRY)
				 window_timer = 3
                  invince_time = 0
                  with nearbyhitbox {
                  	 hitbox_timer = 0
                  }
			} else {
				attack_end()
	    		set_attack(AT_NSPECIAL)
	    		window = 2
	    		window_timer = 1
			}
     	}
	}
	
} else {
	
}