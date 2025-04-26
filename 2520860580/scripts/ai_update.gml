//ai_update - called every frame for this character as a CPU

DT = 16

if triggered == 1 && downed == 0 {
	if pattern == 0{
	motivation += 0.5
	} else {
	motivation += 0.2	
	}
}

can_shield = false
has_airdodge = false

ai_target.parry_cooldown = 0

if pattern == 0{
	justparried = 0
} else {
	if justparried > 0{
		justparried = 20
	}
}
if (place_meeting(x+15*spr_dir, y, asset_get("par_block"))) {
                 y -= 15
           }
           
if justparried > 10 && !hitpause{
	justparried -= 1
}

if ai_target.state == PS_AIR_DODGE{
	invincible = true
	invince_time = 15
	if ai_target.state_timer == 14{
	with ai_target{
		has_airdodge = false
		invincible = true
		vsp = -2
		invince_time = 15
		set_state(PS_IDLE_AIR)
	}
		
	}
}
if ai_target.state_cat == SC_GROUND_NEUTRAL && ai_target.shield_pressed{
		with ai_target{
			  attack_end()
		 }
	 	ai_target.state = PS_PARRY_START
}
if ai_target.state == PS_PARRY_START or ai_target.state == PS_PARRY{
	ai_target.can_be_hit[2] = 0
	if parried && !ai_target.hitpause{
	 	if ai_target.shield_pressed{
	 		with ai_target{
			  attack_end()
		    }
	 		ai_target.state = PS_PARRY_START
	 	} else {
	 		ai_target.window_timer += 1
	 	}
	}
	
	if ai_target.invince_time > 15{
	   ai_target.invince_time = 15
	}
	if ai_target.state == PS_PARRY_START{
		parried = false
	    if ai_target.invince_time > 5{
	       ai_target.invince_time = 5
	    }
	}
		
	if ai_target.state == PS_PARRY && parried == false{
		if ai_target.state_timer < 10{
			if ai_target.state_timer > 1{
		ai_target.invince_time = 0
		ai_target.window_timer -= 1
		ai_target.invincible = false
			}
		}else{
		ai_target.window_timer += 0.25	
		}
	}
} else {
	parried = false
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
if hit_player_obj == -4 hit_player_obj = ai_target
if "hit_player_obj" in self {
if hit_player_obj.state == PS_RESPAWN && hit_player_obj != self && hit_player_obj.state_timer == 1{
stock -= 500
print("minus")
}
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
		if abs(motivation2 - motivation) > 10  {
		motivation2 -= 1
    	}
    	if abs(motivation2 - motivation) > 40  {
		motivation2 -= 1
    	}
	}

    lockout = 0
	hsp /= 1.15
	if vsp > 0{
		vsp -= 0.15
	}
	if motivation > motivation2 {
		motivation2 = motivation
	}
}

if motivation <= 0 && downed = 0 {
	if lockout > 0 {
		if phase == 2 && airraid == true{
			sound_play(asset_get("sfx_ori_energyhit_medium"))
            shake_camera(4,10)
            spawn_hit_fx(x,y,lighten)
            spawn_hit_fx(x,y - 46,306)
            spawn_hit_fx(x,y - 40,triggerfx)
            sound_play(sound_get("RI"))
            sound_play(sound_get("counterhit"))
            triggered = 1
            DTtime = 800
     	    pattern = 5
     	    attackcd = 100
     	    airraid = false
     	    motivation = 20
		} else {
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
	        take_damage(player, -1,25)
	        triggered = 0
		}
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

if retreat > 0 && !hitpause{
	retreat -= 1
	if downed == 0 && retreat == 1{
		set_state(PS_IDLE)
		create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		with ai_target{
			attack_end()
			set_state(PS_IDLE)
		}
		if x > room_width/2{
	        x = ai_target.x - 100 - random_func(1,200,true)
			sound_play(asset_get("sfx_roll"))
			hsp = -10
		} else {
			x =  ai_target.x + 100 + random_func(1,200,true)
			sound_play(asset_get("sfx_roll"))
			hsp = 10
		}
	}
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
	if free{
	set_state(PS_HITSTUN)
	state_timer = 1
	}else{
	set_state(PS_PRATLAND)
	state_timer = 1	
	sound_stop(sound_get("cnoise3"))
	}
}

    
	if free && !hitpause {
	vsp -= 0.2
	}
	left_down = false
	right_down = false
	up_down = false
	down_down = false
	up_down = true
	hsp /= 1.02
	jump_down = false
	djumps = 5
	has_airdodge = false
	shield_down = false
	special_down = false
	attack_down = false
	can_wall_jump = false


}

  	    
  	    
if abs(ai_target.x - x + ai_target.hsp*6) < 250{
	movemode = 1
} else {
	movemode = 0
	if abs(ai_target.x - x + ai_target.hsp*6) < 350{
		left_down = false
	    right_down = false
	}
}


if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && free && downed == 0{
	if x  > room_width/2 + 300 && hsp > -7{
		hsp -= 2
	}
	if x  < room_width/2 - 300 && hsp < 7{
		hsp += 2
	}
}

if movemode = 1 {
	if state == PS_WALK or state == PS_DASH or state == PS_DASH_START{
		hsp = 0
		x -= 1*spr_dir
		if abs(ai_target.x - x + ai_target.hsp*6) < 150{
			x -= 1*spr_dir
		}
	}
} else {
	if state == PS_WALK or state == PS_DASH or state == PS_DASH or state == PS_DASH_START{
		hsp = 0
		if abs(ai_target.x - x + ai_target.hsp*6) > 350{
		x += 2*spr_dir
		}
	}
}

	    		if x + hsp > room_width - 30 {
	    			x = 50
	    			hsp = 12
	    			if downed != 0 {
	    				take_damage(player,-1,5)
	    				 motivation2 += 20
	    				fx = spawn_hit_fx(x,y - 20,304)
	    				fx.pause = 6
	    				sound_play(asset_get("sfx_blow_heavy2"))
	    				sound_stop(sound_get("vdeath"))
	    				sound_play(sound_get("vdeath"),false,noone,2)
	    			}
	    		}
	    		
	    		    		
	    		if x + hsp < 30 {
	    			x = room_width - 50
	    			hsp = -12
	    			if downed != 0 {
	    				take_damage(player,-1,5)
	    				motivation2 += 20
	    				fx = spawn_hit_fx(x,y - 20,304)
	    				fx.pause = 6
	    				sound_play(asset_get("sfx_blow_heavy2"))
	    				sound_stop(sound_get("vdeath"))
	    				sound_play(sound_get("vdeath"),false,noone,2)
	    			}
	    		}	
	    		
	    		
	    		if y + vsp > room_height - 20 {
	    			if downed != 0 {
	    				take_damage(player,-1,15)
	    				motivation2 += 45
	    				fx = spawn_hit_fx(x,y - 20,304)
	    				fx.pause = 6
	    				sound_play(asset_get("sfx_blow_heavy2"))
	    				sound_stop(sound_get("vdeath"))
	    				sound_play(sound_get("vdeath"),false,noone,2)
	    			}
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
	    			vsp = 14
	    			if downed != 0 {
	    				take_damage(player,-1,5)
	    				motivation2 += 20
	    				fx = spawn_hit_fx(x,y - 20,304)
	    				fx.pause = 6
	    				sound_play(asset_get("sfx_blow_heavy2"))
	    				sound_stop(sound_get("vdeath"))
	    				sound_play(sound_get("vdeath"),false,noone,2)
	    			}
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
				window_timer = 10 
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
	
	if ai_target.y < room_height/2 + 150 && ai_target.x > room_width/2 - 400 && ai_target.x < room_width/2 + 400{
	if get_gameplay_time() > 120 && attackcd <= 0 && pattern == 0 && state_cat != SC_HITSTUN && !invincible && state != PS_PRATFALL && state != PS_PRATLAND 
	 && !attack_down && (state != PS_AIR_DODGE )
     && (state != PS_ROLL_BACKWARD )
     && (state != PS_ROLL_FORWARD )
     && (state != PS_TECH_BACKWARD)
     && (state != PS_TECH_FORWARD )
     && (state != PS_TECH_GROUND){
		pattern = 1 + random_func(3,3,true)
		if oldpat != pattern{
			oldpat = pattern
		} else {
			pattern += 1
			has_hit_player = false
			attack_end()
			move_cooldown[AT_USPECIAL] = 0
			move_cooldown[AT_FSTRONG] = 0
			if pattern = 4 pattern = 1
			oldpat = pattern
		}
		motivation -= 40
	}
	} 
	
	if pattern == 1 && !hitstop{
		   if 	y < ai_target.y {
           vsp /= 1.2
		   }
           if free {
           	vsp -= 0.25
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
			x = ai_target.x - 100*spr_dir
			y = ai_target.y 
			if free {
				y -= 20
				vsp = -8
			}
		}
		
		if ptimer > 5 && ptimer < 22 {
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-4,4)
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-3,3)
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

	    if ptimer > 38 - 6 && ptimer < 38 + 2{
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-2,2)
		}
		
	     if ptimer == 38 {
	     	sound_play(sound_get("vef3"),false,noone,1,1.05) 
	     	set_attack(AT_JAB)
			window = 4
			window_timer = 0
			if free {
           	vsp = -3
           }
	     }
	     
	     if ptimer > 50 - 6 && ptimer < 50 + 2{
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-2,2)
		}
		
	     if ptimer == 50 {
	     	set_attack(AT_FTILT)
			window = 1
			window_timer = 8
			sound_play(sound_get("vef3"))
			if free {
           	vsp = -3
           }
	     }
	     
	     if ptimer == 65{
	     	if has_hit_player{
	     	  spr_dir *= -1
	     	  sound_play(asset_get("sfx_roll"))
              spawn_hit_fx(x,y,vai)
	          
	     	  spr_dir = (ai_target.x < x?1:-1)	
	     	  attack_end()
			  set_attack(AT_DAIR)
			  window = 1
			  window_timer = 12
			  create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			  x = ai_target.x - 60*spr_dir
			  y = ai_target.y - 40
			  vsp = -6
	     	} else {
	     	  pattern = 0
	     	}
	     }
	     
	     if ptimer > 64 && ptimer < 75{
			vsp += clamp(floor((ai_target.y - 15 - y)/6),-1,1)
			y += clamp(floor((ai_target.y - 15 - y)/6),-6,6)
			hsp += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-5,5)
			x += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-9,9)
			ai_target.hsp = clamp(ai_target.hsp,-8,8)
			ai_target.vsp = clamp(ai_target.vsp,-10,10)
			ai_target.hsp /= 1.1
			ai_target.vsp /= 1.1
		}
		
	     if ptimer == 78{
	     	set_state(PS_IDLE)
	     	pattern = 3
	     	ptimer = 0
	     }
	     
	}
	if pattern == 2{
		sound_stop(sound_get("vef2"))
	}
	if pattern == 2 && !hitstop {
		if ptimer < 6{
			hsp += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-2,2)
			x += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-3,3)
		}
		if ptimer == 1 {
			has_hit_player = false
				sound_play(asset_get("sfx_roll"))
            spawn_hit_fx(x,y,vai)
	        
	     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 0
			window_timer = 0
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x = ai_target.x - 60*spr_dir
			y = room_height/2 - 140
	     }
	     
	     if free && ptimer > 2 && ptimer < 10 {
	     	ptimer = 2
	     }
	     if ptimer > 3{
	     if !has_hit_player{
	     if y + vsp > room_height - 100 or (!free) {
	     	pattern = 0
	     	if y + vsp > room_height/2 + 200 {
	     		set_state(PS_IDLE_AIR)
	     	}
	     }
	     } else {
	        if y + vsp > room_height/2 + 200 or (!free) {
	        	if y + vsp > room_height/2 + 200 {
	     	    	set_state(PS_IDLE_AIR)
	     	    	pattern = 0
	     	    }
	        	if !free && ptimer < 60{
	             	sound_play(asset_get("sfx_roll"))
                    spawn_hit_fx(x,y,vai)
	                  
	               spr_dir = (ai_target.x < x?1:-1)	
	             	attack_end()
		   	       set_attack(AT_FAIR)
		   	       window = 1
		   	       window_timer = 6
		   	       create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		   	       x = ai_target.x - 80*spr_dir
		   	       y = ai_target.y - 10
		   	       vsp = -6
		   	       ptimer = 60
	        	}
	        }	
	        if ptimer >= 60 && ptimer < 70{
		    	vsp += clamp(floor((ai_target.y - y)/6),-1,1)
		    	y += clamp(floor((ai_target.y - y)/6),-6,6)
		    	hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-5,5)
		    	x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-9,9)
		    	ai_target.hsp = clamp(ai_target.hsp,-8,8)
			    ai_target.vsp = clamp(ai_target.vsp,-10,10)
			    ai_target.hsp /= 1.1
		    	ai_target.vsp /= 1.1
		    }
		    if ptimer == 75 {
		    	spr_dir *= -1
	     	  sound_play(asset_get("sfx_roll"))
              spawn_hit_fx(x,y,vai)
	          
	     	  spr_dir = (ai_target.x < x?1:-1)	
	     	  attack_end()
			  set_attack(AT_DAIR)
			  window = 1
			  window_timer = 12
			  create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			  x = ai_target.x - 120*spr_dir
			  y = ai_target.y - 40
			  vsp = -6
		    }
		    if ptimer >= 75 && ptimer < 85{
		    	vsp += clamp(floor((ai_target.y - y)/6),-1,1)
		    	y += clamp(floor((ai_target.y - y)/6),-6,6)
		    	hsp += clamp(floor(ai_target.x - 50*spr_dir - x)/6,-5,5)
		    	x += clamp(floor(ai_target.x - 50*spr_dir - x)/6,-9,9)
		    	ai_target.hsp = clamp(ai_target.hsp,-8,8)
			    ai_target.vsp = clamp(ai_target.vsp,-10,10)
			    ai_target.hsp /= 1.1
		    	ai_target.vsp /= 1.1
		    }
		    if ptimer == 85{
		    	sound_play(asset_get("sfx_roll"))
              spawn_hit_fx(x,y,vai)
	          
	     	  spr_dir = (ai_target.x < x?1:-1)	
	     	  attack_end()
			  set_attack(AT_UAIR)
			  window = 1
			  window_timer = 0
			  create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			  x = ai_target.x - 80*spr_dir
			  y = ai_target.y + 120
		    }
		    if ptimer >= 85 && ptimer < 95{
		    	vsp += clamp(floor((ai_target.y+ 80 - y)/6),-1,1)
		    	y += clamp(floor((ai_target.y+ 80 - y)/6),-6,6)
		    	hsp += clamp(floor(ai_target.x - 50*spr_dir - x)/6,-5,5)
		    	x += clamp(floor(ai_target.x - 50*spr_dir - x)/6,-9,9)
		    	ai_target.hsp = clamp(ai_target.hsp,-8,8)
			    ai_target.vsp = clamp(ai_target.vsp,-10,10)
			    ai_target.hsp /= 1.1
		    	ai_target.vsp /= 1.1
		    }
		    if ptimer >= 95 {
		        attack_end()
	     	    set_state(PS_IDLE)
	     	    pattern = 3
	     	    ptimer = 0
		    }
		
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
			motivation += 30
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
             DTtime = 800
	}

	if pattern != 0{
		if !hitstop {
		ptimer += 1 
		}
	} else {
		ptimer = 0
	}
	
	if pattern != 0 {
		attackcd = 120
	} else {
		if !hitstop {
		attackcd -= 1
		}
		if downed == 0 && attackcd == 90 && !hitpause && triggered{
				spr_dir = (ai_target.x > x?1:-1)
				sound_play(sound_get("counterhit"),false,noone,0.5,2)
				create_hitbox(AT_FSPECIAL,1,round(x - 105*spr_dir - 20 + random_func(1,41,true)),round(y - 20 - random_func(2,61,true)))
		}
	}
	if ai_target.y < room_height/2 + 150 && ai_target.x > room_width/2 - 400 && ai_target.x < room_width/2 + 400{
	if get_gameplay_time() > 120 && attackcd <= 0 && pattern == 0 && state_cat != SC_HITSTUN && !invincible && state != PS_PRATFALL && state != PS_PRATLAND 
	 && !attack_down && (state != PS_AIR_DODGE )
     && (state != PS_ROLL_BACKWARD )
     && (state != PS_ROLL_FORWARD )
     && (state != PS_TECH_BACKWARD)
     && (state != PS_TECH_FORWARD )
     && (state != PS_TECH_GROUND){
     	
     if DTtime < 180 && DTtime > 0 && airraid == true{
        sound_play(asset_get("sfx_ori_energyhit_medium"))
        shake_camera(4,10)
        spawn_hit_fx(x,y,lighten)
        spawn_hit_fx(x,y - 46,306)
        spawn_hit_fx(x,y - 40,triggerfx)
        sound_play(sound_get("RI"))
        sound_play(sound_get("counterhit"))
        triggered = 1
        DTtime = 800
     	pattern = 5
     	attackcd = 100
     	airraid = false
    } else {
    	pattern = 1 + random_func(3,3,true)
		if oldpat != pattern{
			oldpat = pattern
		} else {
			pattern += 1
			if pattern = 4 pattern = 1
			oldpat = pattern
		}
		motivation -= 40
    }
	
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
           if 	y < ai_target.y {
           vsp /= 1.2
		   }
           if free {
           	vsp -= 0.25
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
			x = ai_target.x - 100*spr_dir
			y = ai_target.y 
			if free {
				y -= 20
				vsp = -8
			}
		}
		
		if ptimer > 5 && ptimer < 22 {
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-4,4)
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-3,3)
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
		
		if ptimer > 38 - 6 && ptimer < 38 + 2 {
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-2,2)
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
	     
	     if ptimer > 53 - 6 && ptimer < 53 + 2 {
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-2,2)
		}
		
	      if ptimer == 53 {
	      	spr_dir = (ai_target.x > x?1:-1)
	      	sound_play(asset_get("sfx_swipe_medium1"))
	     	set_attack(AT_NAIR)
			window = 1
			window_timer = 3
			hsp = 6*spr_dir
			if free {
           	vsp = -1
           }
	     }
	     
	     if ptimer > 63 - 6 && ptimer < 63 + 2 {
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-2,2)
		}
		
	     if ptimer == 63 {
	     	sound_play(sound_get("vef1"))   
	     	set_attack(AT_NAIR)
			window = 1
			window_timer = 2
			hsp = 3*spr_dir
			if free {
           	vsp = -1
           }
	     }
	     
	     if ptimer > 73 - 6 && ptimer < 73 + 2 {
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-2,2)
		}
		
	      if ptimer == 73 {
	     	set_attack(AT_NAIR)
			window = 1
			window_timer = 2
			hsp = 5*spr_dir
	     }
	     
	     if ptimer > 83 - 6 && ptimer < 83 + 2 {
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-2,2)
		}
		
		
	     if ptimer == 83 {
	     	set_attack(AT_NAIR)
			window = 1
			window_timer = 2
			hsp = 4*spr_dir
			if free {
           	vsp = -1
           }
	     }
	     
	     if ptimer > 90 && ptimer < 90 + 10 {
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp = 10*spr_dir
		 }
	     
	     if ptimer == 90 {
	     	spr_dir = (ai_target.x > x?1:-1)
	     	set_attack(AT_DATTACK)
			window = 1
			window_timer = 5
			if free {
           	vsp = -1
           }
	     }
	     
	      if ptimer == 130 {
	      	if !has_hit_player{
	           pattern = 0	
	      	} else {
	      		spr_dir = (ai_target.x > x?1:-1)	
	      		motivation += 30
			    set_attack(AT_EXTRA_1)
		        window = 1
		        window_timer = 0
		        create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
			    hsp = -6*spr_dir
			    shake_camera (4,6)
			    spawn_hit_fx(x,y,vai)
			    x -= 60*spr_dir
			    sound_play(asset_get("sfx_ice_on_player"),false,noone, 1, 1.2)
			    sound_play(sound_get("vJC1"),false,noone, 2)
	      	}
	      }
	      
	      if ptimer == 145{
	      	spr_dir = (ai_target.x > x?1:-1)	
	      	set_attack(AT_EXTRA_1)
		    window = 1
		    window_timer = 0
		    create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
	      } 
	      if ptimer == 160{
	      	spr_dir = (ai_target.x > x?1:-1)	
	      	set_attack(AT_EXTRA_1)
		    window = 1
		    window_timer = 0
		    create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
		    pattern = 0
	      } 
	}
	
	if pattern == 2{
		sound_stop(sound_get("vef2"))
	}
	
	if pattern == 2 && !hitstop {
		if ptimer < 6{
			hsp += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-2,2)
			x += clamp(floor(ai_target.x - 40*spr_dir - x)/6,-3,3)
		}
		if ptimer == 1 {
			dairloop = 1
			has_hit_player = false
				sound_play(asset_get("sfx_roll"))
            spawn_hit_fx(x,y,vai)
	        
	     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 0
			window_timer = 0
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x = ai_target.x - 60*spr_dir
			y = room_height/2 - 140
	     }
	     
	     if free && ptimer > 2 && ptimer < 10 {
	     	ptimer = 2
	     }
	     if ptimer > 3{
	     if !has_hit_player{
	     if y + vsp > room_height - 100 or (!free) {
	     	if dairloop > 0{
	     	  dairloop -= 1
	     	  	has_hit_player = false
				sound_play(asset_get("sfx_roll"))
                spawn_hit_fx(x,y,vai)
	            
	         	spr_dir = (ai_target.x > x?1:-1)		
		    	set_attack(AT_DAIR)
		    	window = 0
		    	window_timer = 0
		    	create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		    	x = ai_target.x - 60*spr_dir
		    	y = room_height/2 - 140
	     	} else {
	     		create_hitbox(AT_EXTRA_2,2, round (x), round (y - 20))
	     	  pattern = 0
	     	}
	     	if y + vsp > room_height/2 + 200 {
	     		set_state(PS_IDLE_AIR)
	     	}
	     }
	     } else {
	     	dairloop = 0
	        if y + vsp > room_height/2 + 200 or (!free) {
	        	if y + vsp > room_height/2 + 200 {
	     	    	set_state(PS_IDLE_AIR)
	     	    	pattern = 0
	     	    }
	        	if !free && ptimer < 60{
	             	sound_play(asset_get("sfx_roll"))
                    spawn_hit_fx(x,y,vai)
	                  
	               spr_dir = (ai_target.x < x?1:-1)	
	             	attack_end()
		   	       set_attack(AT_FAIR)
		   	       window = 1
		   	       window_timer = 6
		   	       create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		   	       x = ai_target.x - 80*spr_dir
		   	       y = ai_target.y - 10
		   	       vsp = -6
		   	       ptimer = 60
	        	}
	        }	
	        if ptimer >= 60 && ptimer < 70{
		    	vsp += clamp(floor((ai_target.y - y)/6),-1,1)
		    	y += clamp(floor((ai_target.y - y)/6),-6,6)
		    	hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-5,5)
		    	x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-9,9)
		    	ai_target.hsp = clamp(ai_target.hsp,-8,8)
			    ai_target.vsp = clamp(ai_target.vsp,-10,10)
			    ai_target.hsp /= 1.1
		    	ai_target.vsp /= 1.1
		    }
		    if ptimer == 75 {
		    	spr_dir *= -1
	     	  sound_play(asset_get("sfx_roll"))
              spawn_hit_fx(x,y,vai)
	          
	     	  spr_dir = (ai_target.x < x?1:-1)	
	     	  attack_end()
			  set_attack(AT_DAIR)
			  window = 1
			  window_timer = 12
			  create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			  x = ai_target.x - 120*spr_dir
			  y = ai_target.y - 40
			  vsp = -6
		    }
		    if ptimer >= 75 && ptimer < 85{
		    	vsp += clamp(floor((ai_target.y - y)/6),-1,1)
		    	y += clamp(floor((ai_target.y - y)/6),-6,6)
		    	hsp += clamp(floor(ai_target.x - 50*spr_dir - x)/6,-5,5)
		    	x += clamp(floor(ai_target.x - 50*spr_dir - x)/6,-9,9)
		    	ai_target.hsp = clamp(ai_target.hsp,-8,8)
			    ai_target.vsp = clamp(ai_target.vsp,-10,10)
			    ai_target.hsp /= 1.1
		    	ai_target.vsp /= 1.1
		    }
		    if ptimer == 79{
		    	spawn_hit_fx(x,y - 40,304)
		    	create_hitbox(AT_EXTRA_2,2, round (ai_target.x), round (ai_target.y - 40))
		    }
		    
		    if ptimer == 85{
		      sound_play(asset_get("sfx_roll"))
              spawn_hit_fx(x,y,vai)
	          
	     	  spr_dir = (ai_target.x < x?1:-1)	
	     	  attack_end()
			  set_attack(AT_UAIR)
			  window = 1
			  window_timer = 0
			  create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			  x = ai_target.x - 80*spr_dir
			  y = ai_target.y + 120
		    }
		    
		    if ptimer >= 85 && ptimer < 95{
		    	vsp += clamp(floor((ai_target.y+ 80 - y)/6),-1,1)
		    	y += clamp(floor((ai_target.y+ 80 - y)/6),-6,6)
		    	hsp += clamp(floor(ai_target.x - 50*spr_dir - x)/6,-5,5)
		    	x += clamp(floor(ai_target.x - 50*spr_dir - x)/6,-9,9)
		    	ai_target.hsp = clamp(ai_target.hsp,-8,8)
			    ai_target.vsp = clamp(ai_target.vsp,-10,10)
			    ai_target.hsp /= 1.1
		    	ai_target.vsp /= 1.1
		    }
		    if ptimer >= 95 {
		        attack_end()
	     	    set_state(PS_IDLE)
	     	    pattern = 3
	     	    ptimer = 0
		    }
		
	     }
	     }

	}
	
	if pattern == 3 && !hitstop {
		move_cooldown[AT_EXTRA_1] = 0
		if free {
			vsp -= 0.3
			hsp /= 1.05
		}
		spr_dir = (ai_target.x > x?1:-1)	
		
		if ptimer == 1 {
			motivation += 30
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
	
	
	if pattern == 5 && !hitstop {
		move_cooldown[AT_USPECIAL] = 0
		if ptimer < 316 {
		soft_armor = 999
		} else {
		soft_armor = 0
		}
		
		if ptimer == 1 {
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			sound_play(sound_get("vef5"),false,noone, 2)
			set_attack(AT_USPECIAL)
			has_hit_player = false
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
		
		
		if ptimer >= 75 && ptimer < 256 {
			vsp = (ai_target.y - y)/8
			fall_through = true
			hsp = 20*spr_dir
			
			if x + hsp < room_width/2 - 550 {
				spr_dir = 1
				y = room_height/2 - 120
				create_hitbox(AT_DSPECIAL,2,ai_target.x - 150, room_height/2 - 400) 
				create_hitbox(AT_DSPECIAL,2,ai_target.x + 150, room_height/2 - 400) 
			} 
			
			if x + hsp > room_width/2 + 550  {
				spr_dir = -1
				y = room_height/2 - 120
				create_hitbox(AT_DSPECIAL,2,ai_target.x - 150, room_height/2 - 400) 
				create_hitbox(AT_DSPECIAL,2,ai_target.x + 150, room_height/2 - 400) 
			}
			
			if ptimer == 95 or ptimer % 17 == 0 {
				motivation -= 3
				create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
				set_attack(AT_FSTRONG)
		    	window = 3
		    	window_timer = 0
			}
			
		}
		
		if ptimer == 256 or (has_hit_player && ptimer > 30){
			DTtime = 0
			set_attack(AT_FSTRONG)
			window = 3
			window_timer = 0
			pattern = 0
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
        spr_dir = (ai_target.x > x?1:-1)
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
             DTtime = 800
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
		if downed == 0 && attackcd == 90 && !hitpause && triggered{
				spr_dir = (ai_target.x > x?1:-1)
				sound_play(sound_get("counterhit"),false,noone,0.5,2)
				create_hitbox(AT_FSPECIAL,1,round(x - 105*spr_dir - 20 + random_func(1,41,true)),round(y - 20 - random_func(2,61,true)))
		}
	}
	
	if ai_target.y < room_height/2 + 150 && ai_target.x > room_width/2 - 400 && ai_target.x < room_width/2 + 400{
	if get_gameplay_time() > 120 && attackcd <= 0 && pattern == 0 && state_cat != SC_HITSTUN && !invincible && state != PS_PRATFALL && state != PS_PRATLAND 
	 && !attack_down && (state != PS_AIR_DODGE )
     && (state != PS_ROLL_BACKWARD )
     && (state != PS_ROLL_FORWARD )
     && (state != PS_TECH_BACKWARD)
     && (state != PS_TECH_FORWARD )
     && (state != PS_TECH_GROUND){
     	pattern = 1 + random_func(3,3,true)
		if oldpat != pattern{
			oldpat = pattern
		} else {
			pattern += 1
			if pattern = 4 pattern = 1
			oldpat = pattern
		}
		motivation -= 40
	}
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
			vsp = 10
			x = room_width/2 - 300 + random_func(1,600,true)
			if ptimer % 5 == 0 {
				sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			}
		}
		
		if ptimer == 30 && !free {
			visible = true
			sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
		        x = ai_target.x 
				visible = true 
				spawn_hit_fx(x,y,vai)
				spawn_hit_fx(x,y - 40,304)
				set_attack(AT_DSTRONG)
				window = 1
				window_timer = 10
				sound_play(sound_get("Dstrong1"))
                sound_play(asset_get("sfx_bird_downspecial"))
		}
		if ptimer > 30 && ptimer < 60{
			x += clamp(floor(ai_target.x - 30*spr_dir - x)/10,-12,12)
		}
		if ptimer >= 60{
			pattern = 0
			attackcd = 120
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
             DTtime = 800
		}
		
		
		if ptimer > 60 && ptimer < 330 {
					x = room_width/2
					y = room_height/2 - 300
			visible = false
			invincible = true
	        invince_time = 5
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
		}
		
		if ptimer > 330 && ptimer < 360{
			x += clamp(floor(ai_target.x - 30*spr_dir - x)/10,-12,12)
		}
		if ptimer >= 360{
			pattern = 0
			attackcd = 120
		}
		
	}
	
	if pattern == 1 && !hitstop{
		
		if ptimer == 1 {
			set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 20);
			sound_play(asset_get("sfx_roll"))
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			spr_dir = (ai_target.x < x?1:-1)	
			set_attack(AT_TAUNT)
			window = 4 
			window_timer = 1
			spawn_hit_fx(x,y,vai)
			x = ai_target.x - 120*spr_dir
			y = ai_target.y 
		}
		
		if ptimer == 10{
			sound_play(sound_get("firstkill"),false,noone,2)
			attack_end()
			spr_dir = (ai_target.x > x?1:-1)	
			set_attack(AT_DATTACK)
			window = 1
			window_timer = 0
		}
		
		if ptimer < 30{
			hsp = (-4+(ptimer/2))*spr_dir
			invincible = true
			invince_time = 10
		}
		
		if ptimer >= 30 && ptimer < 160 {
			if ptimer == 30{
				visible = false 
				spawn_hit_fx(x,y,vai)
                shake_camera(4,10)
                spawn_hit_fx(x,y,lighten)
                spawn_hit_fx(x,y - 46,306)
                spawn_hit_fx(x,y - 40,triggerfx)
                sound_play(sound_get("counterhit"))
			}
			if ptimer % 10 == 5 && ptimer < 140 && ptimer >= 50{
				if ai_target.state_cat != SC_HITSTUN{
				create_hitbox(AT_EXTRA_1, 3 , ai_target.x, ai_target.y - 40)
				spawn_hit_fx(ai_target.x , ai_target.y - 40, slashc)
				sound_play(asset_get("sfx_bird_sidespecial_start"))
				} else {
				create_hitbox(AT_EXTRA_1, 3 , ai_target.x - 50 + random_func(1,101,true), ai_target.y - 40 - 50 + random_func(2,101,true))
				spawn_hit_fx(ai_target.x - 50 + random_func(1,101,true), ai_target.y - 40 - 50 + random_func(2,101,true), slashc)	
				}
			}
			
			if ptimer >= 30 && ptimer < 150{
			x = ai_target.x - ai_target.hsp
			y = min(room_height/2 + 300,ai_target.y - 10 - ai_target.vsp)
			vsp = 0
			hsp = 0
			set_state(PS_IDLE_AIR)
			}
		}
		
		if ptimer < 250{
			if DTtime < -590{
				DTtime = -590
			}
			invincible = true
			invince_time = 10
		}
		
		if ptimer > 150 && ptimer < 160 + 12{
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-2,2)
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-2,2)
		}
		
		if ptimer == 150{
			visible = true
			spr_dir = (ai_target.x > x?1:-1)
	     	set_attack(AT_FTILT)
			window = 1
			window_timer = 0
			sound_play(sound_get("vef3"))
			if free {
              vsp = -3
	     	}
		}
		
		if ptimer > 150 && ptimer < 160{
			window_timer = 1
		}
		
		if ptimer == 180{
			set_attack(AT_DATTACK)
			window = 1
			window_timer = 0
		}
		if ptimer >= 190 && ptimer < 250{
			if ptimer == 190{
				ptimer += 30
				visible = false 
				sound_play(sound_get("vef3"))
				spawn_hit_fx(x,y,vai)
                shake_camera(4,10)
                spawn_hit_fx(x,y,lighten)
                spawn_hit_fx(x,y - 46,306)
                spawn_hit_fx(x,y - 40,triggerfx)
                sound_play(sound_get("counterhit"))
			}
			
			if ptimer % 6 == 0  && ptimer > 180{
				if ai_target.state_cat != SC_HITSTUN{
				create_hitbox(AT_EXTRA_1, 3 , ai_target.x, ai_target.y - 40)
				spawn_hit_fx(ai_target.x , ai_target.y - 40, slashc)
				sound_play(asset_get("sfx_bird_sidespecial_start"))
				} else {
				create_hitbox(AT_EXTRA_1, 3 , ai_target.x - 50 + random_func(1,101,true), ai_target.y - 40 - 50 + random_func(2,101,true))
				spawn_hit_fx(ai_target.x - 50 + random_func(1,101,true), ai_target.y - 40 - 50 + random_func(2,101,true), slashc)	
				}
				sound_play(asset_get("sfx_bird_sidespecial_start"))
			}
			
			if ptimer < 250{
			x = ai_target.x - ai_target.hsp
			y = min(room_height/2 + 300,ai_target.y - 10 - ai_target.vsp)
			vsp = 0
			hsp = 0
			set_state(PS_IDLE_AIR)
			}
		} 
		
		if ptimer > 250 - 6 && (ptimer < 250 + 22 or ai_target.state_cat == SC_HITSTUN){
			if ai_target.state_cat == SC_HITSTUN{
			vsp += clamp(floor((ai_target.y - y)/6),-1,1)
			y += clamp(floor((ai_target.y - y)/6),-8,8)
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-8,8)
			} else {
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-8,8)
			}
			if free {
				vsp -= 0.2
			}
		}
		
		if ptimer == 250{
			visible = true
			spr_dir = (ai_target.x > x?1:-1)
			set_attack(AT_DATTACK)
			window = 1
			window_timer = 0
			hsp = 12*spr_dir
			if free {
              vsp = -3
	     	}
		}
		
		if ptimer >= 280{
			pattern = 0
			attackcd = 120
		}
	}
	
	if pattern == 2 && !hitstop {
		if ptimer < 20{
        	if ptimer <= 7{
        		room_speed = 50
        	}else if ptimer <= 14{
        		room_speed = 45
        	} else {
			    room_speed = 50
        	}
		}
		if ptimer == 20{
			room_speed = 60
		}
          move_cooldown[AT_FAIR] = 0
          attack_end()
        if ptimer < 500{
         	invincible = true
			invince_time = 10
        }
		if ptimer == 1 {
			sound_play(asset_get("sfx_roll"))
			if ai_target.x < room_width/2{
				spr_dir = -1
			} else{
				spr_dir = 1
			}
			spawn_hit_fx(x,y,vai)
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x = room_width/2 - 240*spr_dir
			hsp = -16*spr_dir
			set_attack(AT_FAIR)
			window = 1
			window_timer = 2
			sound_play(sound_get("taunt6"),false,noone, 2)
	     }
	     if ptimer == 5{
	     	create_hitbox(AT_DSPECIAL,2,ai_target.x , room_height/2 - 400) 
        	create_hitbox(AT_DSPECIAL,2,ai_target.x + 200*spr_dir , room_height/2 - 400)
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
			if ptimer < 20{
			hsp =(ptimer/2-8)*spr_dir
			} else {
			hsp = 15*spr_dir	
			}
			if ptimer < 30 {
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
	    if attack == AT_DAIR{
			hsp += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-2,2)
			x += clamp(floor(ai_target.x - 60*spr_dir - x)/6,-1,1)
		}
	    
        if ptimer = 45 {
        	ptimer += 49
        	create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        	 spawn_hit_fx(x,y - 46,304)
             sound_play(sound_get("counterhit"))
        	spawn_hit_fx(x,y,vai)
        	shake_camera(4,6)
        }
        
        if ptimer = 100 {
        	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 1
			window_timer = 0
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 120
        }
        
        if ptimer > 100 && ptimer <= 300 && !free {
        	ptimer = 300
        	    	sound_play(asset_get("sfx_roll"))
        	    		create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        		     	spr_dir = (ai_target.x > x?1:-1)		
			set_attack(AT_DAIR)
			window = 1
			window_timer = 0
			spawn_hit_fx(x,y + 5,vai)
			sound_play(asset_get("sfx_ori_energyhit_medium"))
			spawn_hit_fx(x,y + 10, 303)
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 120
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        }
        
        if ptimer > 300 && ptimer <= 400 && !free {
        	ptimer = 400
        	sound_play(asset_get("sfx_roll"))
        		create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
	        
	     	spr_dir = (ai_target.x > x?1:-1)	
	     	spawn_hit_fx(x,y + 5,vai)
			sound_play(asset_get("sfx_ori_energyhit_medium"))
			spawn_hit_fx(x,y + 10, 303)
			set_attack(AT_DAIR)
			window = 1
			window_timer = 0
			x = ai_target.x - 80*spr_dir
			y = room_height/2 - 120
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        }

        if (ptimer > 400 && !free && ptimer < 500 ) or y > room_width/2 + 150 {
        	ptimer = 500
        	spr_dir = (ai_target.x > x?1:-1)
        	create_hitbox(AT_DSPECIAL,2,ai_target.x , room_height/2 - 400) 
        	create_hitbox(AT_DSPECIAL,2,ai_target.x + 200*spr_dir , room_height/2 - 400) 
        	sound_play(sound_get("Drive1"))
        	spawn_hit_fx(x,y + 5,vai)
			sound_play(asset_get("sfx_ori_energyhit_medium"))
			spawn_hit_fx(x,y + 10, 303)
        	spawn_hit_fx(x,y,vai)
        	sound_play(asset_get("sfx_roll"))
        	create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
        	set_attack(AT_EXTRA_3)
        	window = 1
        	window_timer = 0
        }
        if ptimer == 560{
        	spr_dir = (ai_target.x > x?1:-1)
        }
        if ptimer == 600{
        	pattern = 0
        	attackcd = 120
        }
        
	}
	
	if pattern == 3 && !hitstop {
        if ptimer < 20{
        	if ptimer <= 7{
        		room_speed = 50
        	}else if ptimer <= 14{
        		room_speed = 45
        	} else {
			    room_speed = 50
        	}
		}
		if ptimer == 20{
			room_speed = 60
		}
		if ptimer <= 210 {
		   invincible = true
		   invince_time = 10
		}
		if ptimer == 1 {
			sound_play(asset_get("sfx_roll"))
			spr_dir = (ai_target.x < x?1:-1)
			spawn_hit_fx(x,y,vai)
			create_hitbox(AT_EXTRA_1,9,floor(x),floor(y))
			x = ai_target.x - 200*spr_dir
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
		
	
			
		if ptimer > 60 && ptimer % 30 == 0 && ptimer < 190{
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
		
		if ptimer == 190 {
			spawn_hit_fx(x,y,vai)
			sound_play(sound_get("RI"))
             sound_play(sound_get("counterhit"))
				create_hitbox(AT_DSPECIAL,2,ai_target.x - 100 , room_height/2 - 400) 
				create_hitbox(AT_DSPECIAL,2,ai_target.x + 100 , room_height/2 - 400) 
				visible = false
				vsp = 600
		}
		
		if ptimer == 210 && !free {
			visible = true
			x = ai_target.x - 30*spr_dir
			set_attack(AT_DSTRONG)
			window = 1
			window_timer = 0
		}
		
		if ptimer >= 210 && ptimer < 240{
			x += clamp(floor(ai_target.x - 30*spr_dir - x)/10,-12,12)
		}
		if ptimer >= 300{
			attackcd = 120
			pattern = 0
		}
		
		

	}
	
}	