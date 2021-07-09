//ai_update - called every frame for this character as a CPU

DT = 16

if triggered == 1 && pattern == 0 {
	motivation += 0.5
}


if temp_level == 1 && room_speed < 72{
	room_speed = 72
}

if pattern = 0 {
	visible = true
}

if ending == 0 {
	
if !hitstop {
	timescore += 1
}	

if timescore  > 10000 {
	time -= 0.5
}

if ai_target.state == PS_RESPAWN && ai_target.state_timer == 1 {

stock -= 500	
	
}

}




    xdist = abs(ai_target.x - x);
    ydist = abs(y - ai_target.y);
    
    
left_hard_pressed = false
right_hard_pressed = false
jump_down = false
shield_down = false


if motivation > 300 {
	motivation = 300
}

if x > ai_target.x {
	left_down = true
} else {
	right_down = true
}

if state == PS_PARRY or state == PS_PRATLAND or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD  {
	set_state(PS_IDLE)
}

if state == PS_DOUBLE_JUMP {
			set_attack(AT_TAUNT)
			window = 4 
			window_timer = 6
	hsp = -4*spr_dir
	vsp = -5
	state_timer = 307
}

if downed == 1 {
	condamage = get_player_damage( player )
} else {
    set_player_damage( player, condamage )	
}

if attacking && attack == AT_TAUNT && state_timer = 307 {
   if attackcd < 45 {
      attackcd = 45
   }
   if state_timer == 7 {
   	shake_camera(4,4)
	create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
      x = room_width/2 - 200 + random_func(1,400,true)
   	  y = room_height/2 + random_func(1,60,true)
   }
   
}

if !hitpause && downed == 0 {
	if motivation2 > motivation  {
		motivation2 -= 1
	}

    lockout = 0
	
	if motivation > motivation2 {
		motivation2 = motivation
	}
}

if motivation <= 0 && downed = 0 {
	
	if lockout > 0 {
		sound_stop(sound_get("taunt1"))
		sound_stop(sound_get("taunt5"))
			sound_play(sound_get("RI"))
	        sound_play(sound_get("SpaceCut"))
	        sound_play(sound_get("gotparried"))
	        shake_camera(6,6)
	        set_state(PS_HITSTUN)
	        old_vsp = 0
	        old_hsp = 0
	        hsp = 0
	        vsp = 0
	        state_timer = 0
	        motivation2 = 0
	        hitstop = 100
	        motivation = 0
	        downed = 1
	        pattern = 0
	        ptimer = 0
	        take_damage(player, -1,15)
	        triggered = 0
	} else {
		motivation = 1
	}
	

}


if downed = 1 && !hitpause{
	
	if free {
	motivation2 += 0.25
	}
	
	if free && vsp < 3 {
	motivation2 += 0.25
	}
	
	if !free {
	motivation2 += 1
	}
}

if downed == 1 && motivation2 >= 300 {

soft_armor = 999
	attackcd = 20
	lockout = 0
if get_gameplay_time() % 2 == 1 {	
sound_play(sound_get("2stock"))  
} else {
sound_play(sound_get("Parried")) 	
}

	if phase >= 2 {
			stormtarget = ai_target
	        create_hitbox(AT_FSPECIAL, 3, ai_target.x, ai_target.y - 40 )
	}
	
   if phase == 3 {
			pattern = -2
	}
	
	
	downed = 0
	motivation = 300
	sound_play(sound_get("RI"))
	sound_play(sound_get("SpaceCut"))
	shake_camera(6,6)
	spawn_hit_fx(x,y - 40,302)
	set_attack(AT_TAUNT)
	window = 4
	window_timer = 0
	hsp = -8*spr_dir
	vsp = -9
	
	
	if DT > 0 && phase >= 2 {
		     sound_play(asset_get("sfx_ori_energyhit_medium"))
             shake_camera(4,10)
             spawn_hit_fx(x,y,lighten)
             spawn_hit_fx(x,y - 46,306)
             spawn_hit_fx(x,y - 40,triggerfx)
             sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
             triggered = 1
             DTtime += 100
	}
	
	if phase == 1 && get_player_damage( player ) > 80 && (temp_level >= 6 or temp_level == 1) {
		phase = 1.5
		visible = false
		sound_stop(sound_get("2stock")) 
        sound_stop(sound_get("Parried")) 
	}
	
    if phase == 2 && get_player_damage( player ) > 200  && (temp_level >= 9 or temp_level == 1) {
    	sound_stop(sound_get("2stock")) 
        sound_stop(sound_get("Parried")) 
		phase = 2.5
	}
}

if lockout > 0 && !hitpause{
	lockout -= 1
}

if get_player_damage( player ) > 150 {
	
}

if !hitpause   {
	if get_player_damage( player ) > adamage && get_gameplay_time() % 3 == 0 && lockout == 0 {
		adamage += 1
	}
	
	if get_player_damage( player ) < adamage {
		adamage = get_player_damage( player )
	}
}


if downed == 1 {

if state_cat != SC_HITSTUN {
	set_state(PS_HITSTUN)
	state_timer = 1
}
if state_cat == SC_HITSTUN {
	if free {
	vsp -= 0.2
	}
	left_down = false
	right_down = false
	up_down = false
	down_down = false
	up_down = true
	hsp /= 1.02

	
	if !hitpause {
	state_timer -= 1
	}
	
}

}

  	    
  	    
if get_gameplay_time() % 45 == 0 {
	
	movemode = random_func(1, 2, true)
}


if movemode = 1 {
	if state == PS_WALK {
		hsp = walk_speed * -0.6
	}
	
}


  	    
  	    
	    		if x + hsp > room_width - 30 {
	    			x = 50
	    		}
	    		
	    		    		
	    		if x + hsp < 30 {
	    			x = room_width - 50
	    		}	
	    		
	    		
	    		if y + vsp > room_height - 20 {
	    			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
	    			sound_play(sound_get("SpaceCut"))
	                shake_camera(6,6)
	    			y = room_height/2
	    			vsp = -4
	    			x = room_width/2
	    			spawn_hit_fx(x,y - 40,302)
	    		}
	    		
	    		
	    		if y + vsp < 0 {
	    			y = 10
	    		}  	    
	    		
	    		
	    		
	    		
	    		
	    		
	    		
	    		
/////actual attack pattern:

if phase = 0 && get_gameplay_time() > 120{
	if temp_level != 1 and temp_level != 9 {
		phase = 1
		pattern = 0
	} else {
		phase = 1
		pattern -= 1
	}
	
	
}

if phase == 1 {
	
	if pattern == -1 && !hitpause{
	   soft_armor = 999 
	   hsp = 0
	   
	   if ptimer = 1 {
	   	sound_play(sound_get("taunt3"),false,noone,1.2)
			sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
				visible = false
				
				spr_dir*= -1
				vsp = 600

		}
		
		if ptimer < 30 {
			x = room_width/2 - 300 + random_func(1,600,true)
			if ptimer % 5 == 0 {
				sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			}
		}
		
		if ptimer >= 30 && !free {
			visible = true
			sound_play(asset_get("sfx_bird_downspecial"))
			sound_play(asset_get("sfx_abyss_explosion"))
			sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		        x = ai_target.x 
				visible = true 
				spawn_hit_fx(x,y,vai)
				spawn_hit_fx(x,y - 40,304)
				set_attack(AT_DSTRONG)
				window = 1
				window_timer = 15 
				pattern = 0
				attackcd = 160
		}
		
	}
	
	if pattern != 0{
		if !hitstop {
		ptimer += 1 
		}
	} else {
		ptimer = 0
	}
	
	if pattern != 0 {
		attackcd = 90
	} else {
		if !hitstop {
		attackcd -= 1
		}
	}
	
	if get_gameplay_time() > 120 && attackcd <= 0 && pattern == 0 && state_cat != SC_HITSTUN && !invincible && state != PS_PRATFALL && state != PS_PRATLAND 
	 && !attack_down && (state != PS_AIR_DODGE )
     && (state != PS_ROLL_BACKWARD )
     && (state != PS_ROLL_FORWARD )
     && (state != PS_TECH_BACKWARD)
     && (state != PS_TECH_FORWARD )
     && (state != PS_TECH_GROUND){
		pattern = 1 + random_func(3,3,true)
		motivation -= 40
	}
	
	if pattern == 1 && !hitstop{
           vsp /= 1.2
           if free {
           	vsp -= 0.4
           	hsp /= 1.2
           }
		
		if ptimer == 1 {
			sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			spr_dir = (ai_target.x < x?1:-1)	
			set_attack(AT_TAUNT)
			window = 4 
			window_timer = 1
			hsp = -12*spr_dir
			spawn_hit_fx(x,y,vai)
			x = ai_target.x + 40*spr_dir
			y = ai_target.y 
		}
		
		if ptimer == 20 {
			sound_play(sound_get("vef3")) 
			set_attack(AT_JAB)
			window = 0
			window_timer = 0
			if free {
           	vsp = -3
           }
		}

	     if ptimer == 38 {
	     	sound_play(sound_get("vef3"),false,noone,1,1.05) 
	     	set_attack(AT_JAB)
			window = 4
			window_timer = 0
			if free {
           	vsp = -2
           }
	     }
	     
	     
	      if ptimer == 50 {
	     	set_attack(AT_FTILT)
			window = 1
			window_timer = 1
			if free {
           	vsp = -3
           }
           pattern = 0
	     }
	     
	     
	}
	
	if pattern == 2 && !hitstop {
		if ptimer == 1 {
				sound_play(asset_get("sfx_roll"))
            spawn_hit_fx(x,y,vai)
	        
	     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 0
			window_timer = 0
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 140
	     }
	     
	     if free && ptimer > 2 && ptimer < 10 {
	     	ptimer = 2
	     	
	     }
	     
	     if y + vsp > room_height - 100 or (!free) {
	     	pattern = 0
	     	if y + vsp > room_height/2 + 200 {
	     		set_state(PS_IDLE_AIR)
	     	}
	     }

	}
	
	if pattern == 3 && !hitstop {
		if free {
			vsp -= 0.3
			hsp /= 1.05
		}
		spr_dir = (ai_target.x > x?1:-1)	
		
		if ptimer == 1 {
			hsp = -6*spr_dir
						shake_camera (4,6)
			spawn_hit_fx(x,y,vai)
			x -= 60*spr_dir
			sound_play(asset_get("sfx_ice_on_player"),false,noone, 1, 1.2)
			    sound_play(sound_get("vJC1"),false,noone, 2)

		} 
		
		if ptimer < 15 {
        
        if free {
			vsp = (12 - ptimer) * -1
		}
		
		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 12
			
		}
		
		if ptimer == 15 {

		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 0
		create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
		}
		
		if ptimer == 20{
			pattern = 0
		}
	}
	
}
	    		
	    		
if phase == 1.5 {
	
	vsp = 600
	soft_armor = 999
    
	if !free && !attacking {
		visible = true
		x = room_width/2
		create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		sound_stop(sound_get("2stock")) 
        sound_stop(sound_get("Parried")) 
        
		hsp = 0
		vsp = 0
		set_attack(AT_TAUNT)
		window = 1 
		window_timer = 0
		phase = 2
		pattern = -1
	}
}	    		
	    		
	    		
if phase == 2 {
	if !hitpause {
	DTtime -= 1
	
	if DTtime > 0 && DTtime % 30 == 0 && condamage > 0{
		condamage -= 1
	}
	
	}
	if DTtime <= 0 && triggered == 1 {
		 shake_camera(2,4)
        spawn_hit_fx(x-20*spr_dir,y - 60,305)
        sound_play(asset_get("sfx_ori_bash_hit"))
        sound_play(sound_get("SpaceCut"),false,noone,0.4)
        triggered = 0
	}
	
	
	if triggered == 0 && DTtime <= -600 && downed == 0{
		     sound_play(asset_get("sfx_ori_energyhit_medium"))
             shake_camera(4,10)
             spawn_hit_fx(x,y,lighten)
             spawn_hit_fx(x,y - 46,306)
             spawn_hit_fx(x,y - 40,triggerfx)
             sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
             triggered = 1
             DTtime = 600
	}

	if pattern != 0{
		if !hitstop {
		ptimer += 1 
		}
	} else {
		ptimer = 0
	}
	
	if pattern != 0 {
		attackcd = 90
	} else {
		if !hitstop {
		attackcd -= 1
		}
	}
	
	if get_gameplay_time() > 120 && attackcd <= 0 && pattern == 0 && state_cat != SC_HITSTUN && !invincible && state != PS_PRATFALL && state != PS_PRATLAND 
	 && !attack_down && (state != PS_AIR_DODGE )
     && (state != PS_ROLL_BACKWARD )
     && (state != PS_ROLL_FORWARD )
     && (state != PS_TECH_BACKWARD)
     && (state != PS_TECH_FORWARD )
     && (state != PS_TECH_GROUND){
     	
     if DTtime < 180 && DTtime > 0 {
     		 sound_play(asset_get("sfx_ori_energyhit_medium"))
             shake_camera(4,10)
             spawn_hit_fx(x,y,lighten)
             spawn_hit_fx(x,y - 46,306)
             spawn_hit_fx(x,y - 40,triggerfx)
             sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
             triggered = 1
             DTtime = 600
             
     	pattern = 4
    } else {
    	pattern = 1 + random_func(4,3,true)
		motivation -= 40
    }
     	
     	
	}
	
	if pattern == -1 && !hitpause{
		if ptimer == 30 {
				create_hitbox(AT_DSPECIAL,2,room_width/2, room_height/2 - 400) 
		}
		
		if ptimer == 60 {
			pattern = 0
		}
		
		if ptimer == 10 {
			   sound_play(sound_get("SpaceCut"),false,noone,1.4)
			  create_hitbox(AT_DSPECIAL,2,room_width/2 + 300, room_height/2 - 400) 
			   create_hitbox(AT_DSPECIAL,2,room_width/2 - 300, room_height/2 - 400) 
		}
	}
	
	if pattern == 1 && !hitstop{
		
		if has_hit_player && ptimer > 63{
			y += floor((ai_target.y - y)/8)
		}
           vsp /= 1.2
           if free {
           	vsp -= 0.4
           	hsp /= 1.05
           }
		
		if ptimer == 1 {
			sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			spr_dir = (ai_target.x < x?1:-1)	
			set_attack(AT_TAUNT)
			window = 4 
			window_timer = 1
			hsp = -12*spr_dir
			spawn_hit_fx(x,y,vai)
			x = ai_target.x + 40*spr_dir
			y = ai_target.y 
		}
		
		if ptimer == 20 {
			sound_play(sound_get("vef3")) 
			set_attack(AT_JAB)
			window = 0
			window_timer = 0
			if free {
           	vsp = -3
           }
		}

	     if ptimer == 38 {
	     	sound_play(sound_get("vef3"),false,noone,1,1.05) 
	     	set_attack(AT_JAB)
			window = 4
			window_timer = 0
			if free {
           	vsp = -2
           }
	     }
	     
	     
	      if ptimer == 53 {
	      	spr_dir = (ai_target.x > x?1:-1)
	      	sound_play(asset_get("sfx_swipe_medium1"))
	     	set_attack(AT_NAIR)
			window = 1
			window_timer = 3
			hsp = 6*spr_dir
			if free {
           	vsp = -2
           }
	     }
	     
	     
	     if ptimer == 63 {
	     	sound_play(sound_get("vef1"))   
	     	set_attack(AT_NAIR)
			window = 1
			window_timer = 2
			hsp = 3*spr_dir
			if free {
           	vsp = -2
           }
	     }
	     
	      if ptimer == 73 {
	     	set_attack(AT_NAIR)
			window = 1
			window_timer = 2
			hsp = 5*spr_dir
	     }
	     
	     if ptimer == 83 {
	     	set_attack(AT_NAIR)
			window = 1
			window_timer = 2
			hsp = 4*spr_dir
			if free {
           	vsp = -2
           }
	     }
	     
	     if ptimer == 90 {
	     	spr_dir = (ai_target.x > x?1:-1)
	     	set_attack(AT_DATTACK)
			window = 1
			window_timer = 0
			hsp = 4*spr_dir
			if free {
           	vsp = -2
           }
	     }
	     
	      if ptimer == 120 {
	        pattern = 0	
	      }
	}
	
	if pattern == 2 && !hitstop {
		if ptimer == 1 {
				sound_play(asset_get("sfx_roll"))
            spawn_hit_fx(x,y,vai)
	        
	     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 0
			window_timer = 0
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 140
	     }
	     
	     if free && ptimer > 2 && ptimer < 10 {
	     	ptimer = 2
	     	
	     }
	     
	     if (!free && ptimer > 10) {
	     	sound_play(asset_get("sfx_roll"))
            spawn_hit_fx(x,y,vai)
	        
	     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 0
			window_timer = 0
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 140
	     	pattern = 0

	     }
	     


	     

	}
	
	if pattern == 3 && !hitstop {
		
		if free {
			vsp -= 0.3
			hsp /= 1.05
		}
		spr_dir = (ai_target.x > x?1:-1)	
		
		if ptimer == 1 {
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			hsp = -6*spr_dir
						shake_camera (4,6)
			spawn_hit_fx(x,y,vai)
			x -= 60*spr_dir
			sound_play(asset_get("sfx_ice_on_player"),false,noone, 1, 1.2)
			    sound_play(sound_get("vJC1"),false,noone, 2)

		} 
		
		if ptimer < 15 {
        
        if free {
			vsp = (12 - ptimer) * -1
		}
		
		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 12
			
		}
		
		if ptimer == 15 {

		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 0
		create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
		}
		
		if ptimer == 30{
			pattern = 0
		}
	}
	
	
	if pattern == 4 && !hitstop {
		move_cooldown[AT_USPECIAL] = 0
		if ptimer < 316 {
		soft_armor = 999
		} else {
		soft_armor = 0
		}
		
		if ptimer == 1 {
			fshit = 0 
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			sound_play(sound_get("vef5"),false,noone, 2)
			set_attack(AT_USPECIAL)
			window = 1
			window_timer = 0
		}
		
		if ptimer > 16 && ptimer < 40 {
			hsp = (room_width/2 - x)/10
			vsp = (room_height/2 - 120 - y)/10
		}
		
		if ptimer = 40 {
			create_hitbox(AT_DSPECIAL,2,room_width/2, room_height/2 - 400) 
			set_attack(AT_FSTRONG)
			window = 1
			window_timer = 0
		}
		
		
		if ptimer >= 75 && ptimer < 306 {
			
			vsp = (ai_target.y - y)/10
			hsp = 15*spr_dir
			
			if x + hsp < room_width/2 - 550 {
				spr_dir = 1
				y = room_height/2 - 120
				create_hitbox(AT_DSPECIAL,2,ai_target.x, room_height/2 - 400) 
			} 
			
			if x + hsp > room_width/2 + 550  {
				spr_dir = -1
				y = room_height/2 - 120
				create_hitbox(AT_DSPECIAL,2,ai_target.x, room_height/2 - 400) 
			}
			
			if ptimer == 95 or ptimer % 17 == 0 {
				motivation -= 3
				create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
				set_attack(AT_FSTRONG)
		    	window = 3
		    	window_timer = 0
			}
			
		}
		
		if ptimer == 306 {
			DTtime = 0
			set_attack(AT_FSTRONG)
			window = 3
			window_timer = 16
		}
		
				if ptimer == 350 {
				  pattern = 0	
				}

		
		
	}
	
}		
	    		
if phase == 2.5 {
	
	vsp = 20
	soft_armor = 999
    
	if !free && !attacking {
		x = room_width/2
		create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		sound_stop(sound_get("2stock")) 
        sound_stop(sound_get("Parried")) 
        
        sound_play(sound_get("firstkill")) 
        
		hsp = 0
		vsp = 0
		set_attack(AT_TAUNT)
		    shake_camera(1,4)
            window = 2
            sound_play(asset_get("sfx_ell_dspecial_drop"))  
            sound_play(sound_get("vef3"))
		window_timer = 0
		phase = 3
		pattern = -1
	}
}


if phase == 3 {
	if !hitpause {
	DTtime -= 1
	
	if DTtime > 0 && DTtime % 30 == 0 && condamage > 0{
		condamage -= 1
	}
	
	}
	if DTtime <= 0 && triggered == 1 {
		 shake_camera(2,4)
        spawn_hit_fx(x-20*spr_dir,y - 60,305)
        sound_play(asset_get("sfx_ori_bash_hit"))
        sound_play(sound_get("SpaceCut"),false,noone,0.4)
        triggered = 0
	}
	
	
	if triggered == 0 && DTtime <= -600 && downed == 0{
		     sound_play(asset_get("sfx_ori_energyhit_medium"))
             shake_camera(4,10)
             spawn_hit_fx(x,y,lighten)
             spawn_hit_fx(x,y - 46,306)
             spawn_hit_fx(x,y - 40,triggerfx)
             sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
             triggered = 1
             DTtime = 600
	}

	if pattern != 0{
		if !hitstop {
		ptimer += 1 
		}
	} else {
		ptimer = 0
	}
	
	if pattern != 0 {
		attackcd = 90
	} else {
		if !hitstop {
		attackcd -= 1
		}
	}
	
	if get_gameplay_time() > 120 && attackcd <= 0 && pattern == 0 && state_cat != SC_HITSTUN && !invincible && state != PS_PRATFALL && state != PS_PRATLAND 
	 && !attack_down && (state != PS_AIR_DODGE )
     && (state != PS_ROLL_BACKWARD )
     && (state != PS_ROLL_FORWARD )
     && (state != PS_TECH_BACKWARD)
     && (state != PS_TECH_FORWARD )
     && (state != PS_TECH_GROUND){
     	

    	pattern = 1 + random_func(4,3,true)
        motivation -= 80
    
     	
     	
	}
	
	
	if pattern == -2 && !hitpause{
	   soft_armor = 999 
	   hsp = 0
	   
	   if ptimer = 1 {
			sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
				visible = false
				
				spr_dir*= -1
				vsp = 600

		}
		
		if ptimer < 30 {
			x = room_width/2 - 300 + random_func(1,600,true)
			if ptimer % 5 == 0 {
				sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			}
		}
		
		if ptimer >= 30 && !free {
			visible = true
			sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		        x = ai_target.x 
				visible = true 
				spawn_hit_fx(x,y,vai)
				spawn_hit_fx(x,y - 40,304)
				set_attack(AT_DSTRONG)
				window = 1
				window_timer = 0 
				pattern = 0
				attackcd = 160
		}
		
	}
		
	if pattern == -1 && !hitpause{
		can_move = false
           soft_armor = 999
           fall_through = true
		if ptimer == 50 {
			sound_play(asset_get("sfx_ori_energyhit_medium"))
             shake_camera(4,10)
             spawn_hit_fx(x,y,lighten)
             spawn_hit_fx(x,y - 46,306)
             spawn_hit_fx(x,y - 40,triggerfx)
             sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
             triggered = 1
             DTtime = 600
		}
		
		
		if ptimer > 60 && ptimer < 330 {
					x = room_width/2
					y = room_height/2 - 300
			visible = false
			invincible = true
		}
		
		if ptimer = 60 {
			spawn_hit_fx(x,y,vai)
			shake_camera(4,6)
	        spawn_hit_fx(ai_target.x, ai_target.y - 40, 304)
	         sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
		}
		
		if ptimer = 110 {
							create_hitbox(AT_DSPECIAL,2,ai_target.x , room_height/2 - 400) 
		}
		
		if ptimer = 140 {
							create_hitbox(AT_DSPECIAL,2,ai_target.x , room_height/2 - 400) 
		}
		
		if ptimer = 170 {
							create_hitbox(AT_DSPECIAL,2,ai_target.x , room_height/2 - 400) 
		}
		
		
		if ptimer = 250 {
							create_hitbox(AT_DSPECIAL,2,room_width/2, room_height/2 - 400) 
		}
	
		if ptimer = 260 {
							create_hitbox(AT_DSPECIAL,2,room_width/2 + 200, room_height/2 - 400) 
							create_hitbox(AT_DSPECIAL,2,room_width/2 - 200, room_height/2 - 400) 
		}
		
		if ptimer = 270 {
							create_hitbox(AT_DSPECIAL,2,room_width/2 + 400, room_height/2 - 400) 
							create_hitbox(AT_DSPECIAL,2,room_width/2 - 400, room_height/2 - 400) 
		}
		
		if ptimer = 330 {
			sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
				
				
				vsp = 600

		}
		
		if ptimer >= 330 && !free {
		        x = ai_target.x 
				visible = true 
				spawn_hit_fx(x,y,vai)
				spawn_hit_fx(x,y - 40,304)
				set_attack(AT_USTRONG)
				window = 1
				window_timer = 0 
				pattern = 0
				attackcd = 120
		}
		
	}
	
	if pattern == 1 && !hitstop{
		
		if has_hit_player && ptimer > 63 && ptimer < 155{
			y += floor((ai_target.y + 30 - y)/4)
			x += floor(ai_target.x - 60*spr_dir - x)/2
		}
           vsp /= 1.2
           if free {
           	vsp -= 0.4
           	hsp /= 1.05
           }
		
		if ptimer == 1 {
			set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 20);
			sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			spr_dir = (ai_target.x < x?1:-1)	
			set_attack(AT_TAUNT)
			window = 4 
			window_timer = 1
			hsp = -12*spr_dir
			spawn_hit_fx(x,y,vai)
			x = ai_target.x - 80*spr_dir
			y = ai_target.y 
		}
		
		if ptimer == 6 {
			set_attack(AT_DATTACK)
			window = 1
			window_timer = 0
			hsp = 4*spr_dir
			if free {
           	vsp = -3
           }
           ptimer = 60
		}


		if ptimer == 96 {
			set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 16);
			spr_dir *= -1
			sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			set_attack(AT_DATTACK)
			window = 1
			window_timer = 0
			hsp = 4*spr_dir
						x = ai_target.x - 120*spr_dir
						y = ai_target.y 
			if free {
           	vsp = -3
           }
		}
		
		
		if ptimer == 130 {
			vsp = -8
			set_attack(AT_NAIR)
			window = 1
			window_timer = 3
		}
		
		
		if ptimer == 150 {
			sound_play(asset_get("sfx_ice_on_player"),false,noone, 1, 1.1)
			vsp = -8
			attack_end();
			spr_dir*= -1
			set_attack(AT_BAIR)
			window = 1
			window_timer = 8
		}
		
		if ptimer == 158{
			sound_play(asset_get("sfx_ice_on_player"),false,noone, 1, 1)
			attack_end();
			spr_dir*= -1
			set_attack(AT_UAIR)
			window = 1
			window_timer = 5
		}
		
		if ptimer == 175 {
			spawn_hit_fx(x,y - 40,305)
			spr_dir = (ai_target.x > x?1:-1)
			 vsp = -6
              hsp = -6*spr_dir
				sound_play(asset_get("sfx_ice_on_player"),false,noone, 1, 1)
			    sound_play(sound_get("vJC1"),false,noone, 2)
		}
		
		if ptimer > 175 && ptimer < 190 {
        spr_dir = (ai_target.x > x?1:-1)
		shake_camera(4,6)
		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 12
			
		}
		
		if ptimer == 190 {
        vsp = -6
        hsp = -6*spr_dir
		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 0
		create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
		}
		
		if ptimer == 220{
			pattern = 0
		}
		
	}
	
	if pattern == 2 && !hitstop {
		
		     if (place_meeting(x+10*spr_dir, y, asset_get("par_block"))) {
                 y -= 15
             }
          move_cooldown[AT_FAIR] = 0
		if ptimer == 1 {
			sound_play(asset_get("sfx_roll"))
			spr_dir = (ai_target.x > x?1:-1)
			spawn_hit_fx(x,y,vai)
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x -= 80*spr_dir
			hsp = -16*spr_dir
			set_attack(AT_FAIR)
			window = 1
			window_timer = 2
			sound_play(sound_get("taunt6"),false,noone, 2)
	     }
	     
        if ptimer = 16 {
        	sound_play(sound_get("counterhit"),false,noone, 1)	
        	sound_play(asset_get("sfx_clairen_swing_mega_instant"),false,noone, 1)
        }
		if ptimer > 6 && ptimer < 56 {
			fall_through = true
			if !free && ptimer % 5 == 0 {
				sound_play(sound_get("cnoise1"),false,noone, 1)
			}
			
			hsp = (ptimer/2 - 8)*spr_dir
			if ptimer < 22 {
				vsp = 0
			set_attack(AT_FAIR)
			window = 1
			window_timer = 6 
			} else {
				y += 5
			    y += floor((ai_target.y - 10 - y)/20)
			    vsp = floor((ai_target.y - 10 - y)/30)
				if ptimer % 2 == 0 {
			set_attack(AT_FAIR)
			window = 2
			window_timer = 2	
				}
			}
	     }
	     
	    if ptimer  > 70 && ptimer < 100 {
	    	visible = false
	    	invincible = true
	    	y = 0
	    	soft_armor = 999
	    }
	    
        if ptimer = 70 {
        	create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        	 spawn_hit_fx(x,y - 46,304)
             sound_play(sound_get("counterhit"))
        	spawn_hit_fx(x,y,vai)
        	shake_camera(4,6)
        }
        
        if ptimer = 100 {
        	visible = true
        		     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 0
			window_timer = 0
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 140
			
        }
        
        if ptimer = 140 {
        	    	sound_play(asset_get("sfx_roll"))
        	    		create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        		     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 0
			window_timer = 0
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 140
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        }
        
        if ptimer = 180 {
        	
        	        	create_hitbox(AT_DSPECIAL,2,ai_target.x , room_height/2 - 400) 
        	sound_play(asset_get("sfx_roll"))
        		create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
	        
	     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 0
			window_timer = 0
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 140
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        }

        if ptimer = 220 or y > room_width/2 + 150 {
        	sound_play(sound_get("Drive1"))
        	spawn_hit_fx(x,y,vai)
        	spr_dir = (ai_target.x > x?1:-1)
        	sound_play(asset_get("sfx_roll"))
        	create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        	set_attack(AT_EXTRA_3)
        	window = 1
        	window_timer = 0
        }
        
        if ptimer = 300 {
          pattern = 0	
        }
	}
	
	if pattern == 3 && !hitstop {
  
	    invincible = true
		
		if ptimer == 1 {
			sound_play(asset_get("sfx_roll"))
			spr_dir = (ai_target.x > x?1:-1)
			spawn_hit_fx(x,y,vai)
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x -= 20*spr_dir
			hsp = -6*spr_dir
			vsp = -8
			set_attack(AT_EXTRA_2)
			window = 1
			window_timer = 0

		} 
		
		
	    if ptimer == 40 {
	    	spr_dir = (ai_target.x > x?1:-1)
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			hsp = -2*spr_dir
			vsp = -7
						shake_camera (4,6)
			spawn_hit_fx(x,y,vai)
			x -= 60*spr_dir
			sound_play(asset_get("sfx_ice_on_player"),false,noone, 1, 1.2)
			    sound_play(sound_get("vJC1"),false,noone, 2)

		} 
		
		if ptimer > 55 && ptimer < 60 {
        
        if free {
			vsp = (12 - ptimer) * -1
		}
		
		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 12
			
		}
		
		if ptimer == 60 {
        shake_camera(3,6)
        sound_play(sound_get("counterhit"))
		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 0
		create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
		}
		
	
			
		if ptimer > 60 && ptimer % 30 == 0 && ptimer < 210{
			spawn_hit_fx(x,y,vai)
						create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		y = room_height/2 - 100 + random_func(2,100,true)
		x = room_width/2 - 300 + random_func(3,600,true)
		spr_dir = (ai_target.x > x?1:-1)
        shake_camera(3,6)
        sound_play(sound_get("counterhit"))
		set_attack(AT_EXTRA_1)
		window = 1
		window_timer = 0
		create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
		}
		
		if ptimer == 210 {
			spawn_hit_fx(x,y,vai)
			sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
				create_hitbox(AT_DSPECIAL,2,ai_target.x - 100 , room_height/2 - 400) 
				create_hitbox(AT_DSPECIAL,2,ai_target.x + 100 , room_height/2 - 400) 
				visible = false
				vsp = 600
		}
		
		if ptimer > 240 && !free {
			visible = true
			x = ai_target.x - 30*spr_dir
			set_attack(AT_DSTRONG)
			window = 1
			window_timer = 0
			attackcd = 200
			pattern = 0
		}
		
		

	}
	
}	