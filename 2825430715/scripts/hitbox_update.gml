///
if attack == AT_TAUNT_2 {
	
	with player_id {
		        	if get_gameplay_time() % 4 == 0 {
		        	pgfx = spawn_hit_fx(other.x,other.y + 18, stonef)
		        	pgfx.spr_dir = 0.6
		        	pgfx.image_yscale = 0.6
		        	}
	}
	
	hsp = 0 
	vsp = 0
	transcendent = true
	var angle = point_direction(x, y, player_id.hit_player_obj.x , player_id.hit_player_obj.y - 30);
	        
		        
    x += lengthdir_x(22, angle)
    y += lengthdir_y(22, angle)
}

if attack == AT_DTILT {
    
    if hitbox_timer == 39 or (hitbox_timer > 5 && free) {
    	destroyed = true
    }

}

if attack == AT_DTHROW && hbox_num == 4 {
	hsp /= 1.15
	vsp /= 1.15

	
	if player_id.state_cat == SC_HITSTUN {
		destroyed = true
	}
	if has_hit {
		if hitbox_timer < 66 {
		with player_id.hit_player_obj {
			x += ((other.x - x)/4)
			y += ((other.y - y + 6)/4)
		}
		}
		
		if hitbox_timer > 56 {
			if hitbox_timer == 57 {
			sound_play(sound_get("SpaceCut"),false,noone,.6,.8)
			}
			gone = spawn_hit_fx(x,y ,ptgone)
			gone.spr_dir = 0.6*spr_dir
    		gone.image_yscale = 0.6
			gone.depth = -6
		}
		
		if hitbox_timer == 66 {
			gone = spawn_hit_fx(x,y + 30,ptgone)
			gone.depth = -6
			shake_camera(4,4)
			sound_play(sound_get("SpaceCut"),false,noone,1,1.2)
			if player_id.move_cooldown[AT_FTHROW] >= 4 {
				with player_id {
					gone =spawn_hit_fx(portalx,portaly + 30,ptgone)
					gone.depth = -6
			          hit_player_obj.x = portalx
			          hit_player_obj.y = portaly + 30
	           }
	           player_id.move_cooldown[AT_FTHROW] = 10
			}
		}
		
	}
	
	
	with oPlayer {
		if id = other.player_id {
			if attacking && attack == AT_DSPECIAL && window == 1 {
		      if !up_down and !down_down {
		      	other.hsp += (right_down - left_down)*.9
		      } else {
		      	other.hsp += (right_down - left_down)*.7
		      }
		      
		      if !right_down and !left_down {
		      	other.vsp -= (up_down - down_down)*.9
		      } else {
		      	other.vsp -= (up_down - down_down)*.7
		      }
			}
	   }
	}
	
	image_index = floor(hitbox_timer/5) 
	
	if player_id.attack == AT_DSPECIAL && player_id.attacking = true {
	if player_id.window == 1 {
		if hitbox_timer % 3 == 0 {
			ptprep = spawn_hit_fx(x + 20 - random_func(2,40,true),y + 50 - random_func(1,50,true) ,ptgone)
    					ptprep.spr_dir = 0.3*spr_dir
    					ptprep.image_yscale = 0.3
		}
		if hitbox_timer >= 19 {
			hitbox_timer = 0
		}
	}
	
	if player_id.window == 2 {
		hitbox_timer = 20 + player_id.window_timer
	}
	if player_id.window == 3  && hitbox_timer < 40 {
	   hitbox_timer = 41	
	   hit_priority = 9
	}
	if hitbox_timer = 50 {
		player_id.move_cooldown[AT_DSPECIAL] = 30
		hit_priority = 0
		image_xscale = 0
	}
	}
}

if attack == AT_DTHROW && hbox_num == 1 {
	

    if player_id.move_cooldown[AT_FTHROW] > 5 {
    	destroyed = true
    	gone = spawn_hit_fx(x,y + 30,ptgone)
			gone.depth = -6
    }
    hsp /= 1.4
    vsp /= 1.4

    
    
	if !free {
		y -= 2
	}
	player_id.move_cooldown[AT_FTHROW] = 5
	hitbox_timer -= 1
	image_index = get_gameplay_time()/3
	
	/*
	if player_id.attack == AT_USPECIAL && player_id.window == 1 && player_id.window_timer == 6 && player_id.special_down == false && (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) {
		
		
		
		with player_id {
			spawn_hit_fx(x,y ,ptgone)
			spawn_hit_fx (x, y, rollfx)
			attack = AT_FSPECIAL
			window = 4
			window_timer = 1
			vsp = -9
		}
		
    		spawn_hit_fx(x,y + 30,ptgone)
    		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,.8,0.8)
            sound_play(asset_get("sfx_clairen_tip_strong"))
            destroyed = true
            player_id.x = x 
            player_id.y = y + 30
            
		
	}
	*/
	
	with (pHitBox) {
		hitdetect = collision_circle( x, y , 44, other, true, true ) 
	if hitdetect != noone && type == 1 && player_id != other.player_id && hit_priority > 0 {
    	with other {
    		
    		spawn_hit_fx(x,y + 30,ptgone)
    		sound_stop(asset_get("sfx_clairen_tip_strong"))
    		sound_stop(asset_get("sfx_ori_energyhit_medium"))
    		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,.8,0.8)
            sound_play(asset_get("sfx_clairen_tip_strong"))
            destroyed = true
    	}
    }
	}
	
    with oPlayer {
    	if id == other.player_id {
    		if attacking {
    			portalx = other.x 
                portaly = other.y
                 
                 if attack == AT_DSPECIAL {
    				if window == 1 {
    					if get_gameplay_time() % 4 == 0 {
    					ptprep = spawn_hit_fx(other.x + 20 - random_func(2,40,true),other.y + 50 - random_func(1,50,true) ,ptgone)
    					ptprep.spr_dir = 0.5*spr_dir
    					ptprep.image_yscale = 0.5
    					}
    					var angle = point_direction(other.x, other.y, x + 60*spr_dir, y - 40);
                        
                        other.hsp += lengthdir_x(2, angle)
                        other.vsp += lengthdir_y(2, angle)
                        
                        other.hsp = clamp(other.hsp, -6, 6);
                        other.vsp = clamp(other.vsp, -6, 6);
                        other.depth = depth + 1
    				}
    			}
    			
    			if attack == AT_FSPECIAL or attack == AT_NSPECIAL {
    				if window < 3 {
    					ptprep = spawn_hit_fx(other.x + 20 - random_func(2,40,true),other.y + 50 - random_func(1,50,true) ,ptgone)
    					ptprep.spr_dir = 0.5*spr_dir
    					ptprep.image_yscale = 0.5
    					var angle = point_direction(other.x, other.y, hit_player_obj.x + hit_player_obj.hsp + hit_player_obj.old_hsp, 
                        hit_player_obj.y - 40 + hit_player_obj.vsp + hit_player_obj.old_vsp);
                        
                        other.hsp += lengthdir_x(1.2, angle)
                        other.vsp += lengthdir_y(1.2, angle)
                        
                        other.hsp = clamp(other.hsp, -5, 5);
                        other.vsp = clamp(other.vsp, -5, 5);
    				}
    				
                    
    			}
  			
    		}
    	}
    }
    
}

if attack == AT_DTHROW && hbox_num == 2 {	
	if has_hit {
		with player_id {
			punch = spawn_hit_fx (portalx + 30*spr_dir, portaly - 6, ptp)
			punch.depth = -6
		}
	}
	
}


if attack == AT_DTHROW && hbox_num == 3 {	
	if has_hit {
		with (pHitBox) {
			if player_id = other.player_id && type == 1{
				hitbox_timer = 1
				if hbox_num == 1 {
				sound_effect = 1
				}
			}
		}
		if hitbox_timer > 0 {
	    	hitbox_timer = -12
		}
		if hitbox_timer == -1 {
			gone = spawn_hit_fx(x,y + 30,ptgone)
			gone.depth = -6
			gone2 = spawn_hit_fx(player_id.x + 50*spr_dir,player_id.y,ptgone)
			gone2.depth = -6
			with player_id{ 
			   hit_player_obj.x = x 
			   hit_player_obj.y = y - 6
			   has_hit_player = true 
			}
			destroyed = true 
		}
		with player_id {
			hsp = 1
			window_timer = 5
		}
		with player_id.hit_player_obj {
			x += ((other.x - x)/4)
			y += ((other.y - y + 6)/4)
		}
	}
	
}


if attack == AT_FSPECIAL && hbox_num == 3 {	

    x = player_id.x + 44*spr_dir
    y = player_id.y - 36
    
with oPlayer{
	if clone continue
	var heal_player = instance_place(x, y, other)
	if (heal_player != noone) {
	
    	if  id != other.player_id {
    		if "fakeinvi" in self {
    			if fakeinvi > 0 {
    				
    			} else {
    				state_timer = 99
		            invincible = 0
		            window_timer = 99
    			}
    		}
		    state_timer = 99
		    invincible = 0
		    window_timer = 99
        }
        
   }    
    
}

}


