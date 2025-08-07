	//B - Reversals

if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

 if (state_timer == 1 or (window == 1 && window_timer == 1)) && !hitpause && get_gameplay_time() > 120 {
      sound_play(sound_get("swingw1"),false,noone, .5 ,
        max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
   
 }
 
if attack == AT_JAB {
	
	if window_timer == 5 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak2"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.8
	}
}

if attack == AT_NAIR {
	
	if window == 2 {
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
	}
	if window == 1 && window_timer <= 1 {
	if left_strong_pressed or right_strong_pressed {
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
		set_attack (AT_FAIR)
		window = 5
		window_timer = 0
		sound_play(asset_get("sfx_spin"))
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,20,true)/100)
	}
	}
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_spin"))
	}
	
	if window == 2 && !hitpause {
		x += (8 - window_timer)*spr_dir
	}
	
	if has_hit && !hitpause {
		window_timer += 0.8
	}
}

if attack == AT_FTILT {
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
		sound_play(asset_get("sfx_swipe_weak1"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}

if attack == AT_FAIR {
	
	if window = 2 {
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);
	}
	
	if window == 1 && window_timer <= 1 {
	if left_strong_pressed or right_strong_pressed {
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
		window = 5
		window_timer = 0
		sound_play(asset_get("sfx_spin"))
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	}
	
	if window == 4 {
		set_state (PS_IDLE_AIR)
	}
	
	if window_timer == 7 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak2"))
	}
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}

if attack == AT_BAIR {
	set_attack (AT_NAIR)
	spr_dir *= -1
}

if attack == AT_UTILT {
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}


if attack == AT_UAIR {
	
	if window == 2 {
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
	}
	
	if window == 4 {
		set_state (PS_IDLE_AIR)
	}
	
	
	
	if window == 1 && window_timer <= 1 {
	if up_strong_pressed{
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);
		window = 5
		window_timer = 0
		sound_play(asset_get("sfx_swipe_heavy2"))
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	}
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}

if attack == AT_DTILT {
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}

if attack == AT_DAIR {
	
	if window == 2 {
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
	}
			if window == 4 {
		set_state (PS_IDLE_AIR)
	}
	
	if window_timer == 1 && window == 5 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
	
	if window_timer == 14 && window == 5 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
	
	if window == 1 && window_timer <= 1 {
	if down_strong_pressed{
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
		window = 5
		window_timer = 0
		sound_play(asset_get("sfx_spin"))
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	}
	

	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_medium1"))
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
}


if attack == AT_DATTACK {
	
	if window == 1 {
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("ftilt"));
	}
	if window == 2 && window_timer == 2 && !hitpause {
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("utilt"));
	}
	
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy1"))
	}
	
	if has_hit && !hitpause && window == 3 {
		window_timer += 0.6
	}
}


if attack == AT_USTRONG {
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy1"))
	}
	
	if window_timer == 1 && window == 8 && !hitpause {
		sound_play(asset_get("sfx_swipe_weak2"))
	}
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
	
}


if attack == AT_DSTRONG {
	if window_timer == 1 && window == 1 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
	
	if window_timer == 1 && window == 16 && !hitpause {
		sound_play(asset_get("sfx_swipe_heavy1"))
		hsp = 0
	}
	
    
	
	if has_hit && !hitpause {
		window_timer += 0.4
	}
	
}

if attack == AT_FSTRONG {
	if window_timer == 1 && window == 1 && !hitpause {
		if nshit < 0 {
			nshit = 0
		}
		sound_play(asset_get("sfx_spin"))
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,1,.9 + random_func(1,30,true)/100)
	}
	
	if has_hit && !hitpause {
		window_timer += 0.6
	}
}


if attack == AT_FSPECIAL {

	if window >= 3 {
	can_wall_jump = true
	}
	
	if free {
		can_move = false
		can_fast_fall = false
		if vsp > 0 {
		vsp /= 1.4
		}
		hsp /= 1.2
	}
	if window == 1 {
		if window_timer % 5 == 0 {
			spawn_hit_fx(x + window_timer*10*spr_dir, y , ai)
		}
		if window_timer % 6 == 0 {
			spawn_hit_fx(x + window_timer*6*spr_dir, y , ai)
		}
		if window_timer == 20 {
			sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1,.8)
		}
		if window_timer == 24 {
			hsp = 200*spr_dir
			var step_up_height = 60;
            
            if place_meeting(x+hsp,y+vsp,asset_get("par_block")) {
                for (var i = 0; i < step_up_height; i += 2) {
                    if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
                        y = y+vsp-i;
                        break;
                    }
                }
            }
		}
	}
	
	if window == 3 && window_timer == 1 && !hitpause && free {
			vsp = -3
	}
	
	if window == 1 && window_timer == 23 && !hitpause {
		fx = spawn_hit_fx(x , y - 36, 302)
		fx.pause = 6
		fx2 = spawn_hit_fx(x , y - 36, 303)
		fx2.pause = 6
		spawn_hit_fx(x + 30 * spr_dir, y , ai)
		spawn_hit_fx(x + 120 * spr_dir, y , ai)
		spawn_hit_fx(x + 200 * spr_dir, y , ai)
	}
	
	if has_hit_player && window == 4 && !hitpause{
		window_timer += 0.4
	}
	if window == 3 {
	move_cooldown[AT_FSPECIAL] = 999 ;
	move_cooldown[AT_USPECIAL] = 999 ;
	}
}

if attack == AT_NSPECIAL {

	
	if state_timer <= 5 {
		
		if right_down - left_down != 0 spr_dir = right_down - left_down

		
	}
	
	can_move = false
	can_fast_fall = false
		
	if window == 1 && !hitpause && nshit < 3 && !free{
		//x -= (12 - window_timer)/2 * spr_dir
	}
	
	if window != 1 && free {
		vsp/= 1.5
	}
	if window >= 3  && !hitpause {
		hsp /= 1.2
		if has_hit {
				move_cooldown[AT_NSPECIAL] = 0;
		}
	}
	
	if window > 2 && has_hit && !hitpause {
		window_timer += 0.4
	}
	
		
	if nshit > 3 && window == 1 && window_timer == 1{
	spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
    sound_play(asset_get("sfx_bird_downspecial"))
	}
	
	if nshit > 3 && window == 1 && window_timer == 11 {
		
		if admb = 0 && admw = 4 {
			
		set_attack (AT_FTILT)
		window = 2
		window_timer = 0
		create_hitbox(AT_NSPECIAL , 3 , x + (40*spr_dir) , y - 40 ); 
		sound_play(asset_get("sfx_spin"))
		sound_play(sound_get("slicen"),false,noone,1.2,1.4)
		} 
		
		if admb = 3 && admw = 0 {
			
		set_attack (AT_FSTRONG)	
		window = 1
		window_timer = 5
		}
		
		nshit = -10
		
			if admb = 3 && admw = 4 {
						set_attack (AT_FTILT)
	                 	window = 2
	                 	window_timer = 0
	                 	
				create_hitbox(AT_NSPECIAL , 3 , x + (20*spr_dir) , y - 40 ); 
				sound_play(sound_get("slicen"),false,noone,1.2,1.4)
				
				nshit = -20
			}

		sound_play(asset_get("sfx_spin"))
		sound_play(asset_get("sfx_ice_on_player"))
		sound_play(asset_get("sfx_bird_sidespecial"))
		
	}
}

if nshit == -20 && (attack == AT_FSTRONG or attack == AT_FTILT) {
	hsp /= 1.2
	vsp = 0
	
	if attack == AT_FTILT && window == 3 {
		set_attack (AT_FSTRONG)	
		window = 1
		window_timer = 5
	}
	
	if attack == AT_FSTRONG {
	    	
		if window = 2 && window_timer == 1 {
			sound_play(sound_get("slicen"),false,noone,1.2,1.4)
			create_hitbox(AT_NSPECIAL , 2 , x + (40*spr_dir) , y - 40 ); 
		}	
		
		if window = 4 && window_timer > 5 {
			nshit = 0
		}
		
	 } 
	    
}


if nshit == -10 && (attack == AT_FSTRONG or attack == AT_FTILT) {
	     
	     hsp /= 1.2
	     if vsp > 0 vsp /= 1.4

	    
	    if attack == AT_FSTRONG {
	    	
		if window = 2 && window_timer == 1 {
			create_hitbox(AT_NSPECIAL , 2 , x + (40*spr_dir) , y - 40 ); 
			sound_play(sound_get("slicen"),false,noone,1.2,1.4)
		}	
		
		if window = 4 && window_timer > 5  {
			nshit = 0
		}
		
	    } 
	
}
	

if attack == AT_USPECIAL {
	

	
	
	prat_land_time = 15;
	
	
	if window >= 3 {
	can_wall_jump = true
	}
	if free {
		if window < 4 {
		can_move = false
		}
		can_fast_fall = false
	}
	
	  if window == 1 {
		if window_timer % 5 == 0 {
			spawn_hit_fx(x  , y - window_timer*8 , ai)
		}
		if window_timer % 6 == 0 {
			spawn_hit_fx(x , y - window_timer*5 , ai)
		}
		if window_timer == 20 {
			sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1,.8)
		}
	  }
	
	if window == 1 && free{
		hsp /= 1.1
		vsp /= 1.4
	}
	
	if window == 3 {
		vsp -= 1
	}
	if window == 4 && !free {
		set_state (PS_PRATLAND)
	}
	if window == 3 && window_timer == 1 && !hitpause && free {
			vsp = -3
	}
	
	
	if window == 1 && window_timer > 23 && !hitpause {
		fx = spawn_hit_fx(x , y - 36, 302)
		fx.pause = 6
		spawn_hit_fx(x , y - 30 , ai)
		spawn_hit_fx(x , y - 90 , ai)
		spawn_hit_fx(x , y - 150 , ai)
	}
	
	if has_hit_player && window == 4 && !hitpause{
		window_timer += 0.2
	}
	
	if window == 3 {
	move_cooldown[AT_FSPECIAL] = 999 ;
	move_cooldown[AT_USPECIAL] = 999 ;
	}
}

if attack == AT_DSPECIAL {
	prat_land_time = 15;

		if window_timer == 2 && window = 1{
           if admw == 4 && admb != 3 {
           	savemode = 0
           } 
           
           if admb = 3 && admw != 4 {
           	savemode = 1
           }
           
           if admb = 3 && admw = 4 {
           	savemode = 2
           }
		}
		
	if window == 1 && soultimer < 0 {
		outline_color = [0, 0, 0]
                     	init_shader();
                         spawn_hit_fx (x,y -30 , 302 )
                         spawn_hit_fx (x,y - 30, wh )
                         spawn_hit_fx (x,y - 30, bh )
                     	sound_play(asset_get("sfx_holy_lightning"))
                     	sound_play(sound_get("slicen"))
                     soultimer = 0
                     x = soulx
                     y = souly
                     set_attack (AT_DSPECIAL)
                     window = 4
                     window_timer = 0
                     
	}
	
	can_fast_fall = false
	hsp /= 1.2
	if vsp > 0 {
	vsp /= 2
	}
	
	if window == 2 && window_timer == 8{
		spawn_hit_fx(x , y - 36, 306)
		take_damage(player,-1, 12 )
		bodyinvulve = 120
	}
	
	if window == 3 && window_timer == 1 && !hitpause {
		
	admb = 3
    admw = 4



if  get_player_color(player) == 5 {
		     sound_stop(sound_get("CARAMELFN"))
             sound_stop(sound_get("CARAMEL"))
sound_play(sound_get("CARAMEL"))
}		
		souldmg = 0
		move_cooldown[AT_DSPECIAL] = 120;
		soulx = x
		souldir = spr_dir
		souly = y
		

			soulfree = 1
		
		
		if left_down && !right_down {
			hsp = -8
		}
		
		if !left_down && right_down {
			hsp = 8
		}
		
		if !left_down && !right_down {
			hsp = -8 * spr_dir
		}
		
		vsp = -8
		set_state (PS_IDLE)
		soultimer = -360
		state_timer = 0
	}
	
	if window == 4 {
		has_airdodge = true
		hsp = 0
        vsp = 0
	}
	
	if window == 4 && window_timer == 1 && !hitpause{
            if savemode = 0 {
            	admb = 3
            	admw = 0
            } else if savemode = 1 {
            	admw = 4
            	admb = 0
            }  else if savemode = 2 {
            	admb = 3
            	admw = 4
            } 

	}
	if window == 4 && window_timer == 44 && free {
		set_state (PS_PRATFALL)
	}

	
}

if attack == AT_TAUNT {
if window_timer == 10 && window == 1 && !hitpause {
	sound_play(asset_get("sfx_swipe_heavy2"))
}	

if window_timer == 22 && window == 1 && !hitpause {
	sound_play(asset_get("sfx_swipe_heavy1"))
}	

}