///

if !instance_exists(hit_player_obj) {
	hit_player_obj = self
}

if visible && free && !attacking && state_cat != SC_HITSTUN && state != PS_AIR_DODGE && move_cooldown[AT_TAUNT] == 0 && taunt_down {
	    		set_attack(AT_TAUNT)
	    		window = 1
	    		window_timer = 0
}

if get_gameplay_time() < 60 {
draw_indicator = false	
}

if get_gameplay_time() > 60 &&  get_gameplay_time() < 120 && get_gameplay_time() %2 == 0 {
draw_indicator = false	
}


    	
    	
    	
    	if state == PS_JUMPSQUAT && strong_down {
    		set_attack (AT_NSPECIAL)
	    	window = 4

	    	window_timer = 0
	    	iaijump = 1
	    	spawn_hit_fx(x,y-40,305)
	    	sound_play(asset_get("sfx_ice_on_player"))
    	}
 
	if move_cooldown[AT_DSTRONG] > 0 && vsp < 0 {
		vsp = 0
	}
	
if !instance_exists(AClone) {
	cloneout = 0
} else {
	cloneout = 1
}


if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
	fspechit2 = 0	
}

if cloneout = 0 {
clonex = x
cloney = y
clonedir = spr_dir
}

if !free or state_cat == SC_HITSTUN {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_FSPECIAL] = 0
	move_cooldown[AT_TAUNT] = 0

}


if (state == PS_WALL_JUMP){
move_cooldown[AT_USPECIAL] = 0
move_cooldown[AT_FSPECIAL] = 0

}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if state == PS_PARRY {

if state_timer < 10 && state_timer > 2 {
window_timer -= 0.5	
} 

}


if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_ori_bash_use"));
}
	 
	 if state_timer == 9 {
	 
	 }
	 
	 if state_timer < 9{
	     hsp = -0.5 * spr_dir
	 }
	 
	 if state_timer >= 9 and state_timer < 12 {
	     hsp = -30 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 12 {
	     draw_indicator = false
	 }
	  
	 if state_timer > 12 {
	     hsp = 0
	     draw_indicator = true
	 }
	 
}

if state == PS_AIR_DODGE {
	
	if state_timer < 1{ 
	oldx = x
	oldy = y
	}
	
	if state_timer == 9 {
	    	sound_play(asset_get("sfx_waveland_abs"));    
	}
	
	 if state_timer < 9 and state_timer > 1{
	     x = oldx
	 }
	 
	  if state_timer < 9  and state_timer > 1{
	     y = oldy
	 }
	 
	  if state_timer >= 8 and state_timer < 16 {
	     draw_indicator = false
	 }
	 
	 if state_timer > 16 {
	     draw_indicator = true
	 }
	
}

if state == PS_WAVELAND {
 if hsp > 11 {
 	hsp = 11
 }	
 if hsp < -11 {
 	hsp = -11
 }
}
if state == PS_JUMPSQUAT or state == PS_LANDING_LAG
or state == PS_WAVELAND {
	
	hurtboxID.sprite_index = sprite_get("crouch_box")
} 

if state == PS_IDLE_AIR or state == PS_IDLE or state == PS_FIRST_JUMP or state == PS_DASH_START or state == PS_WALK or state == PS_WALK_TURN{
	hurtboxID.sprite_index = sprite_get("stabd_box")

}



		with (pHitBox) {
		     if player_id == other.id {
		     	if sound_effect == asset_get("sfx_blow_medium2") or sound_effect == asset_get("sfx_blow_medium1") or 
                  sound_effect == asset_get("sfx_blow_medium3") or sound_effect == asset_get("sfx_blow_heavy2") 
                  or sound_effect == asset_get("sfx_blow_heavy1") {
                  	sword = false 
                  } else {
                  	sword = true
                  }
     
  		     		throws_rock = 3
  		     }
  	    }
  	    
  if smark == 2 {
  	with (pHitBox) {
  		if player_id == other.id && damage > 2 {
  		  if sword{	
  	         extra_hitpause = 15 + damage*2
  	         kb_scale = hitpause/14
  	         no_other_hit = 1
  		  } else {
  		  	kb_scale = hitpause/10
  		  	no_other_hit = 1
  		  }
  		}
  	}
  } else {
  	with (pHitBox) {
  		if player_id == other.id && damage > 2{
  		   if sword {
  	           extra_hitpause = 0
  	           kb_scale = hitpause/30 + hit_effect_y/4
  	           no_other_hit = 1
  		   } else {
  		   	   kb_scale = hitpause/20
  		   }
  		}
  	}
  }
  
  if smark >= 3 && !hitpause && (!attacking or (attacking && window == 1)) {
  	    smark = 0
  }

with (pHitBox) {
	if player_id == other.id {
		 if sword {
       fx_particles = 1
		 }
	}
}

if  move_cooldown[AT_EXTRA_1] > 0  {
alt = get_player_color(player);

Rline = get_color_profile_slot_r ( alt , 0 )
Gline = get_color_profile_slot_g ( alt , 0 )
Bline = get_color_profile_slot_b ( alt , 0 )

			outline_color = [move_cooldown[AT_EXTRA_1]/20 * Rline , 
			move_cooldown[AT_EXTRA_1]/20 * Gline, 
			move_cooldown[AT_EXTRA_1]/20 * Bline]


}
init_shader();