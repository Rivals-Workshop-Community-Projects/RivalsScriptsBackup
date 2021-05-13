


if attack == AT_FAIR && has_hit && !hitpause {
window_timer += 0.2	
}


/////////////////////////////////////////////////////
if isyellow && !hitpause {
    
    
        if attack == AT_TAUNT {
        	can_jump = true
        	
     if window == 4 {
     	if window_timer >= 57 && taunt_down {
     		window_timer -= 1
     	}
     	if state_timer % 5 == 0 {
     		state_timer = 0
     		ui1x = 30 - random_func(1,60,true)
            ui1y = 20 - random_func(2,80,true)
            
            ui2x = 30 - random_func(3,60,true)
            ui2y = 20 - random_func(4,80,true)
     	}
     	
     	spawn_hit_fx(x - 32*spr_dir + ui1x, y - 90 - ui1y - state_timer*4, esp) 
     	spawn_hit_fx(x - 32*spr_dir + ui2x, y - 90 - ui2y - state_timer*4, esp) 
     	
     }
     
    if window == 1 && window_timer == 1 {
        sound_play(asset_get("sfx_forsburn_disappear"))
        
    }
    
    if window == 4 && window_timer == 59 {
    	window = 3 
    	window_timer = 8
    	sound_play(asset_get("sfx_forsburn_reappear"))
    }
    
    if window == 1 && window_timer == 12 {
    	
    	 if get_player_color(player) == 14{
    	 	shake_camera(4,6)
    		 sound_stop(sound_get("drip")) 
            sound_play(sound_get("drip")) 
            window = 4
        }
    }
    
        if window == 3 && window_timer == 1 {
        sound_play(asset_get("sfx_forsburn_reappear"))
    }
     }
        
    if attack == AT_JAB && window == 3 && attack_pressed && window_timer <= 6 && joy_pad_idle {
        set_attack (AT_UTILT)
        window = 5
        window_timer = 0
        sound_play(asset_get("sfx_swipe_weak2"))
    } 
    
    if attack == AT_JAB && window == 3 && window_timer == 6 && has_hit {
        set_state (PS_IDLE)
    }
    
    if attack == AT_JAB && window == 3 && window_timer == 12 {
        set_state (PS_IDLE)
    }
    
    
    if attack == AT_UTILT && window == 5 && window_timer == 6 {
        set_attack (AT_JAB)
        window = 2
        window_timer = 0
        sound_play(asset_get("sfx_swipe_weak1"))
    }
    
    if attack == AT_UTILT && window == 1 && window_timer == 7 {
        window = 3
        window_timer = 0
        sound_play(asset_get("sfx_forsburn_reappear"))
        sound_play(asset_get("sfx_swipe_weak1"))
    }
    
    if attack == AT_DATTACK && window == 1 && window_timer == 1 {
        set_attack (AT_JAB)
        window = 4 
        hsp = 9 * spr_dir
    }
    
    if attack == AT_JAB && window == 6 && window_timer > 6 {
        set_attack (AT_FTILT)
        window = 3 
        window_timer = 4
    }

    
    if attack == AT_FSPECIAL{
    	prat_land_time = 10;
    	can_wall_jump = true
        if window == 1 {
        hsp /= 1.2
        vsp = 0
        
        if !hitpause && window_timer == 1{
            spawn_hit_fx (x + 20*spr_dir, y - 58, 305)
            sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"))
        }
        }
        
        if window == 2 && window_timer <= 6 {
            if window_timer == 1{
                sound_play(asset_get("sfx_clairen_swing_mega_instant"))
            	sound_play(asset_get("sfx_ori_bash_use"))
            	sound_play(asset_get("sfx_bird_nspecial"))
            	spawn_hit_fx(x, y-30, 303)
            	hsp = 30*spr_dir
            }
         if window_timer == 2 && !special_down {
             hsp = 8 *spr_dir
             window_timer += 2
         }
         vsp = -3
         if window_timer % 2 == 0{
             spawn_hit_fx(x, y , saillusion)
         }
        }  
        
        if window == 2 && window_timer > 6 {
            spawn_hit_fx(x, y, saillusion)
         hsp /= 1.2
         vsp /= 2
        } 
        
        if window == 3  {
         hsp /= 1.2
         vsp /= 1.1
         if !free {
             set_attack (AT_BAIR)
         }
         
         if window_timer >= 20 && free && !has_hit {
             set_state(PS_PRATFALL)
         }   
        } 
    
    }
    
        if attack == AT_NSPECIAL{
         if window < 3 {    
         vsp = 0
         hsp = 0
         } else {
           hsp /= 1.2
         vsp /= 1.1   
         }
         if (has_hit or window == 3 or (window == 2 && window_timer > 3)) && get_gameplay_time() > 120{
                 move_cooldown[AT_FSPECIAL] = 20
                 can_jump = true
                 if !has_hit{
                     move_cooldown[AT_NSPECIAL] = 20
                 }
             if left_down and !right_down and !free and !jump_down{
                 set_state (PS_WAVELAND)
                 hsp = -10
             }
             if right_down and !left_down and !free and !jump_down{
                 set_state (PS_WAVELAND)
                 hsp = 10
             }
         }
        }
        
        
        if attack == AT_USPECIAL{
        	prat_land_time = 20;
            if down_down {
                fall_through = true
            }
            can_fast_fall = false
            if window == 1 {
                can_shield = true
                vsp /= 2
                hsp /= 1.2
            }
            if window == 2 {
                can_shield = true
                vsp = 0
                hsp = 0
                if has_hit_player && window_timer < 24{
                    window_timer += 1
                }
            }
            
         if window == 1 && window_timer == 18 {
             spawn_hit_fx(x+10,y, 113)
              spawn_hit_fx(x-10,y, 113)
             shake_camera(2,6)
              sound_play(sound_get("RI"))
         }   
         
         if window == 2 && window_timer == 25 {
             sound_play(sound_get("RZ"))
             
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
			hsp = 4*spr_dir;
			vsp = -15;
		}else{
			hsp = (14 * cos(angle));
			vsp = (12 * sin(angle)) - 4;
		}
		
		///thanks you so much hyu
        
         }
         
         if window == 3  {
            if has_hit_player {
                        hsp = floor(hit_player_obj.x - x) / 20 + (5 * spr_dir)
                		vsp = floor((hit_player_obj.y * 1.2) - y) / 30
                
                        
                        if (hit_player_obj.x - x < 30) and (hit_player_obj.x - x > -30) {
                        		y += floor(hit_player_obj.y - y) / 40
                        }
                		
                	if hit_player_obj.y - y < 0 {
                		y -= 10
                	} else {
                	    y += 10
                	} 
                   		if hit_player_obj.x - x < 0 {
                		x -= 10
                	} else {
                	    x += 10
                	} 
             }
             
             can_wall_jump = true
             create_hitbox(AT_USPECIAL, 3, floor(x), floor(y))
             if window_timer % 4 == 0 {
                 spawn_hit_fx (x, y - 30, 302)
             }
             if !free && !has_hit_player{
             set_state (PS_PRATFALL)
             }
         }
        }
        
        
                
        
        if attack == AT_DSPECIAL{ 
         if free && window <= 2{
         vsp/=2
         vsp-=0.4
         hsp/=2
         }
         
         if free && window > 2 {
         	vsp/=1.1
         }
         
         if window == 1{
             
             if window_timer == 1 {
                 
                 sound_play(asset_get("sfx_swipe_weak1"))
             }
             if window_timer == 8 {
                 sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"))
                 super_armor = true
                 countering = 1
                 sound_play(sound_get("RI"))
                 spawn_hit_fx (x, y - 30, 302)
             }
             
             if window_timer == 18 {
                 countering = 0
                 super_armor = false
             }
             
             
         }   
           
         if window == 2 {

             
             if window_timer == 9 {
                 create_hitbox(AT_EXTRA_3, 1, x, y)

             spawn_hit_fx(x+70*spr_dir,y - 30, 113)
             spawn_hit_fx(x+70*spr_dir,y - 30, 302)
             sound_play(sound_get("counterhit"))
             }
         }
         
         if window_timer > 9 && !has_hit{
         
             window_timer -= 0.5
         }
        }
        
        
        if attack == AT_DSTRONG or attack == AT_FSTRONG {

            
         if window == 2 && window_timer = 1 {
             sound_play(asset_get("sfx_bird_downspecial"))
         }   
        }
        
        if attack == AT_USTRONG {
            
            set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 15 + strong_charge/8);
            
            if window == 1 && strong_charge == 0 {
                hsp = 1*spr_dir
            }
            
            if strong_charge % 2 == 0 && strong_charge > 0 && window == 1 {
                
                if hit_player_obj != self {
                if x + 40*spr_dir > hit_player_obj.x && hit_player_obj.x + 300 > x {
                	hit_player_obj.x += 1 + floor(strong_charge/8)
                }
                
                if x + 40*spr_dir < hit_player_obj.x && hit_player_obj.x - 300 < x  {
                	hit_player_obj.x -= 1 + floor(strong_charge/8)
                }
                }
                
                if strong_charge % 8 == 0 && strong_charge < 50  {
                sound_play(asset_get("sfx_troupple_rumble"))
                spawn_hit_fx(x+24*spr_dir,y - 60, 27)
                }
                
                if strong_charge % 4 == 2   { 
                    shake_camera (1,1)
                    x -= 1
                }
                if strong_charge % 4 == 0   { 
                    shake_camera (1,1)
                    x += 1
                }
                
                
            }
            
            if window == 4 {
                sound_stop(asset_get("sfx_troupple_rumble"))
            }
         if window == 4 && window_timer == 1 {
                          
             hsp = 10*spr_dir
             if strong_charge > 8{
             shake_camera (floor(strong_charge/6),8)
             sound_play(sound_get("RI"))
             spawn_hit_fx(x+40*spr_dir,y, 113)
             }
         }   
         
         if window == 4 && window_timer == 2 {
             hsp = 0
         }
            
        }
        
}



