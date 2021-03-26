///

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if !hitpause {
	sshsp += floor(((x-30*spr_dir)-sshsp)/5)
    ssvsp += floor((y-26-ssvsp)/5)
}

if timepat == 9 && timetimer == 0 {
	timetimer = 600
	    spawn_hit_fx(x - 30*spr_dir, y - 45,304)
	sound_play(sound_get("timestop"),false,noone,2)
	sound_play(sound_get("RI"),false,noone,1)
}

if !hitpause && timetimer > 1 {
	 timetimer -= 1
}

if timetimer == 1 or ((state == PS_DEAD or state == PS_RESPAWN) && state_timer == 1 ) {
	timepat = 0
	timetimer = 0
	spawn_hit_fx(x - 30*spr_dir, y - 45,302 )
	sound_play(asset_get("sfx_ori_grenade_aim"),false,noone,1.0)
}
if !instance_exists(hit_player_obj) {
	hit_player_obj = self
}

if !free or state == PS_WALL_JUMP or state_cat == SC_HITSTUN {
		move_cooldown[AT_USPECIAL] = 0
		move_cooldown[AT_FSPECIAL] = 0
}

if get_gameplay_time() <= 120 {
	
	if get_gameplay_time() == 50 {
   sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1.4)
	}
	
	if get_gameplay_time() < 120 - 35 {
		
	if get_gameplay_time() % 10 == 0 {
		spawn_hit_fx (x + 10 - random_func(1,20,true), y - 280 + get_gameplay_time()*3 , 305)
		spawn_hit_fx (x + 40 - random_func(2,80,true), y  , intro3)
		spawn_hit_fx (x + 40 - random_func(2,80,true), y - 200  , intro3)
	  spawn_hit_fx (x , y - 50 , intro2)
		sound_play(asset_get("sfx_clairen_tip_loop"));
	}
}

if get_gameplay_time() == 120 - 35 {
		spawn_hit_fx (x, y - 0, intro1)
		spawn_hit_fx (x, y - 200, intro1)
	sound_play(asset_get("sfx_holy_lightning")); 
    sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
	sound_play(asset_get("sfx_absa_whip3"),false,noone,1.4)
	shake_camera (6,10)
	spawn_hit_fx (x, y - 40 , 306)
	spawn_hit_fx (x, y , intro4)
}


	if get_gameplay_time() <= 120 - 35 {
		set_attack(AT_USTRONG)
		window = 2
		window_timer = 2
		visible = false
	} else {
		
	if get_gameplay_time() <= 120 - 20 {
		spawn_hit_fx (x + 20 - random_func(2,40,true), y  , intro3)
		spawn_hit_fx (x + 20 - random_func(2,40,true), y - 200  , intro3)
	}
	
	
		visible = true
	}
	

}


		with (pHitBox) {
					     if player_id == other.id {
			if (attack == AT_NSPECIAL && hbox_num == 9) or  (attack == AT_FSPECIAL && hbox_num == 10){
				hsp /= 1.05
				vsp /= 1.05
				
				if attack == AT_NSPECIAL {
            	player_id.move_cooldown[AT_NSPECIAL] = 5
				}
            	    
            	    with oPlayer{
                    	if clone continue
                    	var heal_player = instance_place(x, y, other)
                    	if (heal_player != noone) {
                    		
                    		if "timepat" not in self {
                    		          if free && !hitpause && state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR {
                    	               vsp -= 0.1
                    		          }
                    		          
                    		          if state_cat == SC_HITSTUN {
                    		          	if vsp < 0 {
                    		          		vsp -= 0.06
                    		          	}
                    		          	if free && !hitpause {
                    		          		state_timer -= 0.5
                    		          	}
                    		          	if vsp > 0 {
                    		          		vsp /= 1.1
                    		          	}
                    		          }
                    		          
                    	    	       if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
                    	    	       	  if state_timer % 2 == 0 && !hitpause{
                    	    	       	  	hitpause = true;
                                            hitstop = 1;
                                            hitstop_full = 1;
                                            old_hsp = hsp;
                                            old_vsp = vsp;
                    	    	       	  }
                    	    	       }
                    
                    
                        	    } else {
                        	    	if timepat < 9 {
                    		          if free && !hitpause && state_cat != SC_HITSTUN
                    		          && state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR {
                    	               vsp -= 0.1
                    		          }
                    		          
                    		          if state_cat == SC_HITSTUN {
                    		          	
                    		          	if free {
                    		          		state_timer = 0
                    		          	}
                    		          	if vsp > 0 {
                    		          		vsp /= 1.1
                    		          	}
                    		          }
                    		          
                    	    	       if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
                    	    	       	  if state_timer % 2 == 0 && !hitpause{
                    	    	       	  	hitpause = true;
                                            hitstop = 1;
                                            hitstop_full = 1;
                                            old_hsp = hsp;
                                            old_vsp = vsp;
                    	    	       	  }
                    	    	       }
                    
                    
                        	    } else {
                        	    	other.hitbox_timer = 495
                        	    		other.x += floor((x - other.x)/5)
                                        other.y += floor((y - 30 - other.y)/5)
                        	    }
                        	    
                        	    }
                    	}
                           }    
                            
                        } 
    
            

           if player_id.timepat < 9 {
		     effect = 0
		     extra_hitpause = 0
           } else {
           	 effect = 11
           	 extra_hitpause = 10
           }
		     no_other_hit = 0
  	    }
		}
  	    
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true 
	
	if has_hit_player && timehit = 0{
		    timehit = 1
		    if  timepat < 9 {
		    timepat += 1
		    } else {
		    sound_play(asset_get("sfx_ori_energyhit_medium"))
	        }
	}
	if attack == AT_USPECIAL && has_hit_player && hitpause && 	hit_player_obj != self {
		y -= 5
		hit_player_obj.x += ((x + (30 * spr_dir)) - hit_player_obj.x) / 10
		hit_player_obj.y += ((y + 60) - hit_player_obj.y) / 8
	}
	
	if attack == AT_USPECIAL && !hitpause{
		can_move = true
		if window == 1 && window_timer == 24 {
			y -= 50
			sound_play(asset_get("sfx_clairen_swing_mega_delayed"))
		}

		move_cooldown[AT_USPECIAL] = 999
		if window == 4 {
			vsp = -6
			sound_play(asset_get("sfx_clairen_uspecial_swing"))
			set_attack (AT_DAIR)
			window = 2
			window_timer = -1
		}
	}
	
	if attack == AT_DATTACK && !hitpause{
		vsp = 0
		if window == 1 && window_timer == 1 {
			oldx = x
			spr_dir *= -1
			hsp *= -1
			sound_play(asset_get("sfx_clairen_spin"))
		}
		
		if window = 1 {
			hsp += window_timer/7*spr_dir
		}
	}

    if attack == AT_FSPECIAL {
    	if window = 1 && window_timer == 1 {
    		oldx = x
    			fspeced = 0
    	}
    	
    	if window = 1 && window_timer == 9 {
    			sound_play(asset_get("sfx_bird_downspecial"))
    	}
    	
    	
    	if window == 3 && window_timer == 5 &&  fspeced = 0 && timepat == 9{ 
    		oldx = x
    		create_hitbox(AT_NSPECIAL,10,x,y - 40)
    		if left_down && !right_down {
    			spr_dir = -1
    		}
    		if !left_down && right_down {
    			spr_dir = 1
    		}
    		    fspeced = 1
    		    window = 1
    		    window_timer = 6
    	}
    }	
    
    
        if attack == AT_DSPECIAL {

        	if vsp > 0 {
        		vsp /= 1.1
        	}
        	
        	if window_timer == 13 {
        		soft_armor = 999
        	}
        	if window_timer == 34 {
        		soft_armor = 0
        	}
        	if window_timer == 42{
        		if free {
        		set_state(PS_PRATFALL)
        		} else {
        		set_state(PS_PRATLAND)	
        		}
        		prat_land_time = 20;
        	}
           if soft_armor && window = 1 && hitpause {
           	 window = 6
           	 window_timer = 0
           	 sound_play(asset_get("sfx_bird_downspecial"))
           	 sound_play(asset_get("sfx_clairen_dspecial_counter_success"))
           	 timepat = 9
           	 timetimer = 180
	    spawn_hit_fx(x - 30*spr_dir, y - 45,304)
	sound_play(sound_get("timestop"),false,noone,2)
	sound_play(sound_get("RI"),false,noone,1)
	create_hitbox(AT_FSPECIAL,10,x,y)
           	 create_hitbox(AT_DSPECIAL,9,x,y)
           }	
           
        }
        
        
           if attack == AT_NSPECIAL && !hitpause {

        	if window == 2 && window_timer == 1 {
        		if timepat < 9 {
        			timepat += 1
        		}
        			sound_play(sound_get("timestop"),false,noone,1.2)
        		shake_camera (4,4)
        		 create_hitbox(AT_NSPECIAL,9,x,y - 30)
        	}	
           
        }
        
        
}   else {
	
	    timehit = 0
        	move_cooldown[AT_DSPECIAL] = 0
				oldx = x
	attacking = false
		
}	    
