


//B - Reversals	
if (attack == AT_NSPECIAL || attack == AT_USPECIAL ){
    trigger_b_reverse();
}

if window == 1 {
	
	can_cancel = 0
}

if has_hit_player {
	if hitpause {
	} else {
		can_cancel ++
	}
}
 
if lockon == 1 && has_hit_player && !hit_pause && down_down && special_down && can_cancel > 10 {
	set_state(PS_IDLE)
	can_cancel = 0
}

if attack == AT_FSTRONG {
     
     if has_hit_player && window < 5 && hit_player_obj.state_cat == SC_HITSTUN{
     	hit_player_obj.x += ((x + (60 * spr_dir)) - hit_player_obj.x) / 10
     }
 if window == 2 && window_timer == 1 {
     spawn_hit_fx ( x - (20 * spr_dir) , y - 30 , summon  );
           
      sound_play(asset_get("sfx_ice_shieldup"));
 }
 
    if window == 1 && window_timer == 1 {
        fcharge = 0
        fcharged = 0
    }
    
    if window == 1 && window_timer > 11{
        fcharge += 1
        
        if fcharge > 10 {
        	spawn_hit_fx( x + 24 - random_func(5, 50, true) - (20 * spr_dir) , y - random_func(4, 80, true) , esp )
        }
        if fcharge == 10 {
            
            if fcharged == 0 {
            spawn_hit_fx ( x - (24 * spr_dir) , y - 30 , 305  );
            sound_play(asset_get("sfx_ice_shieldup"));
            }
        }
    }
    
    if fcharge >= 10{
    if window == 3  && window_timer == 2{
        window = 4
        window_timer = 0
        
        sound_play(sound_get("Fstrong"));
    }
    
 
 if window == 6 {
 	fcharge = 0
 }
 
    
    }
}

if attack == AT_DTILT && !hitpause {
    if window == 1 && window_timer == 1 && !hitpause {
            sound_play(asset_get("sfx_ice_shieldup"));
    }
   
   if window < 2  {
   	  hsp += 2*spr_dir 
   } else {
   	hsp /= 1.2
   }
    
}

if attack == AT_DAIR {
    
    if !free && has_hit_player {
    	create_hitbox(AT_DAIR,18,x,y)
    }
    
    if window == 3 {
        can_wall_jump = true
    }
    
    if window == 3 && window_timer % 3 = 0 && !hitpause {
        create_hitbox(AT_DAIR , 1 , x , y  );	
    }
}

if attack == AT_DSTRONG {
	
	   if window == 1 && window_timer == 1 {
        fcharge = 0
        fcharged = 0
    }
    
     if window == 1 {
     	fcharge += 1
     	
     	     if fcharge > 15 {
        	spawn_hit_fx( x + 25 - random_func(5, 50, true) , y - random_func(4, 80, true) , esp )
        }
        
     	 if fcharge = 15 {
     	 	
              
          
            
            if fcharged == 0 {
            spawn_hit_fx ( x - (24 * spr_dir) , y - 46 , summon );
            sound_play(asset_get("sfx_ice_shieldup"));
            }
        }
        
        
     }
    
    can_fast_fall = false
    if window == 4 {
        x += 50 * spr_dir
        	spawn_hit_fx ( x + (20 * spr_dir) , y , ai );
        	spawn_hit_fx ( x - (45 * spr_dir) , y , ai );
    }
    
    if free {
        vsp /= 2
        hsp /= 1.1
    }
    
    if window == 7 && free {
        set_state (PS_PRATFALL)
    }
    
    
 if fcharge >= 15{
 
 if window == 2 {
     if window_timer == 3 {
         spawn_hit_fx ( x  , y , ai );
         sound_play(asset_get("sfx_ori_bash_use"));
         hsp = -120 * spr_dir
     }
     
     if window_timer > 2 {
     	
         hsp /= 2.6
     }
 }
 
 
 if window == 4 {
 	fcharge = 0
 }
 
 
}

}


if attack == AT_USTRONG {
	
	can_move = false
	can_fast_fall = false
	
	if !has_hit {
		set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 7);
	} else {
		set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 0);
	}
	if window == 3 && window_timer == 7 && ustronghit = 0{
		window = 5
		window_timer = 4
	}
	  if window == 1 && window_timer == 1 {
        fcharge = 0
        fcharged = 0
        ustronghit = 0
    }
    
    if window == 5 && has_hit_player && window_timer == 1 {
	spawn_hit_fx(x - 10*spr_dir,y - 30, 306)
    }
    if window == 1 && window_timer > 10{
        fcharge += 1
        
        if fcharge > 10 {
        	spawn_hit_fx( x + 24 - random_func(5, 50, true)  , y - random_func(4, 80, true) , esp )
        }
        if fcharge == 10{
            
            
            if fcharged == 0 {
            spawn_hit_fx ( x + (6 * spr_dir) , y - 30 , summon );
            sound_play(asset_get("sfx_ice_shieldup"));
            }
        }
    }
    
    can_fast_fall = false
    if vsp > 0{
    vsp /= 2
    hsp /= 1.1
    }
    
    if window = 3 && window_timer = 1 && !hitpause &&  fcharge >= 10 {
    	y -= 40
    	spawn_hit_fx ( x , y + 40 , ai );
    	 sound_play(asset_get("sfx_ori_bash_use"));
    }
    
    if window == 5 && window_timer == 5 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && ustronghit == 1 && !hitpause{
        create_hitbox(AT_USTRONG , 2 , hit_player_obj.x , hit_player_obj.y  );	   
        window_timer += 1
    }
    
    
 
 if window == 5 && window_timer == 9 {
 	fcharge = 0
 }
 
}

if attack == AT_EXTRA_3 {

hhalo = 0

	if window == 4 && window_timer == 14 {
		vsp = -90
		spawn_hit_fx ( x - (30 * spr_dir) , y - 50 , summon  );
		sound_play(asset_get("sfx_ice_on_player"));
		set_state(PS_PRATFALL)
	}

	if has_hit_player  && !hitpause {

		hsp = 0
		vsp = -10
		spr_dir *= -1
		
		x = hit_player_obj.x + 30*spr_dir
		sound_play(sound_get("Fstrong"));
		set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 149);
			set_attack(AT_BAIR)
			window = 1
			window_timer = 6
	}
	
	 if window == 1 && window_timer == 1 && !hitpause{
	 	
	 	y -= 10
	 	
	 	if "ai_target" not in self {
	 	 sound_play(sound_get("SpaceCut"));
	 	 sound_play(asset_get("sfx_bird_nspecial"));
	 	 shake_camera(2,6)
	 	 spawn_hit_fx(x - 20*spr_dir,y - 50,305)
	 	spawn_hit_fx ( x + (30 * spr_dir) , y - 40 , summon  );

		} else {
			set_state (PS_WAVELAND)
			state_timer = 0
			sound_play(asset_get("sfx_quick_dodge"));
		}
	 }
	 
    if window == 3 && hsp = 0 && !hitpause {
        vsp = -100
        hsp = -4 * spr_dir
        set_attack (AT_NAIR)
        window = 4
        sound_play(asset_get("sfx_blow_medium3"));
         spawn_hit_fx ( x , y - 10, 305 );
    }
    
    
    can_move = false 
    can_fast_fall = false
    vsp /= 10
    if free {
        hsp /= 1.1
    }
    
    if !free {
        hsp /= 1.05
    }
    
    
    if window == 3 && !hitpause{
    	shake_camera(1,2)
    	///if hhalo > 0 {
    	///sound_play(asset_get("sfx_ice_shieldup"));
		///create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
		///spawn_hit_fx ( x - (30 * spr_dir) , y - 60 + random_func(2, 20, true) , summon  );
    	///} 
    	var ai4 = hit_fx_create( sprite_get( "ai4" ), 12 );
        	spawn_hit_fx ( x + hsp , y - 46 + random_func(1,6,true), ai4 );
    }
    
	
}

if attack == AT_UAIR {
	if window == 1 && window_timer == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy2"));
	}
}
if attack == AT_FSPECIAL {
	vsp /= 4
	if hhalo > 0 && state_timer == 1{
		set_attack(AT_EXTRA_3)
	}
	
	if !has_hit_player && window == 3 && window_timer == 10 && free {
		set_state(PS_PRATFALL)
	}
	
	if has_hit_player && !hitpause {
		if !free {
			spawn_hit_fx ( x + hsp , y - 46 + random_func(1,6,true), ai4 );
		x = hit_player_obj.x - 20*spr_dir	
		hsp = 4*spr_dir
			set_attack(AT_UTILT)
			window = 2
			window_timer = 0
		}
		
		if free {
		spawn_hit_fx ( x + hsp , y - 46 + random_func(1,6,true), ai4 );
		x = hit_player_obj.x 	
		hsp = 6*spr_dir
		vsp = -6
			set_attack(AT_UAIR)
			window = 2
			window_timer = 1
		}
		
	}
	
	 if window == 1 && window_timer == 1 && !hitpause{
	 	
	 	if "ai_target" not in self {
	 	 sound_play(asset_get("sfx_ice_on_player"));
		} else {
			set_state (PS_WAVELAND)
			state_timer = 0
			sound_play(asset_get("sfx_quick_dodge"));
		}
	 }
	 
    if window == 3 && hsp = 0 && !hitpause {
        vsp = -10
        hsp = -4 * spr_dir
        set_attack (AT_NAIR)
        window = 4
        sound_play(asset_get("sfx_blow_medium3"));
         spawn_hit_fx ( x , y - 10, 305 );
    }
    
    if free {
    move_cooldown[AT_FSPECIAL] = 40
    }
    if !free {
    move_cooldown[AT_FSPECIAL] = 0	
    }
    
    can_move = false 
    can_fast_fall = false
    
    if free {
        hsp /= 1.1
    }
    
    if !free {
        hsp /= 1.08
    }
    
    
    if window == 3 && !hitpause{
    	///if hhalo > 0 {
    	///sound_play(asset_get("sfx_ice_shieldup"));
		///create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
		///spawn_hit_fx ( x - (30 * spr_dir) , y - 60 + random_func(2, 20, true) , summon  );
    	///} 
    	var ai4 = hit_fx_create( sprite_get( "ai4" ), 12 );
        	spawn_hit_fx ( x + hsp , y - 46 + random_func(1,6,true), ai4 );
    }
    
}

if attack == AT_DSPECIAL {
    
    if window == 1 && hhalo > 0 {
    	set_attack(AT_EXTRA_2)
    }
    can_fast_fall = false
    
    if window == 1 {
        if free {
        vsp /= 2
        hsp /= 2
        }
        can_move = false
    }
    
   if window == 1 && window_timer == 9 {
        
        		with (asset_get("oPlayer")) {
				if (player != other.player) {
             	if "ai_target" in self && "nname" not in self {
             		if url != "2108469290" {
             		if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
             			set_state (PS_IDLE)
             		}
             		
                   move_cooldown[AT_DSPECIAL] = 60
                   move_cooldown[AT_FSPECIAL] = 60
                   if move_cooldown[AT_USPECIAL] < 20{
                   move_cooldown[AT_USPECIAL] = 20
                   }
                   move_cooldown[AT_NSPECIAL] = 60
				   move_cooldown[AT_DTILT] = 60
				   move_cooldown[AT_UTILT] = 60
				   move_cooldown[AT_FTILT] = 60
				   move_cooldown[AT_JAB] = 60
				   move_cooldown[AT_DATTACK] = 60
				   move_cooldown[AT_DSTRONG] = 60
				   move_cooldown[AT_FSTRONG] = 60
				   move_cooldown[AT_USTRONG] = 60
				   move_cooldown[AT_BAIR] = 60
				   move_cooldown[AT_FAIR] = 60
				   move_cooldown[AT_NAIR] = 60
				   move_cooldown[AT_UAIR] = 60
				   move_cooldown[AT_DAIR] = 60
             	}
             	}
					
				}
			}
        
        
    }
    
    if window == 2 && window_timer < 5 && lockon == 1 && move_cooldown[AT_TAUNT] == 0{
       
        lockontime = 180
        
        if hit_player_obj.state_cat == SC_HITSTUN {
         lockplayer.hsp /= 1.2
         lockplayer.vsp /= 1.2
         if lockplayer.vsp > 0 {
         	lockplayer.vsp = 0
         }
        }
        
    }
    
     if window == 2 && window_timer >= 6 {
            can_attack = true
        can_special = true
        if free {
        	move_cooldown[AT_DSPECIAL] = 999
        }
        
        if !free {
        	move_cooldown[AT_DSPECIAL] = 30
        }
     }
        
    
    if window == 2 && window_timer == 1  {
        
        
			
		if down_down && lockon == 0 { 
            vsp = 150
            
        }	
        
         if left_down && lockon == 0 {
            x -= 100
        }
        
         if right_down && lockon == 0 {
            x += 100
        }
        
        
        if lockon == 1 &&  move_cooldown[AT_TAUNT_2] == 0 {
        	move_cooldown[AT_TAUNT_2] = 120
        	create_hitbox(AT_DAIR,12,x,y)
        	sound_play(asset_get("sfx_bird_downspecial"));
        	shake_camera(2,6)
        	if x > lockplayer.x {
            x = lockplayer.x - 40 
            spr_dir = 1
        	}  else {
            x = lockplayer.x + 40
            spr_dir = -1
        	}
            y = lockplayer.y 
            vsp = 0
            lockontime = 180
            lockon = 0
     
        }
        
        
    }
    
    if window == 2 && window_timer == 2{
        
        if lockon = 1 && free{
            vsp -= 5
        }
        
        if lockon = 0 {
        vsp = -7
        }
    }
}


if attack == AT_EXTRA_2 {
    
    hhalo = 0
    can_fast_fall = false
    
    if window == 1 {
        if free {
        vsp /= 2
        hsp /= 2
        }
        can_move = false
    }
    
   if window == 1 && window_timer == 9 {
        
        		with (asset_get("oPlayer")) {
				if (player != other.player) {
             	if "ai_target" in self && "nname" not in self {
             		if url != "2108469290" {
             		if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
             			set_state (PS_IDLE)
             		}
             		
                   move_cooldown[AT_DSPECIAL] = 60
                   move_cooldown[AT_FSPECIAL] = 60
                   if move_cooldown[AT_USPECIAL] < 20{
                   move_cooldown[AT_USPECIAL] = 20
                   }
                   move_cooldown[AT_NSPECIAL] = 60
				   move_cooldown[AT_DTILT] = 60
				   move_cooldown[AT_UTILT] = 60
				   move_cooldown[AT_FTILT] = 60
				   move_cooldown[AT_JAB] = 60
				   move_cooldown[AT_DATTACK] = 60
				   move_cooldown[AT_DSTRONG] = 60
				   move_cooldown[AT_FSTRONG] = 60
				   move_cooldown[AT_USTRONG] = 60
				   move_cooldown[AT_BAIR] = 60
				   move_cooldown[AT_FAIR] = 60
				   move_cooldown[AT_NAIR] = 60
				   move_cooldown[AT_UAIR] = 60
				   move_cooldown[AT_DAIR] = 60
             	}
             	}
					
				}
			}
        
        
    }
    
    
        
    
    if window == 1 && window_timer == 10  {
    create_hitbox(AT_DSPECIAL,7,x,y-30)	
    }
    	
    if window == 2 && window_timer == 1  {
    	
    	         if left_down && lockon == 0 {
            x -= 100
        }
        
         if right_down && lockon == 0 {
            x += 100
        }
        
        
    if down_down {
            vsp = 150
            

    }
    }
    
    if window == 2 && window_timer == 1 {
        vsp = -12
    }
    
    if window == 2 && window_timer == 4*5 && !hitpause{
    	  vsp = -12
         sound_play(sound_get("SpaceCut"));
         sound_play(sound_get("RI"));
	 	 sound_play(asset_get("sfx_bird_nspecial"));
	 	 shake_camera(6,10)
	 	 spawn_hit_fx(x - 10*spr_dir,y - 55,SC)
    }
    
    if window == 2 {
        vsp /= 2
    }
}

if attack == AT_USPECIAL {
    
    if window == 1 && "ai_target" not in self  {
    	if special_down {
    	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -1 * window_timer/3 - 6);
    	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, window_timer/5 + 3);
    	}
    }
    
    if "ai_target" in self {
    	if get_gameplay_time() % 3 == 1 {
    	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, ((abs(insy - y)/30)*-1) - 5 );
    	}else{
    	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);	
    	}
    }
    
    if has_hit && !hitpause {
    	vsp = -11
    	set_state (PS_DOUBLE_JUMP)
    	state_timer = 0
    	move_cooldown[AT_USPECIAL] = 20
    }
    
    if vsp > 0 {
    	vsp += 0.04
    }
    
    can_move = false 
    
    if left_down && hsp > -2 {
        hsp -= 0.2
    }
    
    if right_down && hsp < 2 {
        hsp += 0.2
    }
    
    if window == 1 {
        vsp /= 2
        hsp /= 1.5
    }
    
    if window == 2 {
        spawn_hit_fx ( x  , y , ai );
        y -= 30
        window = 4
    }
    
    if window == 4 && free {

    	
    	if down_down {
    		fall_through = true
    	}
    	create_hitbox(AT_USPECIAL , 1 , x  , y   );	
        can_wall_jump = true
        vsp -= 0.3
        if window_timer == 17{
            window_timer = 0
        }
    }
    
    if window == 4 && !free {
        sound_play(asset_get("sfx_spin"));
        spawn_hit_fx ( x  , y , ai );
        hsp = 0
        window = 5
        window_timer = 0
    }
    
    
}







if attack == AT_NSPECIAL {
	
	if state_timer == 1 && hhalo == 0 {
		move_cooldown[AT_NSPECIAL] = 40
	}
	
	if hhalo > 0 {
	shake_camera(3,8)	
	set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
	hhalo = 0
	set_attack (AT_EXTRA_1)
	}
	
	
if move_cooldown[AT_NSPECIAL] == 25 {
		sound_play(asset_get("sfx_ice_shieldup"));
		create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
		spawn_hit_fx ( x - (30 * spr_dir) , y - 60 + random_func(2, 20, true) , summon  );
}

if move_cooldown[AT_NSPECIAL] == 30 {
		sound_play(asset_get("sfx_ice_shieldup"));
		create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
		spawn_hit_fx ( x - (30 * spr_dir) , y - 60 + random_func(2, 20, true) , summon  );
}

if move_cooldown[AT_NSPECIAL] == 35 {
		sound_play(asset_get("sfx_ice_shieldup"));
		create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
		spawn_hit_fx ( x - (30 * spr_dir) , y - 60 + random_func(2, 20, true) , summon  );
}
}

if attack == AT_EXTRA_1 {
	can_fast_fall = false
	if free {
		hsp /= 1.4
		vsp /= 1.4
	}
	
	if window == 1 && window_timer == 1 && !hitpause {
		
		if "ai_target" in self {
			if x > ai_target.x {
				spr_dir = -1
			} else {
                 spr_dir = 1
			}
		}
		        sound_play(sound_get("SpaceCut"));
		        spawn_hit_fx (x - (15 * spr_dir) , y - 55, 305)
	}
	
	if window = 2 && !hitpause {
		sound_play(sound_get("counterhit"));
		window = 4
	}
	
	if window == 5 && window_timer == 1 && !hitpause {
		create_hitbox(AT_DSPECIAL , 4 , x + 70*spr_dir , y - 50  );	 
		spawn_hit_fx (x + (40 * spr_dir) , y - 5, 303)
	}
}

if attack == AT_USPECIAL && hhalo > 0 {
	if window == 4 && !hitpause {
		shake_camera(2,6)
		sound_play(sound_get("SpaceCut"));
		   spawn_hit_fx (x  , y - 55, 304)
		   	create_hitbox(AT_DSPECIAL , 5 , x + 20*spr_dir , y - 50  );	 
		   		create_hitbox(AT_DSPECIAL , 3 , x - 20*spr_dir , y - 50  );	 
		   		hhalo = 0
	}
	
}



if attack == AT_EXTRA_2 {

	if state_timer < 25 {
		 sound_play(sound_get("SpaceCut2"));
       shake_camera(2,2)
	}
	
	if state_timer == 1 {
		 sound_play(sound_get("SpaceCut"));
	 	 spawn_hit_fx(x - 20*spr_dir,y - 50,305)
   }
    
    can_fast_fall = false;
    can_move = false;

}


if halo = 1 && window_timer == 1 && window == 2 && !hitpause {
	create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
}

