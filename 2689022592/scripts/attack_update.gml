//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch attack {
	
	case AT_JAB:
	     if window == 7 {
	        if window_timer == 1 && !hitpause {
	        	jabgrab = false 
	        	sound_play(asset_get("sfx_waterwarp"),false,noone,1,1.3)
	        }
	        if  window_timer == 22 && !hitpause {
	        	sound_play(asset_get("sfx_swish_heavy"),false,noone,1,1.2)
	        }
	        if jabgrab == true && hit_player_obj.state_cat == SC_HITSTUN {
	        	hit_player_obj.x += floor(x + 46*spr_dir - hit_player_obj.x)/6
	        	hit_player_obj.y += floor(y - hit_player_obj.y)/6
	        }
	        if window_timer % 6 == 0 && !hitpause{
	        	take_damage(player,-1,1)
	        }
	        if window_timer%4 < 2 && window_timer <= 12{
	         	draw_indicator = false
	         }
	     }
	break;
	
	case AT_FSTRONG:
	     if window == 1 {
	         if window_timer % 4 == 0 && !hitpause && window_timer <= 12{
	           	take_damage(player,-1,1)
	         }
	         if window_timer%4 < 2 && window_timer <= 12{
	         	draw_indicator = false
	         }
	     }
	     if window == 1 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_waterwarp"),false,noone,1,1.2)
	     }
	     if window == 2 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_swish_heavy"),false,noone,1,1.2)
	     }
	break;
	
	case AT_USTRONG:
	     if window == 1 {
	     	 if abs(hsp) < 4 {
	     	  hsp += (right_down - left_down)*0.3
	     	 }
	         if window_timer % 4 == 0 && !hitpause && window_timer <= 12{
	           	take_damage(player,-1,1)
	         }
	         if state_timer % 10 == 0 && !hitpause && state_timer > 15{
	           	take_damage(player,-1,1)
	         }
	         if window_timer%4 < 2 {
	         	draw_indicator = false
	         }
	         if state_timer % 10 < 3 && !hitpause && state_timer > 15{
	           	draw_indicator = false
	         }
	     }
	     
	     if window == 1 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,1)
	     	sound_play(asset_get("sfx_orca_absorb"),false,noone,1,.8)
	     }
	     if window == 2 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_orcane_dsmash"),false,noone,1,1)
	     }
	     if window == 2 && window_timer > 5 {
	     	draw_indicator = false
	     }
	     if window == 3 && window_timer < 25 {
	     	draw_indicator = false
	     }

	break;
	
	case AT_DSTRONG:
     	 if window == 1 {
	         if window_timer % 4 == 0 && !hitpause && window_timer <= 16{
	           	take_damage(player,-1,1)
	         }
	         if window_timer%4 < 2 {
	         	draw_indicator = false
	         }
	     }
	     if window == 1 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_waterwarp"),false,noone,.8,1.4)
	     	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,.8)
	     }
	     if window == 2 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_orcane_dsmash"),false,noone,1,.9)
	     }
	     if  (window == 3 && window_timer < 20) or (window == 3 && window_timer%4 < 2) or (window == 2) or (window == 1 && window_timer > 12) {
	     	draw_indicator = false
	     }

	break;
	
	case AT_FAIR:
	     if window == 1 && window_timer == 9 && !hitpause {
	     	sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,1)
	     }
	break;
	
	case AT_DATTACK:
	     if window == 1 && window_timer == 10 && !hitpause {
	     	sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,1.4)
	     }
	break;
	
	case AT_DTILT:
		   if window == 1 {
	         if window_timer % 4 == 0 && !hitpause{
	           	take_damage(player,-1,1)
	         }	
	         if window_timer%4 < 2 && window_timer <= 12{
	         	draw_indicator = false
	         }
		   }
     	if window == 1 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,0.5,1.7)
	     }	
	 break;
	 
	case AT_BAIR:
	       if window == 1 {
	         if window_timer % 4 == 0 && !hitpause{
	           	take_damage(player,-1,1)
	         }	
	         if window_timer%4 < 2 && window_timer <= 12{
	         	draw_indicator = false
	         }
		   }
		   
     	if window == 1 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,0.75,1.4)
	     }
	
	     if window == 1 && window_timer == 6 && !hitpause {
	     	sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,1.4)
	     }
	break;
	
	case AT_UAIR:
	     if window == 1 && window_timer == 8 && !hitpause {
	     	sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,1.2)
	     }
	break;
	
	case AT_DAIR:
	     if window == 1 {
	         if window_timer % 4 == 0 && !hitpause{
	           	take_damage(player,-1,1)
	         }	
	         if window_timer%4 < 2 && window_timer <= 12{
	         	draw_indicator = false
	         }
	         if window_timer == 1 && !hitpause {
	        	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,1.2)
	         }
	     }
	     if window == 2 && window_timer == 1 && !hitpause {
	     	sound_play(asset_get("sfx_swish_medium"),false,noone,1,1)
	     }
	     
	break;
	
	case AT_NSPECIAL:
	     if window == 1 {
	     	if state_timer <= 5 {
	     		if right_down - left_down != 0 spr_dir = right_down - left_down
	     	}
	         if !free && window_timer == 1 {
	         	hsp += 3*spr_dir
	         }
	     }
	     if window == 2 {
	         if !free && window_timer == 1 {
	         	hsp = 3*spr_dir
	         }
	         if has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
	         	vsp = 0
	         	hsp /= 1.2
	         	can_move = false 
	         	hit_player_obj.hitstop += 1
	         	hit_player_obj.x += floor(x + 36*spr_dir - hit_player_obj.x)/6
	        	hit_player_obj.y += floor(y - 14 - hit_player_obj.y)/6
	        	if window_timer > 4 window_timer -= 1
	        	
	        	if state_timer > 30 or (state_timer > 15 && (left_down or right_down)) {
	        		state_timer = 60
	        		take_damage(player,-1,1)
	        		window = 4
	        		window_timer = 1
	     	       sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,.8)	  
	     	       if (spr_dir == 1 && left_down && !right_down) or (spr_dir == -1 && !left_down && right_down){ 
	     	       	spr_dir *= -1
	     	       hitpause = true
	     	       hitstop = 6
	     	       }
	        	}
	         }
	     }
	     if window == 4 {
	     	if free y += 2
	     	
	     	if djumps == 1 && jrefund == 0 {
	     		djumps = 0
	     		jrefund = 1
	     	}
	     	
	     	vsp = 0
	     	hsp /= 1.2
	     	if window_timer < 4 {
	     		if state_timer<62{
	     			draw_indicator = false
	     		}
	     		hit_player_obj.hitstop += 1
	     		hit_player_obj.x += floor(x + 36*spr_dir - hit_player_obj.x)/6
	        	hit_player_obj.y += floor(y - 14 - hit_player_obj.y)/6
	     	}
	     }
	break;
	
	case AT_FSPECIAL :
	    can_fast_fall = false 
	    if window == 1 {
	    	fright_down = right_down 
	    	fleft_down = left_down
	    	fup_down = up_down
	    	fdown_down = down_down
	     set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 5 - (right_down-left_down)*-2*spr_dir - (up_down-down_down)*2 );
	     set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -8 - (up_down-down_down)*2 - (right_down-left_down)*-2*spr_dir);
	    
	    	if window_timer == 1 && !hitpause {
	        	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,1.4)
	         }
	         if window_timer % 5 == 0 && !hitpause && window_timer <= 12{
	           	take_damage(player,-1,1)
	         }
	         if window_timer%4 < 2 {
	         	draw_indicator = false
	         }
	     }
	     
        move_cooldown[AT_FSPECIAL] = 45
 
	  	
		
	break;
	
	case AT_USPECIAL :
	can_move = false
	can_fast_fall = false 
	fall_through = true
	if window != 4 {
	can_wall_jump = true
	}
	  if window == 1 {
	  	    
	  	if window_timer == 1 && !hitpause {
	  		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, hsp*spr_dir*-0.5 );
            set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, vsp*-0.5 );
            //create_hitbox(AT_DSPECIAL,2,x,y - 20)
	  		hsp /= 1.2
	  		if vsp > 0 {
	  			vsp = 0
	  		}
	  		take_damage(player,-1,2)
	  		 sound_play(asset_get("sfx_orca_absorb"),false,noone,1,.6)
	        sound_play(asset_get("sfx_waterwarp_start"),false,noone,1,.6)
	        sound_play(asset_get("sfx_swish_medium"),false,noone,1,1.2)
	    }
	    
	  }
	  
	  if window < 4 {
	  	spawn_hit_fx(x + 10 - random_func(1,21,true) - hsp , y + 6 - random_func(1,21,true) - vsp, droplet  )
	  	if state_timer > 6 or state_timer < 4{
	  		draw_indicator = false 
	  	}
	  	vsp /= 1.1
	  	hsp /= 1.1
	  	if abs(vsp) < 10 {
	  		vsp -= ((up_down - down_down)/(2+abs(right_down - left_down)))*1.2
	  	}
	  	if abs(hsp) < 10 {
	  		hsp += ((right_down - left_down)/(2+abs(up_down - down_down)))*1.2
	  	}
	  }
	  
	  if window == 4 {
	  	if window_timer == 1 && !hitpause {
	  		vsp = -3
	  		hsp /= 2
	  			  	sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,1.2)
	     }
	  	if window_timer == 4 && !hitpause {
	  		take_damage(player,-1,2)
	  		shake_camera(4,4)
	  	     sound_play(asset_get("sfx_absa_kickhit"),false,noone,1,.8)
	     	sound_play(asset_get("sfx_orcane_dsmash"),false,noone,1,1)
	  	}
	  }
	  if window == 5 && !hitpause {
	  	vsp += 0.2
	  }
	break;
	
	case AT_DSPECIAL :
	    if window >= 2  {
	    vsp /= 1.05
	  	hsp /= 1.4
	  	if vsp > 0 {
	  		vsp /= 1.6
	  	}
	    } else {
	     vsp /= 1.02
	   	 hsp /= 1.05	
	    }
	    
	  	can_fast_fall = false
	  	
	   if window == 1 && window_timer == 1 && !hitpause {
	   	  sound_play(asset_get("sfx_orcane_fspecial_pud"),false,noone,1,1.2)
	   }
	   if window == 1 && window_timer == 20 && !hitpause {
	   	sound_play(asset_get("sfx_absa_kickhit"),false,noone,1,.8)
	   	sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1.2)
	   	shake_camera(2,2)
	   }
	   if window == 2 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause {
	   	       djumps = 0
	   	       vsp = 0
	   	       hsp /= 1.2
	   	       can_move = false 
	   		   hit_player_obj.hitstop += 1
	     		hit_player_obj.x += floor(x + 36*spr_dir - hit_player_obj.x)/6
	        	hit_player_obj.y += floor(y - hit_player_obj.y)/6
	   }
	   if window == 3 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause{
	   	       vsp = 0
	   	       hsp /= 1.2
	   	       can_move = false 
	   		    hit_player_obj.hitstop += 1
	     		hit_player_obj.x += floor(x + 36*spr_dir - hit_player_obj.x)/6
	        	hit_player_obj.y += floor(y - hit_player_obj.y)/6
	   	  if window_timer == 8 && state_timer < 50  {
	   	  	
	   	  	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 10 - random_func(1,6,true) );
            set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, 0 - random_func(2,9,true)  );
            //create_hitbox(AT_DSPECIAL,2,x,y - 20)
            
	   	  	take_damage(player,-1,-2)
	   	  	window = 2
	   	  	window_timer = 2
	   	  	vfx = spawn_hit_fx(x+28*spr_dir,y - 28,305)
	   	  	vfx.pause = 5
	   	  	create_hitbox(AT_DSPECIAL,1,x,y)
	   	  } else if window_timer == 8 && state_timer > 50 {
                
                if free {
                	vsp = -6
                }
	   	  		set_attack(AT_UTILT)
	   	  		window = 4
	   	  		window_timer = 0

	   	  	
	   	  }
	   	  
	   }
	break;
	
	case AT_TAUNT :
	  if window_timer == 1 {
	  	sound_play(asset_get("sfx_jumpair"),false,noone,1,1.2 + window/10)
	  }
	  
	  if state_timer == 1 && down_down {
	  	sound_play(sound_get("clubpenguin"),false,noone,1,1.4)
	  	window = 3
	  }
	  if window == 3 {
	  	suppress_stage_music( 0.2, 1 );	
	  	if window_timer%60 == 0 && !hitpause {
	  		sound_play(sound_get("clubpenguin"),false,noone,1,1.4)
	  	}
	  }
	  if window == 2 && window_timer == 4*5 && taunt_down {
	  	state_timer = 60
	  	window = 1
	  	window_timer = 0
	  }
	  if state_timer >= 60 {
	  	can_jump = true
	  	can_shield = true 
        can_dash = true 
	  }
	
	break;
	
}