///
draw_xscale = spr_dir;



if attack == AT_FSPECIAL_2 && hbox_num == 2  {
   hit_effect_x = 20 - random_func(1,41,true)
   hit_effect_y = 20 - random_func(2,41,true)
   
   if hitbox_timer == 1 {
   with player_id.hit_player_obj {
   x += 5 - random_func(1,11,true)
   y += 5 - random_func(2,11,true)
   }
   hit_priority = 9
   }
   

}

if attack == AT_FSPECIAL_2 && hbox_num == 1  {
	image_index = hitbox_timer/4
	if free {
		hitbox_timer = 1
	} else {
		hsp = 0
	}
	
	
	if hitbox_timer = 3 {
		spawn_hit_fx(x,y+40,306)
		shake_camera(2,2)
		 sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,1,1)
		 sound_play(asset_get("sfx_frog_fspecial_charge_full"),false,noone,1,.8)
		 sound_play(asset_get("sfx_absa_kickhit"),false,noone,1,1)
	}
	
	if player_id.hit_player_obj.hitpause == true && hitbox_timer%4 == 2 {
		hitbox_timer -= 1 
	}
	
	if hitbox_timer/4 < 50 && player_id.hit_player_obj != player_id && player_id.hit_player_obj.hitpause == false {
		with player_id.hit_player_obj {
			x += floor((other.x + (other.spr_dir * 60) - x)/4)
			y += floor((other.y + 150 - y)/4)
		}
	}
	if hitbox_timer/4 == 6 {
		spawn_hit_fx(x,y+40,304)
				 sound_play(sound_get("sfx_regicry"),false,noone,1,1)
				 shake_camera(2,12)
	}
	
	if hitbox_timer/4 == 15 {
		 sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
	}
	
    if hitbox_timer/4 == 16 {
    	create_hitbox(AT_FSPECIAL_2,2,x,y + 40)
    }
    
    if hitbox_timer/4 == 17 {
		 sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
	}
	
    if hitbox_timer/4 == 18 {
    	create_hitbox(AT_FSPECIAL_2,2,x,y + 40)
    }
    
    if hitbox_timer/4 == 20 {
		 sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
	}
	
    if hitbox_timer/4 == 21 {
    	create_hitbox(AT_FSPECIAL_2,2,x,y + 40)
    }
    
    if hitbox_timer/4 == 22 {
		 sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
	}   
	
    if hitbox_timer/4 == 23 {
    	create_hitbox(AT_FSPECIAL_2,2,x,y + 40)
    }
 
    if hitbox_timer/4 == 24 {
       sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)	
    }
    
     if hitbox_timer/4 == 27 {
       sound_play(asset_get("sfx_kragg_spike"),false,noone,1,1)
       create_hitbox(AT_FSPECIAL_2,2,x,y + 40)	
    }
    
    if hitbox_timer/4 == 29 {
       sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)	
    }
    
     if hitbox_timer/4 == 31 {
       sound_play(asset_get("sfx_kragg_spike"),false,noone,1,1)
       create_hitbox(AT_FSPECIAL_2,2,x,y + 40)	
    }   
    
    if hitbox_timer/4 == 33 {
       sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)	
    }
    
     if hitbox_timer/4 == 35 {
       sound_play(asset_get("sfx_kragg_spike"),false,noone,1,1)
       create_hitbox(AT_FSPECIAL_2,2,x,y + 40)	
    }

    if hitbox_timer/4 == 37 {
       sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)	
    }
    
     if hitbox_timer/4 == 39 {
       sound_play(asset_get("sfx_kragg_spike"),false,noone,1,1)
       create_hitbox(AT_FSPECIAL_2,2,x,y + 40)	
    }
    
     if hitbox_timer/4 == 40 {
       sound_play(asset_get("sfx_spin"),false,noone,1,1)
    }
    
     if hitbox_timer/4 == 42 or hitbox_timer/4 == 44 or hitbox_timer/4 == 46 or hitbox_timer/4 == 48 or hitbox_timer/4 == 50 {
       sound_play(asset_get("sfx_spin"),false,noone,1,1)
       create_hitbox(AT_FSPECIAL_2,2,x,y + 40)	
    }
    
     if hitbox_timer/4 == 48  {
      sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,1,1)
    }
    
    if hitbox_timer/4 == 56  {
      		spawn_hit_fx(x,y+40,304)
				 sound_play(sound_get("sfx_regicry"),false,noone,1,1)
				 shake_camera(2,12)
    }
    
}


if attack == AT_USPECIAL {
	
   with player_id {
   	if "ai_target" in self {
   		other.x = x - 30*spr_dir 
   		other.y = y + 20
   	}
   }
   
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
        fx = spawn_hit_fx(x,y,305)
        fx.pause = 8
        fx = spawn_hit_fx(x,y,306)
        fx.pause = 8
        vsp = 0
        shake_camera(4,4)
        hit_priority = 9
        
       
        with player_id {
        	
        	/*
        	if !special_down {
        		prat_land_time = 16;
        		fx1 = spawn_hit_fx(x,y - 30,305)
        		fx2 = spawn_hit_fx(x,y - 55,305)
        		fx3 = spawn_hit_fx(x,y - 80,305)
        		fx1.pause = 6
        		fx2.pause = 6
        		fx3.pause = 6
            	x = other.x
            	y = other.y + 40
            	set_state(PS_PRATFALL)
            	vsp = -9
            	
            }
          */
            
        }
          
    }
   
    
    if hitbox_timer = 4*13 + 3 {
        image_xscale *= 2.2
        image_yscale *= 2.2
    }
    
    if hitbox_timer = 4*13 + 3 && player_id.state == PS_ATTACK_AIR{
        image_xscale *= 1.2
        image_yscale *= 1.2
        
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
	
		nearbyhitbox = collision_circle( x-12, y-12, 44 + abs(hsp) + abs(vsp),other, true, true ) 
	
	    
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
	    	
            fx = spawn_hit_fx (x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	fx.pause = 6 
			//hsp = (player_id.x - x)/35
			//vsp = (player_id.y - 30 - y)/35
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