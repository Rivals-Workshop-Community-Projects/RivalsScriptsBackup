///
if attack == AT_FTHROW  {
  if hitbox_timer == 1 {
  hsp = (x - player_id.x)
  vsp = (y - player_id.y + 30)
  hsp = clamp(-10,hsp,10)
  vsp = clamp(-10,vsp,10)
  }
  if hitbox_timer <= 15 {
        vsp += 0.65
  }

 if hitbox_timer > 15{
	spawn_hit_fx (x,y, hams)
   if x < player_id.x {
   	   hsp += 1
   } else {
       hsp -= 1
   }
   if y < player_id.y - 50 {
   	  vsp += 1
   } else {
      vsp -= 1
   }
   
   if abs(x - player_id.x) < 300 and abs(y - player_id.y + 50) < 300 {
   	vsp/=1.2
   	hsp/=1.2
   	  x += floor((player_id.x - x)/6)
   	  y += floor((player_id.y - 50 - y)/6)
   }
   
   
   if hitbox_timer % 4 <= 1 {
   	 sprite_index = asset_get("empty_sprite")
   } else if hitbox_timer % 4 == 2 {
   	  sprite_index = sprite_get("hamburger")
   	  image_index = hitbox_timer/2
   } else if hitbox_timer % 4 == 3 {
   	  sprite_index = sprite_get("hamburger2")
   	  image_index = hitbox_timer/2
   }
   if abs(x - player_id.x) < 30 and abs(y - player_id.y + 50) < 30 && hitbox_timer > 30 {
   	destroyed = true
   	with player_id {
		oknifecount ++
        spawn_hit_fx(other.x,other.y,timeS)
        sound_stop(asset_get("sfx_ice_on_player"))
		sound_play(asset_get("sfx_ice_on_player"),false,noone,.9,1.5)
   	}
   }
   
}
}
if attack == AT_DSPECIAL && hbox_num == 6 && !free {
	 create_hitbox(AT_DSPECIAL , 5 , x  , y - 16 );
	 destroyed = 1
}

if attack == AT_DSPECIAL && hbox_num == 5 {

if hitbox_timer == 1 && free {
	destroyed = true
}

if hitbox_timer == 1 && !free{
	y += 8 
	hitbox_timer = 2
}

}

if attack == AT_FSPECIAL && hbox_num == 5 { 
	if hitbox_timer == 59 {
          player_id.oknifelost ++
	}
	
	if hsp > 0 {
		spr_dir = 1
	} 
	
	if hsp < 0 {
		spr_dir = -1
	}
	
	spawn_hit_fx (x , y + 20 - random_func(2,40,true) , hams)

	
}

if attack == AT_FSPECIAL && hbox_num == 6 {

if hitbox_timer == 0 or hitbox_timer % 4 == 0 {
	create_hitbox(AT_FSPECIAL,7,x,y)
}	
	
}
	

if attack == AT_FSPECIAL && hbox_num <= 4 {
	if hsp > 0 {
		spr_dir = 1
	} 
	
	if hsp < 0 {
		spr_dir = -1
	}
	
	if y > room_height {
		destroyed = true
                player_id.oknifelost ++
	}
    
    
    if hitbox_timer < 20 {
        if get_gameplay_time() % 6 == 0 {
        	spawn_hit_fx (x,y, hams)
        }
        
        if get_gameplay_time() % 10 == 0 {
        	spawn_hit_fx (x - hsp,y - vsp, hams)
        }
        
        if get_gameplay_time() % 14 == 0 {
        	spawn_hit_fx (x - hsp*3,y - vsp*3, hams)
        }
    
    } else {
        if get_gameplay_time() % 6 == 0 {
        	spawn_hit_fx (x,y, hamsd)
        }
        
        if get_gameplay_time() % 10 == 0 {
        	spawn_hit_fx (x - shsp*2,y - svsp*2, hamsd)
        }
        
        if get_gameplay_time() % 14 == 0 {
        	spawn_hit_fx (x - shsp*4,y - svsp*4, hamsd)
        }	
        
        if get_gameplay_time() % 30 == x%20 {
        spawn_hit_fx(x,y,timeS2)
        }
    }
    
    if hitbox_timer > 10 {
    	hsp /= 1.2
    	vsp /= 1.15
    	vsp -= 0.14
    }

    if hitbox_timer == 20 {
    	enemies = 0
    	spawn_hit_fx(x,y,timeS2)
        shsp = hsp*5
        svsp = vsp*5
        hit_priority = 0
        sound_stop(asset_get("sfx_spin"))
        sound_play(asset_get("sfx_spin"),false,noone,0.5,1.2);
    }
    
    if svsp < -7 {
    	svsp = -7
    }
    
    if hitbox_timer == 1 {
    	image_index = x%8
    }
    
    if hitbox_timer == 2 or hitbox_timer == 4 or hitbox_timer == 7 or hitbox_timer == 10 or hitbox_timer == 14 or hitbox_timer == 16
     or hitbox_timer == 21 or hitbox_timer == 26 or hitbox_timer == 32 or hitbox_timer == 40{
    		image_index += 1
    }

    if hitbox_timer < 0 && get_gameplay_time()% 2 == 1{
    	image_index += 1
    }
    
    if hitbox_timer >= 40 {
    	hitbox_timer = 40
    	hsp = 0
    	vsp = 0
    }
    
    if ((place_meeting(x + hsp, y + vsp , asset_get("par_block")))) {
     	sound_play(asset_get("sfx_icehit_weak1"));
     	vsp = -7
     	spawn_hit_fx(x,y+12,14)
    }
    
    if player_id.move_cooldown[AT_NSPECIAL_2] == 4 && hitbox_timer >= 20 {
    	hsp = shsp
        vsp = svsp
    	hitbox_timer = -60
    	player = orig_player
    	hit_priority = 9
    	spawn_hit_fx(x,y,timeS2)
    	for (var i = 1; i < 20; i++) can_hit[i] = true
    }  
    
    with (pHitBox) {
    
    nearbyhitbox = collision_circle( x, y , 48, other, true, true ) 
    
    
    if nearbyhitbox != noone && type == 1 && hitpause == 9.1412  {
    	
    	with player_id {
    	     vsp = -7
    	     set_attack (AT_FAIR)
    	     set_attack_value(AT_FAIR, AG_CATEGORY, 2);
    	     window = 4 
    	     window_timer = 0
    	     spawn_hit_fx (x, y + 6, 14)
    	}
    	
    }
    
    if nearbyhitbox != noone && type == 1 && hitpause == 1.1133  {
    	
    	with player_id {
    	    move_cooldown[AT_DTILT] = 60
    	    ethrow += 1
    	}
    	
    	with other {
    		destroyed = true
    	sound_stop(asset_get("sfx_ori_energyhit_heavy"))
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1.4)
    	}
    }
    
    if nearbyhitbox != noone && type == 1 && hitpause == 1.1412  {
    	with other {
    		destroyed = true
    		with player_id {
    		if state_timer < 400 {	
    		create_hitbox(AT_FSPECIAL,5,other.x,other.y)
    		}
    		
    		if state_timer >= 400 {	
    		create_hitbox(AT_FSPECIAL,6,other.x + 600*spr_dir,other.y)
    		spawn_hit_fx(other.x + 540*spr_dir,other.y,kls2)
    		spawn_hit_fx(other.x + 540*spr_dir,other.y,kls1)
    		sound_stop(sound_get("RI"))
    		sound_play(sound_get("RI"),false,noone,1,0.6)
    		other.player_id.oknifelost ++
    		}
    		
    		}
    	sound_stop(asset_get("sfx_ori_energyhit_heavy"))
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1.4)
    	}
    }
    
    if nearbyhitbox != noone && type == 1 && hitpause != 1.1412 && other.hitbox_timer > 0 {
		  if player_id.char_height != other.player_id.char_height {
		  	other.destroyed = true 
		  	other.player_id.oknifelost ++
		  	with other {
		  		sound_stop(asset_get("sfx_shovel_hit_heavy2"))
		        sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,1,1.4)
		  	}
		  }	
          with other {
          	enemies = 0
          	spawn_hit_fx(x,y,timeS2)
          	hit_priority = 10
			for (var i = 1; i < 20; i++) can_hit[i] = true
            hitbox_timer = -999
            sound_stop(asset_get("sfx_shovel_hit_light1"))
		    sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,1,1.4)
            shake_camera(4, 4)
		    
		    

               if other.attack != AT_JAB {
               if (other.kb_angle > 0 and other.kb_angle <= 45) or
               other.kb_angle  == 361{
                   hsp = 10 * other.spr_dir
                   vsp = -3
               } 
               
               if other.kb_angle > 45 and other.kb_angle <= 90 {
                   hsp = 3 * other.spr_dir
                   vsp = -10
               }  
               
               if other.kb_angle > 90 and other.kb_angle <= 135 {
                   hsp = -3 * other.spr_dir
                   vsp = -10
               }  
               
               if other.kb_angle > 135 and other.kb_angle <= 180 {
                   hsp = -10 * other.spr_dir
                   vsp = -6
               }  
               
              if other.kb_angle > 180 and other.kb_angle <= 215 {
                   hsp = -8 * other.spr_dir
                   vsp = 3
               }  
               
               if other.kb_angle > 215 and other.kb_angle <= 250 {
                   hsp = -6 * other.spr_dir
                   vsp = 6
               }  
               
               if other.kb_angle > 250 and other.kb_angle <= 295 {
                   hsp = 10 * other.spr_dir
                   vsp = 6
               }  
               
               
               if other.kb_angle > 295 and other.kb_angle <= 325 {
                   hsp = 10 * other.spr_dir
                   vsp = 3
               }  
               
               
               if other.kb_angle > 325 and other.kb_angle <= 360 {
                   hsp = 10 * other.spr_dir
                   vsp = 3
               }  
               } else {
               	   hsp = 6 * other.spr_dir
                   vsp = -2
               }
               
          }
	    }
    }
	    
}
    
