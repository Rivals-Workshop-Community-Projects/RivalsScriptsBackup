///

hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
if attack == AT_JAB {
	if window == 1 && window_timer == 1{
                sound_play(asset_get("sfx_swipe_weak1"))
        }
}
if attack == AT_UTHROW {
	can_fast_fall = false
	fall_through = true 
	if window > 1 && window < 6 && (window_timer == 1 or window_timer == 4) && !hitpause {
		 sound_play(asset_get("sfx_ice_on_player"),false,noone,1,2)
		 if free {
		 	hsp /= 1.1
		 }else{
		 	hsp /= 1.05
		 }
		 ovsp /= 1.09
	}
	if window == 7 && window_timer < 14 && free {
		ox = x
		oy = y
		vsp -= 5
		hsp /= 1.5	
		set_state(PS_PRATFALL)
		prat_land_time = 20
		state_timer = 9000
	}
	if window == 7 && window_timer == 14 && !free {
			set_state(PS_PRATLAND)
		prat_land_time = 25
	}
	
	if window == 1  {
		if (window_timer == 1 or window_timer % 8 == 0) && !hitpause {
            sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,1.3 - state_timer/200)
		}
		if window_timer == 1 {
			sound_play(sound_get("fspec3"),false,noone,1.4,1.25)
		}
		vsp /= 1.15 
		hsp /= 2
		if vsp > 0 vsp = 0 
		
	   if window_timer == 7*3 -1 && !hitpause {
            sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1)
            sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
		}
    } else {
    	can_walljump = true
    }
    
    if window < 6 && window > 1 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
    	hit_player_obj.x += floor((x + 40*spr_dir - hit_player_obj.x)/2)
    	hit_player_obj.y += floor((y - 4 - hit_player_obj.y)/4)
    }
    
    if window == 2 && window_timer == 1 && !hitpause {
    	sound_play(sound_get("fspec2"),false,noone,.8,1.25)
    	if dmgmul == 1.5 {
    		spawn_hit_fx (x,y - 40, shit1)   
    	specialing = 1
		attackbar = 0
		dmgmul = 0
    	state_timer = 300	
    	sound_play(sound_get("hcine"),false,noone,0.4)
    		move_cooldown [AT_NSPECIAL] = 180
    	}
    	
    	if dmgmul == 2 {
    		spawn_hit_fx (x,y - 40, shit4)   
        specialing = 1
		attackbar = 0
		dmgmul = 0	
    	state_timer = 400
    	sound_play(sound_get("hcine"),false,noone,0.8)
    		move_cooldown [AT_NSPECIAL] = 180
    	}
    	
    	if dmgmul == 3 {
    		spawn_hit_fx (x,y - 40, shit5)   
    		specialing = 1
		attackbar = 0
		dmgmul = 0	
    		spawn_hit_fx (x,y,lighten3)
    	state_timer = 500
    	sound_play(sound_get("hcine"),false,noone,1.4)
    		move_cooldown [AT_NSPECIAL] = 180
    	}
    	
    	if right_down - left_down != 0 {
    		spr_dir = right_down - left_down
    	}
    	if !up_down && !down_down {
    		hsp = 14*spr_dir 
    		ovsp = 0
    	}
    	if up_down && !down_down {
    		hsp = 10*spr_dir 
    		ovsp = -6
    	}
    	if !up_down && down_down {
    		hsp = 10*spr_dir 
    		ovsp = 6
    	}
    }
    
    if window == 2 && window_timer == 6 {
    	window = 6 
    	if state_timer > 300 {
    	window = 5 	
    	}
    	if state_timer > 400 {
    	window = 4	
    	}
    	if state_timer > 500 {
    	window = 3 	
    	}
        window_timer = 0
    }
    
    if window >= 2 {
    	can_move = false 
    	can_walljump = true 
    	if free {
    		hsp /= 1.03
    	}
    }
    
    if window >= 7 {
    	if free {
    		hsp /= 1.07
    	} else {
    		hsp /= 1.05
    	}
    } else if window > 1 && !hitpause{
    	vsp = ovsp/(1+window/10)
    }
    
}


if attack == 49 {
	sound_play(sound_get("hcine"),false,noone,1)
	if !free { 
		attack = AT_FTHROW
		hsp = 8*spr_dir
		hit_player_obj.canUseCounterTimer = 90
	} else {
		attack = AT_DTHROW
		hit_player_obj.canUseCounterTimer = 40
		window = 2
	}
	state_timer = 1
}

  if attack == AT_DTHROW {
  	vsp = -1
  	hitpause = false 
        if window == 1 && window_timer == 4 && !hitpause {
                sound_play(asset_get("sfx_ice_on_player"))
        }
        
    if has_hit_player && hitpause && window_timer < 8 && !hitpause  {
		window_timer += 1
				hit_player_obj.x += ((x + (40 * spr_dir)) - hit_player_obj.x) / 4
				hit_player_obj.y += ((y - (40)) - hit_player_obj.y) / 4
	}
	
	
	if state_timer < 30 && window == 3 { 
	  window = 2 
	  window_timer = 1
	  spr_dir *= -1
	  sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,.6)
	  sound_play(sound_get("dspec2"))
	  
	}
	
	if state_timer % 6 == 0 && state_timer < 30{
		sound_play(sound_get("fspec2"),false,noone,1,1.2)
	  	create_hitbox(AT_FSPECIAL,1, x,y - 30)
	  	fx = spawn_hit_fx(x,y-30,306)
	  fx.pause = 5
	  }
	  if state_timer % 6 == 2 && state_timer < 30{
	  	create_hitbox(AT_FSPECIAL,3, x,y - 30)
	  }
	  if state_timer % 6 == 4 && state_timer < 30{
	  	create_hitbox(AT_FSPECIAL,4, x,y - 30)
	  }
	  
	super_armor = false 
    soft_armor = 999
	
  }
   
 if attack == AT_FTHROW {
        if window == 1 && window_timer % 4 == 0 && !hitpause {
            sound_play(asset_get("sfx_ice_shieldup"))
            fx = spawn_hit_fx(x - 34*spr_dir,y - 52,302)
            fx.pause = 5
        }
        if window == 1 && window_timer == 11 && !hitpause{
            sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,0.95)
        }
        
        super_armor = false 
        soft_armor = 999
  }
    
if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

if attackbar == 1 && !hitpause {
	              sound_stop(cur_sound)
	sound_play(sound_get("buzzing"),false,noone,0.4)
}

if attack == AT_FSPECIAL {
	if state_timer >= 400 {
		invincible = true
		if hitpause {
			y -= 1
			x += (1 - (get_gameplay_time()%3))*5
		}
	}

}
if !hitpause {
    
    if attack == AT_DTILT {
        if has_hit && window <= 3{
            window = 4
            window_timer = 1
        }
    }
    
    if attack == AT_UTILT {
        if window == 1 && window_timer == 3{
            sound_play(asset_get("sfx_swipe_heavy2"))
        }
    }
    
     if attack == AT_DTILT {
        if window == 1 && window_timer == 5{
            sound_play(asset_get("sfx_waveland_zet"))
        }
    }
    
    if attack == AT_DATTACK {
        if window == 1 && window_timer % 4 == 0 {
            sound_play(asset_get("sfx_ice_shieldup"))
        }
        if window == 1 && window_timer == 11{
            sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,0.95)
        }
    }
    
    
    
    if attack == AT_FSTRONG {
    	can_fast_fall = false
    	vsp /= 1.04
    	prat_land_time = 60
    	///if !free {
    	///	state_timer = 0
    	///	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
        ///    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
        ///    set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
    	///} else {
    	///	strong_charge = 60
    	///	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6);
        ///    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
        ///    set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
    	///}
    	///
    	///if state_timer > 5 && free && (window < 4 && window != 1 or (window == 1 && window_timer > 10)){
    	///	sound_stop(sound_get("fstrong1"))
    	///	window = 5
    	///	window_timer = 1
    	///	mask_index = asset_get("empty_sprite");
    	///	vsp = -4
    	///	sound_play(sound_get("uspec"))
    	///	
    	///}
    	
    //	 if  window == 5{
    //	 	create_hitbox(AT_FSTRONG,5,x,y)
    //	 	vsp -= 0.02
    //		if window_timer == 18 window_timer = 1
    //		if !free && vsp < 0{
    //			spawn_hit_fx(x,y + 14,14)
    //			shake_camera(4,4)
    //		sound_play(sound_get("uspec"))
    //		sound_play(asset_get("sfx_blow_medium1"))
    //        vsp = -6
    //        hsp = 6*spr_dir
    //		}
    //	}
    	
        if window == 1 && window_timer == 1{
            savex = x
            savey = y
            sound_play(sound_get("hstrong"))
        }
        
        if window == 1 && window_timer % 4 == 0 && window_timer < 11 {
            sound_play(asset_get("sfx_ice_shieldup"))
        }
        
        if window == 1 && window_timer == 10{
            sound_play(sound_get("hstrong"))
            take_damage (player, -1, 33)
        }
        
        if window == 2 && window_timer == 1{
        	if free {
        	
        	vsp = -1
       	    hsp = 4*spr_dir
         	}
            sound_play(asset_get("sfx_orcane_dsmash"))
        }
        
        if window == 4 {
        	hsp = 0
        	vsp = 0
        }
        
        if window == 3 or window == 5 {
        	if !free {
        	set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20 + abs(x - savex)/10);
        	} else {
        	set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 40)	
        	}
        }
        
        if (window == 4 && image_index == 10 && savex != 0) {
        	mask_index = sprite_get("stand_box");
        	y += 10
        	window = 4 
        	window_timer = 10

            sound_play(sound_get("fstrong2"))
            take_damage (player, -1, -33)
            x = savex
            y = savey
            savex = 0
        }
         
        if (y + vsp > room_height && savex != 0) {
        	sound_play(sound_get("fstrong2"))
        	 sound_play(sound_get("uspec"))
        	 set_state(PS_PRATFALL)
                    take_damage (player, -1, -33)
                    hsp = 0
            x = savex
            y = savey
            savex = 0
        	
        }
        
    }
    
      if attack == AT_USTRONG {
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_ice_shieldup"))
        }
        if window == 2 && window_timer == 1{
            sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,0.8)
        }
    }
    
    if attack == AT_FTILT {
        if window == 1 && window_timer == 5{
            sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,1.1)
        }
    }
    
    if attack == AT_DSTRONG {
        if window == 1 && window_timer == 1 {
               sound_play(asset_get("sfx_spin"))
        }
        if window == 2 && window_timer == 3{
            sound_play(asset_get("sfx_zetter_downb"))
        }
        if has_hit_player && esave = 0{
        	saveid = hit_player_obj
            esave = 140
            esavex = hit_player_obj.x
            esavey = hit_player_obj.y
        }
        
        if has_hit_player {
            window_timer += 1
        }
    }
    
    if attack == AT_NAIR {
        if window == 1 && window_timer == 4 {
                sound_play(asset_get("sfx_ice_on_player"))
        }
        
    if has_hit_player && hitpause && window_timer < 8 {
		window_timer += 1
				hit_player_obj.x += ((x + (40 * spr_dir)) - hit_player_obj.x) / 4
				hit_player_obj.y += ((y - (40)) - hit_player_obj.y) / 4
	}
	
    }
    
    if attack == AT_DAIR {
       if window == 1 && window_timer == 1{
                sound_play(asset_get("sfx_swipe_heavy1"))
        }	
        if window == 1 && window_timer == 10 {
                sound_play(asset_get("sfx_swipe_medium2"))
        }
        if window == 1 && window_timer == 6 {
              sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,0.9)
        }
	
    }
    
        
    if attack == AT_UAIR {
        if window == 2 && window_timer == 1 {
              sound_play(asset_get("sfx_ice_shieldup"))
        }
	
    }
    
    if attack == AT_BAIR {
        if window == 1 && window_timer == 6 {
              sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,1.1)
        }
         if window == 1 && window_timer == 8 {
              sound_play(asset_get("sfx_swipe_medium1"))
        }
	
    }
    
    if attack == AT_FAIR {
        if window == 2 && window_timer == 1 {
              sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,0.9)
              sound_play(asset_get("sfx_bird_sidespecial_start"))
              x += 30*spr_dir
        }

	
    }
    
    if attack == AT_NSPECIAL {
    if window == 1 && window_timer == 1 {
    	if !hitpause {
    		create_hitbox (AT_NSPECIAL, 1, x, y)
    	}
        if attackbar == 0 {
        	
        	        if free {
            vsp = -4
        }
        
        	attackbar = 1
        	window_timer = 2
        	sound_play(sound_get("nspecen"))
        	shake_camera(3,3)
        		sound_play(sound_get("buzzing"),false,noone,0.4)
        } else {
        	        	sound_play(sound_get("heartbeat"),false,noone,1.6)
        	shake_camera(3,3)
        		sound_stop(cur_sound)
                sound_play(sound_get("buzzing"),false,noone,0.4)		
        	barpause = 150
        	sound_play(sound_get("tauntflash"))
        	move_cooldown [AT_NSPECIAL] = 9999
        }
    }
	
    }
    
        if attack == AT_TAUNT {
        
        if window == 1 && window_timer == 1 && down_down{
        	move_cooldown[AT_EXTRA_2] = 0
        	set_attack(AT_EXTRA_2)
        }	
        if window == 3 and state_timer < 341{
        	if taunt_down && cosmetic == 1  {
        		window_timer = 4
        	}
        	if state_timer >= 40 {
        		shake_camera (floor(state_timer/50),2)
        		if state_timer % 40 == 1 {
        		sound_play(sound_get("buzzing"),false,noone,state_timer/160)
        		}
        		if state_timer % 40 == 0 {
        			  sound_play(sound_get("step"),false,1,state_timer/160)
        		}
            	if state_timer % 40 == 20 {
        			  sound_play(sound_get("step"),false,-1,state_timer/160)
        		}
        	}
        	
        	if state_timer == 42 {
        		sound_play(sound_get("tauntspeak"))
        	}
        	
        	if state_timer == 130 {
        		sound_play(sound_get("tauntspeak"))
        	}
        	if state_timer == 144 {
        		sound_stop(sound_get("tauntspeak"))
        		sound_play(sound_get("tauntspeak"))
        	}
        	
        		suppress_stage_music( 0, floor(state_timer/50) );	
        }
        
        if window == 4 && attackbar == 0 {
        	sound_stop(sound_get("buzzing"))
        	sound_stop(sound_get("tauntspeak"))
        }
        	
        }
        

                	
        if attack == AT_FSPECIAL {
	prat_land_time = 16;

    if window == 1 {
    	specialing = 0
    	hsp/= 1.1
    	if window_timer == 1 && attackbar > 0 {
    	sound_play(sound_get("fspec"))	
    	}
    	if vsp > 0 {
    		vsp/=2
    	}
    }	
	
	if window == 2 {
		
		if window_timer == 1 {
					
		if window_timer == 1 && free {
			hsp = -4*spr_dir
			vsp = -6
		}
			    	move_cooldown [AT_FSPECIAL] = 60
			if dmgmul >= 1.5 or state_timer > 400{
				specialing = 1
				attackbar = 0
				create_hitbox (AT_FSPECIAL, 3 , x + 30 *spr_dir, y - 42)
				if dmgmul == 1.5 {
					    sound_play(sound_get("hcine"),false,noone,0.4)
				}
				
				move_cooldown [AT_NSPECIAL] = 180
			}
			
			if dmgmul >= 2 or state_timer > 400 {
				create_hitbox (AT_FSPECIAL, 4 , x + 30 *spr_dir, y - 30)
				if dmgmul == 2 {
					    sound_play(sound_get("hcine"),false,noone,0.8)
				}
			}
			
			if dmgmul = 3 or state_timer > 400 {
				spawn_hit_fx (x,y,lighten3)
				create_hitbox (AT_FSPECIAL, 3 , x + 20 *spr_dir, y - 68)
				create_hitbox (AT_FSPECIAL, 4 , x + 20 *spr_dir, y - 04)
				if dmgmul == 3 {
					    sound_play(sound_get("hcine"),false,noone,1.4)
				}			
				
			}
							dmgmul = 0
		}

	}
	
	if window == 3 && window_timer == 18 {
        	specialing = 0
	}
	
    }
    
    
    if attack == AT_USPECIAL {
    	prat_land_time = 8;
    	if window == 1 {
    		
    		if window_timer == 1 {
    			sound_play(sound_get("fspec2"),false,noone,1,1.4)
    			sound_play(asset_get("sfx_spin"),false,noone,0.8,1.1)
    			
    		vsp = -6
    		if vsp > 0 {
    			vsp = 0
    		}
    	}
    	
    	}
    	if window == 2 {
    			move_cooldown [AT_DSPECIAL] = 999
    			if window_timer == 1 && !hitpause {
    				sound_play(sound_get("hextra"),false,noone,1,1)
    				sound_play(sound_get("slice"),false,noone,1,0.6)
    		if dmgmul >= 1.5 {
				attackbar = 0
				if dmgmul == 1.5 {
						create_hitbox (AT_USPECIAL, 3 , x , y  )
					    sound_play(sound_get("hcine"),false,noone,0.4)
				}
				
					 move_cooldown [AT_NSPECIAL] = 180
			}
			
			if dmgmul >= 2 {
				if dmgmul == 2 {
					    create_hitbox (AT_USPECIAL, 4 , x , y  )
					    sound_play(sound_get("hcine"),false,noone,0.8)
				}
			}
			
			if dmgmul = 3 {
				vsp = -8
                spawn_hit_fx (x,y,lighten3)
				proj1 = create_hitbox (AT_USPECIAL, 4 , x - 44 , y  )
				proj1.spr_dir = -1
				proj2 = create_hitbox (AT_USPECIAL, 4 , x + 44 , y )
				proj2.spr_dir = 1
				if dmgmul == 3 {
					    sound_play(sound_get("hcine"),false,noone,1.4)
				}			
				
			}
			
			if dmgmul == 0 {
				create_hitbox (AT_USPECIAL, 1 , x , y )
			}
			
    	}
	   						dmgmul = 0
    	}
    }
    
        if attack == AT_DSPECIAL {
        	
        	prat_land_time = 20;
        	
        	vsp /= 1.1
        	if free {
        	hsp /= 1.04
        	}
        	hsp /= 1.01
        	if window == 1 {
        		
        	if window_timer == 1 {
        		
    		if dmgmul >= 1.5 {
    			
				attackbar = 0
				if dmgmul == 1.5 {
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 25);
					set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
					    sound_play(sound_get("hcine"),false,noone,0.4)
				}
				
				
					 move_cooldown [AT_NSPECIAL] = 180
			}
			
			if dmgmul >= 2 {
				if dmgmul == 2 {
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 30);
					set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 50);
					    sound_play(sound_get("hcine"),false,noone,0.8)
				}
			}
			
			if dmgmul = 3 {
                spawn_hit_fx (x,y,lighten3)
				if dmgmul == 3 {
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 40);
					set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 60);
					    sound_play(sound_get("hcine"),false,noone,1.4)
				}			
				
			}
			
			if dmgmul == 0 {
				set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
				set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 20);
			}
			
			dmgmul = 0
			
    	}
    	
        	    if window_timer == 1 {
          		shake_camera (2,6)
          	}
        	}
        	if vsp > 0 {
        		vsp = 0
        	}
        	can_move = false
        	can_fast_fall = false
          if window == 2  {
          	super_armor = true
          }	
          
          if window == 3 {
          	    state_timer = 1
          	if window_timer == 1{
          		create_hitbox(AT_USPECIAL,5, x + 26*spr_dir, y - 40)
          		shake_camera (4,6)
          		sound_play(sound_get("uspec"))
          		sound_play(asset_get("sfx_abyss_explosion"))
          		          		fx = spawn_hit_fx (x + 26*spr_dir,y - 38, 305)
          		          		fx.pause = 6
          		          		move_cooldown[AT_DSPECIAL] = 60
          		if !free {
          		set_state(PS_PRATFALL)
          		hsp = -4*spr_dir
          		vsp = -8
          		        	    	prat_land_time = 15;
          	    }
          	    
          	    if free {
          		set_state(PS_PRATFALL)
          		hsp = -4*spr_dir
          		vsp = -8
          		        	    	prat_land_time = 15;
          	    }
          	    
          	}
          }
        	
        }
        
        
         if attack == AT_EXTRA_2 {
          	
           if window == 1 {
          	if window_timer % 6 == 0 or window_timer == 0{
            	sound_play(sound_get("click"),false,noone,0.5)	
          	}
          }	
          
          if window == 2 {
          	if window_timer % 6 == 0 or window_timer == 0{
            	sound_play(sound_get("click"),false,noone,0.5)	
          	}
          }	
          
          if window == 3 {
          	if window_timer == 1 {
          	sound_play(sound_get("tauntspeak"))	
          	}
          	
            if window_timer == 10 {
          	sound_stop(sound_get("tauntspeak"))	
          	}
          }
          
           if window == 4 {
          	if window_timer == 1 {
          	sound_play(asset_get("sfx_crunch_water"))	
          	take_damage(player, -1, -1)
          	shake_camera(1,4)
          	}
          }
          
          }
                	
                	
 
}

////////// none hitpause stuffs
if attack == AT_NAIR {
    if has_hit_player && hitpause && window_timer < 6 && hit_player_obj.state_cat == SC_HITSTUN {
				hit_player_obj.x += ((x - (30 * spr_dir)) - hit_player_obj.x) / 12
				hit_player_obj.y += ((y - (40)) - hit_player_obj.y) / 12
	}
	
}

           if attack == AT_DSPECIAL && window == 4 {
           	if state_timer < 20 {
           		state_timer += 1
           		window_timer = 1
           		spawn_hit_fx(x,y,darken)
           	}
           	
           		hit_player_obj.y += ((y) - hit_player_obj.y) / 30
           		
           	if state_timer < 20 {
           		can_move = false
           		x -= floor(((24-state_timer)*spr_dir)/2)
           	}
           	
           	if window_timer == 11 {
           		shake_camera(6,10)
           		sound_play(sound_get("slice"))
           	 sound_play(asset_get("sfx_ice_on_player"),false,noone,.8,0.9)
              sound_play(asset_get("sfx_bird_sidespecial_start"))
           		sound_play(sound_get("dspec2"))
           		fx = spawn_hit_fx (x + 30*spr_dir,y - 46, 304)
           		fx.pause = 4
           		vsp = -6
           		hsp = -4*spr_dir
           	}
           }


if attack == AT_EXTRA_3 {
  if window_timer == 40 {
  	sound_play(asset_get("sfx_swipe_heavy1"))
  }	
  
  if window_timer == 80 {
  	sound_play(sound_get("nspecen"))
  }	
  if window_timer == 106{
  	sound_play(sound_get("fspec3"))
  }		
  if window_timer < 106{
  	draw_indicator = false
  }			
}