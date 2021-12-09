///

plasma_safe = true

if attack == AT_EXTRA_2 && hbox_num < 5{
	
	with player_id {
		if other.hitbox_timer < 10 {
		uphit = 0
		downhit = 0
		sidehit = 0
		neutralhit = 0
		}
	    	
	    if other.hitbox_timer > 2 && other.hitbox_timer < 10 && attack != AT_EXTRA_2 {
	    	other.hitbox_timer = 20
	    }
	}

	spr_dir = player_id.finaldir 
	
	if hitbox_timer < 18 + (15 * hbox_num) {
		
	if player_id.attack == AT_EXTRA_2 {
		y -= 1
	}
	

		image_index = hitbox_timer%16/4
		hsp /= 1.08
		vsp /= 1.1
	} else {
		image_index = hitbox_timer%10/5 + 4
		hit_priority = 9
		spawn_hit_fx(x,y + 10 + random_func(y%5,20,true), i1)
	}
	
	if hitbox_timer == 18 + (15*hbox_num) {
		shake_camera(4,4) 
		spawn_hit_fx(x,y - 30,bh3)
		spawn_hit_fx(x,y - 30,bh2)
		sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1,0.8 + random_func(4,4,true)/10)
				       hsp = (player_id.inkvictim.x - x)/6
                       vsp = (player_id.inkvictim.y - 30 - y)/12
	}
	
}

if attack == AT_NSPECIAL {
	
	
	x = player_id.x
	y = player_id.y - 30
	
	
	    with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y-12, 34,other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player_id != other.player_id && type == 2 && hit_priority != 0 && can_hit_self == false{
	    	
	    	damage *= 1.5 
	    	
	    	can_hit[other.player] = false
	    	
	    	transcendent = true
	    	hitbox_timer = 0
	    	can_hit_self = true
	    	

	    	
	    	with other {
	    		
	    		player_id.move_cooldown[AT_EXTRA_1] = 60
	    		
            sound_stop(sound_get("RI")); 
            sound_play(sound_get("RI")); 
            shake_camera(4, 6)
	    		
	    	}
	    	
            spawn_hit_fx (x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	

			
			var angle = point_direction(x, y, player_id.x, player_id.y - 40 );

            hsp = lengthdir_x(10, angle)
            vsp = lengthdir_y(10, angle)
			
			
				if hsp < 0 {
                    spr_dir = -1
                } 
                
                if hsp > 0 {
                    spr_dir = 1
                }
    
			//nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/40)
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			///nearbyhitbox.destroyed = true

	    }
	    
	}   
	
}
	
	
