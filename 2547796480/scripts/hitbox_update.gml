///

if attack == AT_FSPECIAL && hbox_num == 5 { 
	
	if hsp > 0 {
		spr_dir = 1
	} 
	
	if hsp < 0 {
		spr_dir = -1
	}
	
	spawn_hit_fx (x , y + 20 - random_func(2,40,true) , hams)

	
}

if attack == AT_FSPECIAL && hbox_num <= 4 {
	
	if hsp > 0 {
		spr_dir = 1
	} 
	
	if hsp < 0 {
		spr_dir = -1
	}
	
	if y > room_height or hit_effect_x > 15 {
		destroyed = true
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
    	hitbox_timer = -30
    	player = orig_player
    	hit_priority = 9
    	spawn_hit_fx(x,y,timeS2)
    	for (var i = 1; i < 20; i++) can_hit[i] = true
    }  
    
    with (pHitBox) {
    
    nearbyhitbox = collision_circle( x, y , 48, other, true, true ) 
    
    
    if nearbyhitbox != noone && type == 1 && hitpause == 6.1412  {
    	
    	with nearbyhitbox.player_id {
    	     vsp = -7
    	     set_attack (AT_FAIR)
    	     set_attack_value(AT_FAIR, AG_CATEGORY, 2);
    	     window = 4 
    	     window_timer = 0
    	     spawn_hit_fx (x, y + 6, 14)
    	}
    	
    }
    
    if nearbyhitbox != noone && type == 1 && hitpause == 1.1133  {
    	
    	with nearbyhitbox.player_id {
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
    		create_hitbox(AT_FSPECIAL,5,other.x,other.y)
    		}
    	sound_stop(asset_get("sfx_ori_energyhit_heavy"))
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1.4)
    	}
    }
    
    if nearbyhitbox != noone && type == 1 && hitpause != 1.1412 && other.hitbox_timer > 0{
			
          with other {
          	enemies = 0
          	spawn_hit_fx(x,y,timeS2)
          	hit_priority = 10
			for (var i = 1; i < 20; i++) can_hit[i] = true
		    player = other.player
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
    
