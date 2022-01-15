///

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
     
    }
    
  
    
}