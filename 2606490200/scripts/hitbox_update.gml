///

if attack == AT_USPECIAL {
    
    if player_id.state_cat == SC_HITSTUN {
        destroyed = true
    }
    

    image_index = hitbox_timer/4
    
    if hitbox_timer < 4*13 && player_id.htrain >= 100 {
    with player_id {
        other.vsp = 0
        other.hsp = 0
        if left_down {
        	movex -= 3
            other.x -= 4
        } 
        if right_down {
        	movex  += 3
            other.x += 4
        }
        if up_down {
        	movey -= 3
            other.y -= 4
        }
        if down_down{
        	movey += 3
            other.y += 4
        }
    }
    }
    
    if hitbox_timer < 4*13 && player_id.htrain < 100 {
    with player_id {
        other.vsp = 0
        other.hsp = 0
        if left_down {
        	movex -= 1.5
            other.x -= 2
        } 
        if right_down {
        	movex  += 1.5
            other.x += 2
        }
        if up_down {
        	movey -= 1.5
            other.y -= 2
        }
        if down_down{
        	movey += 1.5
            other.y += 2
        }
    }
    }
    
    
    if hitbox_timer = 4*13  {
        sound_play(asset_get("sfx_abyss_explosion"),false,noone,1,1)
        sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1)
        spawn_hit_fx(x,y,306)
        spawn_hit_fx(x,y,305)
        vsp = 0
        shake_camera(4,4)
        hit_priority = 9
        
        
        with player_id {
        	
        	
        	if !special_down {
        		prat_land_time = 16;
        		spawn_hit_fx(x,y - 10,305)
        		spawn_hit_fx(x,y - 40,305)
        		spawn_hit_fx(x,y - 70,305)
            	x = other.x
            	y = other.y + 40
            	set_state(PS_PRATFALL)
            	vsp = -9
            	
            }
            
            
        }
    }
    
    if hitbox_timer = 4*13 + 3 {
        image_xscale *= 2
        image_yscale *= 2
    }
    
    if hitbox_timer = 4*13 + 3 && player_id.special_down && player_id.state == PS_ATTACK_AIR{
        image_xscale *= 1.3
        image_yscale *= 1.3
        
        create_hitbox(AT_USPECIAL,2,x,y)
        
        with player_id {
            	set_state(PS_PRATFALL)
            	vsp = -9
            	
        }
        
    }
    
    
    	
}

if attack == AT_NSPECIAL && hbox_num == 2 {
	
	
	x = player_id.x - 4*spr_dir
	y = player_id.y - 50
	
	
	    with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y-12, 34,other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player_id != other.player_id && type == 2 && hit_priority != 0 && can_hit_self == false{
	    	
	    	damage += 5
	    	
	    	can_hit[other.player] = false
	    	
	    	transcendent = true
	    	hitbox_timer = 0
	    	can_hit_self = true
	    	

	    	
	    	with other {
	    		
            sound_stop(sound_get("parried")); 
            sound_play(sound_get("parried")); 
            shake_camera(4, 6)
	    		
	    	}
	    	
            spawn_hit_fx (x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	
			hsp = (player_id.x - x)/10
			vsp = (player_id.y - 30 - y)/10
			spr_dir *= -1
			
			
			//nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/40)
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			///nearbyhitbox.destroyed = true

	    }
	    
	}   
	
}