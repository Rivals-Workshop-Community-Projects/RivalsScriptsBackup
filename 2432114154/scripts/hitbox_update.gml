///

plasma_safe = true

if attack == AT_EXTRA_2 && hbox_num < 5{
	
	
	   
	with player_id {
		sound_stop(sound_get("zoice_chit1"))
		sound_stop(sound_get("zoice_chitn"))
		sound_stop(sound_get("zoice_chith"))
		sound_stop(sound_get("zoice_chitv"))
		hit_player_obj.hsp = 0
		hit_player_obj.vsp = 0
		if other.hitbox_timer < 10 {
		uphit = 0
		downhit = 0
		sidehit = 0
		neutralhit = 0
		}
	    	
	    if attack != AT_EXTRA_2 {
	    	
	    	with other {
	    	if hitbox_timer == hbox_num*8 {
	    	 hitbox_timer = 18 + (15*hbox_num) - 1
	    	}
	    	}
	    	
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
                       
        if hbox_num == 1 && player_id.attack != AT_EXTRA_2 {

	   }
	   
	}
	
}

if attack == AT_NSPECIAL {
	
	
	x = player_id.x
	y = player_id.y - 30
	
	
	 with asset_get("pHitBox") {
	   
	   
	   
		nearbyhitbox = collision_circle( x-12, y-12, 34,other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player_id != other.player_id && type == 2 && hit_priority != 0 && can_hit_self == false{
	    	
	    	
	    	with other.player_id {
	    		djumps = 0
	    		attack_end()
	    		set_attack(AT_NSPECIAL)
	    		window = 2
	    		window_timer = 1
	    		hit_player_obj = other.player_id
	    	 if move_cooldown[AT_EXTRA_1] == 0 {
	    		sound_play(sound_get("zoice_shine"),false,noone,zolume,zitch)
    	     	sound_play(sound_get("zoice_shine"),false,noone,zolume,zitch)
	    	 }
	    		move_cooldown[AT_EXTRA_1] = 30
	    		spawn_counter += max(3, floor(other.damage/1.5) + floor(other.kb_value*(1 + other.kb_scale*2)))
                sound_play(sound_get("RI"),false,noone,1,max(1, 1.4 - (hit_player_obj.hitpause*hit_player_obj.hitpause)/100))
                shake_camera(4,2)
                spawn_hit_fx(x,y - 36,302)
                counter_x = other.x 
                counter_y = other.y
	    	}
	    	spawn_hit_fx(x,y,302)
			hit_priority = 0
			destroyed = true
			
	    }
	    
	}   
	
}
	
if attack == AT_DTILT && hbox_num == 4 {
	

	if hsp < 0 {
       spr_dir = -1
    } 
    
    if hsp > 0 {
        spr_dir = 1
    }
    
    if hitbox_timer == 1 {
    	spawn_hit_fx(x,y,bh2)
    }
    
	if hitbox_timer < 30 {
		vsp /= 1.05
		hsp /= 1.05
		image_index = hitbox_timer/3
	} else {
		if hitbox_timer % 2 == 0 {
		   gat = spawn_hit_fx(x,y ,bh2)
		   gat.spr_dir = .5
           gat.image_yscale = .5
		}
		image_index = hitbox_timer
	}
	
	if hitbox_timer >= 30 {
		if hitbox_timer == 30 {
	    spawn_hit_fx(x,y,bh2)
		hit_priority = 9
		sound_play(asset_get("sfx_swish_medium"),false,noone,1,.6 + (random_func(1,30,true)/100))
		} else if hitbox_timer < 60 {
		var angle = point_direction(x, y, player_id.hit_player_obj.x - 20 - random_func(2,41,true), player_id.hit_player_obj.y - 16 - random_func(1,40,true) );

            hsp = lengthdir_x(12, angle)
            vsp = lengthdir_y(12, angle)
		}
		
	}
	
}
