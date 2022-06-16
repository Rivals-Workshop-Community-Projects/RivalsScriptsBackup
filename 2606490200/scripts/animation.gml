///

if atrain < 100 && state == PS_DOUBLE_JUMP && state_timer < 25{ 
    
    sprite_index = sprite_get("jump")
    
}

/* codes archived, Auto parry in neutral state
if left_pressed and right_pressed and attack_pressed and special_pressed  {
	if up_down {
	Omega = 4 	
	}
	if down_down {
	Omega = 0 	
	}
}

if (state == PS_DASH
   	or state == PS_IDLE
   	or state == PS_CROUCH
   	or state == PS_WALK
   	or state == PS_WALK_TURN
   	or state == PS_DASH_STOP
   	or state == PS_DASH_TURN
   	or state == PS_WAVELAND) && Omega = 4  {
   		
	invincible = true 
	invince_time = 1
	
		nearbyhitbox = collision_circle( x, y - 30, 30, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone{
		if nearbyhitbox.player_id != self && nearbyhitbox.hit_priority > 0  {
				 set_state(PS_PARRY)
				 window_timer = 3
                  invince_time = 0
                  with nearbyhitbox {
                  	 hitbox_timer = 0
                  }
     	}
	}
	
} else {
	
}

*/

if htrain >= 100 && (state == PS_DASH_START or state == PS_DASH) {
    sprite_index = sprite_get("dash2")
    image_index = state_timer/3
}

if state == PS_CROUCH {

    if croutime % 9 == 0 {
    sprite_index = sprite_get("crouch2")
    }
    if croutime % 9 == 6 {
    sprite_index = sprite_get("crouch3")
    }
    if croutime % 9 == 3 {
    sprite_index = sprite_get("crouch4")
    }
}

if state == PS_LAND or state == PS_LANDING_LAG {

    if croutime % 5 == 3 {
    sprite_index = sprite_get("crouch3")
    }
    if croutime % 5 == 0 {
    sprite_index = sprite_get("crouch4")
    }
}

if state == PS_PRATFALL && move_cooldown[AT_USPECIAL] > 0 {
    sprite_index = sprite_get("hurt")
}



with oPlayer {
	if player != other.player {
		other.actor2 = self
		other.actingstart ++
	}
}


if get_gameplay_time() > 140 && actingstart > 10 && (!hitpause or actor2.hitpause = false) {
	acting ++
}

if acting == 1 {
	x = room_width/2 - 210
	spr_dir = 1
	actor2.x = room_width/2 + 210
	actor2.spr_dir = -1
}

with actor2 {
		acting = other.acting {
			
		}
		
}
	
///walk toward each other
if acting > 1 && acting < 160 {
	sprite_index = sprite_get("walk")
    image_index = acting/8
    hsp = 1*spr_dir 
    with actor2 {
    sprite_index = sprite_get("walk")
    image_index = other.acting/6
    hsp = 1*spr_dir 	
    }
}

//THINK RONALD THINK
if acting >= 220 && acting < 295 {
	
	sprite_index = sprite_get("crouch3")
    if acting == 221 {
    x = 523
	actor2.x = 629	
	actor2.spr_dir = -1
    set_state(PS_CROUCH)
    state_timer = 0
    }
    if acting > 225 {
    sprite_index = sprite_get("crouch3")
    image_index = 2
    }
    
    if acting > 295 {
    sprite_index = sprite_get("crouch3")
    image_index = 2
    }
}

///Ronald got irritated 
if acting >= 295 && acting < 355 {

	if acting < 300 {
    sprite_index = sprite_get("crouch3")
    image_index = 3
    }
    
	actor2.soft_armor = 999
	soft_armor = 999
	if acting == 295 {
		 x = 523
	     actor2.x = 629
	     actor2.spr_dir = -1
		with actor2 {
			set_attack(AT_DTILT)
			window = 1
			window_timer = 0
		}
	}
	
	if acting == 395 {
			set_attack(AT_JAB)
			window = 1
			window_timer = 0
	}
	
	if acting == 315 {
		with actor2 {
			set_attack(AT_FTILT)
			window = 1
			window_timer = 0
		}
	}
	
	if acting == 330 {
		with actor2 {
			set_attack(AT_FSTRONG)
			window = 1
			window_timer = 0
		}
	}
	
	if acting > 340 {
		with actor2 {
			if other.acting < 350 {
			x -= 6*spr_dir
			} else {
			x -= 2*spr_dir	
			}
		}
	}
	
	if acting == 350 {
		with actor2 {
			hitpause = true
			hitstop = 40
			old_hsp = 0
			old_vsp = 0
		}
	}
}


//Gigachad vineboom and Ronald Laser-
if acting >= 350 && acting < 440 {
	sprite_index = sprite_get("crouch4")
    if acting == 351 {
    x = 523
    actor2.x = 682
	actor2.spr_dir = -1
    set_state(PS_CROUCH)
    state_timer = 0
    }
    if acting > 354 {
    sprite_index = sprite_get("crouch4")
    image_index = 2
    }
    
    if acting > 385 {
    sprite_index = sprite_get("crouch4")
    image_index = 2
    }
    
    if acting > 436 {
    	y -= 4
    }
    
    if hitpause acting ++
    
    if acting == 365 {
    	acting ++
    	shake_camera(6,6)
    	hitpause = true 
    	hitstop = 100
    	with actor2 {
    		set_attack(AT_EXTRA_1)
    		window = 1
    		window_timer = 1
		    sound_stop(sound_get("supercombo"));
		    sound_play(sound_get("supercombo"));
		    sound_stop(sound_get("superlazer"));
		    sound_play(sound_get("superlazer"));
		}
    }
    
}

///Gigachad dodge
if acting >= 446 && acting < 480 {

	hitpause = false
	soft_armor = 999
	if acting == 446 {
		sound_play(asset_get("sfx_spin"))
		spawn_hit_fx(x,y-30,306)
		y -= 160
		x -= 100
	x = 523
    actor2.x = 682
    actor2.spr_dir = -1
	}
	if acting < 470 {
		y -= 6
		x -= 9
	} else {
		y -= 1
		x -= 2
	}
}

///Gigachad charge
if acting >= 480 && acting < 600{
	print(x)
	print(actor2.x)
	hitpause = false 
	hitstop = 0
	soft_armor = 999
	if acting == 480 {
		vsp = 20
		with actor2 {
			set_attack(AT_NSPECIAL)
			window = 9
			window_timer = 0
		}
	}
	if acting == 496 {
	set_attack(AT_DSPECIAL)
	window = 1
	window_timer = 0
	vsp = 20
	super_armor = true 
	}
	
	if acting > 480 && acting % 18 == 0 && acting < 570 {
		with actor2 {
			set_attack(AT_NSPECIAL)
			window = 5
			window_timer = 0
		}
	}
	
	if acting == 576 {
		set_attack(AT_FTILT)
		window = 0
		window_timer = 1
		with actor2 {
			hsp = -20
			vsp = -4
			sound_play(sound_get("jump"));
				sound_play(sound_get("shing"))
			spawn_hit_fx(x,y-40,302)
		}
	}

}

///Ronald jumpy

if acting >= 600 && acting < 720{
	if acting == 600 {
		x = 847
		spr_dir = -1
		actor2.x = 549
		actor2.spr_dir = 1
	}
	
	if acting == 605 {
		hsp = -10
	}
	with actor2 {
		if acting == 605 {
			sound_play(sound_get("shing"))
			spawn_hit_fx(x,y-40,302)
		}
		if acting > 605 && acting < 622 {
			sprite_index = sprite_get("dash")
			image_index = acting/2
			x += 20
		}
		if acting == 622 {
			other.state = PS_WALK_TURN
			other.state_timer = 1
			other.spr_dir *= -1
			sound_play(sound_get("shing"))
			spawn_hit_fx(x,y-40,302)
		}
		
		if acting > 622 && acting < 635 {
			vsp = 0
			sprite_index = sprite_get("nspecial")
			image_index = 19
			x -= 16
			y -= 10
		}
		
		if acting == 635 {
			other.state = PS_WALK_TURN
			other.state_timer = 1
			other.spr_dir *= -1
			sound_play(sound_get("shing"))
			spawn_hit_fx(x,y-40,302)
		}
		
		if acting > 635 && acting < 655 {
			vsp = 0
			sprite_index = sprite_get("taunt")
			image_index = 1
			x += 18
			y += 4
		}
		
		if acting == 655 {
			other.state = PS_WALK_TURN
			other.state_timer = 1
			other.spr_dir *= -1
			spr_dir *= -1
			sound_play(sound_get("shing"))
			spawn_hit_fx(x,y-40,302)
		}
		
		if acting > 655 && acting < 675 {
			vsp = 0
			sprite_index = sprite_get("dash")
			image_index = acting%2
			x -= 20
			y += 4
		}
		
		if acting == 675 {
			spr_dir *= -1
			set_attack(AT_FSTRONG)
			window = 1
			window_timer = 0
			with other {
				set_state(PS_PARRY)
				state_timer = 1 
			}
		}
		
		if acting == 716 {
		   set_state(PS_ROLL_BACKWARD)
		   state_timer = 1
	   }
	   
	   	if acting > 716 {
		   x -= 20
	   }
	   
		
	}
	
	if acting == 685 {
		set_attack(AT_FSTRONG)
		window = 1
		window_timer = 0
		spr_dir *= -1
	}
	
	
}

/// burgertrade 
if acting >= 720 && acting < 1000{
	if acting == 720 {
		x = 740
		spr_dir = -1
		actor2.x = 604
		actor2.spr_dir = 1
	}
	
	if acting == 740 {
		with actor2 {
			set_attack(AT_NSPECIAL)
			window = 0
			window_timer = 0
			hsp = -16
		}
	} 
	
	if acting > 750 && acting < 770{
	with oPlayer {
        nearbyhitbox = collision_circle( x, y - 30, 100, asset_get("pHitBox"), true, true ) 
	    if nearbyhitbox != noone{
	    	if state != PS_PARRY {
	    			 set_state(PS_PARRY)
	    			 window_timer = 3
	    			 invincible = false 
                      parry_invince_time = 0
                      with nearbyhitbox {
                      	 hitbox_timer = 0
                      }
         	}
	    }
	   }
	}	
	
	if acting == 778 {
		hitpause = false 
		set_attack(AT_FTILT)
		window = 1
		window_timer = 0
	}
	
	if acting == 796 {
		hsp = 9
		vsp = -4
		with actor2 {
		set_attack(AT_FTILT)
		window = 1
		window_timer = 0
		}
	}
	
	if acting == 812 {
		hitpause = false 
		set_attack(AT_DTILT)
		window = 1
		window_timer = 0
	}
	
	if acting == 818 {
		with actor2 {
		hsp = -4
		vsp = -6
		}
	}
	
	if acting == 830 {
		set_attack(AT_TAUNT)
		window = 1
		window_timer = 0
		with actor2 {
    	set_attack(AT_DAIR)
		window = 1 
		window_timer = 0
		}
	}
	
	if acting == 854 {
		set_attack(AT_JAB)
		window = 1
		window_timer = 0
		with actor2 {
		set_attack(AT_NSPECIAL)
			window = 0
			window_timer = 0
		}
	}
    
    if acting == 870 {
    	with actor2 {
		set_attack(AT_JAB)
		window = 1
		window_timer = 0
		}
    }
	if acting == 875 {
		set_attack(AT_JAB)
		window = 1
		window_timer = 0
	}
	
	if acting == 890 {
    	with actor2 {
		set_attack(AT_UTILT)
		window = 1
		window_timer = 0
		}
    }
    
	if acting == 880 {
		set_attack(AT_FTILT)
		window = 1
		window_timer = 0
	}
	
	if acting == 900 {
    	with actor2 {
    	move_cooldown[AT_DSTRONG_2] = 60
		set_attack(AT_DSTRONG)
		window = 1
		window_timer = 0
		}
		vsp = -6
		hsp = 4
		spr_dir = -1
    }
    
	if acting == 905 {
		set_attack(AT_NAIR)
		window = 1
		window_timer = 0
	}
	
	if acting == 915 {
    	with actor2 {
    	move_cooldown[AT_USTRONG_2] = 60
		set_attack(AT_USTRONG)
		window = 1
		window_timer = 0
		}
		vsp = -6
		hsp = 4
		spr_dir = -1
    }
    
    if acting == 915 {
    	vsp = -7
    	hsp = -4
		set_attack(AT_FAIR)
		window = 1
		window_timer = 0
	}
	
	if acting == 930 {
		with asset_get("pHitBox") {
			hsp /= 1.2
			grav /= 2
			hit_priority = 9 
			damage = 999
			kb_value = 1
			kb_scale = .2
			kb_angle = 140
			hitpause = 30
			sound_effect = asset_get("sfx_absa_kickhit")
			hit_flipper = 6
		}
	}

	
}

/// stare
	if acting >= 1060 && acting < 1300 {
		sprite_index = sprite_get("walkturn")
		if free {
			print(x)
			print(actor2.x)
			print(acting)
		}
		with actor2 {
			if !free { 
			sprite_index = sprite_get("crouch")
			image_index = 1
			}
		}
	}
 
/// Ronald cheese and gigachad air combo



if acting >= 1297 && acting < 2000 {
		if acting == 1297 {
		  x = 606
		  spr_dir = -1
		  btrain = 300
		  actor2.x = 546
		  actor2.y = y
		  actor2.spr_dir = 1
		}
	
	if acting = 1330 {
		sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1);
		set_state(PS_JUMPSQUAT)
		state_timer = 1
	}	
	if acting = 1335 {
		hsp = -10
		vsp = -9
	}
	
	if acting = 1364 {
	  set_attack(AT_NAIR)
	  window = 1
	  window_timer = 0
	}
	
	if acting = 1374 {
	  set_state(PS_WAVELAND)
	  state_timer = 0
	  hsp = 12
	}

	if acting = 1380 {
	  set_state(PS_PARRY)
	  state_timer = 1 
	  hsp = 12
	}

	if acting = 1390 {
	  set_state(PS_WAVELAND)
	  state_timer = 0
	  hsp = 12
	}
	
	if acting = 1400 {
	  set_attack(AT_JAB)
	  window = 1
	  window_timer = 0
	  hsp = 16
	}
	
	if acting = 1410 {
	  set_state(PS_WAVELAND)
	  state_timer = 0
	  hsp = 12
	}


	if acting = 1420 {
	  set_attack(AT_JAB)
	  window = 1
	  window_timer = 0
	  hsp = 10
	}
	
	
	if acting = 1445 {
		set_attack(AT_UTILT)
		window = 1
		window_timer = 0
		spr_dir = 1
	}
	
	if acting = 1455 {
		 vsp = -18
	}
	
	if acting = 1475 {
	  vsp = -12
	  spr_dir = 1
	}
	
	if acting = 1477 {
		hsp = 9
	}
	
	if acting = 1494 {
		set_attack(AT_BAIR)
		window = 1
		window_timer = 0
	}
	
	if acting = 1505 {
		spr_dir = -1
		set_attack(AT_FSPECIAL)
		window = 1
		window_timer = 0
		vsp = -9
	}
	
	
	if acting = 1507 {
		hsp = -24
		acting += 20
	}
	
	if acting > 1457 && acting < 1490 {
		actor2.hsp = 0
		actor2.vsp = 0
	  
	  if acting == 1458 {
	  	actor2.y = 90
		actor2.x = 926
	  }
	}
	
	if acting > 1477 && acting < 1520 && !hitpause {
		y += 2
		actor2.y += 2
	}
	
	if acting = 1550 {
		with actor2 {
			take_damage(player, -1, -5)
		}
		     set_attack(AT_EXTRA_1)
             window = 7
             window_timer = 1
	}
	
	if acting = 1568 {
		actor2.vsp = 30
		actor2.hsp = 0
	}
	
	if acting = 1586 {
		attack_end();
		atrain = 100
		hsp = -6
		set_attack(AT_BAIR)
		window = 1
		window_timer = 0
	}
	
	if acting = 1600 {
		attack_end();
		spr_dir = 1
		set_attack(AT_FSPECIAL)
		window = 1
		window_timer = 0
		vsp = -7
	}
	if acting = 1602 {
		attack_end();
	    hsp = 24	
	}
	
    if acting = 1622 {
    	spr_dir *= -1
             	sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1)
             set_attack(AT_EXTRA_1)
             window = 6
             window_timer = 1
    }
    
     if acting = 1648 {
    	set_state(PS_DOUBLE_JUMP)
    	state_timer = 0
    	vsp = -10
    	hsp = -9
    }
    
	
	if acting = 1668 {
    	set_attack(AT_NAIR)
		window = 1
		window_timer = 0
		vsp = -2
		hsp /= 2
    }
    
    if acting = 1678 {
    	set_attack(AT_NAIR)
		window = 1
		window_timer = 0
		hsp /= 2
    }
    
    if acting = 1688 {
    	set_attack(AT_NAIR)
		window = 1
		window_timer = 0
		hsp /= 2
    }
    
    if acting = 1698 {
    	spr_dir *= -1
    	set_attack(AT_FAIR)
		window = 1
		window_timer = 0
		hsp = 6
		vsp = -5
    }
    
    if acting = 1718 {
    	ltrain = 100
    	set_attack(AT_NSPECIAL)
		window = 1
		window_timer = 0
		hsp = 8
		vsp = -8
    }
    
    if acting = 1738 {
    	attack_end();
        set_attack(AT_EXTRA_1)
        window = 4
        window_timer = 1
    }
    
    if acting = 1770 {
       vsp = 20	
       hsp = -4
    }
    
    if acting = 1780 {
    	attack_end();
        set_attack(AT_FSPECIAL)
		window = 1
		window_timer = 0
		vsp = 21
    }
    
    if acting = 1781 {
     	attack_end();
       hsp = 12	
    }
    
    
    if acting == 1806 {
    	hsp = 6
    	attack_end()
    	spr_dir *= -1
        sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1)
        set_attack(AT_EXTRA_1)
        window = 6
        window_timer = 1
    }
    
    if acting == 1834 {
    	set_state(PS_DOUBLE_JUMP)
    	state_timer = 0
    	vsp = -6
    	hsp = -9
    }
    
    if acting == 1844 {
    	htrain = 100
    	attack_end();
        set_attack(AT_FSPECIAL)
		window = 1
		window_timer = 0
		vsp = -12
		
    }
    
     if acting == 1846 {
    	attack_end();
        hsp = -22
        vsp = -12
    }
    
    if acting == 1870 {
    	with actor2 {
    		take_damage(player, -1, -26)
    	}
    	attack_end()
    	spr_dir *= -1
        sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1)
        set_attack(AT_EXTRA_1)
        window = 6
        window_timer = 1
    }
    
    if acting == 1896 {
    	attack_end()
    	spr_dir *= -1
        sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,1,1)
        set_attack(AT_USPECIAL)
        window = 1
        window_timer = 1
        state_timer = 5
        spawn_hit_fx(x,y - 50, 306)
    }
    
    
    if acting == 1910 {
    	shake_camera(4,4)
    	attack_end()
    	 spawn_hit_fx(x,y - 50, 302)  
        sound_play(asset_get("sfx_holy_lightning"),false,noone,1,1)
        x += 400
        y += 40
        spawn_hit_fx(x,y - 50, 306)        
    }
    
    if acting == 1920 {
    	attack_end()
    	vsp = -6
        set_attack(AT_DAIR)
        window = 1
        window_timer = 0
    }
    
    if acting == 1940 {
    	spr_dir = 1
    	attack_end()
    	hsp = 7
    	vsp = 22
        set_attack(AT_DAIR)
        window = 1
        window_timer = 0
    }
    
    if acting == 1951 {
    	vsp = -20
    	hsp = -12
    }
    
    	
	with actor2 {
		if acting == 1297 {
			y -= 2
			vsp = -6
			hsp = -20
			sound_play(sound_get("shing"),false,noone,.8,1.2);
		}
		if acting == 1300 {
			hsp = -12
		}
		
		if acting == 1320 {
			set_attack(AT_DTILT)
			window = 1
			window_timer = 0
			hsp = -10
		}
		
		if acting == 1350 {
			set_attack(AT_DTILT)
			window = 1
			window_timer = 0
			hsp = 24
		}
		
		if acting == 1330 {
			set_attack(AT_DTILT)
			window = 1
			window_timer = 0
			hsp = 24
		}
	
		if acting == 1340 {
			set_attack(AT_DTILT)
			window = 1
			window_timer = 0
			hsp = 24
		}
	
		if acting == 1360 {
			set_attack(AT_DTILT)
			window = 1
			window_timer = 0
			hsp = 24
		}
		
		if acting == 1370 {
			set_attack(AT_DTILT)
			window = 1
			window_timer = 0
			hsp = 24
		}
		
		if acting == 1380 {
			vsp = -20
			sound_play(asset_get("sfx_spin"),false,noone,1,1);
			hsp = 2
			spr_dir = -1
		}
		
	}
	
	
}

///Gigachad taunt
if acting >= 2000 && acting < 2300 {
	 if !free { 
			sprite_index = sprite_get("crouch3")
			image_index = 1
	} 
}


//Drop down for phase 3 

if acting == 2300 {
   y += 10

}
