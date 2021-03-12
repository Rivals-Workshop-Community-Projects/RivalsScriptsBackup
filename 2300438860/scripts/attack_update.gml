///

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
        if window == 1 && window_timer == 13{
            sound_play(asset_get("sfx_ice_on_player"))
        }
    }
    
    if attack == AT_FSTRONG {
    	vsp /= 1.04
    	
        if window == 1 && window_timer == 1{
            savex = x
            savey = y
        }
        
        if window == 1 && window_timer % 4 == 0 && window_timer < 11 {
            sound_play(asset_get("sfx_ice_shieldup"))
        }
        
        if window == 1 && window_timer == 10{
            sound_play(sound_get("hstrong"))
            take_damage (player, -1, 6)
        }
        
        if window == 2 && window_timer == 1{
        	if free {
        	
        	vsp = -1
       	    hsp = 4*spr_dir
         	}
            sound_play(asset_get("sfx_orcane_dsmash"))
        }
        
        if window == 4 && image_index == 11 && savex != 0{
            sound_play(sound_get("fstrong2"))
            take_damage (player, -1, -6)
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
            sound_play(asset_get("sfx_ice_on_player"))
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
        if window == 1 && window_timer == 10 {
                sound_play(asset_get("sfx_swipe_medium2"))
        }
        if window == 1 && window_timer == 6 {
              sound_play(asset_get("sfx_ice_on_player"))
        }
	
    }
    
        
    if attack == AT_UAIR {
        if window == 2 && window_timer == 1 {
              sound_play(asset_get("sfx_ice_shieldup"))
        }
	
    }
    
    if attack == AT_BAIR {
        if window == 1 && window_timer == 6 {
              sound_play(asset_get("sfx_ice_on_player"))
        }
         if window == 1 && window_timer == 8 {
              sound_play(asset_get("sfx_swipe_medium1"))
        }
	
    }
    
    if attack == AT_FAIR {
        if window == 2 && window_timer == 1 {
              sound_play(asset_get("sfx_ice_on_player"))
              sound_play(asset_get("sfx_bird_sidespecial_start"))
              x += 30*spr_dir
        }

	
    }
    
    if attack == AT_NSPECIAL {
    if window == 1 && window_timer == 1 {
        move_cooldown [AT_NSPECIAL] = 45
        if free {
            vsp = -4
        }
        if attackbar == 0 {
        	attackbar = 1
        	window_timer = 2
        	sound_play(sound_get("nspecen"))
        	shake_camera(3,3)
        		sound_play(sound_get("buzzing"),false,noone,0.5)
        } else {
        	attackbar = 0
        	sound_play(sound_get("nspecdis"))
        	sound_stop(sound_get("buzzing"))
        	dmgmul = 0
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
			if dmgmul >= 1.5 {
				specialing = 1
				attackbar = 0
				create_hitbox (AT_FSPECIAL, 3 , x + 30 *spr_dir, y - 42)
				if dmgmul == 1.5 {
					    sound_play(sound_get("hcine"),false,noone,0.4)
				}
			}
			
			if dmgmul >= 2 {
				create_hitbox (AT_FSPECIAL, 4 , x + 30 *spr_dir, y - 30)
				if dmgmul == 2 {
					    sound_play(sound_get("hcine"),false,noone,0.8)
				}
			}
			
			if dmgmul = 3 {
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
    	prat_land_time = 12;
    	if window == 1 {
    		
    		if window_timer == 1 {
    		vsp = -8
    		if vsp > 0 {
    			vsp = 0
    		}
    	}
    	
    	}
    	if window == 2 {
    			move_cooldown [AT_USPECIAL] = 999
    			if window_timer == 1 {
    		if dmgmul >= 1.5 {
				attackbar = 0
				vsp = -8
				if dmgmul == 1.5 {
						create_hitbox (AT_USPECIAL, 3 , x , y + 30)
					    sound_play(sound_get("hcine"),false,noone,0.4)
				}
			}
			
			if dmgmul >= 2 {
				vsp = -10
				if dmgmul == 2 {
					    create_hitbox (AT_USPECIAL, 4 , x , y + 30)
					    sound_play(sound_get("hcine"),false,noone,0.8)
				}
			}
			
			if dmgmul = 3 {
                spawn_hit_fx (x,y,lighten3)
				create_hitbox (AT_USPECIAL, 4 , x - 44 , y + 30)
				create_hitbox (AT_USPECIAL, 4 , x + 44 , y + 30)
				if dmgmul == 3 {
					    sound_play(sound_get("hcine"),false,noone,1.4)
				}			
				
			}
			
			if dmgmul == 0 {
				create_hitbox (AT_USPECIAL, 1 , x , y + 30)
			}
			
    	}
	   						dmgmul = 0
    	}
    }
    
        if attack == AT_DSPECIAL {
        	
        	vsp /= 1.1
        	hsp /= 1.01
        	if window == 1 {
        		
        	if window_timer == 1 {
        		
    		if dmgmul >= 1.5 {
    			
				attackbar = 0
				if dmgmul == 1.5 {
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 30);
					set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
					    sound_play(sound_get("hcine"),false,noone,0.4)
				}
			}
			
			if dmgmul >= 2 {
				if dmgmul == 2 {
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 40);
					set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 50);
					    sound_play(sound_get("hcine"),false,noone,0.8)
				}
			}
			
			if dmgmul = 3 {
                spawn_hit_fx (x,y,lighten3)
				if dmgmul == 3 {
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 60);
					set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 60);
					    sound_play(sound_get("hcine"),false,noone,1.4)
				}			
				
			}
			
			if dmgmul == 0 {
				set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
				set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 30);
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
          		          		take_damage(player, -1, 3)
          		          		spawn_hit_fx (x + 26*spr_dir,y - 38, 194)
          		          		move_cooldown[AT_DSPECIAL] = 60
          		if !free {
          		set_state(PS_PRATLAND)
          		hsp = -6*spr_dir
          		        	    	prat_land_time = 30;
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
           		x -= (16-state_timer)*spr_dir
           	}
           	
           	if window_timer == 11 {
           		sound_play(sound_get("dspec2"))
           		spawn_hit_fx (x + 30*spr_dir,y - 40, 156)
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