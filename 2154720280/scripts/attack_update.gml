
	//B - Reversals

if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

if attack == AT_JAB && !hitpause{

	
	if window < 3 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN{
			hit_player_obj.hsp = ((x + (40 * spr_dir)) - hit_player_obj.x) / 10
	}
	

	
}


if attack == AT_DSTRONG {
    if window == 1 && window_timer == 1 {
        spr_dir *= -1
    }
}


if attack == AT_DAIR {
    
         if window == 1 && window_timer == 1 {
       	    if vsp > -2 {
       	    	vsp = -2
       	    }
         }
   fall_through = 1     
    can_fast_fall = false
    if window >= 2 {
    	if left_down {
    		x -= 1
    	}
    	if right_down {
    		x += 1 
    	}
    can_wall_jump = true
    }

    if has_hit_player or (y > room_height/2 + 300){
    	can_shield = true
    }
    
    
     if window == 1 && window_timer == 14 {
         sound_play(asset_get("sfx_swipe_heavy2"));
    }
    
    
    if window == 2 && !hitpause {
        vsp = 15
    }
    
    if window == 2 && hitpause  {
        vsp = 3
    }
    
    if window == 2 && window_timer == 10 && free {
        window_timer = 1
    }
    
}


if attack == AT_DATTACK {
    if has_hit && window == 4 {
    	window_timer += 1
    }
    if window == 2 {
    	hsp /= 1.01
    }
}


if attack == AT_NSPECIAL{
	
	if window = 3 { 
		move_cooldown[AT_NSPECIAL] = 10 
	}
	
     if free {
		vsp /= 2
		hsp /= 1.2
     }
	
	if window == 2 && batt < 1 && window_timer = 1 {
		sound_play(asset_get("sfx_holy_textbox"));
		window = 3 
		window_timer = 0
	}
	
    if window == 2 && batt >= 1 && window_timer == 1 && !hitpause  {
    	batt -= 1
    	create_hitbox(AT_NSPECIAL , 1 , x , room_height/2 - 1000 );
    }
}

if attack == AT_DTILT{
	
	if window == 1 && window_timer == 1 && !hitpause {
			sound_play(asset_get("sfx_jumpground"));
		
	}
	
	if window == 2 && window_timer == 1 && !hitpause && supply >= 2 && attack_down{
		supply -= 2
		spawn_hit_fx ( x + (42 * spr_dir) , y - 4, 305)
		create_hitbox(AT_DTILT , 2 , x + (42 * spr_dir) , y - 4 );
		
	}
	
}

if attack == AT_FSPECIAL{
  if state_timer < 5 {
  	if left_down && !right_down {
  		spr_dir = -1
  	}
  	
  	if !left_down && right_down {
  		spr_dir = 1
  	}
  }
	can_fast_fall = false
	if window = 1 && window_timer == 6 { 
		if special_down && supply >= 3 && !free{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -4.3);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);
				spawn_hit_fx( x  , y - 50 , 305 )
			window = 3
			window_timer = 0
			move_cooldown[AT_FSPECIAL] = 60
		}
		
		if special_down && supply >= 3 && free{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 2);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 4.4);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 6);
				spawn_hit_fx( x  , y - 50 , 305 )
				vsp = -6
			window = 5
			window_timer = 0
			move_cooldown[AT_FSPECIAL] = 60
		}
		
	}
	
		if window == 4 && window_timer == 1 && !hitpause  {

		if !free {
			hsp = 5 * (spr_dir)
		}
		 if supply >= 3{
		 	supply -= 3
			create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 22 );
			create_hitbox(AT_FSPECIAL , 2 , x + (32 * spr_dir) , y - 32 );
			create_hitbox(AT_FSPECIAL , 3 , x + (32 * spr_dir) , y - 42 );
		}
	}
	
	
		if window == 6 && window_timer == 1 && !hitpause {

			hsp = -3 * (spr_dir)
			vsp = -8 

		 if supply >= 3{
		 	supply -= 3
			create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 12 );
			create_hitbox(AT_FSPECIAL , 2 , x + (22 * spr_dir) , y - 02 );
			create_hitbox(AT_FSPECIAL , 3 , x + (12 * spr_dir) , y + 12 );
		}
	}
	
	
	
	
	if window == 2 && window_timer == 1 && !hitpause  {
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
		if !free {
			hsp = 5 * (spr_dir)
		}
		
		if supply < 2 {
		create_hitbox(AT_JAB , 1 , x + (32 * spr_dir) , y - 32 );	
		}
		 if supply >= 2{
		 	supply -= 2
			sound_play(sound_get("throw"));
			create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
		}
	}
	
     if window = 3 && window_timer == 12 {
			window = 4
			window_timer = 0
     }
     
     if window = 5 && window_timer == 15 {
			window = 6
			window_timer = 0
     }
     
}


if attack == AT_DSPECIAL{
	
	  if state_timer < 5 {
  	if left_down && !right_down {
  		spr_dir = -1
  	}
  	
  	if !left_down && right_down {
  		spr_dir = 1
  	}
  }
  
	can_fast_fall = false
	move_cooldown[AT_DSPECIAL] = 20 
    if window == 1 && window_timer == 1 {
    	
    	if supply >= 3 {
    		spawn_hit_fx ( x - ( 8 * spr_dir) , y - 30, 305)
    			sound_play(sound_get("shing"));
    	}
    	
    		if supply < 3 {
    			sound_play(asset_get("sfx_jumpair"));
    	}
    	
    	
    	
    	if !free {
			hsp -= (5 * spr_dir)
		}
		
		if free {
			window = 4
		}
    }	
    
    if window == 4 {
    	if window_timer < 15 {
    		hsp /= 1.2 
    		vsp /= 1.2
    	}
    	
    	if window_timer == 15 && !hitpause {
    		vsp = -6
    		if supply >= 3 {
    		if special_down {
    		sound_play(sound_get("throwapple"));
    		sound_play(asset_get("sfx_spin"));
        	supply -= 3
    	create_hitbox(AT_DSPECIAL , 3 , x , y - 42 );
    		}
    		}
    		
    		 if supply >= 3 {
    		if !special_down {
    		sound_play(sound_get("throwshake"));	
    		supply -= 3
    	create_hitbox(AT_DSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
    		}
    		}
    	}
    	
    }
    
    if window == 2 && window_timer == 1 && !hitpause && supply >= 3{
    	supply -= 3
    	sound_play(sound_get("throwshake"));
    	create_hitbox(AT_DSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
    }
    
        if window == 3 && window_timer == 1 && !hitpause && supply >= 3{
    	sound_play(sound_get("throwapple"));
    	sound_play(asset_get("sfx_spin"));
    	supply -= 3
    	create_hitbox(AT_DSPECIAL , 3 , x , y - 42 );
    }
    
    
	if window == 1  {
		
		if window_timer == 10 && !special_down{
			window = 2 
			window_timer = 0
		}

		if window_timer == 20 {
			window = 3
			window_timer = 0
		}
	}
	
}


if attack == AT_USPECIAL{
	if window == 1 && window_timer == 1 {
		    		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
    		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
    		set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
    		set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
	}
if window < 3 {	
can_fast_fall = false
} else {
	if vsp < 0 {
		vsp /= 1.01
	}
can_fast_fall = true	
}
if window == 1 {
	hsp /= 1.1
	vsp /= 2
}

if ((window == 3 && window_timer < 8) or (window < 3)) && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause {
	hit_player_obj.y += (y - hit_player_obj.y) / 5
	hit_player_obj.x += ((x + (36 * spr_dir)) - hit_player_obj.x) / 5
}
if window == 4 {
	
	if vsp < -2 && (special_down or attack_down) {
		vsp = -6
		window = 5
		window_timer = 2
		sound_play(sound_get("shing"));
		
	}
	
can_wall_jump = true	
if !free {
	set_state (PS_LAND)
}
}


}
	
	
	if attack == AT_EXTRA_3 {
		
		if window == 3 && window_timer == 1 {
			sound_play(sound_get("moshi"));
		}
		if window < 4 {
			draw_indicator = false
		}
		
		if window == 3 && window_timer == 36 {
			spawn_hit_fx ( x - (82 * spr_dir) , y - 40, 306)
			sound_play(sound_get("shing"));
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	if attack == AT_EXTRA_1 {
		
		if golden = 0 {
		invincible = true
		}
		
		if window == 1 && window_timer == 30 {
			spawn_hit_fx (x, y - 40, 306)
		}

if window == 5 {
	
			
			
				golden = 1
}
		if window == 4  {

			if ((window_timer == 1) or (window_timer % 6 == 0)) {
			spawn_hit_fx (x + (800 * spr_dir) , y - 46, laser)

			spawn_hit_fx (x+ (10 * spr_dir), y - 46, 306)
			
			}
			
			if hit_player_obj.state_cat == SC_HITSTUN {
			hit_player_obj.y += ((y - 20) - hit_player_obj.y) / 5
			hit_player_obj.x += 30 * spr_dir
			}
			
			if window_timer > 1 {
			create_hitbox(AT_EXTRA_1 , 1 , x + (800 * spr_dir)  , y - 46 );
			create_hitbox(AT_EXTRA_1 , 3 , x + (800 * spr_dir)  , y - 46 );
						if get_gameplay_time() < 300 {
			create_hitbox(AT_EXTRA_1 , 2 , hit_player_obj.x  , hit_player_obj.y);
						}
			}
		}
		
		
		if window == 2 && window_timer % 5 == 0 {
			spawn_hit_fx (x + (10* spr_dir), y - 56, 302)
		}
		
		if window == 2 && window_timer == 1 {
			if golden = 0 {
			sound_play(sound_get("shock1"));
				var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}

            
			if (shortest_id.x < x) {
				spr_dir = 1;
			} else {
				spr_dir = -1;
			}
			
			x = shortest_id.x + (-80 * spr_dir)
			y = shortest_id.y
			}
		}
		
		if window == 2 && window_timer == 1 {
			spawn_hit_fx (x + (10* spr_dir), y - 56, 304)
		}
	}
	

	
	
	if attack == AT_EXTRA_2 {

if hitpause {
	window_timer += 1
}
		invincible = true

		
		if window == 1 && window_timer == 30 {
			spawn_hit_fx (x, y - 40, 306)
		}

		if window == 4  {
			if window_timer < 10 {
		    batt -= 1
			}
			
			if ((window_timer == 1) or (window_timer % 6 == 0)) {
			spawn_hit_fx (x + (800 * spr_dir) , y - 46, laser)
			spawn_hit_fx (x+ (10 * spr_dir), y - 46, 306)
			
			}
			
			if hit_player_obj.state_cat == SC_HITSTUN {
			hit_player_obj.y += ((y - 20) - hit_player_obj.y) / 5
			hit_player_obj.x += 3 * spr_dir
			}
			
			
			if window_timer > 1 && window_timer % 3 == 0 {
			create_hitbox(AT_EXTRA_2 , 1 , x + (880 * spr_dir)  , y - 46 );
			create_hitbox(AT_EXTRA_2 , 3 , x + (880 * spr_dir)  , y - 46 );
						if get_gameplay_time() < 300 {
			create_hitbox(AT_EXTRA_2 , 2 , hit_player_obj.x  , hit_player_obj.y);
						}
			}
		}
		
		
		if window == 2 && window_timer % 5 == 0 {
			spawn_hit_fx (x + (10* spr_dir), y - 56, 302)
		}
		
		
		if window == 2 && window_timer == 1 {
			spawn_hit_fx (x + (10* spr_dir), y - 56, 304)
		}
	}
	

if attack == AT_NAIR{
	if window == 1 {
		nairtime = 0
	}

	if window == 5 && window_timer == 3 {
		if nairtime < 1 {
			coindrop = 0
			nairtime += 1
			window = 2 
			window_timer = 0
			

		}
	}
}	
	
