//

plasma_safe = true

if attack == AT_USPECIAL {
    
  if hitbox_timer % 4 == 0 {     
   spawn_hit_fx(x + 8 - random_func(1,17,true), y - 8 - random_func(2,17,true), bd2)   
  }
  
  if hitbox_timer % 18 == 3 { 
     spawn_hit_fx(x + 8 - random_func(1,17,true), y - 8 - random_func(2,17,true), bd1)  
  }
  
  if hitbox_timer < 30 {
      hsp /= 1.07
      vsp /= 1.07
  } else {
      
      hsp = (player_id.x - x)/6
      vsp = (player_id.y - 20 - y)/6
      
      
  }
  
  if hitbox_timer == 40 {
      
      sound_play(asset_get("sfx_holy_grass"),false,noone,1, 1)
      destroyed = true
      
      with player_id {
        if brage >= 10 && other.hbox_num == 9{
		brage -= 10
		bragesub -= 2
		}
		
		if ragemode {
		    ragemode += 15
		}
          take_damage(player,-1,-2)
      }
  }
      
}
    
    
if attack == AT_DTILT && hbox_num == 1 {
    
    if hsp != 0 {
    hsp -= .2*spr_dir
    }
    
    
    
    with player_id {
        if  move_cooldown[AT_NSPECIAL] != 0 {
          x = other.x 
          
          set_attack_value(attack, AG_OFF_LEDGE, 1);
          
          if free {
              y = other.y - 32
              vsp = -4
          } else {
              y = other.y - 12
          }
          other.destroyed = true  
        }
        if (state == PS_ATTACK_GROUND or state == state == PS_ATTACK_AIR) && attack == AT_TAUNT{
        	other.destroyed = true  
        }
    }
    
    player_id.famix = x
    player_id.famiy = y
    
    player_id.move_cooldown[AT_EXTRA_3] = 4
    player_id.move_cooldown[AT_DTILT] = 4
    player_id.move_cooldown[AT_DSPECIAL] = 4

    
    if abs(hsp) < 3 {
        if hitbox_timer > 20 {
            sound_play(sound_get("swingw1"),false,noone,.8, .9)
            hitbox_timer = 1
        }
        hitbox_timer -= 1
        sprite_index = asset_get("empty_sprite")
        
    } else {
        
        
        image_index = 16 + (get_gameplay_time()/(3))%4
        
        if hitbox_timer == 1 or hitbox_timer % 6 == 0 {
             sound_play(sound_get("swingw1"),false,noone,.5, 1.25)
             create_hitbox(AT_DTILT,2,x,y - 66 )
        }
        
        
    }
    

}




if attack == AT_NSPECIAL {
	
	if hbox_num == 2 {
	x = player_id.x
	y = player_id.y - 40
	}
	
	if hbox_num == 3 {
	    x = player_id.x + 36*spr_dir
	  y = player_id.y - 38  
	}
	
	    with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y-12, 34,other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player_id != other.player_id && type == 2 && hit_priority != 0 && can_hit_self == false{
	    	
	    	damage += 5
	    	
	    	can_hit[other.player] = false
	    	
	    	transcendent = true
	    	hitbox_timer = 0
	    	can_hit_self = true
	    	

	    	
	    	with other {
	    		with player_id {
	    		 set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_HSPEED, -8 + random_func(6,17,true));
                 set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_VSPEED, -8 + random_func(5,17,true));
	    		}
	    	    create_hitbox(AT_USPECIAL,9,other.x,other.y - 40 )
	    	sound_stop(sound_get("tauntflash")); 
            sound_stop(sound_get("slice")); 
            
            sound_play(sound_get("tauntflash"),false,noone,.7,1.2); 
            sound_play(sound_get("slice"),false,noone,.7,1.5); 
            shake_camera(4, 6)
	    		
	    	}
	    	
            spawn_hit_fx (x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	
			destroyed = true
			
			//nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/40)
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			nearbyhitbox.destroyed = true

	    }
	    
	}   
	
}
	
	
