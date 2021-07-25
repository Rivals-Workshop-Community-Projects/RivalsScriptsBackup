//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

#region blink
//if blinking, ends current attack early
 if (blink_state_timer == blink_start_frame) {
     
     window = get_attack_value( attack, AG_NUM_WINDOWS)
     window_timer = get_window_value( attack, window, AG_WINDOW_LENGTH )
 }


 
 
 
#endregion



#region funny rainbow color




if (get_player_color( player ) == 26) {

lalalala = get_num_hitboxes(attack)

for (var i = 1; i <= lalalala; i += 1) {

set_hitbox_value(attack, i, HG_HIT_PARTICLE_NUM, 2)
}

}



#endregion





#region jab

if (attack == AT_JAB) {
	if (window == 1) {
		set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
transition_to_jab_two = false
transition_to_jab_one = false
}


if (window == 3 && attack_pressed) {
	transition_to_jab_two = true
	
}
if (joy_pad_idle && (transition_to_jab_two && window == 3) && ((has_hit_player && window_timer > 6) || (!has_hit_player && window_timer > 11))) {
	
			set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
window = 4
window_timer = 0
	
}



if ((window == 3 || window == 6) && window_timer == 8 && has_hit_player) {
	
	iasa_script()
} 



}

#endregion



	
#region dair

if (attack == AT_DAIR) {
	  if (window == 2 && window_timer == 1 && !hitpause) {
        
             //   sound_play(asset_get("sfx_spin"))

    }
    
	
if (vsp < -2)	{
	
	set_num_hitboxes(AT_DAIR,5);
set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 0) //aerial only

	
} else {
	
		set_num_hitboxes(AT_DAIR,9);

	set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 2) //aerial only

	
}
	
	
}




#endregion
	
	
	
	

























#region dattack

if (attack == AT_DATTACK) {
	
	
	        if ((window == 2 || (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) && !hitpause) {

hsp = 7*spr_dir

	        } else if (window == 3 && window_timer == 1) {
	        	
	        hsp = 3*spr_dir	
	        }
	
}



#endregion


if (window == 1 && window_timer == 1) {
    
    has_cancelled = false
}



#region dspec

if (attack == AT_DSPECIAL) {
    
        can_fast_fall = false

    if (window == 1 && window_timer == 1) {
        
        wavebounced_downspec = false
    }
    
    if (!wavebounced_downspec) {
    
    if (window == 1 && hsp > 0 && (left_pressed || left_down)) {
        
        hsp = -hsp
        wavebounced_downspec = true
    } else if (window == 1 && hsp < 0 && (right_pressed || right_down)) {
        
        hsp = -hsp
        wavebounced_downspec = true
    }
    }
    
    
    can_move = true
    
    
    if (dspecial_not_used_yet_in_air) {
        
        set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

    } else { set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 0); }
    
    
    
    
if (window == 1 && window_timer == 1 &&!free) {
    
    vsp = -3.3
    hsp = clamp(hsp, -5, 5)
    dspecial_started_from_ground = true
    
} else if (window == 1 && window_timer == 1 && dspecial_not_used_yet_in_air) {
    
    vsp =  clamp(vsp, -2.5, 1.5)
    
    dspecial_started_from_ground = false
}






if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && free && !dspecial_started_from_ground) {
    
    dspecial_not_used_yet_in_air = false
}



if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !free && !was_parried){
//state=PS_LANDING_LAG;

state_timer=0;
landing_lag_time=5;
//attack_end()
}
}

#endregion









#region dstrong

if (attack == AT_DSTRONG) {
    
    
    if (window == 2 && window_timer == 2) {
        
        sound_play(asset_get("sfx_clairen_poke_med"))
    }
}
#endregion

#region fspecial

if (attack == AT_FSPECIAL) {
	
	
	if (window == 1 && window_timer == 1) {
		
		        sound_play(asset_get("sfx_ori_charged_flame_hit"))

		
	}
	
	
	//FSPECIAL STUPID FUCKING AIR FRICTION THING I DONT KNOW WHY I DID THIS
	if (window == 15 || window == 13) {
		
		fspec_air_friction = 0.15 - (window_timer + 1)/(25) * 0.15
	//	set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_AIR_FRICTION, fspec_air_friction);
		set_window_value(AT_FSPECIAL, 15, AG_WINDOW_CUSTOM_AIR_FRICTION, fspec_air_friction);

		fspec_gravity = 0.1 + (window_timer + 1)/(25) * 0.5
	//	set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_GRAVITY, fspec_gravity);
		set_window_value(AT_FSPECIAL, 15, AG_WINDOW_CUSTOM_GRAVITY, fspec_gravity);

	}
	
		//FSPECIAL LEDGE CASE

if (window != 1 && window != 13 && window != 15) {
	
	
	
	                if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
	                	for (var i = 1; i < 40; i++){
                        if (!place_meeting(x + hsp, y- i ,asset_get("par_block"))) {
	                	
	                	
	                	                            y -= i;
break;
                        }
	                }
} 
	
	
	
	
}



	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
		
		window = 14
		window_timer = 0
		
	}
	
	
	if (window == 14 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !has_hit_player) {
		window = 15
		window_timer = 0
		
		
		
	} 
	
	if (window == 14 && has_hit_player && !hitpause) {
		
		window = 2
		window_timer = 0
		
		
				//FSPECIAL funny reverse rune

		if has_rune("B") {

		if (spr_dir == 1 && (left_pressed || left_down)) || (spr_dir == -1 && (right_pressed || right_down)) {
			
			spr_dir *= -1
		}
		}
		
		
		
		
		
	}
	
	if (((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || window == 14)) && !hitpause) {
		hsp = 27*spr_dir
		vsp = 0
	}
	if (window == 15 && window_timer == 1) {
		
		hsp = 3*spr_dir
	}
	
	if (!has_hit && free) {
		
		set_window_value(AT_FSPECIAL, 15, AG_WINDOW_TYPE, 7);

		
		
	} 	else 	set_window_value(AT_FSPECIAL, 15, AG_WINDOW_TYPE, 0);

    
    
    if ((window == 13 || window == 15) && window_timer > 10) {
        
                can_wall_jump = true

    }
    can_fast_fall = false
   // 	move_cooldown[AT_FSPECIAL] = 99999


if (window == 1 && window_timer == 10) {
	
//	 sound_play(asset_get("sfx_bird_downspecial"))
    
	 
}
    
    if !hitpause {
        
        //movement
        
        if (window > 1 && window < 12) {
        	
        	
        	
        	
    
        	
        	
        	hsp = 5*spr_dir 
        	vsp = 0
        	
        } else if (window == 12 && window_timer == 1) {
        	
        	hsp = 0
        	
        }
        
        
     }
    
      if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window >=  2 && window < 12)) {
            
            draw_indicator = false
        } 
        
}
if (attack == AT_FSPECIAL && has_hit_player && window < 12 && !hitpause && !hit_player_obj.clone) { //hi delta
if (!hit_player_obj.activated_kill_effect) {
if (hit_player_obj.state == PS_HITSTUN ) {
	var lerpam
	lerpam = [0.15, 0.15]
	
	if "hit_player_obj" in self {
if instance_exists(hit_player_obj) {
	
	
	blah_variable_omg = clamp(x+65*spr_dir, 32, room_width - 32)
	hit_player_obj.x = lerp(floor(hit_player_obj.x), blah_variable_omg, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, lerpam[1])

} } }
} } 



#endregion







#region jab
if(attack == AT_JAB && was_parried){
    was_parried = false;
}
#endregion




#region utilt
if (attack == AT_UTILT) {

if (has_hit && window == 5 && window_timer > 6) {
    
    iasa_script() }
    
    if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2) {
        
        hud_offset = 65
    }
    if ((window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))  || window == 4 ) {
        
        hud_offset = 100
    }
    if (has_hit) {
        set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 100);
        set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -97);


        
    } else {         set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 85);  
                set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -90);

        
    }
    
}
#endregion
#region uair
if (attack == AT_UAIR) {
    
    if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && window_timer < 7)) {
        
        hud_offset = 70
    }
    
}


#endregion

#region ustrong
if (attack == AT_USTRONG) {

    
    if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3) {
        
        hud_offset = 70
    }
    if ((window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))  || window == 4 || (window == 5 && window_timer < 8)) {
        
        hud_offset = 90
    }
    
      
    if (window == 3 && window_timer == 1 && !hitpause) {
        
        sound_play(asset_get("sfx_clairen_spin"))
                sound_play(asset_get("sfx_spin"))

    }
    
    
}
#endregion

#region nair
if (attack == AT_NAIR) {
	

    if (window < 4) {
        
        nair_spike = false
                set_attack_value(AT_NAIR, AG_CATEGORY, 1);

    }
    
    
    if (window > 4) {
        
        set_attack_value(AT_NAIR, AG_CATEGORY, 2);

    }
    
    if (window < 3 && attack_pressed) {
        nair_spike = true
        
        
    }
    if (window == 2 && window_timer > 6 && attack_down) {
        
        nair_spike = true
    }
    
    if (nair_spike == true && window == 2 && (window_timer == 6 || window_timer == 15)) {
        
        window = 4
        window_timer = 0
    }
    if ((window == 4 || window == 5) && window_timer == 5) {
        window += 1
        window_timer = 0
        
    }
    if (!free && (window == 5 || window == 6) && !hitpause) { //landing creation
    
            sound_play(asset_get("sfx_clairen_tip_strong"))
          //  sound_play(asset_get("sfx_clairen_swing_strong"))


        destroy_hitboxes()
        window = 7
        window_timer = 0
        
        
    }
    if (window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        
        window = 8
        window_timer = 0
    }
    
    if (window == 6) {
        can_wall_jump = true
        
        if (window_timer > 18) {
            can_shield = true
            can_special = true
           //can_jump = true
        }
        
    }
    
}
#endregion
#region uspec



if (attack == AT_USPECIAL) {
    can_fast_fall = false
   // can_move = false
    
    if (window == 1 && window_timer == 6) {
    	
    	sound_play(asset_get("sfx_bird_sidespecial_start"))
    }
    
    
    if  ((window == 2 || window == 3 || (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) && !hitpause) {
        
        vsp = -18
        hsp = 13*spr_dir
        
    }
    if (window == 4) {
        if (vsp < -1 ) {
        vsp = clamp(vsp, vsp + 2, -1) }
        
        if (window_timer == 1) {
      
            hsp = clamp(hsp, -1,  1)
       } else {hsp = clamp(hsp, -3,  3) }
     

    }
    
    if (window == 4) {
        
        can_wall_jump = true
    }
    
}



#endregion





















