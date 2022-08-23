//ai_update - called every frame for this character as a 



//

if get_gameplay_time() == 112 {
	if get_player_color(player) != 3 {
	 zvoice = sound_play(sound_get("intro"));
	} else {
	 zvoice = sound_play(sound_get("introG7"));	
	}
}

if get_gameplay_time() > 110 && string_lower(get_player_name(player)) != "zwill" {
     halox = 8
     halo = 3
}

if (get_training_cpu_action() == CPU_FIGHT) && get_gameplay_time() > 120{

if !free shield_down = false



has_walljump = true 

if attack != AT_TAUNT && (state == PS_RESPAWN or ai_target.state == PS_RESPAWN) && visible && !free && taunted = 0 {
    set_attack(AT_TAUNT)
    window = 1
    window_timer = 0
    move_cooldown[AT_TAUNT] = 9999
    taunted = 1
}


if get_gameplay_time()%2 == 0 {
    short_hop_speed = 6;
} else {
    short_hop_speed = 11;
}

if state_cat != SC_HITSTUN {
left_down = false 
left_hard_pressed = false 
right_down = false 
right_hard_pressed = false 
up_pressed = false 
down_down = false 
}

attack_down = false 
attack_pressed = false 
special_down = false 
special_pressed = false 
jump_pressed = false 
targetdmg = get_player_damage(ai_target.player)	

xdist = abs( (x + hsp*1.5) - (ai_target.x + ai_target.hsp*1.5))
ydist = abs( (y + vsp*1.5) - (ai_target.y + ai_target.vsp*1.5))







if x > room_width/2 + 500 && state_cat == SC_HITSTUN && !hitpause{
     hsp /= 1.02
}
    
if x < room_width/2 - 500 && state_cat == SC_HITSTUN && !hitpause{
      hsp /= 1.02  
}
        
if !free && ai_target.y > y {
   down_hard_pressed = true   
}





if state == PS_ATTACK_AIR {
     
     if attack == AT_DAIR {
     	fall_through = true 
     	down_down = true 
     }
}


if get_gameplay_time()%30 == random_func(1,30,true) AIplan += 1

if !free && can_jump && get_gameplay_time()%20 == random_func(2,20,true){
    jump_pressed = true 
    hsp = 6*(right_down - left_down)
}

if djumps == 0 && can_jump && get_gameplay_time()%20 == random_func(3,20,true) && vsp > 1 {
    jump_pressed = true 
}

if AIplan % 2 == 0 {
    if ai_target.x < x {
        right_down = false
        left_down = true
    } else {
        right_down = true 
        left_down = false
    }
    
    
} 

if AIplan % 2 == 1{
    
    if !ai_recovering and !free {
       if xdist < 200 {
            if ai_target.x > x {
              right_down = false
              left_down = true
           } else {
               right_down = true 
               left_down = false
           }
       } else {
           if ai_target.x < x {
              right_down = false
              left_down = true
           } else {
               right_down = true 
               left_down = false
           }
       }
    }
    
}


if ai_recovering {
    
    if x > room_width/2 {
         left_down = true 
    } else {
         right_down = true   
    }
    

    
    if (place_meeting(x+20*spr_dir, y, asset_get("par_block"))) && vsp > 0 && state == PS_PRATFALL  {
                jump_pressed = true 	
    }
    
    if (place_meeting(x-20*spr_dir, y, asset_get("par_block"))) && vsp > 0 && state == PS_PRATFALL {
                jump_pressed = true 	
    }     
    

            

            if y < room_height/2 + 80  {    
                if x > room_width/2 {
                    left_down = true 
                } else {
                    right_down = true   
                }
                down_down = true 
                up_down = false
                attack_pressed = true 
            } else  {
                if x > room_width/2 {
                left_down = true 
                } else {
                    right_down = true   
                }
                down_down = false 
                up_down = true
                special_pressed = true 
            }
            
        
   
} else {
    
if attack == AT_EXTRA_2 {
	if iaicancel == true {
	 AIplan = 1
	} else {
	 AIplan = 3
	}
	if x > ai_target.x {
		left_hard_pressed = true 
	} else {
		right_hard_pressed = true 
	}
}    

if iaido == false {

if ai_target.state == PS_ATTACK_GROUND or  ai_target.state == PS_ATTACK_AIR {
    
    if ai_target.window <= 2 {
        
        if xdist > 100 {
            AIplan = 1
        } else {
            if free && djumps == 0 {
                jump_pressed = true
            }
        } 
        
        if can_attack {
            if xdist < 100 && ydist < 80 {
               if !free {
                    if ai_target.x > x {
                       spr_dir = 1
                    } else {
                       spr_dir = -1
                    }
                   set_attack(AT_JAB)
                   window = 1
                   window_timer = 0
               } else {
                   set_attack(AT_NAIR)
                   window = 1
                   window_timer = 0
               }
            }
        }
        
        
    } else {
        AIplan = 0
        if can_attack {
            if xdist < 100 && ydist < 80 {
               if !free {
                    if ai_target.x > x {
                       spr_dir = 1
                    } else {
                       spr_dir = -1
                    }
                   set_attack(AT_JAB)
                   window = 1
                   window_timer = 0
               } else {
                   set_attack(AT_NAIR)
                   window = 1
                   window_timer = 0
               }
            }
            
            if xdist < 100 && ydist > 20 && y > ai_target.y && ydist < 80 {
               up_down = true 
               down_down = false
               left_down = false 
               right_down = false 
               attack_pressed = true
            }
            
            if xdist > 20 && xdist < (100 + ydist/2) && ydist > 40 && y < ai_target.y {
                if ai_target.x > x {
                       spr_dir = 1
                    } else {
                       spr_dir = -1
                }
               up_down = false 
               down_down = true
               left_down = false 
               right_down = false 
               attack_pressed = true
            }
            
        }
        
        
    }
   
} else {
    
    if ai_target.state_cat == SC_HITSTUN {
        AIplan = 0
        if !free && can_attack && ydist > 50 {
        	vsp = -11
        	if ai_target.x > x {
                spr_dir = 1
            } else {
               spr_dir = -1
            }
           hsp = 6*spr_dir
        }
    }
    
    if state == PS_ATTACK_GROUND && attack == AT_JAB {
        if window == 3 && window_timer > 3 {
           window = 4 
           window_timer = 0
        }
        
        if window == 6 && has_hit_player && window_timer > 3 {
        	if ai_target.x > x {
                       spr_dir = 1
                    } else {
                       spr_dir = -1
                    }
                    
        	if ydist < 40 {
        		if get_gameplay_time() % 3 <= 1 {
                 set_attack(AT_DTILT)
        		} else {
        		 set_attack(AT_FTILT)	
        		}
        	} else {
        		set_attack(AT_UTILT)
        	}
               window = 1
               window_timer = 0    
               hsp = 5*spr_dir
        }
    }
    
    if can_attack {
            if xdist < 100 && ydist < 80 {
               if !free {
                    if ai_target.x > x {
                       spr_dir = 1
                    } else {
                       spr_dir = -1
                    }
                   if get_gameplay_time() % 3 <= 1 && attack != AT_JAB {
                   set_attack(AT_JAB)
                   window = 1
                   window_timer = 0
                   } else {
                   if ydist < 30 {	
                     if get_gameplay_time() % 3 <= 1 {
                      set_attack(AT_DTILT)
        	     	} else {
        	     	 set_attack(AT_FTILT)	
        	     	}
                   window = 1
                   window_timer = 0    
                   } else {
                   	set_attack(AT_UTILT)
                   window = 1
                   window_timer = 0    
                   }
                   }
               } else {
                   
                   if get_gameplay_time() % 3 <= 1 {
                   set_attack(AT_NAIR)
                   window = 1
                   window_timer = 0
                   } else {
                   set_attack(AT_FAIR)
                   window = 1
                   window_timer = 0    
                   }
               }
            }
            
            if xdist < 130 && ydist > 20 && y > ai_target.y && ydist < 140{
               up_down = true 
               down_down = false
               left_down = false 
               right_down = false 
               attack_pressed = true
            }
            
            if xdist < (100 + ydist/2) && ydist > 40 && y < ai_target.y {
                if ai_target.x > x {
                       spr_dir = 1
                    } else {
                       spr_dir = -1
                }
               up_down = false 
               down_down = true
               left_down = false 
               right_down = false 
               attack_pressed = true
            }
            
    }
}   
    

}


if can_attack {
	if xdist > 30 && xdist < 110 && ydist > 60 && ai_target.y < y && ydist < 150{
		if ai_target.x > x {
                       spr_dir = 1
                    } else {
                       spr_dir = -1
        }
               up_down = true
               down_down = false
               left_down = false 
               right_down = false 
               special_pressed = true
	}
	
	
	if xdist > 30 && xdist < 140 && ydist < 80 {
		if ai_target.x > x {
                       spr_dir = 1
                    } else {
                       spr_dir = -1
        }
               up_down = false 
               down_down = false
               left_down = false 
               right_down = false 
               special_pressed = true
	}
	
	
	if xdist > 120 && xdist < 160 && ydist < 80 && random_func(2,10,true) == 0 {
		right_down = false 
		left_down = false 
		if ai_target.x < x {
                       left_down = true
        } else {
                       right_down = true
        }
        up_down = false 
        down_down = false
        special_pressed = true
	}
	
	if halox == 8 && (xdist > 140 or xdist > 140) and xdist < 300 and abs(x - room_width/2) > 200 and !free and abs(ai_target.x - room_width/2) > 200 {
	    if ai_target.x > x { 
                       spr_dir = 1
                    } else {
                       spr_dir = -1
        }
        attack_end()
		set_attack(AT_UTHROW)
		window = 1 
		window_timer = 0
		RCEstart = spawn_hit_fx(x,y-40,SC)
		RCEstart.depth = depth + 2
		sound_play(sound_get("counterhit"));
	}
	
}


}

if state == PS_PRATFALL {
    if x > room_width/2 {
        left_down = true 
        right_down = false 
    } else {
        right_down = true  
        left_down = false
    }
}


}

if state_cat = SC_HITSTUN{
	if hitpause {
		AIplan += 1
	      
	      if abs(old_hsp) < 14 && abs(old_vsp) < 4 {
			if AIplan % 4 == 0 {
				if x > ai_target.x{
					left_down = false;
					right_down = true;
				} else {
					left_down = true;
					right_down = false;
				}
			}
			if AIplan % 4 == 1 {
				if x > ai_target.x{
					left_down = true;
					right_down = false;
				} else {
					left_down = false;
					right_down = true;
				}
			}
			if AIplan % 4 == 2 {
				down_down = true
			}
			if AIplan % 4 == 3 {
				up_down = true
			}
		
		}
	}
}


with asset_get("pHitBox") {
    
  if player_id != other && type == 2 && hit_priority > 0 {
      if abs(other.x - x + hsp/2) < 200 && abs(other.x - x + hsp) > 100 && abs(other.y - y + vsp) < 100{
          with other {
              if free {
                 if vsp >= 0 or abs(other.y - y + vsp) < 60 {
                 	jump_pressed = true 
                 }
              }
          }
      } 
      
      if abs(other.x - x + hsp/2) <= 140 && abs(other.y - y + vsp) < 100 {
         with other down_down = true
      }
      
      if abs(other.x - x + hsp/2) < 160 && abs(other.y - y + vsp) < 100 && abs(other.x - x + hsp) > 140{
          with other {
              if !free {
                   down_down = true
                   attack_down = false 
                   special_down = false 
                   jump_down = false 
              }
          }
      } 
      
  } 
  
}


if (state == PS_DASH
   	or state == PS_IDLE
   	or state == PS_CROUCH
   	or state == PS_WALK
   	or state == PS_WALK_TURN
   	or state == PS_DASH_STOP
   	or state == PS_DASH_TURN
   	or state == PS_WAVELAND)  {
   		
	invincible = true 
	invince_time = 1

	nearbyhitbox = collision_circle( x, y - 30, 30, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone {
		if nearbyhitbox.player_id != self && nearbyhitbox.hit_priority > 0  {
				 set_state(PS_PARRY)
				 window_timer = 3
                  invince_time = 0
                  with nearbyhitbox {
                  	 hitbox_timer = 0
                  }
     	}
	}
	
}
