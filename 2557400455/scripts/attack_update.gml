///
if (attack == AT_USPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL ){
    trigger_b_reverse();
}


if attack == AT_FSTRONG or attack == AT_DSTRONG or attack == AT_USTRONG {
    if window == 1 && window_timer == 1 && !hitpause{
        sound_play(charge_sound)
        sound_stop(sound_get("squeaky_short"))
    }
    if window == 2 && window_timer == 1 && !hitpause {
        sound_play(sound_get("shot1"),false,noone,0.7)
        
        if redP >= 100 && shield_down{
        if attack == AT_FSTRONG {
        	        sound_stop(sound_get("RI")); 
                    sound_play(sound_get("RI"),false,noone,.75,.6); 
                    shake_camera(4, 6)
                    create_hitbox(AT_EXTRA_1,11, x, y-20)
                    create_hitbox(AT_EXTRA_1,17, x, y-20)
                    create_hitbox(AT_EXTRA_1,15, x, y-20)
                    spawn_hit_fx (x , y  - 20 , 302 )
        }
        
        if attack == AT_USTRONG {
        	        sound_stop(sound_get("RI")); 
                    sound_play(sound_get("RI"),false,noone,.75,.6); 
                    shake_camera(4, 6)
                    create_hitbox(AT_EXTRA_1,14, x, y-20)
                    create_hitbox(AT_EXTRA_1,18, x, y-20)
                    create_hitbox(AT_EXTRA_1,17, x, y-20)
                    
                 
                 
                    spawn_hit_fx (x , y  - 20 , 302 )
        }
        
        if attack == AT_DSTRONG {
        	        sound_stop(sound_get("RI")); 
                    sound_play(sound_get("RI"),false,noone,.75,.6); 
                    shake_camera(4, 6)
                    create_hitbox(AT_EXTRA_1,11, x, y-20)
                    create_hitbox(AT_EXTRA_1,12, x, y-20)
                    create_hitbox(AT_EXTRA_1,1, x,y - 20)
                    create_hitbox(AT_EXTRA_1,2, x,y - 20)
                    create_hitbox(AT_EXTRA_1,3, x,y - 20)
                    create_hitbox(AT_EXTRA_1,4, x,y - 20)
                    create_hitbox(AT_EXTRA_1,5, x,y - 20)
                    create_hitbox(AT_EXTRA_1,6, x,y - 20)
                    create_hitbox(AT_EXTRA_1,7, x,y - 20)
                    create_hitbox(AT_EXTRA_1,8, x,y - 20)
                    
                 
                 
                    spawn_hit_fx (x , y  - 20 , 302 )
        }
        
        state_timer = 999
        }
    }
    
    if window == 2 && window_timer == 2 && !hitpause && state_timer >= 999{
    	if attack == AT_FSTRONG {
                    shake_camera(4, 6)
                    create_hitbox(AT_EXTRA_1,11, x, y-60)
                    create_hitbox(AT_EXTRA_1,11, x, y+20)
        }
        
        if attack == AT_USTRONG {
            create_hitbox(AT_EXTRA_1,4, x,y - 20)
            create_hitbox(AT_EXTRA_1,1, x,y - 20)
            create_hitbox(AT_EXTRA_1,7, x,y - 20)
            create_hitbox(AT_EXTRA_1,8, x,y - 20)
            create_hitbox(AT_EXTRA_1,2, x,y - 20)
        }
        
        if redP > 300 {
        	redP = 200 
        } else {
        	redP -= 100
        }
    }
    
    if window == 4 {
        sound_stop(charge_sound)
    }
}

switch attack {
    
    case AT_JAB:
             
             if window == 7 && window_timer == 11 && !hitpause {
                 sound_play(sound_get("shot1"),false,noone,0.7)
             }
    
    
    break;
    
    case AT_DATTACK:
      
      if free {
      vsp /= 1.2
      hsp /= 1.1
      }
      
             if window == 1 && window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_forsburn_cape_swipe"))
             }
             
             if window < 3 {
                 hsp += 0.3*spr_dir
             }
             
             if has_hit_player && !hitpause {
                 vsp = -4
                 hsp /= 4
                 set_attack(AT_FSPECIAL)
                 window = 6
                 window_timer = 6
             }
    
    
    break;
    
    case AT_DTILT:
      
             if window == 1 && window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_swipe_heavy2"))
                 sound_stop(sound_get("squeaky_short"))
             }
             
             
    break;
    
    case AT_DSTRONG:
      
             if window == 2 && window_timer == 2 && !hitpause {
                 sound_play(asset_get("sfx_blow_heavy1"))
                 shake_camera(4,4)
             }
             
             
    break;
    
    case AT_UAIR:
             
             if window == 1 && window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_forsburn_cape_swipe"))
             }
             
             
             //if window == 2 && attack_down{
             //   if !free && !hitpause{
             //    sound_play(asset_get("sfx_blow_medium1"))
             //    spawn_hit_fx(x - 10*spr_dir,y + 10,14)
             //    set_attack(AT_DATTACK)
             //    window = 1
             //    window_timer = 7
             //    hsp = 7*spr_dir
             //   }
             //}
             
             
    break;
    
    case AT_FAIR:
          
          if window == 1 && redP >= 100 && shield_down && state_timer < 999{
                       	        sound_stop(sound_get("RI")); 
                                sound_play(sound_get("RI"),false,noone,.75,.6); 
                                spawn_hit_fx(x,y-30,302)
                       if redP > 300 {
                       	redP = 200 
                       } else {
                       	redP -= 100
                       }
                       state_timer = 999
       }
       
         if window <= 2 or (window == 3 && window_timer < 5) {
         	
         	
             can_fast_fall = false
              if spr_dir == 1 {
                 if hsp > 0 {
                     hsp /= 1.1
                 }
                 if window == 2 && hsp < -4.5 {
                     create_hitbox(AT_FAIR,3,x,y)
                 }
             }
             
             if spr_dir == -1 {
                 if hsp < 0 {
                     hsp /= 1.1
                 }
                 if window == 2 && hsp > 4.5 {
                     create_hitbox(AT_FAIR,3,x,y)
                 }
             }
             
             if window == 2 {
             hsp -= 0.35*spr_dir
             }
             
             vsp /= 1.15
             vsp -= 0.3
             
         } 
         
         if window == 3 {
             can_wall_jump = true
         }
         
         if window == 2 && !hitpause{
             set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_HSPEED, 3 + random_func(3,30,true)/10);
             if !up_down and !down_down {
                 set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_VSPEED, 0 - 3 + random_func(1,60,true)/10);
                 set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_VSPEED, 0 - 3 + random_func(2,60,true)/10);
             }
             
             if up_down and !down_down {
                 set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_VSPEED, 0 - 6 + random_func(1,60,true)/10);
                 set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_VSPEED, 0 - 6 + random_func(2,60,true)/10);
             }
             
             if !up_down and down_down {
                 set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_VSPEED, 0 + random_func(1,60,true)/10);
                 set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_VSPEED, 0 + random_func(2,60,true)/10);
             }
             
             if window_timer == 0 or window_timer % 4 == 0 {
                 sound_play(sound_get("shot1"),false,noone,0.5)
                 create_hitbox(AT_FAIR,1,x + 30*spr_dir,y - 26)
             }
             
              if window_timer == 2 or window_timer % 2 == 0 {
              	if state_timer >= 999 &&  window_timer % 4 == 0 {
              		 create_hitbox(AT_EXTRA_1,11, x - 30*spr_dir, y+20 - random_func(1,90,true))
              		  sound_play(sound_get("shot1"),false,noone,1,0.7)
              	}
                 create_hitbox(AT_FAIR,2,x + 30*spr_dir,y - 26)
             }
         }
             
    break;
    
    case AT_DAIR:

             if window == 2 and window_timer == 2 && !hitpause {
                 sound_play(sound_get("shot1"),false,noone,0.7)
                 if redP >= 100 && shield_down{
                       	        sound_stop(sound_get("RI")); 
                                   sound_play(sound_get("RI"),false,noone,.75,.6); 
                                   shake_camera(4, 6)
                                   create_hitbox(AT_EXTRA_1,13, x, y-40)
                                   create_hitbox(AT_EXTRA_1,15, x, y-40)
                                   create_hitbox(AT_EXTRA_1,16, x, y-40)
                                   spawn_hit_fx (x , y  - 20 , 302 )
                       if redP > 300 {
                       	redP = 200 
                       } else {
                       	redP -= 100
                       }
                       state_timer = 999
                 }
             }
             
             if window == 2 and window_timer == 3 && state_timer >= 999 {
                                   create_hitbox(AT_EXTRA_1,13, x - 40, y -40)
                                   create_hitbox(AT_EXTRA_1,13, x + 40 ,y -40)
             }
             
             
             move_cooldown[AT_DAIR] = 15

             
    break;
    
    case AT_NAIR:

             if window == 1 and window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_swipe_medium2"),false,noone,0.7)
             }

             
    break;
    
    case AT_USPECIAL:

         can_fast_fall = false
             
             if window == 1 && window_timer = 1 {
                 state_timer = 1
                 set_num_hitboxes(AT_USPECIAL, 1);
             }
             
             if window == 1 && window_timer = 6 && special_down && state_timer < 60{
                 window_timer = 5
                 vsp -= 0.3
                 
             }
             
             if window == 1 && window_timer <= 6 && special_down  {
                 if state_timer == 20 {
                     spawn_hit_fx(x,y - 20,305)
                     sound_play(sound_get("shot1"),false,noone,0.5,1.4)
                     set_num_hitboxes(AT_USPECIAL, 2);
                     vsp -= 2
                 }
                 if state_timer == 40 {
                     spawn_hit_fx(x,y - 20,305)
                     sound_play(sound_get("shot1"),false,noone,0.5,1.4)
                     set_num_hitboxes(AT_USPECIAL, 3);
                     vsp -= 2
                 }
             }
             
             if window == 1 && window_timer = 10 {
                sound_play(sound_get("shot1"),false,noone,0.7)
             }
             
    break;
    
     case AT_TAUNT:

         if window_timer == 1 && !hitpause {
             sound_stop(sound_get("vineboom"))
             sound_play(sound_get("vineboom"),false,noone,0.7,1)
             sound_play(sound_get("fumo"),false,noone,1.1,1.2)
             shake_camera(2,2)
             
             
         }
        
        if !has_hit { 
         move_cooldown[AT_TAUNT] = 30
        } else {
          move_cooldown[AT_TAUNT] = 0  
        }
        
        /*
                 with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y+12, 54,other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player_id != other.id  && hitpause != 69 && type == 2 && hit_priority != 0 {
	    	
	        //image_xscale *= 1.2
            //image_yscale *= 1.2
        //
	    	//damage *= 2
	    	//hitpause = 69
	    	//transcendent = true
	    	//hitbox_timer = 0
	    	//can_hit_self = true
	    	//kb_value += 5
	    	//kb_scale += 0.4
            //hitpause += 10
	    	//hit_priority = 9
	    	
	    	     nearbyhitbox.destroyed = true
                 
	    	with other {
	    	    if state_timer < 100 {
	    	        state_timer = 100
                    sound_stop(sound_get("RI")); 
                    sound_play(sound_get("RI"),false,noone,.75); 
                    sound_play(sound_get("shot1"));
                    shake_camera(4, 6)
                    create_hitbox(AT_EXTRA_1,11, other.x, other.y)
                    create_hitbox(AT_EXTRA_1,12, other.x, other.y)
                    create_hitbox(AT_EXTRA_1,13, other.x, other.y)
                    create_hitbox(AT_EXTRA_1,14, other.x, other.y)
                    create_hitbox(AT_EXTRA_1,15, other.x, other.y)
                    create_hitbox(AT_EXTRA_1,16, other.x, other.y)
                    create_hitbox(AT_EXTRA_1,17, other.x, other.y)
                    create_hitbox(AT_EXTRA_1,18, other.x, other.y)
                    spawn_hit_fx (other.x - 10 + random_func(2,20,true), other.y  - random_func(2,40,true) , 302 )
	    	    }
	    	}
	    	
                 

	    	
			//hsp *= -1
			//vsp *= -1
			//spr_dir *= -1
			//nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/40)
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			

	    }
	    
    	}   
    	*/
    	
        if window_timer > 2 {
        can_jump = true     
        }
        
    break;
    
    case AT_DSPECIAL:
    
         
         
         
            can_fast_fall = false
            
         if window == 1 {
             hsp /= 1.2
             vsp /= 1.2
             if free {
                 vsp -= 0.5 
             }
         }
         
         if window == 1 && window_timer == 7 && !hitpause {
             
            if crossout == 3 {
                 spawn_hit_fx(crossx,crossy,302)
                 window = 3 
                 window_timer = 2
                 sound_play(sound_get("shot1"),false,noone,0.7,1)
                 crossout = 0
                 sound_stop(charge_sound2)
                 move_cooldown[AT_DSPECIAL] = 30
                 create_hitbox(AT_EXTRA_1,1, crossx,crossy)
                 create_hitbox(AT_EXTRA_1,2, crossx,crossy)
                 create_hitbox(AT_EXTRA_1,3, crossx,crossy)
                 create_hitbox(AT_EXTRA_1,4, crossx,crossy)
                 create_hitbox(AT_EXTRA_1,5, crossx,crossy)
                 create_hitbox(AT_EXTRA_1,6, crossx,crossy)
                 create_hitbox(AT_EXTRA_1,7, crossx,crossy)
                 create_hitbox(AT_EXTRA_1,8, crossx,crossy)
             }
             
          }
          
         if window == 1 && window_timer == 8 && !hitpause {

             crossout = 1
             crossx = x
             crossy = y - 30
         }
         
         if window == 1 && window_timer == 1 && !hitpause {
           	clear_button_buffer(PC_SPECIAL_PRESSED)
             state_timer = 1
             sound_play(charge_sound2)
             sound_stop(sound_get("squeaky_short"))
         }
         
         if window == 2 {
             can_move = false
             vsp = 0
             hsp = 0
           
           if left_down {
               crossx -= 5
           }
           
           if right_down {
               crossx += 5
           }
           
           if down_down {
               crossy += 5
           }
           
           if up_down {
               crossy -= 5
           }
           
           if state_timer < 78 && special_pressed {
               crossout = 3
               spawn_hit_fx(crossx,crossy,13)
               spawn_hit_fx(crossx,crossy,15)
               sound_play(asset_get("sfx_spin"),false,noone,1,1)
               window = 3 
               window_timer = 2
               sound_stop(charge_sound2)
               sound_play(sound_get("shot1"),false,noone,0.7,.8)
           }
           
           if state_timer > 78 {
               sound_play(sound_get("shot1"),false,noone,0.6,0.7)
               sound_play(sound_get("gun3"),false,noone,1,0.8)
               
               create_hitbox(AT_DSPECIAL,2,crossx,crossy)
               crossout = 0
               shake_camera(6,6)
               spawn_hit_fx(crossx,crossy,chfx)
               spawn_hit_fx(x,y,lighten)
               window = 3 
               window_timer = 0
           }   
         }
    
    break;
    
    
     case AT_NSPECIAL:
         
         if window == 1 {
             
             if gun == 0 {
                 if redP >= 100 && redP < 200 {
                     gun = 1
                     bulletnum = 6
                     redP = 0
                 }
                 if redP >= 200 && redP < 300 {
                     gun = 2
                     bulletnum = 12
                     redP = 0
                 }
                 if redP >= 300 {
                     gun = 3
                     bulletnum = 3
                     redP = 0
                 }
                 spawn_hit_fx(x - 30*spr_dir,y - 20,box)
                spawn_hit_fx(Powx,Powy - 10,305)
             }
             
         clear_button_buffer(PC_SPECIAL_PRESSED)
             if gun == 2 {
                 window = 3
             }
             if gun = 3 {
                 window = 5
             }
         }
            can_fast_fall = false
            
        
         if bulletnum > 0 {
         if window == 2 && window_timer > 6 && special_pressed {
             clear_button_buffer(PC_SPECIAL_PRESSED)
             window = 1
             window_timer = 6
             set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 1 - random_func(1,20,true)/10);
         }  
         
     
         if window == 4 && window_timer > 2 && special_down {
             window = 3
             window_timer = 8
             set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 2 - random_func(1,40,true)/10);
         }  
         }
         
         if (window == 2 && window_timer == 1) or (window == 4 && window_timer == 1) or (window == 6 && window_timer == 1) {
              bulletnum -= 1
              move_cooldown[AT_USPECIAL_GROUND] = 15
          }
          
         if bulletnum <= 0 && (window == 1 or window == 3 or window == 5) && window_timer == 5 {
             set_state(PS_IDLE)
             clear_button_buffer(PC_SPECIAL_PRESSED)
             move_cooldown[AT_USPECIAL_GROUND] = 15
         }
         
         if window == 6 && window_timer == 1 {
             shake_camera(4,4)
             spawn_hit_fx(x + 40*spr_dir,y - 30, 14)
             hsp = -7*spr_dir
             vsp = -5
         }  
         
         if window == 2 && window_timer == 12 {
             set_state(PS_IDLE)
         }
         
         if window == 4 && window_timer == 12 {
             set_state(PS_IDLE)
         }
         
         if window == 6 && window_timer == 24 {
             set_state(PS_IDLE)
         }
         
    break;
    
    case AT_FSPECIAL:
        can_fast_fall = false
        
        
        if window > 4 {
            can_wall_jump = true
        }
        
        
        if window == 1 && gun == 0 {
            state_timer = 10
            window = 4
            hsp = 8*spr_dir
            vsp = -6
            move_cooldown[AT_FSPECIAL] = 999
        }
        
        if window == 1 && window_timer == 12 {
            sound_play(asset_get("sfx_shovel_swing_heavy1"))
            if gun == 1 {
                sound_play(sound_get("gunload"),false,noone,1,1.1)
                create_hitbox(AT_FSPECIAL,2,x + 30*spr_dir, y - 20)
                 spawn_hit_fx(Powx,Powy - 10,305)
                 gun = 0
                 redP = 0
            }
            if gun == 2 {
                sound_play(sound_get("gunload"),false,noone,1,1.1)
                create_hitbox(AT_FSPECIAL,3,x + 30*spr_dir, y - 20)
                 spawn_hit_fx(Powx,Powy - 10,305)
                 gun = 0
                 redP = 0
            }
            if gun == 3 {
                create_hitbox(AT_FSPECIAL,4,x + 30*spr_dir, y - 20)
            }
        }
        
        if gun == 3 && window == 3 {
                 spawn_hit_fx(Powx,Powy - 10,305)
                 gun = 0
                 redP = 0
                 sound_play(sound_get("gunload"),false,noone,1,1.1)
        }
        if window == 3 && window_timer == 10 {
         set_state(PS_IDLE)  
        }
        
        if window == 4 && window_timer == 10 && !hitpause {
            sound_play(asset_get("sfx_ori_glide_featherout"))
        }
    break;    
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