
 //B - Reversals
if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1){
    trigger_b_reverse();
}


 if (state_timer == 1 or (window == 1 && window_timer == 1)) && !hitpause && get_gameplay_time() > 120 {
      sound_play(sound_get("swingw1"),false,noone, .5 ,
        max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
       //sound_play(asset_get("sfx_swipe_heavy2"),false,noone, .8 ,
       //max( 0.9, .5 + get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) - (random_func(1,10,true))/100 )
 }  

if attack == AT_DSTRONG or attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_USPECIAL {
	
	if window == 1 && window_timer == 1 && !hitpause {
	sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,1);
  }
  
 if attack == AT_DSTRONG && window == 2 && window_timer == 1 && !hitpause {
	//sound_play(asset_get("sfx_ice_on_player"),false,noone,1,.6);
	sound_play(asset_get("sfx_bird_nspecial"),false,noone,.8,1.4);
  }
  
  
  if attack == AT_DSTRONG && window == 4 && window_timer == 2 && !hitpause {
	sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.2);
  }
  

 if attack == AT_FSTRONG && window == 2 && window_timer == 1 && !hitpause {
	//sound_play(asset_get("sfx_ice_on_player"),false,noone,1,.8);
	sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.4);
  }
  
  if attack == AT_FSTRONG && window == 3 && window_timer == 1 && !hitpause {
	//sound_play(asset_get("sfx_ice_on_player"),false,noone,1.2,.9);
	//sound_play(asset_get("sfx_ice_on_player"),false,noone,1,.6);
	sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1);
  }
  
  if attack == AT_FSTRONG && window == 4 && window_timer == 1 && !hitpause {
//	sound_play(asset_get("sfx_ice_on_player"),false,noone,1.4, 1.1);
//	sound_play(asset_get("sfx_ice_on_player"),false,noone,1,.5);
  }
  
   if attack == AT_USTRONG && window == 2 && window_timer == 1 && !hitpause {
//	sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.1);
//	sound_play(asset_get("sfx_ice_on_player"),false,noone,1,.7);
	sound_play(asset_get("sfx_bird_sidespecial"),false,noone,.8,1.2);
  }
  

}

if attack == AT_JAB and has_hit and !hitstop {
	
	window_timer += 0.6
    
}

if attack == AT_BAIR and window == 1 and window_timer == 8  {
	
	sound_play(asset_get("sfx_swipe_medium2"));

}

if attack == AT_UAIR and window == 2 and window_timer == 4  {
	
    sound_play(sound_get("swingw1"),false,noone, .7 , .76)
}


if attack == AT_USTRONG and window == 2 and window_timer == 2  {
	
    sound_play(sound_get("swingw1"),false,noone, .9 , .8)
}


if attack == AT_UAIR && has_hit_player && window <= 2 && hit_player_obj.state_cat == SC_HITSTUN && hitpause{
		hit_player_obj.y += floor(((y - 30) - hit_player_obj.y) / 5)
		hit_player_obj.x += floor(((x) - hit_player_obj.x) / 5)
}



if attack == AT_DATTACK and has_hit and !hitstop {
	
	window_timer += 0.5

}

if attack == AT_FTILT and has_hit and !hitstop {
	
	window_timer += 0.5

}

if attack == AT_UTILT and has_hit and !hitstop {
	
	window_timer += 0.5

}


if attack == AT_DTILT and has_hit and !hitstop {
	
	window_timer += 0.2

}

if attack == AT_EXTRA_1 {
	halo = 0
	prat_land_time = 20;
	 move_cooldown[AT_FSPECIAL] = 5
	 

	 if window == 1 && window_timer < 4 {
	 		shake_camera(4,4)
	 	 if left_down or left_pressed{
        spr_dir = -1
    }
    
    if right_down or right_pressed {
        spr_dir = 1
    }
	 	
	 } 
	 
	 if window == 2 {
	 		shake_camera(2,2)
	 	if hsp > 0 {
	 		spr_dir = 1 
	 	}
	 	if hsp < 0 {
	 		spr_dir = -1
	 	}
	 }
	//RAnBU
	if window < 10 {
	can_move = false
	}
		

if window == 2 && window_timer % 3 = 0 {
	 var aaimg = spawn_hit_fx( x   , y - 40 , aimg )
    		aaimg.depth = 1
    		
    		if get_player_color(player) == 5 && sakura == 1 && window_timer % 6 = 0 {
			 spawn_hit_fx( x, y - 30, shit6 )
                 	}
            	if get_player_color(player) == 5 && sakura == 1 && window_timer % 6 = 3 {
			 spawn_hit_fx( x, y - 30, shit7 )
                 	}     	
}
	
	
	
    if window == 1 && window_timer == 1 {
    	
    		var halodeact = spawn_hit_fx( x - (10 * spr_dir) , y - 50 , 305 )
    		halodeact.depth = -1000
    		
    		if get_player_color(player) == 5 && sakura == 1 {
			 spawn_hit_fx( x - 10 * spr_dir, y - 30, shit5 )
                 	}   
    	
    }
	
	if window == 3 && !has_hit {
    spawn_hit_fx(x,y-30,302)
    shake_camera(2,4)
    sound_play(asset_get("sfx_spin"));
    hsp /= 3
    vsp = -12
	set_state (PS_PRATFALL)	
	}
	
	if window > 3 && window < 10{
		hitstop = 0
	}
	
	if window <= 2 && has_hit_player {
		
		if !hitpause {
	       x = hit_player_obj.x - (30 * spr_dir)
			y = hit_player_obj.y 	
		window = 3
		window_timer = 10
		} else {
			x += floor((hit_player_obj.x - x - (30 * spr_dir))/6)
			y += floor((hit_player_obj.y - y )/6)
		}
	}
	
	if has_hit_player &&  window > 2 && window < 10 {
		vsp = 0
		hsp = 0
		hit_player_obj.y += ((y) - hit_player_obj.y) / 40
		hit_player_obj.x += ((x + 60 *spr_dir) - hit_player_obj.x) / 6
	} 
	
	if window == 10 {

		hsp /= 1.2
		vsp /= 1.1


	}
	

}

if attack == AT_EXTRA_2 {
	//Blender
	halo = 0
	prat_land_time = 20;
	can_fast_fall = false
	
	if has_hit_player {
		set_window_value(AT_EXTRA_2, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);
	}else{
	set_window_value(AT_EXTRA_2, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
}
     
     if has_hit_player {
     	hsp /= 1.2
     }
	if has_hit_player and window > 4 and window < 11 and yrange < 70 and xrange < 100 {
		
		hit_player_obj.y += ((y) - hit_player_obj.y) / 5
		
		if y > hit_player_obj.y + 20 and vsp > -6{
			vsp -= 1
		} 
		
		if window == 10 {
			hit_player_obj.x = x + (35 * spr_dir)
		}
		
         
	} 
	
	
    if window == 1 && window_timer == 1 {
    		shake_camera(6,6)
    		var halodeact = spawn_hit_fx( x - (10 * spr_dir) , y - 50 , 305 )
    		halodeact.depth = -1000
    	
    }
    
    
}



if attack == AT_EXTRA_3 {
	
	//menssenkou
	
	if window == 1 && window_timer <= 11 {
		super_armor = true
	}
	
	else {
		super_armor = false
	}
	
	if window == 1 && window_timer == 1 {
		halotimer = 20;
	}
	
	if window == 2 && window_timer == 1 {
		sound_play(asset_get("sfx_abyss_explosion"))
		var rekk = spawn_hit_fx( x - (8 * spr_dir) , y - 50 , 305 )
    		rekk.depth = -1000
    		
    		
    	    halo = 0
    		var rek = spawn_hit_fx( x - (8 * spr_dir) , y - 50 , 306 )
    		rek.depth = 1000
    	shake_camera(6,6)
    }
    init_shader();
    
      if window == 2 && get_player_color(player) == 5 && sakura == 1 {
    if window_timer == 1 {
   		spawn_hit_fx( x , y - 40 , shit6 )
   		spawn_hit_fx( x + (20 * spr_dir) , y - 30 , shit5 )
   		spawn_hit_fx( x - (20 * spr_dir) , y - 30 , shit5 )
   	}
   	
   	if window_timer == 4 {
   		spawn_hit_fx( x + (40 * spr_dir) , y - 60 , shit6 )
   		spawn_hit_fx( x - (40 * spr_dir) , y - 60 , shit6 )
   	}
   	
   	if window_timer == 7 {
   		spawn_hit_fx( x + (60 * spr_dir) , y - 90 , shit7 )
   		spawn_hit_fx( x - (60 * spr_dir) , y - 90 , shit7 )
   	}
      }
    

	
	
	
}

if attack == AT_FSPECIAL {
	
    can_fast_fall = false
    
    	 
    if has_hit && !hitpause {
    	window_timer += 0.3
    	hsp /= 1.14
    } else {
    	
    	hitstop -= 1
    	
    	if free {
    		if window = 2 && window_timer > 5 {
    		hsp /= 1.14
    		}
    	}
    	
    	if !free {
    	}
    }
    
    if window == 1 {
    	if window_timer == 1 && !hitpause {
    		sound_play(asset_get("sfx_bird_sidespecial_start")); 
    	}
    	if window_timer == 18 {
    		sound_play(asset_get("sfx_swipe_weak1")); 
    		sound_play(sound_get("swingw1"),false,noone,.7,1.2); 
    		if free {
    			vsp = -2
    		}
    	}
    	     if (place_meeting(x+10*spr_dir, y, asset_get("par_block"))) && window_timer > 10 {
    	     	sound_play(sound_get("swingw1"),false,noone,.7,1.2); 
                 window = 2
                 window_timer = 0
                 vsp = -10
                 hsp = -6*spr_dir
                 move_cooldown [AT_FSPECIAL] = 999
                  spawn_hit_fx (x+10*spr_dir, y - 20, 13)
                  sound_play(sound_get("slice")); 
                  shake_camera (2,4)
             }
    }
    
   	if window >= 2 && vsp > 0{
		vsp /= 1.3
	}
	
    if window == 1 && window_timer % 3 = 0 {
    			if get_player_color(player) == 5 && sakura == 1 && window_timer % 6 = 0 {
    				spawn_hit_fx( x  - (5 * spr_dir) , y - 35 , shit2 )
    			}
	}
    
   if window == 1 && halo >= 6{
   	
   	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
   	
       set_attack (AT_EXTRA_1)
   	
   }
  

    if window == 1 && window_timer <= 16 && window_timer >= 4 {
    	if free {
        move_cooldown[AT_FSPECIAL] = 999
    	}
    	
        if !free {
       	move_cooldown[AT_FSPECIAL] = 40
        invincible = true
        }
    
    
}




if window == 2 {
    can_move = false
}




}

if attack == AT_FSTRONG {
	
	if window < 5 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN{
		hit_player_obj.x += ((x + (50 * spr_dir)) - hit_player_obj.x) / 10
		hit_player_obj.y += ((y - 10) - hit_player_obj.y) / 8
	}
    
    if window == 2 && window_timer == 10 && !has_hit_player {
     window = 6
     window_timer = 0

    }

}

if attack == AT_DSTRONG {
    
    if window == 3 && has_hit_player {
        
     window = 4


    }

   if window == 3 && window_timer == 18 && !has_hit_player {
        
     set_state (PS_IDLE)


    }
}


if attack == AT_TAUNT {
    
    if (window == 2 && window_timer == 20){
	  	
	  	if (taunt_down){
	  		window = 2
	  		window_timer = 10
	  		
	  	}
	  }

}


	

if attack == AT_USPECIAL {

can_fast_fall = false

if window > 2{
	
	can_wall_jump = true
	
}	
	if window == 1 && halo >= 6{
        hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE);
      	set_attack (AT_EXTRA_2) 
   	
   }
    
    if halo < 6 {
    move_cooldown[AT_USPECIAL] = 999
    }
    
  
  if window == 5 and window_timer == 15 {
  	if !has_hit {
    prat_land_time = 12;
  	} else {
  	prat_land_time = 4;	
  	}
    set_state(PS_PRATFALL)
  }
  

  
}

if attack == AT_DSPECIAL {



	if window == 1 && halo >= 6 && !free{
      set_attack (AT_EXTRA_3) 
     hurtboxID.sprite_index = get_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE);	
   	
   }
   
   
	if window == 2 && window_timer == 1 && !hitstop {
       var stab = spawn_hit_fx( x + (5 * spr_dir) , y - 20 , 303 )
    		stab.depth = -1000
   	   	take_damage( player, -1 , 6 + (4 * stabt))
   	   		shake_camera(6,6)
   	   	if get_player_damage( player) > 150 {
   	   		stabt = 10
   	   		window = 3
   	   	}
   	   	halotimer = 250; 
   }
   
   if window == 3 && get_player_color(player) == 5 && sakura == 1 {
  
   	
   	if window_timer == 1 {
   		spawn_hit_fx( x , y - 40 , shit6 )
   		spawn_hit_fx( x + (20 * spr_dir) , y - 30 , shit5 )
   		spawn_hit_fx( x - (20 * spr_dir) , y - 30 , shit5 )
   	}
   	
   	if window_timer == 4 {
   		spawn_hit_fx( x + (40 * spr_dir) , y - 30 , shit6 )
   		spawn_hit_fx( x - (40 * spr_dir) , y - 30 , shit6 )
   	}
   	
   	if window_timer == 7 {
   		spawn_hit_fx( x + (60 * spr_dir) , y - 30 , shit7 )
   		spawn_hit_fx( x - (60 * spr_dir) , y - 30 , shit7 )
   	}
   	

   
   }
    
    if window == 3 && window_timer == 1{
    	shake_camera(6,6)
    	stabt += 1
        halo += 6
    }

}


if attack == AT_NSPECIAL {

move_cooldown[AT_NSPECIAL] = 30

if window_timer == 1 && window == 1 {
   			sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,.8,1.5)	
   	}
   	
	 if window == 3 && window_timer < 4 {
	 	 if left_down or left_pressed{
        spr_dir = -1
    }
    
    
   	
    if right_down or right_pressed {
        spr_dir = 1
    }
	 }
    
	if window == 1 && halo >= 6{
		sound_play(sound_get("SpaceCutB"));
		var halodeact = spawn_hit_fx( x - (10 * spr_dir) , y - 50 , 305 )
    		halodeact.depth = -1000
		window = 3
		halo = 0    	
			shake_camera(6,6)
   	
   }
   
   if window == 4 && get_player_color(player) == 5 && sakura == 1 {
   	
   	if window_timer == 1 {
   		spawn_hit_fx( x + (20 * spr_dir) , y - 30 , shit5 )
   	}
   	
   	if window_timer == 6 {
   		spawn_hit_fx( x + (60 * spr_dir) , y - 30 , shit6 )
   	}
   	
   	if window_timer == 10 {
   		spawn_hit_fx( x + (120 * spr_dir) , y - 30 , shit7 )
   	}
   	
   		if window_timer == 14 {
   		spawn_hit_fx( x + (160 * spr_dir) , y - 40 , shit8 )
   	}
   	
   }
   
   if window == 2 && window_timer == 20 {
   	set_state (PS_IDLE)
   }
   

}


if attack == AT_BAIR {

if window == 1 && window_timer == 3 && !hitpause {
	spr_dir *= -1
}

}


if attack == AT_DAIR {
	
	hsp /= 1.1

if window == 8 {


if has_hit && window_timer == 9 {
set_state (PS_IDLE_AIR)	
}

if !has_hit && window_timer == 14 {
set_state (PS_IDLE_AIR)	
}
	
}

if window <= 3 {
	can_wall_jump = true
	hsp /= 1.06
}

if window == 1 && window_timer == 1 && !hitpause {
	sound_play(asset_get("sfx_ice_on_player"),false,noone,1);
}

if window == 1 && window_timer == 10 && !hitpause {
	sound_play(asset_get("sfx_bird_downspecial"),false,noone,1);
}

if window > 1 && window <= 3 {
	vsp = 16

	if y > room_height/2 + 250 && window > 1 && state_timer > 30{
		
		if jump_pressed or shield_pressed {
			    spawn_hit_fx(x,y-30,14)
                shake_camera(2,4)
                sound_play(asset_get("sfx_spin"));
                sound_play(sound_get("swingw1"),false,noone,.4,1.2);
                hsp /= 3
                vsp = -10
	            window = 11
	            window_timer = 0
	            move_cooldown[AT_DAIR] = 999
	            destroy_hitboxes();
		}
	}
	
	  if !free {
	  	shake_camera(2,2)
    	sound_play(asset_get("sfx_ori_stomp_hit"),false,noone,0.5);
    	sound_play(sound_get("slice"),false,noone,1.2,0.8);
      }
}

if window == 2 && has_hit{
	window = 9
}

if window == 9 && window_timer > 4 {
	window = 8
}   

if window == 10 && window_timer > 4 {
	window = 8
}   

}

if attack == AT_TAUNT {
	
	halotimer += 6
}

if attack == AT_DSPECIAL && free {
	
	if move_cooldown[AT_NSPECIAL] == 0 {
    	set_attack (AT_NSPECIAL)
	} else {
	 set_state(PS_IDLE_AIR)
	 clear_button_buffer( PC_JUMP_PRESSED );
	 sound_stop(sound_get("swingw1"))
	}


set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 34);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
 if get_player_color(player) == 4 {
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bladewavedM"));
    		} else {
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bladewaved"));
    		}
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 3.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
 if get_player_color(player) == 4 {
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("bladewaveHdM"));
    		} else {
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("bladewaveHd"));
    		}
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 65);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("SpaceCut"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);


 if get_player_color(player) == 4 {
	set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, SCM);
    		} else {
    set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, SC);
    		}


	
}
