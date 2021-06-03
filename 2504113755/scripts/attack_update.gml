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
    
    vsp = -3.5
    hsp = clamp(hsp, -3, 3)
    dspecial_started_from_ground = true
    
} else if (window == 1 && window_timer == 1 && dspecial_not_used_yet_in_air) {
    
    vsp =  clamp(vsp, -1.5, 1.5)
    
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
    
    
    if (window == 3 && window_timer > 10) {
        
                can_wall_jump = true

    }
    can_fast_fall = false
    	move_cooldown[AT_FSPECIAL] = 99999

    
    if !hitpause {
        
        //movement
        if (window == 2 || (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
            if (window_timer >= 0 && window_timer < 3) {
                hsp = 7*spr_dir
                
            } else if (window_timer > 5 && window_timer < 12) {
                hsp = 7*spr_dir
                
            } else if (window_timer > 14 && window_timer < 21) {
                hsp = 7*spr_dir
                
            } else if (window_timer > 23 && window_timer < 30) {
                hsp = 7*spr_dir
                
            } else if (window_timer > 32 && window_timer < 39) {
                hsp = 7*spr_dir
                
            } else {hsp = 0}
            
            
            
        }
        
        
        
    if (window == 2 && ( window_timer == 14 ||  window_timer == 32)) {
        
                sound_play(asset_get("sfx_clairen_swing_med"))

        
        
    }
     if (window == 2 && (window_timer == 5  || window_timer == 23 )) {
        
                sound_play(asset_get("sfx_clairen_swing_weak"))

      
        
    }
    if (window == 2 && window_timer == 41) {
        
                sound_play(asset_get("sfx_clairen_swing_mega_instant"))

      
        
    } }
    
      if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2) {
            
            draw_indicator = false
        } 
        
}
if (attack == AT_FSPECIAL && has_hit_player && window == 2 && window_timer < 42 && !hitpause) { //hi delta
if (!hit_player_obj.activated_kill_effect) {
if (hit_player_obj.state == PS_HITSTUN) {
	var lerpam
	lerpam = [0.15, 0.15]
	
	if "hit_player_obj" in self {
if instance_exists(hit_player_obj) {
	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+65*spr_dir, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, lerpam[1])

} }
} } }



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
    
      
    if (window == 3 && window_timer == 1) {
        
        sound_play(asset_get("sfx_clairen_spin"))
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
    if (!free && (window == 5 || window == 6)) { //landing creation
    
            sound_play(asset_get("sfx_clairen_swing_strong"))

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
        
        if (window_timer > 12) {
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
    
    if  ((window == 2 || (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) && !hitpause) {
        
        vsp = -18
        hsp = 13*spr_dir
        
    }
    if (window == 3) {
        if (vsp < -1 ) {
        vsp = clamp(vsp, vsp + 2, -1) }
        
        if (window_timer == 1) {
      
            hsp = clamp(hsp, -1,  1)
       } else {hsp = clamp(hsp, -3,  3) }
     

    }
    
    if (window == 3) {
        
        can_wall_jump = true
    }
    
}



#endregion





















