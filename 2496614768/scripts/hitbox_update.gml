//

if attack == AT_USTRONG && hbox_num == 4 {
	plasma_safe = true
	with player_id.hit_player_obj {
		
		other.x = x
		other.y = y - 30
		
		if !free {
			other.hit_priority = 9
		}
		
		if y + vsp > room_height {
			vsp = -4
			y = room_height - 60
			other.hit_priority = 9
		}
	}
	
	
}

if attack == AT_NSPECIAL && hbox_num == 1 {
    
    x = player_id.x + 26*player_id.spr_dir
    y = player_id.y - 40
    
    
    with oPlayer{
	if clone continue
	var heal_player = instance_place(x, y, other)
	if (heal_player != noone) {
	
    	if  id != other.player_id {
    		
             
            with  other.player_id {
            	soft_armor = 999
            	set_attack(AT_NSPECIAL)
            	window = 2
            	window_timer = 10
            }
           // Actually marth btw  
           //  if !can_attack or free{
		   //  if state == PS_PARRY or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD
		   //  or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD  or state == PS_AIR_DODGE or state == PS_TECH_GROUND or super_armor or soft_armor{
		   //  	if state == PS_PARRY or super_armor or soft_armor or perfect_dodging{
		   //      shake_camera(6,6)
		   //      with other {
		   //     sound_play(sound_get("RI"))
		   //      }
		   //     spawn_hit_fx (x,y-40, 306)
		   //     spawn_hit_fx (x,y-40, 156)
		   //     take_damage( player, -1 , 10);
		   //     super_armor = false
		   //     soft_armor = false
		   //  }
		   // 
		   // state_timer = 15
		   // window_timer = 15
		   // invincible = false
		   // perfect_dodging = false
		   // visible = true
		   // if !free {
		   // set_state(PS_PRATFALL)	
		   // }
		   // }
           //  } else {
           //  	perfect_dodging = true
           //  }
		    

		   if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND or super_armor or soft_armor{
		         shake_camera(6,6)
		         with other {
		        sound_play(sound_get("RI"))
		         }
		          with  other.player_id {
		             shock += 1
		          	
		          }
		        spawn_hit_fx (x,y-40, 304)
		        spawn_hit_fx (x,y-40, 302)
		        take_damage( player, -1 , 5);
		        super_armor = false
		        soft_armor = false
		     }
		     
		   
		   with other {
		       create_hitbox(AT_NSPECIAL,2,x,y)
		       destroyed = true
		   }
        }
        
   }    
    
}

    
}

if attack == AT_NSPECIAL && hbox_num == 7 {
	
	    
    x = player_id.x + 26*player_id.spr_dir
    y = player_id.y - 40
    
	    with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y-12, 34,other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player != other.player  && type == 2 && hit_priority != 0{
	    	
	    	hit_priority = 10
	    	
	    	damage *= 2
	    	
	    	transcendent = true
	    	hitbox_timer = 0
	    	can_hit_self = true
	    	player = other.player
	    	
	    	with other.player_id {
	    	    
	    	}
	    	
	    	with other {
	    		player_id.countered = 1
            sound_stop(sound_get("RI")); 
            sound_play(sound_get("RI")); 
            shake_camera(4, 6)
	    	
	    	player_id.shock += 1
	    	player_id.inactive = 150
	    	player_id.shocktimer = 300
                 
                 
	    	}
	    	
            spawn_hit_fx (x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	
			hsp *= -1.5
			vsp *= -1.5
			spr_dir *= -1
			//nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/40)
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			///nearbyhitbox.destroyed = true

	    }
	    
	} 
}

if attack == AT_FSPECIAL && hbox_num == 3 {
    
    x = player_id.victim.x
    y = player_id.victim.y - 30
    
   if hitbox_timer % 6 == 0 {
       create_hitbox(AT_FSPECIAL,4,x,y)
   }   
    
}



if attack == AT_EXTRA_1 && hbox_num == 5 {
   if player_id.timebreak == 0 {
   	destroyed = 1
   }	
	
   if hitbox_timer < 30 {
   	image_index = 0 - 1 + hitbox_timer/10
   } else {
   	image_index = 0 - 1 + 3
   }
	
}

if attack == AT_EXTRA_1 && hbox_num == 6 {
   if player_id.timebreak == 0 {
   	destroyed = 1
   }	
	
   if hitbox_timer < 30 {
   	image_index = 3 - 1 + hitbox_timer/10
   } else {
   	image_index = 3- 1 + 3
   }
	
}

if attack == AT_EXTRA_1 && hbox_num == 7 {
   if player_id.timebreak == 0 {
   	destroyed = 1
   }	
	
   if hitbox_timer < 18 {
   	image_index = 6 - 1 + hitbox_timer/6
   } else {
   	image_index = 6 - 1 + 3
   }
	
}

if attack == AT_EXTRA_1 && hbox_num == 8 {
   if player_id.timebreak == 0 {
   	destroyed = 1
   }	
	
   if hitbox_timer < 18 {
   	image_index = 9 - 1 + hitbox_timer/6
   } else {
   	image_index = 9 - 1 + 3
   }
	
}

if attack == AT_EXTRA_1 && hbox_num == 9 {
   if player_id.timebreak == 0 {
   	destroyed = 1
   }	
	
   if hitbox_timer < 18 {
   	image_index = 12 - 1 + hitbox_timer/6
   } else {
   	image_index = 12 - 1 + 3
   }
	
}