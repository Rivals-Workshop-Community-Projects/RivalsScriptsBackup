///


if visible {


if !hitpause {
if attack == AT_DSTRONG or attack == AT_USTRONG or attack == AT_FSTRONG {
	
	if cloneout == 1 {
		set_num_hitboxes(AT_DSTRONG, 4);
		set_num_hitboxes(AT_USTRONG, 4);
		set_num_hitboxes(AT_FSTRONG, 2);
			    set_hitbox_value(AT_DSTRONG,3, HG_HITBOX_X,  (clonex - x)*spr_dir + 40);
                set_hitbox_value(AT_DSTRONG,3, HG_HITBOX_Y,  (cloney - y) - 28 + 37);
    
    
    	        set_hitbox_value(AT_DSTRONG,4, HG_HITBOX_X,  (clonex - x)*spr_dir - 40);
                set_hitbox_value(AT_DSTRONG,4, HG_HITBOX_Y,  (cloney - y) - 40 + 37);
    
                 set_hitbox_value(AT_USTRONG,3, HG_HITBOX_X,  (clonex - x)*spr_dir + 36);
                set_hitbox_value(AT_USTRONG,3, HG_HITBOX_Y,  (cloney - y) - 76 + 37);
    
    
    	        set_hitbox_value(AT_USTRONG,4, HG_HITBOX_X,  (clonex - x)*spr_dir + 6);
                set_hitbox_value(AT_USTRONG,4, HG_HITBOX_Y,  (cloney - y) - 118 + 37);
  
                set_hitbox_value(AT_FSTRONG,2, HG_HITBOX_X,  (clonex - x)*spr_dir + 66);
                set_hitbox_value(AT_FSTRONG,2, HG_HITBOX_Y,  (cloney - y) - 22 + 37);
    
    
	} else {
	   set_num_hitboxes(AT_DSTRONG, 2);
		set_num_hitboxes(AT_USTRONG, 2);
		set_num_hitboxes(AT_FSTRONG, 1);
	}
	hsp /= 1.05
	if window == 1 && window_timer == 1 {
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	if window == 2 && window_timer == 1 {
		sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8)
	}
	if window == 2 && window_timer == 6 && attack == AT_USTRONG {
		sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,0.8)
		sound_play(asset_get("sfx_clairen_swing_strong"),false,noone,2)
	}
	if window == 2 && window_timer == 6 && attack == AT_DSTRONG {
		sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone,1)
		sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1)
	}
	if window == 2 && window_timer == 6 && attack == AT_FSTRONG {
		sound_play(asset_get("sfx_clairen_poke_strong"),false,noone,1.2)
	sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,0.8)		
	}
}
}

if window == 1 && window_timer == 1 && free {
	    	if attack == AT_NSPECIAL {
	    	set_attack (AT_NSPECIAL)
	    	window = 4
	    	window_timer = 11
	    	iaijump = 2
	    	spawn_hit_fx(x,y-40,305)
	    	}
}

if attack == AT_TAUNT {
	can_fast_fall = false
    if window = 1 {
    	vsp = -1
    	if window_timer == 1 {
    	spawn_base_dust(x-10*spr_dir,y,"land",spr_dir);
    	spawn_base_dust(x-10*spr_dir,y,"djump",spr_dir);
    	sound_play(asset_get("sfx_bird_sidespecial_start"))
    	}
    }
	if free && window = 2{
		hsp /= 1.05
		vsp = 0
		
		if !down_down{
		y -= 1
		}
		if down_down{
		y += 1	
		}
		
		move_cooldown[AT_TAUNT] = 999
	}
	
	    set_hitbox_value(AT_TAUNT,2, HG_HITBOX_X,  (clonex - x)*spr_dir -10);
    set_hitbox_value(AT_TAUNT,2, HG_HITBOX_Y,  (cloney - y) + 1);
    
	if cloneout == 1 && window == 2 && window_timer == 1 {
		create_hitbox(AT_TAUNT,2, clonex, cloney )
	}
	
}
if attack == AT_JAB {
	

	if window == 1 && window_timer == 6 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak1"))
	}
	if has_hit && !hitpause {
		window_timer += 0.2
	}
	
}

if attack == AT_UTILT {

    can_fast_fall = false 
	if window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy1"))
	}
	
	if window == 2 {
		vsp -= 10
	}
	
	if has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause && window == 3 && window_timer < 6 {
				hit_player_obj.hsp = ((x + (50 * spr_dir)) - hit_player_obj.x) / 10
				hit_player_obj.vsp = ((y - (20)) - hit_player_obj.y) / 6
	}
	
	if window == 5 && has_hit {
		can_jump = true
	}
}

if attack == AT_FTILT {
	
	if window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium2"))
	}
	

	
}

if attack == AT_DTILT {
	
	
	
}

if !hitpause {


if attack == AT_NAIR {
	
	if window == 1 && window_timer == 6 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak1"))
	}
	
}




if attack == AT_FAIR{

	if window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
	
}




if attack == AT_UAIR{

	if window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
	}
	

	
}

if attack == AT_DAIR{

	if window == 1 && window_timer == 9 && !hitpause {
		sound_play(asset_get("sfx_clairen_swing_strong"))
	}
	
	if window == 1 && window_timer == 14 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak1"))
	}
	
	if free { 
			set_attack_value(AT_DAIR, AG_CATEGORY, 1);	
	}
	
}

if attack == AT_DATTACK{
    
    can_fast_fall = false 
    
    if has_hit && (window == 3 or (window == 4 && window_timer <= 1)) {
    	hsp = 1*spr_dir
    }
    
	if window == 1 && window_timer == 1 && !hitpause {
		vsp = -4.5
		hsp = 8*spr_dir
		set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
	}
	
	if window == 2 && window_timer == 1 && !hitpause {
		set_attack_value(AT_DATTACK, AG_CATEGORY, 1);
	}
	
}


if attack == AT_NSPECIAL {
    

    set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X,  (clonex - x)*spr_dir -63);
    set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y,  (cloney - y) -16);

    
    set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, (clonex - x)*spr_dir -8);
    set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, (cloney - y) -101 + 36);

    
    set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, (clonex - x)*spr_dir + 78);
    set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, (cloney - y) -72 + 36);

      
    set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, (clonex - x)*spr_dir + 42);
    set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, (cloney - y) -24 + 36); 

     
    if down_down {
    	fall_through = true
    	if !free && ground_type == 2 {
    	y += 10
    	}
    }
    
    if window <= 4 && state_timer > 6{

    	
    	if (!special_down ) {
    		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
    			window = 7
    		window_timer = 0
  	    }
    }
    
    if window == 7 && window_timer == 10 {
    	if right_down && (!special_down )  {
    		if spr_dir = -1 {
    			window = 6
    		window_timer = 0
    	    } else {
    	    		window = 8
    	    	window_timer = 0
    	    }
    	}
    	

    	
    	if left_down && (!special_down ) {
    		if spr_dir = 1 {
    			window = 6
    		window_timer = 0
    	    } else {
    	    		window = 8
    	    	window_timer = 0
    	    }
    	}
    }
    if window >= 5 {
    	vsp += 0.3
    	     if !free {
        		hsp /= 1.5
        	}	
    }
        	if window == 6 or window == 8 {
        		can_move = false
        		can_fast_fall = false 
    		hsp /= 1.1
    		if vsp > 0 {
               vsp /= 3
    		}
    		
    		
    		if window == 6 && window_timer = 20 {
    			lstrong = 1
    			lstx = x
    			lsty = y
    			if !has_hit {
    				move_cooldown[AT_DSTRONG] = 20	
    				if free { 
    				set_state(PS_PRATFALL)
    				} else {
    				set_state(PS_PRATLAND)	
    				}
    			} else {
    				set_state(PS_IDLE)
    			}
    		}
    		
    		if window == 8 && window_timer = 24 {
    			lstrong = 2
    			lstx = x
    			lsty = y
    			if !has_hit {
    			    move_cooldown[AT_DSTRONG] = 20	
    				if free { 
    				set_state(PS_PRATFALL)
    				} else {
    				set_state(PS_PRATLAND)	
    				}
    			}
    		}
    		
    		}
    	
    	
    if window <= 3 {
    	
    	if free {
    		iaijump = 1
    		hsp /= 2
    		window = 4
    		window_timer = 12
    	}
    	
    	if !free{
    		iaijump = 0
    	} 
    }
    
	if window == 1 {
	hsp /= 1.05	
	if window_timer == 1 {
		spawn_hit_fx(x,y-40,305)
		
	}
	
	
	  if window_timer = 12 {
	  	window_timer = 11
	  }	
	  
	  	  	if jump_pressed && iaijump < 3 {
	  	  		spawn_base_dust(x-10*spr_dir,y,"jump",spr_dir);
    			vsp = -9
    			window = 4
    	    	window_timer = 0
                iaijump += 1
    	}
    	
	  if window_timer >= 5 {
	  	if left_down{
	  		spawn_base_dust(x-10*spr_dir,y,"land",spr_dir);
	  		spawn_base_dust(x-10*spr_dir,y,"dash_start",-1);
	  		hsp = -12
	  		if spr_dir = 1 {
	  			window = 2 
	  			window_timer = 0
	  		} else {
	  			window = 3 
	  			window_timer = 0
	  		}
	  	}
	  	
	  	if right_down {
	  		spawn_base_dust(x-10*spr_dir,y,"land",spr_dir);
	  		spawn_base_dust(x-10*spr_dir,y,"dash_start",1);
	  		hsp = 12
	  		if spr_dir = -1 {
	  			window = 2 
	  			window_timer = 0
	  		} else {
	  			window = 3 
	  			window_timer = 0
	  		}
	  	}
	  	

	  	
	  }	
	  
	}
	
	
	if window == 2 or window == 3 {
		hsp /= 1.05
		if window_timer == 12 {
			window = 1 
			window_timer = 11
		}
	}
	
	if window == 2 {
		if jump_pressed && iaijump < 3{
    			hsp = -7 *spr_dir
    			vsp = -9
    			window = 4
    	    	window_timer = 0
                iaijump += 1
    	}
	}
	
	if window == 3 {
		if jump_pressed && iaijump < 3{
    			hsp = 7*spr_dir
    			vsp = -9
    			window = 4
    	    	window_timer = 0
                iaijump += 1
    	}
	}
	
	
    if window == 4 {
    	
    	can_wall_jump = true
    	
    	   	if iaijump = 1 {
    	   		if jump_down && window_timer < 9{
    	   			vsp = -9
    	   		}
    	   	}
    	   	
    	   	if window_timer > 2 && !free {
    	   		window = 1 
			    window_timer = 11
			    sound_play(asset_get("sfx_land_light"))
			    spawn_base_dust(x-10*spr_dir,y,"dash",1);
			    spawn_base_dust(x-10*spr_dir,y,"dash",-1);
    	   	}
    	   	
    	   	if vsp < 10 {
    	   		vsp += 0.3
    	   	}
    	   	
    	  if window_timer = 30 {
    	  	window_timer = 29
    	  }	
    	  
    	      	  
    	  if hsp > 7 {
    	  	hsp = 7
    	  }
    	  if hsp < -7 {
    	  	hsp = -7
    	  }
    	  
    	  if window_timer >= 12 && iaijump < 3 && jump_pressed {
    	  	window_timer = 0
    	  	iaijump += 1
    	  	spawn_base_dust(x-10*spr_dir,y,"djump",spr_dir);
    	  	vsp = -14
    	  	if left_down {
    	  		hsp -= 3
    	  	}
    	  	if right_down {
    	  		hsp += 3
    	  	}
    	  }
    }
	
	
}



if attack == AT_FSPECIAL {
 
 can_fast_fall = false
 if has_hit_player && window < 4 {
 	if vsp > -6 {
 	vsp -= 1
 	}
		hit_player_obj.x += ((x + (65 * spr_dir)) - hit_player_obj.x) / 6
		hit_player_obj.y += (y - 35 - hit_player_obj.y) / 6
 }
 

	if  fspechit{ 
	hsp /= 1.04
	if window = 4 && window_timer == 1  && has_hit_player {
		create_hitbox(AT_FSPECIAL, 7, x, y)
			 if cloneout = 0 {
	 	fspechit2 = 1	
     	create_hitbox(AT_DSPECIAL, 1, x, y - 40)
     	cloneout = 1
	 }
	}
	if window = 4 && window_timer == 14 {
		set_state(PS_IDLE_AIR)
		fspechit = 0
		fspechit2 = 0
	}
	}
	
	if window == 4 {
		if vsp < 0 {
			vsp /= 1.1
		}
		vsp -= 0.3
		if left_down {
			x -= 1
		} 
		if right_down {
			x += 1
		}
		can_wall_jump = true
	}
	
	move_cooldown[AT_FSPECIAL] = 999
	if window_timer == 1 && window = 1 {
		sound_play(asset_get("sfx_ice_shieldup"))
	}
	
	if window = 1 {
		hsp /= 1.1
		vsp /= 1.1
	}
	
	if window = 2 && window_timer == 1 {
		sound_play(asset_get("sfx_ice_on_player"))
	}
	
    if window = 3 {
        if cloneout == 1 && fspechit2 == 0 {
            create_hitbox(AT_FSPECIAL, 2, clonex+10*spr_dir, cloney - 45 + 36)
        }
            if (place_meeting(x+10*spr_dir, y, asset_get("par_block"))) {
                 set_attack (AT_NAIR)
                 window = 2
                 window_timer = 10
                 vsp = -8
                 hsp = -4*spr_dir
                 move_cooldown [AT_FSPECIAL] = 999
                  spawn_hit_fx (x+10*spr_dir, y - 20, 305)
                  sound_play(asset_get("sfx_holy_lightning")); 
                  sound_play(asset_get("sfx_clairen_hit_strong"))	
                  shake_camera (3,6)
             }
             
    	if window_timer % 5 == 0 {
		sound_play(asset_get("sfx_ice_on_player"))
    	}
		vsp -= 0.6
	}
	
	
}

if attack == AT_USPECIAL {
	 
	 if window == 4 {
	 	can_wall_jump = true
	 	if  !free {
	 	set_state(PS_PRATFALL)
	 	}
	 }

    if window = 1 && window_timer == 16 && !hitpause && cloneout == 1 {
          spawn_base_dust(clonex-10*spr_dir,cloney - 60,"djump",spr_dir);
             	spawn_base_dust(clonex-10*spr_dir,cloney,"djump",spr_dir);
    	create_hitbox(AT_USPECIAL, 2, clonex, cloney - 64)
    }
	move_cooldown[AT_USPECIAL] = 999
	if  window = 1 {
		if window_timer == 1 {
		sound_play(asset_get("sfx_boss_shine"))
	    sound_play(asset_get("sfx_bird_downspecial"))
	
		}
		
		hsp /= 1.2
		vsp /= 1.1
		
		if vsp > 0 {
			vsp = 0
		}
	}
	
		if  window = 1 && window_timer == 16  && !hitpause {
		        spawn_base_dust(x-10*spr_dir,y - 100,"djump",spr_dir);   
             	spawn_base_dust(x-10*spr_dir,y - 40,"djump",spr_dir);
		}
	
	
	
}

if attack == AT_DSPECIAL {

  if window == 1 {
  	if window_timer % 2 == 0 {
  			draw_indicator = false
  	}
  	vsp /= 1.1
  	hsp /= 1.1
  	if window_timer > 10 {
  		vsp = 0
  		hsp = 0
  		ogx = x
        ogy = y
  	}
  }	
  
    if window == 2 {
    	
        if window_timer % 6 == 0 {
     spawn_hit_fx (ogx - (x - ogx) - 30 + random_func(2, 60, true)   , y - 10 - random_func(1, 70, true) , cpar1)
    }
    
    if window_timer % 6 == 3{
     spawn_hit_fx (ogx - (x - ogx) - 30 + random_func(2, 60, true)   , y - 10 - random_func(1, 70, true) , cpar2)
    }     
    
    
        if window_timer % 6 == 0 {
     spawn_hit_fx (x - 30 + random_func(2, 60, true)   , y - 10 - random_func(1, 70, true) , cpar1)
    }
    
    if window_timer % 6 == 3{
     spawn_hit_fx (x - 30 + random_func(2, 60, true)   , y - 10 - random_func(1, 70, true) , cpar2)
    }     
    
    		draw_indicator = false
     vsp /= 2
     hsp /= 1.05
     if free {
     hsp /= 1.02	
     }
     can_move = false
     if window_timer == 1 {
     	if left_down {
     		x -= 10
     		hsp = -9
     	}
     	
     	if right_down {
     		x += 10
     		hsp = 9
     	}
     	
     	if !left_down && !right_down {
     		x += 10
     		hsp = 9*spr_dir
     	}
     }
     
     if window_timer = 14 {
     	cloneout = 1
     	create_hitbox(AT_DSPECIAL, 1, ogx - (x - ogx), y - 40)
     }
    }
	
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