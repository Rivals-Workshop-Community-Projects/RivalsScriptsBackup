

//

if timeflow < 100 {
	move_cooldown[AT_FSPECIAL] = 5
}
if projecting == true {

	
	
	if !is_attacking or attack == AT_NSPECIAL create_hitbox(AT_USPECIAL,9,floor(x + hsp ),floor(y + vsp - 30))
	
	
	draw_indicator = false 
	
	has_airdodge = false 
	 move_cooldown[AT_NSPECIAL_2] = 2
    move_cooldown[AT_USPECIAL] = 2
    move_cooldown[AT_DSPECIAL] = 2
    move_cooldown[AT_FSPECIAL] = 2
    move_cooldown[AT_JAB] = 2
    move_cooldown[AT_FTILT] = 2
    move_cooldown[AT_FSTRONG] = 2
    move_cooldown[AT_FAIR] = 2
    move_cooldown[AT_DTILT] = 2
    move_cooldown[AT_DSTRONG] = 2
    move_cooldown[AT_DAIR] = 2
    move_cooldown[AT_UTILT] = 2
    move_cooldown[AT_USTRONG] = 2
    move_cooldown[AT_UAIR] = 2
    move_cooldown[AT_NAIR] = 2
    move_cooldown[AT_BAIR] = 2
    move_cooldown[AT_DATTACK] = 2
	soft_armor = 999
	
	has_walljump = true 
	
	if (x+hsp > room_width or x+hsp < 0 or y + vsp > room_height or y + vsp < 0) or move_cooldown[AT_FSPECIAL_2] = 1 or (!is_attacking && shield_pressed) {
		with asset_get("pHitBox") {
			if player_id = other && attack {
		    if attack == AT_USPECIAL y += 20
			destroyed = true 
			}
		}
		sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.6)
     	sound_play(asset_get("sfx_waveland_abs"),false,noone,1,1)
     	sound_play(asset_get("sfx_clairen_hit_strong"),false,noone,1,1)
     	shake_camera(4,4)
     	projecting = false 
     	x = projectx 
     	y = projecty 
     	vsp = -5
     	hsp = 0
     	old_vsp = -5
     	old_hsp = 0
     	set_state(PS_PRATFALL)
	}
}

if "col" not in self {
	col = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 0),
	                      get_color_profile_slot_g( get_player_color(player), 0),
	                      get_color_profile_slot_b( get_player_color(player), 0))
}
if state == PS_WALL_JUMP {
	timeflow += 2
	
    if state_timer == 1 move_cooldown[AT_UTHROW] = 15
}
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
    is_attacking = true 
} else {
    is_attacking = false
    RCside = spr_dir
    if state != PS_PARRY pausing = false
}

if esave > 1 {
	
	if esave > 3 or !hitpause {
	esave -= 1
	}
	move_cooldown[AT_DSPECIAL] = 2
	
	if saveid.state == PS_DEAD or saveid.state == PS_RESPAWN {
	esave = 0
    }  
    
    if esave % 5 == 0 {
		create_hitbox(AT_USPECIAL,2, saveid.x, saveid.y - 36)
	}
    
}

if esave == 2 {
	
	with saveid {
			eld_x = other.esavex
			eld_y = other.esavey
	}
		
		
	shake_camera (2,4)
	sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,1)
    sound_play(asset_get("sfx_waveland_abs"),false,noone,1,1)
	vfx = spawn_hit_fx (saveid.x, saveid.y - 36, 302)
	vfx.pause = 6
	saveid.x = esavex
	saveid.y = esavey
	esave = 0
	saveid.pausedtime = 0
}

if state == PS_AIR_DODGE {
	if state_timer == 1 or state_timer == 5 or state_timer == 10{
		spawn_hit_fx(x,y,air)
	}
}

if state == PS_WAVELAND {
	if state_timer == 1{
		spawn_hit_fx(x,y,dash)
	}
}


//pause handle
if attack != AT_USPECIAL {
	
with oPlayer {
	if "pausedtime" in self {
		if pausedtime > 0 {
			
		if state_cat == SC_HITSTUN && !hitpause && hit_player_obj = other && get_gameplay_time()%3 == 0 {
			beingpaused = false 
			eld_hsp = hsp
			eld_vsp = vsp
			eld_x = x
			eld_y = y
		}
		
		if hit_player_obj != other or state_cat != SC_HITSTUN or pausedtime = 20 {
			beingpaused = false 
			if hit_player_obj == other {
			eld_x = x
			eld_y = y
			eld_hsp = hsp
			eld_vsp = vsp
			}
			pausedtime --
		}
     
        	
        if state_cat == SC_HITSTUN && hit_player_obj = other && get_gameplay_time()%3 != 0 && free && !hitpause{
        			state_timer -= 1
        			x = eld_x - left_down*2 + right_down*2 
        			y = eld_y
        			hsp = eld_hsp
        			vsp = eld_vsp
        			old_hsp = eld_hsp
        			old_vsp = eld_vsp
        			beingpaused = true 
        			pausedtime --
        }
        
        
		}
        
       }

}

}

//

if state == PS_PARRY  {
    
    if (window_timer == 5 && window == 1) && timeflow > 10 && special_down  {
     	if !hitpause {
     		if timeflow > 30 {
     		ps = spawn_hit_fx(x,y,pause)
     		ps.depth = -6
     		sound_play(asset_get("sfx_spin"),false,noone,.65,0.8)
     		sound_play(asset_get("mfx_back"),false,noone,1,2)
     		old_vsp = vsp 
     	    old_hsp = hsp 
     	    hitpause = true 
     	    hitstop = 2
     		}
     	} else {
     		can_fast_fall = false
     	if abs(old_vsp) > 6 old_vsp/= 1.1
     	if abs(old_hsp) > 6 old_hsp/= 1.1
     	hitpause = true  
     	hitstop = 2
     	vsp = old_vsp 
     	hsp = old_hsp
     	pausing = true
     	timeflow -= 3
     	}
     }
     
     if pausing == true && !hitpause {
     	move_cooldown[AT_EXTRA_2] = 30
     	pl = spawn_hit_fx(x,y,play)
     	pl.depth = -6	
     	pl.spr_dir = 1
     	sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.6)
     	sound_play(asset_get("sfx_waveland_abs"),false,noone,1,1)
     	pausing = false
     }
    
}

with oPlayer {
    if "crippled" in self  {
        if crippled == 1 && !hitpause && free {
          vsp = 12  
          hsp = -6*spr_dir
        }
        if crippled == 1 && !hitpause && !free {
            sound_play(asset_get("sfx_orca_crunch"),false,noone,1,.6)
            hsp = 2*spr_dir
        set_state (PS_LAND)
        state_timer = -40
        crippled = 42
        }
        if crippled > 2 {
        	crippled --
        	if state == PS_JUMPSQUAT {
        		set_state (PS_LAND)
                state_timer = -40
        	}
        	if free && crippled < 20 {
        		crippled = false 
        	}
        }
    }
}

if move_cooldown[AT_EXTRA_2] <= 0 {
if !free && (state == PS_CROUCH or state == PS_IDLE or state == PS_WALK or state == PS_WALK_TURN) {
	timeflow += .5
	if get_gameplay_time() % 10 == 0 {
	move_cooldown[AT_UTHROW] = 8
	}
} else if !is_attacking {
	//timeflow += 0.1
}
}


timeflow = clamp(timeflow,0,200)
