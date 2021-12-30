
        if attack == AT_DSTRONG && window == 3 && window_timer < 3 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
        	hit_player_obj.x += (floor(x - 40*spr_dir - hit_player_obj.x)/10)
        	hit_player_obj.y += (floor(y - 10 - hit_player_obj.y)/4)
        }   
        


    if attack == AT_FSPECIAL{
    	
    	if has_hit {
              old_vsp = -5
              old_hsp = 4*spr_dir
              set_attack(AT_DSPECIAL)
              window = 3
              window_timer = 0
              state_timer = 200
	          set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
    	}
    	
    }
    
if attack == AT_FAIR && window == 1 && window_timer == 1 && !hitpause {
	sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,1.5)
	sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.2)
}

if attack == AT_UAIR && window == 1 && window_timer == 1 && !hitpause{
	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,.9)
}


if attack == AT_UAIR && window == 1 && window_timer == 10 && !hitpause{
		sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,.9)
}

if attack == AT_BAIR && window == 1 && window_timer == 1 && !hitpause{
	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1.15)
	set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 64);
    set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 34);
    set_attack_value(AT_BAIR, AG_CATEGORY, 1);
    set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 303);
}


if attack == AT_DAIR && window == 1 && window_timer == 1 && !hitpause{
	set_attack_value(AT_DAIR, AG_CATEGORY, 2);
	sound_play(asset_get("sfx_clairen_spin"),false,noone,1,.8)
}

if attack == AT_DAIR  && !free  {
	destroy_hitboxes()
 if has_hit_player {	
  set_state(PS_LAND)
  state_timer = 1
  create_hitbox(AT_DAIR,18,x,y)	
 }
  set_attack_value(AT_DAIR, AG_CATEGORY, 1);
}

if attack == AT_FAIR && has_hit && !hitpause && window > 2 {
window_timer += 0.2	
}

if window == 1 && window_timer <= 1 {
	move_cooldown[AT_NSPECIAL_2] = 0
	  move_cooldown[AT_NAIR] = 0
hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}

if attack == AT_EXTRA_2 {
	
if hitpause {
	hsp = old_hsp
	hitstop = 0
	hitpause = 0
}
	
	
 vsp = 0
 hsp /= 1.08
 if free {
 	if state_timer % 8 == 0 {
         	spawn_base_dust(x,y + 8,"land",spr_dir)
         	}
 hsp /= 1.08	
 }
	spr_dir = (1  - (x < inkvictim.x)*2)*-1
	
if window == 1 && window_timer = 1 {
	sound_play(asset_get("sfx_orca_absorb"))
}

if window == 2 && window_timer = 1 {
	hsp = 8 * (1  - (x < inkvictim.x)*2)
	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,1.2)
}

if window == 3 && window_timer = 1 {
	hsp = 8 * (1  - (x < inkvictim.x)*2)
	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,1.0)
}

if window == 4 && window_timer = 1 {
	hsp = 6 * (1  - (x < inkvictim.x)*2)
	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,0.8)
}

if window == 5 && window_timer = 1 {
	hsp = 8 * (1  - (x < inkvictim.x)*2)
	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,0.6)
}

if window == 6 && window_timer = 1 {
	hsp = 4 * (1  - (x < inkvictim.x)*2)
	create_hitbox(AT_EXTRA_2, 5, inkvictim.x,inkvictim.y - 40)
	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,0.4)
}

if (window == 5 && window_timer > 26) or (window == 6 && window_timer <= 6) {
	
		if window_timer % 3 == 0 {
		spawn_hit_fx( (hit_player_obj.x*2 + x)/3 - 20 + random_func(1,40,true) , (hit_player_obj.y*2 + y)/3 - 20 + random_func(2,40,true), i1)
		}
			
		if window_timer % 3 == 1{
		spawn_hit_fx( (hit_player_obj.x + x)/2 - 20 + random_func(1,40,true) , (hit_player_obj.y + y)/2 - 20 + random_func(2,40,true), i1)
		}
		
		if window_timer % 3 == 2 {
		spawn_hit_fx( (hit_player_obj.x + x*2)/3 - 20 + random_func(1,40,true) , (hit_player_obj.y + y*2)/3 - 20 + random_func(2,40,true) , i1)
		}
		
	    if window_timer % 3 == 1 {
		spawn_hit_fx( (hit_player_obj.x*3 + x)/4 - 20 + random_func(1,40,true) , (hit_player_obj.y*3 + y)/4 - 20 + random_func(2,40,true) , i1)
		}
		
		if window_timer % 3 == 0 {
		spawn_hit_fx( (hit_player_obj.x + x*3)/4 - 20 + random_func(1,40,true) , (hit_player_obj.y + y*3)/4 - 20 + random_func(2,40,true) , i1)
		}
		
}

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
        window = 6
        window_timer = 0
        sound_play(asset_get("sfx_swipe_weak2"))
    } 
    
    if attack == AT_JAB && window == 3 && attack_pressed && window_timer <= 6 && !joy_pad_idle{
        set_state (PS_IDLE)
    } 
    
    
    if attack == AT_JAB && window == 3 && window_timer == 6 && has_hit {
        set_state (PS_IDLE)
    }
    
    if attack == AT_JAB && window == 3 && window_timer == 12 {
        set_state (PS_IDLE)
    }
    
    
    if attack == AT_UTILT && window == 6 && window_timer == 6 {
        set_attack (AT_JAB)
        window = 2
        window_timer = 0
        sound_play(asset_get("sfx_swipe_weak1"))
    }
    
    if attack == AT_UTILT && window == 1 && window_timer == 1 {
        window = 3
        window_timer = 0
        sound_play(asset_get("sfx_forsburn_reappear"))
        sound_play(asset_get("sfx_swipe_weak1"))
        hsp = 7*spr_dir
    }
    
    if attack == AT_UTILT && has_hit_player {
    	
    	if window == 3 or window == 4 {
    		
    	   	with hit_player_obj {
    	   		if state_cat == SC_HITSTUN {
   	               vsp = 0
   	               hsp = 0
   	               x += floor( (other.x  + 40*other.spr_dir - x)/6 )
   	               y += floor( (other.y - 30 - y)/6 )
    	   		}
             }
                  
    	}
    	
    	if window == 4 && window_timer > 5 {
    		window = 5
    		window_timer = 1
    		sound_play(asset_get("sfx_spin"))
    		sound_play(asset_get("sfx_clairen_spin"),false,noone,1,.8)
    	}
    	
    	if window == 5 && window_timer <= 15 {
    	
    		with hit_player_obj {
    		if state_cat == SC_HITSTUN {	
    		if other.window_timer <= 13 {
    			
    			can_tech = false
   	               vsp = 0
   	               hsp = 0
   	               x += floor( (other.x  - 6*other.spr_dir - x)/4 )
   	               y += floor( (other.y - 60 - y)/4 )
               	
             
    		    } else {
    		           x += floor( (other.x  - 6*other.spr_dir - x)/2 )
   	                   y += floor( (other.y - y)/2 )
    		    }
    		
    		if other.window_timer == 15 {
    			y = other.y
    		}
    		}
    		
    		}
    	}
    		
    	
    	
    }
    
    if attack == AT_DATTACK && window == 1 && window_timer == 1 {
        set_attack (AT_JAB)
        window = 4 
        hsp = 9 * spr_dir
    }
    
if attack == AT_JAB && window == 6 && (window_timer >= 6 or has_hit) {
        set_attack (AT_FTILT)
        window = 3 
        window_timer = 12
}

    
    if attack == AT_FSPECIAL{
    	
    	prat_land_time = 8;
    	can_wall_jump = true
        if window == 1 {
        hsp /= 1.2
        vsp = 0
        
        if !hitpause && window_timer == 1{
        	if get_player_color(player) == 10 {
            	sound_play(sound_get("fox_illusion_ding"),false,noone,1,0.85 + (random_func(1,30,true)/100))
            }

            spawn_hit_fx (x + 20*spr_dir, y - 58, 27)
            sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"))
        }
        }
        
        if window == 2 && window_timer <= 6 {
            if window_timer == 1{
            if get_player_color(player) == 10 {
            	sound_play(sound_get("fox_illusion_swoosh"),false,noone,1,0.85 + (random_func(1,30,true)/100))
            }
            			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
                sound_play(asset_get("sfx_clairen_swing_mega_instant"))
            	sound_play(asset_get("sfx_ori_bash_use"))
            	sound_play(asset_get("sfx_bird_nspecial"))
            	spawn_hit_fx(x, y-30, 303)
            	hsp = 16*spr_dir
            }
            

                 	if ((left_down && spr_dir == 1) or (right_down && spr_dir == -1)) && window_timer == 1 && !hitpause && special_down{
                 	   hsp *= -1	
                 	} 
                 

         
         vsp = -2
         if window_timer % 2 == 0{
             spawn_hit_fx(x + hsp, y , saillusion)
         }
        }  
        
        if window == 2 && window_timer > 6 {
            spawn_hit_fx(x, y, saillusion)
         hsp /= 1.2
         vsp = -2
        } 
        
        if window == 3  {
         hsp /= 1.1
         vsp /= 1.2
         if !free {
             set_state(PS_PRATFALL)
         }
         
         if window_timer >= 20 && free && !has_hit {
             set_state(PS_PRATFALL)
         }   
        } 
    
    }
    
        if attack == AT_NSPECIAL{
        	clear_button_buffer(PC_SPECIAL_PRESSED)
        	if window <= 2 && window_timer < 6{ 
        	create_hitbox(AT_NSPECIAL,2,x,y - 30)
        	}
         ///if window < 3 {    
         ///vsp = 0
         ///hsp = 0
         ///} else {
         ///  hsp /= 1.2
         ///vsp /= 1.1   
         ///}
         
         if window == 1 && window_timer == 1 && !hitpause {
if get_player_color(player) == 10 {
	sound_play(sound_get("fox_shine"),false,noone,1,0.85 + (random_func(1,30,true)/100))
}
         }
         
         if window > 1 && get_gameplay_time() > 120{
                 can_jump = true
         }
         
        }
        
        
        if attack == AT_USPECIAL{
        	
            can_fast_fall = false
            if window == 1 {
            	starting_point = x
        	    prat_land_time = 20;
            	if state_timer == 1 {
            		spawn_base_dust(x,y,"land",spr_dir)
            	}
            	
            	if !free {
            		y -= 1
            	}
                //can_shield = true
                vsp /= 2
                hsp /= 1.2
            }
            if window == 2 {
            	
            	if window_timer == 1 && !hitpause {
            		spawn_base_dust(x - 10,y,"dash_start",1)
            		spawn_base_dust(x + 10,y,"dash_start",-1)
            		spawn_base_dust(x,y,"land",spr_dir)
            	}
            	
            	if free {
                //can_shield = true
            	}
                vsp = 0
                hsp = 0
                if has_hit_player && window_timer < 24{
                    window_timer += 1
                }
            }
            
         if window == 1 && window_timer == 14 {
             shake_camera(6,6)
              sound_play(sound_get("RI"))
         }   
         
         if window == 2 && window_timer == 25 {
         	
         		sound_play(asset_get("sfx_spin"),false,noone,1.5)
        	 sound_play(sound_get("RZ"),false,noone,.75,1.2)
         	
         	
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
			hsp = 4*spr_dir;
			vsp = -13;
		}else{
			hsp = (12 * cos(angle));
			vsp = (11 * sin(angle)) - 3;
		}
		
		///thanks you so much hyu
        
         }
         
         if has_hit_player {
              
              
         }
         
         if window == 3  {
         	
         	if hsp < 0  && state_timer < 400{
             		spr_dir = -1 
            }
            
            if hsp > 0 && state_timer < 400{
            	spr_dir = 1 
            }
         	
         	move_cooldown[AT_DAIR] = 10
         	
            if has_hit_player {
              
              if window < 3 {
              	window_timer += 0.5
              }

              
           if x < hit_player_obj.x && state_timer < 400{
         		spr_dir = 1
         		state_timer = 400
         	}
         	
         	if x > hit_player_obj.x  && state_timer < 400 {
         		spr_dir = -1
         		state_timer = 400
         	}
         	
         	
         	
         	
                  with hit_player_obj{
                  	
                  	state_timer -= 1
                  	
                  	can_tech = false 
                  	
                  	if y > other.y - 100 {
                  		vsp /= 1.05
                  	}
                  	                  
                  if state == PS_RESPAWN {
                  	
                  	attack_end();
                  	
                      with other {
                      	window = 4
                      	window_timer = 1
                      spawn_hit_fx(x,y - 10, 302)
                      hsp /= 4
                      vsp = -6
                      	
                      }

                      sound_play(asset_get("sfx_roll"))

                  }
                  	
                  }
            	 
            	 
            if state_timer < 1200 {
              	hsp = -20*spr_dir
              	vsp = -15
              	state_timer = 1200
            } else {
            	vsp /= 1.05
            	hsp /= 1.05
            }
            
                        x += floor(hit_player_obj.x - x) / 20 + (5 * spr_dir)
                		y += floor((hit_player_obj.y * 1.2) - y) / 30
                
                        
                        if (hit_player_obj.x - x < 30) and (hit_player_obj.x - x > -30) {
                        		y += floor(hit_player_obj.y - y) / 20
                        }
                	
                    if	(hit_player_obj.y - y > 20) or (hit_player_obj.y - y < -20) {	
                	if hit_player_obj.y - y < 0 {
                		y -= min(state_timer - 1200, 10)
                	} else {
                	    y += min(state_timer - 1200, 10)
                	} 
                    }
                    
                     if	(hit_player_obj.x - x > 20) or (hit_player_obj.x - x < -20) {	
                   		if hit_player_obj.x - x < 0 {
                		x -= min(state_timer - 1200, 10)
                	} else {
                	    x += min(state_timer - 1200, 10)
                	} 
                     }
             }
             
             can_wall_jump = true
             create_hitbox(AT_USPECIAL, 3, floor(x), floor(y))
             
             if window_timer % 2 == 0 {
                  spawn_hit_fx (x, y - 30, bh3)
             }
             if !free && !has_hit_player{
        	 prat_land_time = 10 + floor(abs(starting_point - x)/26)
             hsp /= 1.4	
             set_state (PS_PRATLAND)
             }
         }
        }
        
        
                
        
        if attack == AT_DSPECIAL{ 
        	move_cooldown[AT_USPECIAL] = 2
        	hitpause = 0
         if free && window <= 2{
         	if state_timer % 8 == 0 {
         	spawn_base_dust(x,y + 8,"land",spr_dir)
         	}
         vsp/=1.2
         vsp-=0.5
         hsp/=1.2
         }
         
         if free && window > 2 && state_timer < 200 {
         	vsp/=1.1
         }
         
         if state_timer > 205 && !free && !hitpause {
         	attack_end()
         	set_state(PS_LAND)
         	state_timer = 0
         }
         
         if window == 1{
             
             if window_timer == 1 {
                 set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
                 sound_play(asset_get("sfx_swipe_weak1"))
             }
             if window_timer == 1 {
                 sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"))
                 super_armor = true
                 countering = 1
                 sound_play(sound_get("RI"))
                 spawn_hit_fx (x, y - 30, 302)
             }
             

             
             
         }   
           
         if window == 2 {

             if window_timer == 4 {
             	if left_down && !right_down {
             		spr_dir = -1 
             	}
             	if !left_down && right_down {
             		spr_dir = 1 
             	}
                 countering = 0
                 super_armor = false
             }
             
             
             if window_timer == 8 {
                 create_hitbox(AT_EXTRA_3, 1, x, y)
                 create_hitbox(AT_EXTRA_3, 2, x, y)
             spawn_hit_fx(x+70*spr_dir,y - 26, 113)
             spawn_hit_fx(x+70*spr_dir,y - 26, 302)
             sound_play(sound_get("counterhit"))
             }
             
             if  window_timer == 11 {
            	create_hitbox(AT_EXTRA_3, 5, x, y)
             }
         
         
         }
         
         
         if window_timer > 9 && !has_hit{
         
             window_timer -= 0.5
         }
        }
        

        if attack == AT_DSTRONG or attack == AT_FSTRONG {
        
        if attack == AT_DSTRONG {
        	hsp /= 1.06
        }	
         if window == 2 && window_timer = 1 {
         	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -22);
         	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 90);
            set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);
             sound_play(asset_get("sfx_bird_downspecial"))
         }   
         
         if has_hit_player {
         	set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -42);
         	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 130);
            set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 130);
         }
         
        }
        
        if attack == AT_USTRONG {
            
            set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8 + strong_charge/8);
            
            if window == 1 && strong_charge == 0 {
                hsp = 1*spr_dir
            }
            
            if strong_charge % 2 == 0 && strong_charge > 0 && window == 1 {
                
                if hit_player_obj != self {
                	
                	if strong_charge % 6 == 0 {
                	spawn_base_dust(x - (10 + random_func(2,30,true))*spr_dir,y, "dash_start",spr_dir)
                	spawn_base_dust(x + (20 + random_func(1,40,true))*spr_dir,y, "dash",spr_dir*-1)
                	}
                	
                if (spr_dir = 1 && hit_player_obj.x > x) or	(spr_dir = -1 && hit_player_obj.x < x){
                if x + 24*spr_dir > hit_player_obj.x && hit_player_obj.x + 250 > x {
                	hit_player_obj.x += 1 + floor(strong_charge/7)
                }
                
                if x + 24*spr_dir < hit_player_obj.x && hit_player_obj.x - 250 < x  {
                	hit_player_obj.x -= 1 + floor(strong_charge/7)
                }
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
         if window == 3 && window_timer == 1 {
         	 hsp = 10*spr_dir
             shake_camera (floor(strong_charge/6),8)
             sound_play(sound_get("RI"),false,noone,.7,.87)
         }   
         
         if window == 4 && window_timer == 1 {
             hsp = 0
         }
            
        }
        
        

}


#define spawn_base_dust(x, y, name, dir)
var dlen;
var dfx;
var dfg;
var dust_color = 0;

switch (name) {
    default:
    case "dash_start":
        dlen = 21;
        dfx = 3;
        dfg = 2626;
    break;
    case "dash":
        dlen = 16;
        dfx = 4;
        dfg = 2656;
    break;
    case "jump":
        dlen = 12;
        dfx = 11;
        dfg = 2646;
    break;
    case "doublejump":
    case "djump":
        dlen = 21;
        dfx = 2;
        dfg = 2624;
    break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg;
newdust.dust_color = dust_color;
newdust.spr_dir = dir;