///



ltimer = get_window_value(attack, window, AG_WINDOW_LENGTH)

hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);

if !hitpause {
	astate = state
	aattack = attack
    awindow = window 
    atimer = window_timer 
    ahsp = hsp 
    avsp = vsp
    adir = spr_dir
}

if window == 1 && window_timer == 1 {
	soft_armor = false 
}

if attack != AT_NAIR and attack != AT_FAIR and attack != AT_BAIR and attack != AT_DAIR {
		can_fast_fall = false 
}

if free {
	if window == 1 {
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 3);
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 3);
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 3);
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 3);
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 3);
	} else {
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
	}
	
}

switch attack {
	case AT_TAUNT_2:
	
	hitpause = false 
	
	if window == 1 or window == 3 {
	hsp /= 1.4
	vsp /= 1.4
	can_move = false 
	}
	

	with pHitBox {
			/*
		if "KanosRe" not in self && type == 2 {
			  KanosReP = other.player
	    	  KanosRe = true 
	    	
	    	   image_xscale = 1
   	   	   	   image_yscale = 1
   	   	   	   
	    	can_hit[other.player] = false
	    	
	    	transcendent = true
	    	hitbox_timer -= 1
	    	can_hit_self = true
	    	enemies = 0
            
            hit_priority = 0
            
            hsp = 0
            vsp = 0
			
		}
	*/
	
		if "KanosRe" in self {
			if "effect" in self {
			other.Kaeffect = effect
			} else {
			other.Kaeffect = 0		
			}
			transcendent = true
	    	hitbox_timer -= 1
	    	can_hit_self = true
	    	enemies = 0
	    	can_hit[other.player] = false
	    	image_xscale = 1
   	   	   	image_yscale = 1
		hsp = 0
		vsp = 0
		grounds = 1
		walls = 1
	    if other.window == 1 {	
	       x += floor((other.x + 30*other.spr_dir - x)/6)	
	       y += floor((other.y - 60 - y)/6)	
	       depth = other.depth - 2
	    }
	    
	    if other.window == 2 {	
	    	if other.window_timer < 8 {
	       x += floor((other.x + (30 - other.window_timer*20)*other.spr_dir - x)/4)	
	       y += floor((other.y - 30 - y)/6)
	    	} else {
	    		depth = other.depth + 1
	    	 x += floor((other.x + (10)*other.spr_dir - x)/4)	
	         y += floor((other.y - 50 - y)/6)	
	    	}
	    }
	    
	     if other.window == 3 && other.window_timer == 1{

	     	KanosRe = 2
	     	spr_dir = other.spr_dir 
	     	if player_id.x > other.x {
	    		other.spr_dir = 1
	    	} else {
	    		other.spr_dir = -1
	    	}
	    	damage = (damage + 10)/2
	    	kb_value = 1
	    	kb_scale = 0.5
	    	hitstun_factor = 1
	    	hit_flipper = 0
	    	kb_angle = 40
	    	hitpause = 15
	    	extra_hitpause = 15
	     }
		}
	}
		
	if window == 1 && state_timer % 6 == 0 {
		pgfx = spawn_hit_fx(x + 30*spr_dir,y - 40, stonef)
			pgfx.spr_dir = 0.6
			pgfx.image_yscale = 0.6
			pgfx.depth = depth + 2
	}
	if window == 2 && state_timer % 4 == 0 && window_timer <= 8 {
		pgfx = spawn_hit_fx(x + (30 - window_timer*10 )*spr_dir,y - 20 - window_timer*3, stonef)
			pgfx.spr_dir = 0.6
			pgfx.image_yscale = 0.6
			pgfx.depth = depth - 1
	}
	if window == 2 && window_timer == 12 {
		pgfx = spawn_hit_fx(x + (10)*spr_dir,y - 30, stonef)
			pgfx.spr_dir = 0.6
			pgfx.image_yscale = 0.6
			pgfx.depth = depth + 2
	}
	
	if window == 1 && window_timer == 1 && !hitpause {
		hsp = -6*spr_dir
		soft_armor = 999
	  	 sound_play(sound_get("SpaceCut"),false,noone,.9,.9)
	  }
	  
	  if window == 2 && window_timer == 1 && !hitpause {
	  	sound_play(sound_get("Fstrong"),false,noone,.6,1.4)
	  	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)

	  }
	  
	  if window == 2 && window_timer == 12 && !hitpause {
	  	hsp = -6*spr_dir
	  	  sound_play(sound_get("Fstrong"),false,noone,1,.8)
	  }
	
	 if window == 3 && window_timer == 1 && !hitpause {
	 		if "Kaeffect" in self {
			set_hitbox_value(AT_TAUNT_2, 1, HG_EFFECT, Kaeffect);
			}
	 	
	     		create_hitbox(AT_TAUNT_2,1,floor(x) + 10*spr_dir,floor(y) - 50)
	 	soft_armor = 0
	 	hsp = -6*spr_dir
	  }
	
	
	break; 
	
	
     case AT_FSPECIAL_2:
     can_move = false
      hitpause = false 
      if window == 1 {
      	
      	if window_timer == 1 {
          state_timer = 0
          sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.8,.8)
          sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.8,.4)
          sound_play(asset_get("sfx_spin"),false,noone,1,.4)
          sound_play(sound_get("SpaceCut"),false,noone,.8,.6)
        }
        
        if window_timer == 10*5 {
          sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.8,.8)
          sound_play(asset_get("sfx_spin"),false,noone,1,.6)
          sound_play(sound_get("Fstrong"),false,noone,.8,.6)
        }
        
         if window_timer == 12*5 {
          sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1.1)
          sound_play(asset_get("sfx_spin"),false,noone,1,.6)
          sound_play(sound_get("Fstrong"),false,noone,1,.8)
        }
        
        if window_timer == 13*5 {
               sound_play(sound_get("RZ"),false,noone,1,.6)
        }
        
      	if window_timer < 10*5 {
	    	suppress_stage_music( 0.5, 60 );	
     	} else {
     		suppress_stage_music( 0.8, 60 );	
     	}
	
         galaxplayer.state = PS_PRATFALL
      	 hsp = floor((room_width/2 - x)/6)
      	 y -= 20
      	 galaxplayer.x += floor((x -  galaxplayer.x)/4)
         galaxplayer.y += floor((y - 30 - galaxplayer.y)/4)
         if window_timer > 7*5 {
         	state_timer -= .25
         }
         if window_timer > 8*5 {
         	state_timer -= .25
         }
         if window_timer > 9*5 {
         	state_timer -= .25
         }
         if window_timer > 10*5 {
         	state_timer -= .5
         }
         if window_timer > 11*5 {
         	state_timer -= .5
         }
         if window_timer > 12*5 {
         	state_timer -= .5
         }
      }
      
      if window == 2 {
      	state_timer -= 3
      	fall_through = true 
      	x = room_width/2 
      	vsp = 50
      	galaxplayer.x = x
        galaxplayer.y = y - 30
        
        if !free or state_timer > 300{
        	window = 3 
        	window_timer = 0
        	sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1)
        	sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,.6)
         	sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,1,1)
         	sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,1,.6)
         	create_hitbox(AT_UTHROW,2,x,y)
         	spawn_base_dust(x - 20,y + 2,"dash_start",1)
	    	spawn_base_dust(x + 20,y + 2,"dash_start",-1)
        }
      }
      
      if window == 3 {
      	state_timer = 0
      		x = room_width/2 
      		if window_timer%4 == 0 {
      	      spawn_base_dust(x - 10*window_timer,y + 2,"dash_start",1)
	          spawn_base_dust(x + 10*window_timer,y + 2,"dash_start",-1)
      		}
      		if window_timer%4 == 2 {
	          spawn_base_dust(x - 14*window_timer,y + 2,"dash",1)
	          spawn_base_dust(x + 14*window_timer,y + 2,"dash",-1)
      		}
      }
     break;
		
		
	case AT_TAUNT:
	can_shield = true 

	invince_time = 0
    invincible = false
    
    if free {
    	vsp = 1.5
    }
    
	taunted  += 10
	if state_timer % 10 == 0 {
		spawn_base_dust(x - 20,y + 2,"dash_start",1)
		spawn_base_dust(x + 20,y + 2,"dash_start",-1)
		
		if state_timer % 20 == 0 {
			spawn_base_dust(x,y + 2,"land",spr_dir)
		}
		
	 }
	if window == 1 && window_timer == 1 && !hitpause { 
	   spawn_base_dust(x - 20,y + 2,"dash_start",1)
		spawn_base_dust(x + 20,y + 2,"dash_start",-1)
		spawn_base_dust(x,y + 2,"land",spr_dir)
	   if Kanosbeatbox % 7 == 0 {
	   	beatbox = sound_play(sound_get("BB1"),false,noone,.9,1)
	   }
	   if Kanosbeatbox % 7 == 1 {
	   	beatbox = sound_play(sound_get("BB2"),false,noone,.9,1)
	   }
	   if Kanosbeatbox % 7 == 2 {
	   	beatbox = sound_play(sound_get("BB3"),false,noone,.9,1)
	   }
	   if Kanosbeatbox % 7 == 3 {
	   	beatbox = sound_play(sound_get("BB4"),false,noone,.9,1)
	   }
	   if Kanosbeatbox % 7 == 4 {
	   	beatbox = sound_play(sound_get("BB5"),false,noone,.9,1)
	   }
	   if Kanosbeatbox % 7 == 5 {
	   	beatbox = sound_play(sound_get("BB6"),false,noone,.9,1)
	   }
	   if Kanosbeatbox % 7 == 6 {
	   	beatbox = sound_play(sound_get("BB7"),false,noone,.9,1)
	   	old_hsp = 0
	   	old_vsp = 0
	   	hitpause = true 
	   	hitstop = 3
	   }
	   Kanosbeatbox ++
	
	}
	
	if window == 2 && window_timer == 1 && !hitpause { 
    	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.15,1.2)
	
	}
	
	
	if window == 3 && window_timer == 1 && !hitpause { 
	   sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.15,1.4)
	
	}
	
	if window == 3 && window_timer == 20 && taunt_down { 
	  window = 1 
	  window_timer = 0
	} 
	
	break;
	
	
	
	
        case AT_NSPECIAL_2:
     
        
        if window == 2 {
         vsp = 0	
        }
        if window == 1 {
        	hitpause = false 
        	if galaxplayer.state == PS_DEAD or galaxplayer.state == PS_RESPAWN {
        		vsp = -8 
        		set_state(PS_IDLE)
        	} else {
        	hsp /= 1.05
        	vsp += 0.4
        	if y > room_height/2 + 200 {
        		sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
                     spawn_hit_fx(x,y,SC)
                     y = room_height/2 - 300
                     x = room_width/2
                     hit_player_obj.x = x
                    hit_player_obj.y = y
                     spawn_hit_fx(x,y,SC)
                     with hit_player_obj {
                     	take_damage(player,-1,8)
                     }
        	}
        	

        	galaxplayer.fall_through = true 
        	can_move = false 
         galaxplayer.x += floor((x - 15*spr_dir -  galaxplayer.x)/4)
         galaxplayer.y = y - 50	
         galaxplayer.state_timer -= 1
         galaxplayer.hitpause = false
         galaxplayer.has_wall_jump = false 
          

         if window_timer == 3*4 && free {
         	window_timer -= 1
         }	
        
         if window_timer == 3*4 && !free {
         	galaxplayer.y = y
         	galaxplayer.x = x + 20*spr_dir
         	window = 2
         	window_timer = 0
            sound_play(asset_get("sfx_crunch"),false,noone,1,1.2)
            sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,1,1)
            sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1)
            spawn_base_dust(x,y,"land",spr_dir)
         }	
         
        	}
        	
       }
       
       if window == 2 && window_timer < 10 {
         galaxplayer.x += floor((x - 6*spr_dir -  galaxplayer.x)/4)
         galaxplayer.y -= 2
       }
        
        
     
     break; 
	case AT_UAIR:
	  if window == 1 {
	     if window_timer == 1 && !hitpause {
	   		sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,.8,1.2)
	     }
	     
	     if window_timer == ltimer && !hitpause {
	   		sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,1)
	   		sound_play(asset_get("sfx_blow_medium3"),false,noone,.8,1.1)
	     }	
	   }
      
       if has_hit_player && !hitpause && hit_player_obj.state_cat == SC_HITSTUN {
       	  vsp = -14
       		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1.2);
       	  attack_end();
       	  move_cooldown[AT_NSPECIAL_2] = 0
       	  set_attack(AT_NSPECIAL_2)
       	  window = 1
       	  window_timer = 0
       }
       
       if has_hit_player && hitpause && hit_player_obj.state_cat == SC_HITSTUN {
	      galaxplayer.x += floor((x -  galaxplayer.x)/6)
         galaxplayer.y += floor((y - 50 - galaxplayer.y)/6)	
       }
       
	break;
	
	case AT_DAIR:
	  if window == 1 {
	     if window_timer == 1 && !hitpause {
	   		sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,.5,1.2)
	     }
	     
	     if window_timer == ltimer && !hitpause {
	   		sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
	     }	
	   }

	
	break;
	
	case AT_BAIR:
	  if window == 1 {
	     if window_timer == 1 && !hitpause {
	   		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1.2)
	     }
	     
	     if window_timer == ltimer && !hitpause {
	   		sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,1)
	     }	
	   }

	
	break;
	
	case AT_FAIR:
	  if window == 1 {
	     if window_timer == 1 && !hitpause {
	   		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.8,.8)
	     }
	     
	     if window_timer == ltimer && !hitpause {
	   		sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
	     }	
	   }
	
	
	
	break;
	
	 case AT_NAIR:
	 
	 //if has_hit_player {
	 //	set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 106);
     //   set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 60);
     //   set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 106);
     //   set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 60);
     //   set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 106);
     //   set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 60);
	 //} else {
	 //	set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 96);
     //   set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 50);
     //   set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 96);
     //   set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 50);
     //   set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 96);
     //   set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 50);
	 //}
	    if window == 1 {
	     if window_timer == 1 && !hitpause {
	   		sound_play(asset_get("sfx_forsburn_cape_swipe"),false,noone,1,1.2)
	   		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.8,1)
	     }
	     	
	    }
	    
	    if window == 2 {
	     if window_timer == 4 && !hitpause {
	   		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.9,1.2)
	     }
	     
	     if window_timer == 12 && !hitpause {
	   		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.8,1.3)
	     }
	     
	    }
	    
	   if has_hit_player && !hitpause && (window < 3 && window == 2 && window_timer < 16) {
	   	   window = 2
	   	   window_timer = 16
	   	   sound_stop(asset_get("sfx_swipe_heavy2"))
	   	   sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.8,1.3)
	   }
	 break;
	 
     case AT_UTHROW:
        vsp += 1
        fall_through = true
        soft_armor = 999
        if window == 2 {
         vsp = 0	
        }
        if window == 1 {
        	
        	if galaxplayer.state == PS_DEAD or galaxplayer.state == PS_RESPAWN {
        		vsp = -8 
        		set_state(PS_IDLE)
        	} else {
        	if y > room_height/2 + 300 {
        		sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
                     spawn_hit_fx(x,y,SC)
                     y = room_height/2 - 300
                     x = room_width/2
                     hit_player_obj.x = x
                    hit_player_obj.y = y
                     spawn_hit_fx(x,y,SC)
                      with hit_player_obj {
                     	take_damage(player,-1,8)
                     }
        	}
        	
        	if x > room_width/2 + 500 {
        		sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
                     spawn_hit_fx(x,y,SC)
                     x = room_width/2 - 500
                     y = room_height/2 - 100
                     hit_player_obj.x = x
                    hit_player_obj.y = y
                     spawn_hit_fx(x,y,SC)
                     vsp = -15
                     hsp = 15*spr_dir
                      with hit_player_obj {
                     	take_damage(player,-1,8)
                     }
        	}
        	
        	if x < room_width/2 - 500 {
        		sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
                     spawn_hit_fx(x,y,SC)
                     x = room_width/2 + 500
                     y = room_height/2 - 100
                     hit_player_obj.x = x
                    hit_player_obj.y = y
                     spawn_hit_fx(x,y,SC)
                     vsp = -15
                     hsp = 15*spr_dir
                      with hit_player_obj {
                     	take_damage(player,-1,8)
                     }
        	}
        	galaxplayer.fall_through = true 
        	can_move = false 
         if window_timer < 24 {	
         galaxplayer.hsp = floor((x - 25*spr_dir -  galaxplayer.x)/4)
         galaxplayer.vsp = floor((y - galaxplayer.y)/2)
         galaxplayer.y = y
         } else {

         galaxplayer.hsp = floor((x - 25*spr_dir -  galaxplayer.x)/2)
         galaxplayer.vsp = floor((y - galaxplayer.y)/2)	
         galaxplayer.y = y
         }
         galaxplayer.state = PS_PRATFALL
         galaxplayer.has_wall_jump = false 
          
        	if window_timer == 10 {
        		sound_play(asset_get("sfx_blow_medium3"),false,noone,1,1)
        		
        		vsp = -12
        		hsp = 6*spr_dir
        		
        		
        		if  get_player_stocks(galaxplayer.player) == 1 && instance_number(oPlayer) == 2 {
        			potbuster = 1
        			set_attack(AT_FSPECIAL_2)
        			window = 1
        			window_timer = 0
        			state_timer = 0
        		} else {
        			grabfx = spawn_hit_fx(galaxplayer.x,galaxplayer.y - 40,302)
        			grabfx.pause = 4
        		}
        	}
        	
         if window_timer == 9*4 && free {
         	window_timer -= 1
         }	
        
         if window_timer == 9*4 && !free {
         	window = 2
         	window_timer = 0
         	sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1)
         	sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,1,1)
         }	
         
        	}
        	
       }
        
        
     
     break; 
	
	case AT_USTRONG:
	 if has_hit_player {
	 	set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 140);
        set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 140);
        
        if !hitpause {
        	with oPlayer if (activated_kill_effect) {
	
                 if hit_player_obj == other {
                 	
                            with other {
                            	galaxplayer = other
                               move_cooldown[AT_UTHROW] = 0
                               set_attack(AT_UTHROW)
                               window = 1
                               window_timer = 0
                               sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1,1)
                               hsp = 6*spr_dir 
                               vsp = -30
                            }
                  }
               }
        }
	 } else {
	 	set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 60);
        set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 120);
        set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 60);
        set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 120);	 	
	 }
	  if free && !hitpause {
		hsp /= 1.1
	  }
	
	   if window == 1 {
	   	if window_timer == 1 && !hitpause {
	   		sound_play(asset_get("sfx_forsburn_cape_swipe"),false,noone,1,1.2)
	   		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
	   	}
	   }
	   
	if window == 2 {
	   	if window_timer == 1 && !hitpause {
	   		spawn_base_dust(x,y,"land",spr_dir)
	   		sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,.6,1)
	   	}
	   	if window_timer == 1 && !hitpause {
	   		sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1)
	   	}
	  }
	
	if window == 4 {
	   	if window_timer == 20 && !hitpause {
	   		sound_play(asset_get("sfx_land"),false,noone,1,1)
	   		spawn_base_dust(x,y,"land",spr_dir)
	   	}
	   	
	   	if !free && has_hit_player {
	   		set_state(PS_LAND)
	   		state_timer = 0
	   	}

	  }
	  
	break ;
	
	case AT_DSTRONG:
	   
	   if window == 1 {
	   	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 6 + floor(strong_charge/10));
	   	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 6 + floor(strong_charge/10));
	   	hsp /= 1.06
	   	if window_timer == 1 && !hitpause {
	   		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
	   		sound_play(sound_get("SpaceCut"),false,noone,.6,1.6)
	   	}
	   }
	   
	   if window == 2 {
	   	if window_timer == ltimer && !hitpause {
	   		shake_camera(4,4)
	   		sound_play(sound_get("SpaceCut"),false,noone,1,1.4)
	   		 sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,1,1)
	   	}	
	   }
       if has_hit_player {
       	strong_charge = 0
       	soft_armor = 999
       	window_timer += .5
       }
	   if has_hit_player && move_cooldown[AT_DSTRONG] == 0 && hit_player_obj.state_cat == SC_HITSTUN{
	   	 if !hitpause {
	   	 	move_cooldown[AT_DSTRONG] = 43 + floor(abs(hit_player_obj.x - x)/20)
	   	 } else {
	   	 	if abs(hit_player_obj.x - x) < 100 {
	   	 	    if hit_player_obj.x < x {
	   	 	    	hit_player_obj.x -= 5
	   	 	    }
	   	 	    if hit_player_obj.x > x  {
	   	 	    	hit_player_obj.x += 5
	   	 	    }
	   	 	}
	   	 }
	   }
	   
	   if move_cooldown[AT_DSTRONG] > 40 && !hitpause {
	   	sound_stop(sound_get("RI"))
	   	 hit_player_obj.x += floor((x -  hit_player_obj.x)/8)
         hit_player_obj.y += floor((y - hit_player_obj.y)/4)
         if hit_player_obj.y > y {
         	hit_player_obj.y -= 10
         }
         
         if move_cooldown[AT_DSTRONG] == 41 {
         	take_damage(player,-1,1)
          create_hitbox(AT_DSTRONG,3,x,y)
          sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1)
                 if hit_player_obj.x < x {
                      hsp = 4
                  } else {
                  	  hsp = -4
                  }
         } 
	   }
	   
	   
	break ;
	
	
	case AT_EXTRA_1:
	  soft_armor = 999
	  hitpause = false 
	  hitstop = 0
	  if window_timer == 1 {
	  	with snapplayer {
                	if "turningtodust" in self {
                		if turningtodust > 2 {
                			turningtodust = 2
                			with other {
                				attack_end()
                				set_state(PS_IDLE)
                			}
                		}
                	}
       }
	 	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
	  }
	  
	   if window_timer == 8*5 {
	 	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.8,.8)
                with snapplayer {
                  take_damage(player,-1,5)
                  spawn_hit_fx(x,y - 30,305)
                }
	  }
	  
	  if window_timer == 10*5 {
	 	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.8,.9)
                with snapplayer {
                  take_damage(player,-1,10)
                  spawn_hit_fx(x,y - 30,305)
                }
	  }
	  
	  if window_timer == 12*5 {
	 	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.8,1)
                with snapplayer {
                  take_damage(player,-1,15)
                  spawn_hit_fx(x,y - 30,305)
                }
	  }
	  
	  if window_timer == 14*5 {
	  	snapdamage = 33
	  	soft_armor = false 
	 	sound_play(sound_get("snap"),false,noone,1,1)
	 	sound_play(sound_get("RI"),false,noone,1,1.3)
	 	sound_play(sound_get("RZ"),false,noone,.7,0.2);
	 	if get_player_color(player) == 16{
                    sound_play(sound_get("drip")) 
                }  
	 	shake_camera(6,4)
	 	with snapplayer {
	 		spawn_hit_fx(x,y - 30, 306)
                        take_damage(player,-1,20)
                        spawn_hit_fx(x,y - 30,305)
	 		turningtodust = 900
	 		turningtodustID = other
	 	}
	  }
	  
	  if window_timer < 14*5 {
	  	soft_armor = 999	
	  } else {
	  	soft_armor = false	
	  }
	  
	  if window_timer < 3*5 {
	  	snapplayer.hitpause = true 
	 	snapplayer.hitstop = 5
	 	snapplayer.invince_time = 0
	  	snapplayer.x += floor((x - 45*spr_dir -  snapplayer.x)/6)
         snapplayer.y += floor((y - 20 - snapplayer.y)/6)
         snapplayer.force_depth = true 
         snapplayer.depth = depth - 1 
	  }
	  
	 if window_timer == 3*5 {
	 	snapplayer.x = x + 20*spr_dir
	 	sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,1)
	   create_hitbox(AT_FTHROW,4,x,y)	
	 }
	break;
	
	
	
	
	case AT_FTHROW:
	
	if "turningtodust" in self {
                		if turningtodust > 2 {
                			turningtodust = 600
                		}
     }
     
	 if window == 1 {
	 if move_cooldown[AT_DTHROW] < 30 move_cooldown[AT_DTHROW] += 5
	 }
	 
	 thresholdNEO = floor(threshold/(hit_player_obj.knockback_adj))
	 vsp = 0
	 can_move = false 
	 if free hsp /= 1.1
	 
	 if window_timer == 25 && get_player_damage(hit_player_obj.player) >= thresholdNEO {
	 	window_timer = 29
	 	snapplayer = hit_player_obj

	 	   
	 	   fx = spawn_hit_fx(snapplayer.x - 10*spr_dir,snapplayer.y - 50, SC)
	 	   fx.depth = snapplayer.depth + 1 

	 	   
	 		shake_camera(6,6)
	 		move_cooldown[AT_UTHROW] = 60
	 		sound_play(sound_get("Fstrong"),false,noone,.8,1.4);
	 		sound_play(sound_get("RZ"),false,noone,.7,1.3);
	 		move_cooldown[AT_FTHROW] = 120 
	 		window_timer += 1
	 		hitpause = true 
	 		hitstop = 30
	 		old_hsp = 0
	 		old_vsp = 0
	 		invincible = true 
	 		invince_time = 2
	 		with hit_player_obj {
	 			hitpause = true 
	 		    hitstop = 30
	 		    old_hsp = 0
	 		    old_vsp = 0
	 		    invincible = true 
	 		    invince_time = 2
	 		}
	 }
    
     if window_timer == 31 && get_player_damage(hit_player_obj.player) >= thresholdNEO {
     
     	attack_end()
       set_attack(AT_EXTRA_1)
       window = 1
       window_timer = 0
     }
     
     if move_cooldown[AT_FTHROW] > 90 {
     	hit_player_obj.x += floor((x + 45*spr_dir -  hit_player_obj.x)/2)
         hit_player_obj.y += floor((y - 20 - hit_player_obj.y)/2)
     }


	 if window == 1 && !hitpause {
	 	
	 	if window_timer == 1 {
	 		sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,1,1);
	 		hsp = 6*spr_dir
	 	}
	 	
	 	
	 	if window_timer == 8 or window_timer == 16 or window_timer == 24  {
	 		       
       
	 		move_cooldown[AT_UTHROW] = 10
	 		with hit_player_obj {
	 			take_damage(player,-1,1 + other.hasbody + other.hasmind + other.hasbalance)
	 			sound_play(asset_get("sfx_boss_fireball_land"),false,noone,1,1);
	 			sound_play(asset_get("sfx_boss_laser_hit"),false,noone,1,1);
	 			x -= 10*spr_dir 
	 			y -= 10
	 		}
	 		shake_camera(2,2)
	 	}
	 	
	 	
	 	
	 	
	 	hit_player_obj.hitpause = true 
	 	hit_player_obj.hitstop = 5
	 	
	 	if window_timer == 36 {
	 		//if (spr_dir = 1 && right_down - left_down = -1) or (spr_dir = -1 && right_down - left_down = 1) {
	 		//	window = 4
	 		//	window_timer = 0
	 		//}
	 	}
	 	
	 	if window_timer > 32 {
	 		if window_timer == 33 {
	 		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1);
	 		sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1);
	 		}
	 	 hit_player_obj.x += floor((x -  hit_player_obj.x)/8)
         hit_player_obj.y += floor((y - 30 - hit_player_obj.y)/8)	
	 	} else if window_timer > 4 {
	 	 hit_player_obj.x += floor((x + 45*spr_dir -  hit_player_obj.x)/2)
         hit_player_obj.y += floor((y - 20 - hit_player_obj.y)/2)
	 	} else {
	 	 hit_player_obj.x += floor((x + 30*spr_dir -  hit_player_obj.x)/4)
         hit_player_obj.y += floor((y + 10 - hit_player_obj.y)/4)	
	 	}
	 }
	 
	 
	 if window == 2 && !hitpause{
	 	
	 	if window_timer == 1 {
	 		hsp = 4*spr_dir
	 	}
	 	
	 	if window_timer == ltimer {
	 		sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1);
	 		hsp = 4*spr_dir
	 	}
	 		hit_player_obj.hitpause = true 
	 	hit_player_obj.hitstop = 5
	 	if window_timer < 10 {
	 	 hit_player_obj.x += floor((x - 20*spr_dir -  hit_player_obj.x)/4)
         hit_player_obj.y += floor((y - 30 - hit_player_obj.y)/4)
	 	} else {
	 	 hit_player_obj.x += floor((x + 30*spr_dir -  hit_player_obj.x)/6)
         hit_player_obj.y += floor((y - 30 - hit_player_obj.y)/4)	
	 	}
	 }
	 
	 if window == 4 && !hitpause{
	 	
	 	if window_timer == 1 {
	 		hsp = -4*spr_dir
	 	}
	 	
	 	if window_timer == ltimer {
	 		sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1);
	 		hsp = -4*spr_dir
	 	}
	 	
	 	hit_player_obj.hitpause = true 
	 	hit_player_obj.hitstop = 5
         hit_player_obj.force_depth = true 
         hit_player_obj.depth = depth - 1
 
       if window_timer < 10 {
	 	 hit_player_obj.x += floor((x + 10*spr_dir -  hit_player_obj.x)/4)
         hit_player_obj.y += floor((y - 40 - hit_player_obj.y)/4)
	 	} else {
	 	 hit_player_obj.x += floor((x - 30*spr_dir -  hit_player_obj.x)/4)
         hit_player_obj.y += floor((y - 46 - hit_player_obj.y)/4)	
	 	}
	 }
	 
	 if window == 5 {
	 	hit_player_obj.force_depth = true 
         hit_player_obj.depth = depth - 1
         if hitpause {
         	window_timer += 1
         }
	 }
	 
	 if window == 3 && window_timer == 12 {
	 	attack_end()
	   set_state(PS_IDLE)
	 }
	 
	 
	break ;
	
  case AT_FSTRONG:
  /*
   if window <= 3 {
   	
   	 with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y+30, 20 + (image_xscale*10 + image_yscale*10) + 5*other.window,other, true, true ) 
	
	    if nearbyhitbox != noone && player_id != other.id && type == 2 && "KanosRe" not in self && hit_priority != 0 {
	    	with other {
	    			hit_player_obj = other.player_id
	    	}
	    	KanosReP = other.player
	    	KanosRe = true 
	    	   image_xscale = .5
   	   	   	   image_yscale = .5
   	   	   	   
	    	can_hit[other.player] = false
	    	
	    	transcendent = true
	    	hitbox_timer -= 1
	    	can_hit_self = true
	    	enemies = 0
            
            hit_priority = 0
            
            hsp = 0
            vsp = 0
	    	
	    	with other {
	    		set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
	    		attack_end()
	        strong_charge = 60
	        move_cooldown[AT_TAUNT_2] = 0
	    	set_attack(AT_TAUNT_2)	
	    	window = 0 
	    	window_timer = 0
	    	if other.player_id.x > x {
	    		spr_dir = 1
	    	} else {
	    		spr_dir = -1
	    	}
	    	hsp = -6*spr_dir
            sound_stop(sound_get("parried")); 
            sound_play(sound_get("parried")); 
            shake_camera(4, 6)
	    		
	    	}
	    }
	    
	} 
   }
   */
   if window == 1 {
   	
   	if window_timer == 1 {
   		threshold = 150 - (hasbody*10) - (hasmind*10) - (hasbalance*10)
   		set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
   	}
   	
   	
   	
   	 set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6 + round(strong_charge/6));
   	 if hitpause && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
   	 	 hit_player_obj.x += floor((x - 10*spr_dir -  hit_player_obj.x)/8)
         hit_player_obj.y += floor((y - 30 - hit_player_obj.y)/8)
         window_timer ++
         if move_cooldown[AT_FSTRONG] == 0 {
         	  sound_play(asset_get("sfx_blow_medium3"))
         	  move_cooldown[AT_FSTRONG] = 60

         }
   	 }
   	 
   	 if window_timer == 1 && !hitpause {
   	 	 sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,.7,1.2);
   	 }
   	 
     if window_timer == 4 && !hitpause {
   	 	 sound_play(asset_get("sfx_swipe_weak2"),false,noone,.9,1);
   	 }
   	 
   }
 
   if window == 2 {
   	 if window_timer == 2 && !hitpause {
   	 	 sound_play(asset_get("sfx_swipe_medium2"),false,noone,.9,0.9);
   	 	 sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1,1.2);
   	 }
   	 
   }
   
   if has_hit_player && !hitpause && hit_player_obj.state_cat == SC_HITSTUN {
   	strong_charge = 0
   	    if move_cooldown[AT_FSTRONG] == 0 {
         	  sound_play(asset_get("sfx_blow_medium3"))
         	  move_cooldown[AT_FSTRONG] = 60
         }
         attack_end()
       move_cooldown[AT_FTHROW] = 0
   	  set_attack(AT_FTHROW)
   	  window = 1
   	  window_timer = 0
   }
   
 break; 
 
 case AT_UTILT :
 
   if has_hit_player {
   	 set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 122);
     set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 146);
   } else {
   	set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 82);
    set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 106);
   }
   
   if window == 1 {
   	 if window_timer == 1 && !hitpause {
   	 	 sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.9,1);
   	 }
   	 
   	 if window_timer == ltimer && !hitpause {
   	 	 sound_play(asset_get("sfx_swipe_medium2"),false,noone,.9,1);
   	 }
   	 
   }
 
   if window == 2 {
   	 if window_timer == ltimer && !hitpause {
   	 	 sound_play(asset_get("sfx_swipe_medium1"),false,noone,.9,1);
   	 }
   	 
   }
   
   
   if !hitpause && instance_number(oPlayer) == 2 && get_player_stocks(hit_player_obj.player) == 1 {
        	with oPlayer if (activated_kill_effect) {
                 if hit_player_obj == other {
                            with other {
                            	y -= 10
                               sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1,1)
                               hsp = 6*spr_dir 
                               vsp = -30
                            	galaxplayer = hit_player_obj 
                                set_attack(AT_UTHROW)
                                window = 1
                                window_timer = 0
                                state_timer = 0
                            }
                  }
               }
    }
        
   
   
 break; 
 
 case AT_JAB :
   if window == 1 {
   	 if window_timer == 1 && !hitpause {
   	 	 sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.7,1.1);
   	 }
   	 if window_timer == ltimer && !hitpause {
   	 	 sound_play(asset_get("sfx_blow_heavy2"),false,noone,.7,1.1);
   	 	 shake_camera(3,3)
   	 	 spawn_hit_fx(x + 30*spr_dir,y,14)
   	 }
   }
   
   if window == 4 {
   	 if window_timer == 1 && !hitpause {
   	 	if left_down && !right_down && spr_dir = 1 {
   	 		attack_end() 
   	 		set_state(PS_IDLE)
   	 	}
   	 	if !left_down && right_down && spr_dir = -1 {
   	 		attack_end() 
   	 		set_state(PS_IDLE)
   	 	}
   	 	 sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.7,1.2);
   	 }
   	 if window_timer == ltimer && !hitpause {
   	 	 sound_play(asset_get("sfx_blow_heavy2"),false,noone,.7,1.1);
   	 	 shake_camera(3,3)
   	 	 spawn_hit_fx(x + 30*spr_dir,y,14)
   	 }
   }
   
   if window == 6 && window_timer > 6 && !hitpause {
   	can_attack = true 
   }
 
 
 break; 
	

 case AT_FTILT :
   if window == 1 {
   	 if window_timer == 1 && !hitpause {
   	 	 sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.9,1);
   	 }
   }
 
 break; 
 

 case AT_DTILT :
   move_cooldown[AT_DTILT] = 30
   if window == 1 {
   	 if window_timer == 1 && !hitpause {
   	 	 sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.9,1);
   	 }
   }
  if window == 2 {
   	 if window_timer == 1 && !hitpause {
   	 	 sound_play(asset_get("sfx_ori_bash_launch"),false,noone,.9,1);
   	 }
   }
 break; 
 
  case AT_DATTACK :
  if window == 1 {
   if window_timer == 1 && !hitpause {
   	   hsp = 7*spr_dir
   	 	 sound_play(asset_get("sfx_swipe_heavy1"),false,noone,.9,1);
   	 }
   	 if window_timer == ltimer && !hitpause {
   	 	 sound_play(asset_get("sfx_swipe_medium2"),false,noone,.9,1);
   	 }
  } 
  
  
  

   if window == 3 {
   	hsp /= 1.05
   	if window_timer == 1 && !hitpause {
   	 	 sound_play(asset_get("sfx_land"),false,noone,1,1);
   	 	 shake_camera(2,2)
   	 	 spawn_base_dust(x,y,"land",spr_dir)
   	 }
   	 
   }
 break; 
 
 	
}





if attack == AT_FSPECIAL && !hitpause{
	
     if window < 4 {
     	var step_up_height = 30;
    	if place_meeting(x+40*spr_dir,y,asset_get("par_block")) {
             for (var i = 0; i < step_up_height; i += 2) {
                 if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
                     x = x+hsp; 
                     y = y+vsp-i;
                     break;
                 }
             }
         }
     }    
     
    move_cooldown[AT_FSPECIAL] = 20
    var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
    if window < 4 {
    can_move = false
    }
    can_fast_fall = false
    if !has_hit_player {
    	can_wall_jump = true
    }
    
    if window == 1 && !hitpause{
        hsp/= 1.2
        vsp/= 1.2
        if window_timer == 1 {
            sound_play(asset_get("sfx_shovel_swing_heavy2"));
        }
    }
    
    if window == 3 && !hitpause {
    	
    if window_timer == 1{
	   if move_cooldown[AT_FTHROW] >= 4 {
			grab = spawn_hit_fx (portalx + 20*spr_dir, portaly - 6, ptg)
	   }
	}
	
	if window_timer == 4{
	   if move_cooldown[AT_FTHROW] >= 4 && !hitpause{
	   	sound_stop(sound_get("SpaceCut"))
	   	sound_play(sound_get("SpaceCut"),false,noone,1,1.2)
			create_hitbox(AT_DTHROW,3,portalx + 56*spr_dir, portaly + 4 )
	   }
	}
	
    if free {
        vsp /= 1.06
        hsp /= 1.1
        } else {
          hsp /= 1.06
        }
    }
    
    if window == 1 && window_timer > 6 && !hitpause{
    	hsp = 4*spr_dir
    }
    
    if window == 2 && window_timer > 6 && !hitpause{
    	hsp = 3*spr_dir
    }
    
    /*
    
    if window == 1 && window_timer == 15 && special_down && !hitpause && ((spr_dir = 1 && !left_down) or (spr_dir = -1 && !right_down)) {
        fspe = 2
        window = 2
        window_timer = 0
        spawn_hit_fx (x, y, ptgone)
        spawn_hit_fx (x, y, fspecfx)
        sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
        if (joy_pad_idle){
		    x += 180*spr_dir
		    y -= 0
		    fhsp = 8*spr_dir
		    fvsp = 0
		}else{
			x -= (180 * cos(angle))*-1;
		    y += (100 * sin(angle));
		    fhsp = (8 * cos(angle))* -1;
		    fvsp = (8 * sin(angle)) * -1;
		}
        spr_dir *= -1
    }
    */
    
    if window == 1 && window_timer == 15{
        fspe = 1
        window = 3 
        window_timer = 0
        fhsp = 8*spr_dir
        
        //if (joy_pad_idle){
		//    
		//}else{
		//    fhsp = (8 * cos(angle))
		//    fvsp = (8 * sin(angle));
		//}
		
		
    }
    
    if window == 3 && window_timer == 1 && !hitpause{
        hsp = abs(fhsp)*spr_dir + 6*spr_dir
        vsp = fvsp
    }
    
    if window == 1 && window_timer == 12 && !hitpause{
        sound_play(asset_get("sfx_spin"));
    }
    
     if window == 1 && window_timer == 3 && !hitpause{
        sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.3);
    }
        
    
    if window == 4 && window_timer == 1 && !hitpause{
        sound_play(asset_get("sfx_jump_ground"));
        vsp = -4
    }
    
    if window == 4 && window_timer > 18 {
    	prat_land_time = 46 - window_timer
        if !free {
            set_state (PS_PRATLAND)
            sound_play(asset_get("sfx_land_med"))	
            sound_play(asset_get("sfx_land_light"))	
            shake_camera(1, 4)
            spawn_base_dust(x,y,"land",spr_dir)
        } 
        
    }
    
    if has_hit_player {
    	can_wall_jump = false 
        soft_armor = 999
        if window < 5 {
        	
            hit_player_obj.x += floor((x + 120*spr_dir -  hit_player_obj.x)/2)
            hit_player_obj.y += floor((y - 20 - hit_player_obj.y)/4)
            hit_player_obj.fall_through = true 
            hit_player_obj.state = PS_PRATFALL
            hsp = 3*spr_dir
            vsp /= 1.2
        }
        
        if (window == 3 && !hitpause && window_timer > 6) or window < 5 {
        	x += 40*spr_dir
        	destroy_hitboxes()
        	sound_play(asset_get("sfx_clairen_spin"));
            sound_play(asset_get("sfx_shovel_swing_med1"));
            vsp = -12
            window = 5
            window_timer = 1
            hsp /= 2
            state_timer = 0
            if move_cooldown[AT_FTHROW] >= 4 && !hitpause {
            sound_stop(sound_get("SpaceCut"))
            sound_play(sound_get("SpaceCut"),false,noone,1,1.2)
			create_hitbox(AT_DTHROW,3,portalx + 56*spr_dir, portaly + 4 )
            }
        }
        
        if window == 5 {
        	vsp += 0.5       	
        	if state_timer % 12 == 0 {
        		spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 30,14)
        		with hit_player_obj {
        			take_damage(player,-1,1)
        		}
        	}
        	
            hit_player_obj.x += floor((x - (90 - window_timer*15)*spr_dir -  hit_player_obj.x)/4)
            hit_player_obj.y += floor((y -  hit_player_obj.y)/2)
            hit_player_obj.fall_through = true 
            hit_player_obj.state = PS_PRATFALL
	    	
            if window_timer == 9 {
                window_timer = 0
            }
            
            if window_timer < 4 {
              force_depth = true 
              depth = hit_player_obj.depth + 1
            }
            
            if (state_timer > 10 && (!free or y > room_height - 100)) {
                hit_player_obj.y = y 
                 prat_land_time = 16

                 if free {
                 	
                     sound_play(sound_get("SpaceCut"));
                     spawn_hit_fx(x,y,SC)
                     x = room_width/2 
                     y = 0
                     hit_player_obj.x = x
                    hit_player_obj.y = y
                     spawn_hit_fx(x,y,SC)
                      with hit_player_obj {
                     	take_damage(player,-1,8)
                     }
                 }
                 
                 if !free {
                 	hsp = -4*spr_dir
                 	hit_player_obj.y = y + 20
                 	hit_player_obj.x = x + 10*spr_dir
                     sound_play(asset_get("sfx_blow_heavy2"));
                     spawn_hit_fx (x - 50*spr_dir, y - 7, 13)
                     spawn_hit_fx (x + 50*spr_dir, y - 7, 13)
                     spawn_hit_fx (x + 30*spr_dir, y + 4, 14)
                     spawn_hit_fx (x, y + 4, 14)
                     spawn_hit_fx (x - 30*spr_dir, y + 4, 14)
                     set_state(PS_PRATLAND)
                     state_timer = 0
                     create_hitbox(AT_FSPECIAL,2,x,y)
                 }
            }
        }
    }
}


if attack == AT_USPECIAL && !hitpause{
    can_fast_fall = false 
    if window == 1 && window_timer == 1 {
    	sound_play(asset_get("sfx_coin_collect"));
        state_timer = 1
        teletime = 0
    }
    
    if window == 1 {
        can_move = false
        can_shield = true
        hsp /= 1.6
        vsp /= 2
        if (state_timer <= 10 && window_timer == 8 && !special_down) or (special_down && state_timer <= 60 && window_timer == 8) {
            window_timer = 7
            hsp = 0
            vsp = 0
        }
    }
    
    
    if state_timer == 10 && window = 1 {
        var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
		    telex = x
		    teley = y - 100
		}else{
			 telex = x + (100 * cos(angle));
			 teley = y + (100 * sin(angle));
		}
		teletime += 1
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 1);
    }
    
    if (state_timer == 14 or (state_timer > 20 && state_timer % 16 == 0)) && window = 1{
       var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if teletime == 1 {
		    
		    if (joy_pad_idle){
		    
		}else{
			 telex += (40 * cos(angle));
			 teley += (40 * sin(angle));
		}
		
		 } else { 
		if (joy_pad_idle){
		    
		}else{
			 telex += (80 * cos(angle));
			 teley += (80 * sin(angle));
		}
		}
		sound_play(asset_get("sfx_holy_lightning"),false,noone,1, 1 + state_timer/100);
		spawn_hit_fx (telex, teley, upBpar )
		teletime += 1 
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
    }
    
    prat_land_time = 8 + (teletime*6)
    
    if teletime <= 1 {
        set_num_hitboxes(AT_USPECIAL, 0);
    } else { 
        set_num_hitboxes(AT_USPECIAL, 1);
    }
    
    if window == 2 {
        hsp = 0
        vsp = 0
        draw_indicator = false
        sound_play(asset_get("sfx_ori_bash_lauch"));
    } 
    if window == 3 {
        hsp = 0
        vsp = 0
        spawn_hit_fx (x, y , ptgone)
        if window_timer == 1 {
        x = telex
        y = teley
        }
        draw_indicator = false
        invincible = true
    }
    
    if window == 4 {
        can_wall_jump = true
        hsp /= 1.1
    }
    if window = 3 {
        if window_timer == 12 {
                if teletime <= 1 {
                   } else { 
                       shake_camera(2, 6)
                       tfx = spawn_hit_fx(x,y-46,SC)
                       tfx.spr_dir = 0.66*spr_dir 
                       tfx.image_yscale = 0.66
                       sound_play(sound_get("SpaceCut"));
                   }
        }
    }
    
    if window == 4 && window_timer == 16 {
           move_cooldown[AT_USPECIAL] = 999
        if teletime <= 1 {
            set_state (PS_PRATFALL)
        } else {
            set_state (PS_PRATFALL)
        }
    }
    
}


if attack == AT_NSPECIAL && !hitpause{
	can_fast_fall = false
	if state_timer <= 10 {
		super_armor = true 
		hitpause = false 
	} else if state_timer == 11 {
		super_armor = false 
	}
   	if window == 1 && window_timer == 1 && !hitpause {
   	   sound_play(asset_get("sfx_spin"),false,noone,1,1);
       sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1.25);
   	}
   	
	if window == 2 {
		if window_timer == 1 {
    		if left_down && !right_down {
                    spr_dir = -1
                }
                if !left_down && right_down {
                    spr_dir = 1
                }
    	}
	}
	
    if window == 3  && !hitpause{
	   hsp = 6*spr_dir	
	
	 if window_timer == 5{
	   if move_cooldown[AT_FTHROW] >= 4 {
			punch = spawn_hit_fx (portalx + 30*spr_dir, portaly - 6, ptp)
			punch.depth = -6
	   }
	}
	
	if window_timer == 8{
	   if move_cooldown[AT_FTHROW] >= 4 {
	   	sound_play(sound_get("SpaceCut"),false,noone,1,1.2)
			create_hitbox(AT_DTHROW,2,portalx + 60*spr_dir, portaly + 4 )
	   }
	}
	
	
    }
	
	
	if window == 4 && window_timer == 1 {
		
		shake_camera(4,4)
		if move_cooldown[AT_FTHROW] == 0 {
			//create_hitbox(AT_DTHROW,1, x + 88*spr_dir, y - 46)
		}
	   spawn_hit_fx (x + 88*spr_dir, y, ptgone)
	}
	
	
	 if window >= 4 {
	 	countered = 0
	 	hsp /= 1.1
	 	vsp /= 1.1
	 }
}

if attack == AT_DSPECIAL && !hitpause{
	
    if has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
    	free = true 
    	y -= 10
    	vsp = -20
    	attack = AT_NSPECIAL_2
    	window = 1
    	window_timer = 0
    	galaxplayer = hit_player_obj
    	has_hit_player = true 
    }
    
	if move_cooldown[AT_DSPECIAL] == 118 {
		if free {
	         		vsp = -6
	    }
		pratfx = spawn_hit_fx(x,y - 40,306)
		pratfx.pause = 3
		set_state(PS_PRATFALL)
		prat_land_time = 90
		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,.8,1.25);
	}
	
	can_fast_fall = false 
	if window < 3 {
		hsp /= 1.5
		if vsp > 0 vsp /= 1.4
	} else {
		hsp /= 1.5
		if vsp > 0 vsp /= 1.4
	}
	if window == 1{
		
		ptprep = spawn_hit_fx(x + 20 - random_func(2,40,true) + 20*spr_dir,y + 10 - random_func(1,50,true) ,ptgone)
    					ptprep.spr_dir = 0.3*spr_dir
    					ptprep.image_yscale = 0.3
    					
		if window_timer == 1 && !hitpause && move_cooldown[AT_FTHROW] >= 4 {
			sound_play(asset_get("sfx_coin_collect"));
			sound_play(sound_get("SpaceCut"),false,noone,1,1.2)
			create_hitbox(AT_DTHROW,4,x + 50*spr_dir,y - 46)
			grab = spawn_hit_fx (x + 50*spr_dir,y, ptgone)
			grab.depth = -6
		} else if move_cooldown[AT_FTHROW] == 0 {
			sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1.25);
			window = 2
			window_timer = 0
		}
		
		if window_timer == 12 && special_down {
			window_timer = 11
		}
	}
	
	if window == 2 && window_timer == 16 {
		if move_cooldown[AT_FTHROW] == 0 {
			sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
			sound_play(sound_get("SpaceCut"),false,noone,1,1.4)
			create_hitbox(AT_DTHROW,1, x + 48*spr_dir, y - 46)
			grab = spawn_hit_fx (x + 48*spr_dir, y - 10, ptgone)
			grab.depth = -6
		} else{
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.4)
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