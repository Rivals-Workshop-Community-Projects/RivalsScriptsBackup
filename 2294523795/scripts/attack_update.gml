///

if !hitpause {
if attack == AT_BAIR {
    if window == 1 && window_timer == 1 {
        spr_dir *= -1
    }
}  

if attack == AT_DTILT {
         if window == 2 && window_timer == 1 {
         sound_play(asset_get("sfx_ice_on_player"))
       sound_play(asset_get("sfx_clairen_spin")) 
    }

}

if attack == AT_FAIR && window == 1 {
	set_attack_value(AT_FAIR, AG_CATEGORY, 1);
}

if attack == AT_DAIR {
    
    if (y > room_height/2 + 300) && window == 2{
    	can_shield = true
    }
    
    if down_down {
        fall_through = true
    }
    if has_hit && window <= 3 {
        vsp = -4
        hsp = 3 * spr_dir
        window = 4
        window_timer = 0
    }
    
    if window == 4 && has_hit_player && window_timer <= 7 {
        can_fast_fall = false
        hit_player_obj.hsp = (x - (window_timer*6*spr_dir) - hit_player_obj.x )/4
        hit_player_obj.vsp = ( y -  hit_player_obj.y - (window_timer*4))/4
        if window_timer == 7 {
            vsp = -6
            hsp /= 2
        }
    }
    
    if window == 4 && has_hit_player && djumped = 0 && djumps > 0 {
        djumps = 0
        djumped = 1
    }

}

if attack == AT_DSTRONG  {
    if window == 1 && window_timer == 1 {
       sound_play(asset_get("sfx_clairen_swing_med")) 
    }
    
     if window == 2 && window_timer == 1 {
         sound_play(asset_get("sfx_ice_on_player"))
       sound_play(asset_get("sfx_clairen_spin")) 
    }
    
    if window == 3 && window_timer < 16 {
        hsp = 4*spr_dir
        if window_timer % 8 == 0 {
            sound_play(asset_get("sfx_ice_on_player"))
            create_hitbox (AT_DSTRONG, 1, x, y)
        }
        if window_timer % 8 == 4{
            sound_play(asset_get("sfx_ice_on_player"))
            create_hitbox (AT_DSTRONG, 2, x, y)
        }
        
    }
    
}


if attack == AT_NSPECIAL {
                move_cooldown[AT_NSPECIAL] = 30
    if state_timer == 1 && scharge >= 180 {
        spawn_hit_fx (x,y-30,302)
		shake_camera (5,10)
		sound_play(sound_get("RI"))
    }
    
    if move_cooldown[AT_EXTRA_2] < 60 {
        move_cooldown[AT_EXTRA_2] += 5
    }
    
    if window == 2 && state_timer > 16 {
        scharge += 3
        specialing = 1
    }
    if window == 2 && state_timer > 16 && (!special_down or scharge >= 180) {
        if scharge < 60 {
            create_hitbox (AT_NSPECIAL,1, x + 40*spr_dir, y - 32)
        }
        if scharge >= 60 && scharge < 120 {
            create_hitbox (AT_NSPECIAL,2, x + 40*spr_dir, y - 32)
            spawn_hit_fx (x + 40*spr_dir, y - 32, 303)
        }
         if scharge >= 120 && scharge < 180 {
            create_hitbox (AT_NSPECIAL,3, x + 50*spr_dir, y - 32)
            spawn_hit_fx (x + 40*spr_dir, y - 32, 302)
            spawn_hit_fx (x + 40*spr_dir, y - 32, 303)
        }
         if scharge >= 180 {
            create_hitbox (AT_NSPECIAL,4, x + 50*spr_dir, y - 32)
            spawn_hit_fx (x + 40*spr_dir, y - 32, 305)
            spawn_hit_fx (x + 40*spr_dir, y - 32, 303)
        }
        window = 3
        window_timer = 0
        sound_play( asset_get("sfx_ori_energyhit_medium"));
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20 + floor(scharge/8));
    }
    

    
    if window = 3 {
         if scharge >= 120 {
          shake_camera (4,10)   
         }
        hsp/= 1.1
        vsp /= 1.1
       if window_timer == 1 {
           hsp = (floor(scharge/14)*-1 - 4) * spr_dir
           if free {
           vsp = (floor(scharge/14)*-1)
           } else {
               vsp = 0
           }
           
           scharge = 0
       }
    }  

}

if attack == AT_FSPECIAL {
  
      if state_timer == 1 && scharge >= 180 {
        spawn_hit_fx (x,y-30,302)
		shake_camera (5,10)
		sound_play(sound_get("RI"))
    }
    
    if move_cooldown[AT_EXTRA_2] < 60 {
        move_cooldown[AT_EXTRA_2] += 5
    }
    
    fall_through = true
            
    if window == 1 && window_timer == 1 {
        set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
        if free {
            vsp = -10
            hsp = -16*spr_dir
        } else {
            hsp = -20*spr_dir
        }
    }
    
    if window == 2 && state_timer > 12{
        scharge += 2
        specialing = 1
  
    }
    
    if has_hit && !free {
    	sound_play(asset_get("sfx_forsburn_reappear"))
    	set_attack_value(AT_FAIR, AG_CATEGORY, 2);
    	set_attack(AT_FAIR)
    	window = 3
    	window_timer = 8
    	hsp /= 3
    	vsp = -8
    	
    }
    
    
    if window == 1 {
        hsp /= 1.2
    }
    
    
    if window == 2 && state_timer < 110 && free {
        hsp /= 1.2
        vsp = 0 - 3 + state_timer/10
    }
    
    if window == 2 && state_timer > 12 && (!special_down or scharge >= 180) {
        if scharge < 60 {
           set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 10);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
        }
        if scharge >= 60 && scharge < 120 { 
            set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 26);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
        }
         if scharge >= 120 && scharge < 180 {
             set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);          
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 20);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);          
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
        }
        
         if scharge >= 180 {
        if state_timer > 13 { 	
        spawn_hit_fx (x,y-30,302)
		shake_camera (5,10)
		sound_play(sound_get("RI"))
		
        }
		
             set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.9);                
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 20);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 25);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.9);                
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

         }
        if scharge >= 180 {
           
        }
        
        set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
        window = 3
        window_timer = 0
        sound_play( asset_get("sfx_clairen_swing_mega_instant"));
        sound_play( asset_get("sfx_bird_nspecial"));
    }
    
    if window == 3 && window_timer == 4 && free {
            window = 6
            window_timer = 0
    }
    
    if window == 4 {
        vsp = 0
        hsp /= 1.04
        if free {
        	hsp /= 1.04
        if hsp > 8 {
        	hsp = 8
        }
        if hsp < -8 {
        	hsp = -8
        }
        }
    }
    
    if window == 5 {
    	hsp /= 1.1
    }
    
    if window > 2 {
        scharge = 0
    }
    
     if window == 6 {
    if (y > room_height/2 + 200){
    	can_shield = true
    }
    
        if free {
            if window_timer == 12 {
                window_timer = 0
            }
            create_hitbox(AT_FSPECIAL, 2, x , y)
            
            if (place_meeting(x+hsp, y, asset_get("par_block"))) {
                 set_attack (AT_NAIR)
                 window = 2
                 window_timer = 10
                 vsp = -7
                 hsp = -3*spr_dir
                 move_cooldown [AT_FSPECIAL] = 999
                  spawn_hit_fx (x+10*spr_dir, y - 20, 305)
                  sound_play(asset_get("sfx_holy_lightning")); 
                  sound_play(asset_get("sfx_clairen_hit_strong"))	
                  shake_camera (3,6)
             }
        }
        
        if !free {
            sound_play( asset_get("sfx_blow_medium3"));
            window = 7
            window_timer = 0
        }
    }
    
    if window == 7 {
     hsp /= 1.1   
     if free set_state(PS_IDLE_AIR);
    }
    
}


if attack == AT_DSPECIAL {
    
    if state_timer == 1 && scharge >= 180 {
        spawn_hit_fx (x,y-30,302)
		shake_camera (5,10)
		sound_play(sound_get("RI"))
    }
    
    specialing = 1
    
    
    if move_cooldown[AT_EXTRA_2] < 60 {
        move_cooldown[AT_EXTRA_2] += 5
    }
    
     if window == 2 && state_timer > 4 {
        scharge += 1.5
    }
    
    if window == 2 && state_timer > 4 && (!special_down or scharge >= 180) {
        if scharge < 60 {
            set_num_hitboxes(AT_DSPECIAL, 2);
            set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 20);
        }
        if scharge >= 60 && scharge < 120 {
            set_num_hitboxes(AT_DSPECIAL, 2);
            set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 60);
        }
         if scharge >= 120 && scharge < 180 {
            set_num_hitboxes(AT_DSPECIAL, 4);
            set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 60);
        }
         if scharge >= 180 {
        if state_timer > 5 {	
        spawn_hit_fx (x,y-30,302)
		shake_camera (5,10)
		sound_play(sound_get("RI"))
         }
		
             set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 60);
            set_num_hitboxes(AT_DSPECIAL, 5);
        }
        window = 3
        window_timer = 0
        scharge = 0
    }
    

         if window == 3 && window_timer == 10{
          shake_camera (4,10)   
         }
}

if attack == AT_USPECIAL {
    
    can_fast_fall = false
    
    
    if move_cooldown[AT_EXTRA_2] < 60 {
        move_cooldown[AT_EXTRA_2] += 5
    }
    
    if window == 3 or window == 7 {
        can_wall_jump = true
    }
    
    if window == 1 {
    	move_cooldown [AT_USPECIAL] = 999
        if window_timer == 1 {
            sound_play( asset_get("sfx_ori_bash_projectile"));
        }
        vsp /= 1.1
        hsp /= 1.1
        if vsp > 0 {
            vsp = 0
        }
    }
    
     if window == 2 {
        if window_timer == 1 {
            y -= 30
        }
    }
    
    if window == 3  {
        if has_hit && window_timer == 15 {
            set_state (PS_IDLE_AIR)
        }
        if !has_hit && window_timer == floor(15*1.5) {
            set_state (PS_IDLE_AIR)
        }
    }
    
    if window == 1 && window_timer > 10 && special_down {
            window_timer = 0
            window = 4
            sound_play( asset_get("sfx_clairen_dspecial_counter_active"));
            hsp = 0
        
    }
    
     if window == 5 && state_timer > 0 {
             specialing = 1
        scharge += 3
        hsp /= 1.1
        vsp += 0.1
	    
    }
    
    
    if window == 5 && state_timer > 0 && (!special_down or scharge >= 180) {
        if scharge < 60 {
            set_num_hitboxes(AT_USPECIAL, 2);
            vsp = -16
        }
        if scharge >= 60 && scharge < 120 {
            set_num_hitboxes(AT_USPECIAL, 3);
            vsp = -16
        }
         if scharge >= 120 && scharge < 180 {
             set_num_hitboxes(AT_USPECIAL, 4);
             set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 6);
             set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8); 
            vsp = -20
        }
        if scharge >= 180 {
            set_num_hitboxes(AT_USPECIAL, 4);
            set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
            set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8); 
            vsp = -20 
        spawn_hit_fx (x,y-30,302)
		shake_camera (5,10)
		sound_play(sound_get("RI"))
		
        }
        sound_play( asset_get("sfx_bird_nspecial"));
        sound_play( asset_get("sfx_ori_grenade_launch"));
        window = 6
        window_timer = 0
        scharge = 0
    }
    
    if window == 6 {
        can_fast_fall = false
        vsp /= 1.06
    }
    
}

}


if attack ==  AT_NAIR{
	if has_hit_player && hitpause && window_timer < 5 {
		window_timer += 1
				hit_player_obj.x += ((x + (40 * spr_dir)) - hit_player_obj.x) / 4
				hit_player_obj.y += ((y + (10)) - hit_player_obj.y) / 4
	}
}

if attack ==  AT_USTRONG{
	if has_hit_player && hitpause && window_timer < 4 && hit_player_obj.state_cat == SC_HITSTUN {
				hit_player_obj.y += ((y - (20)) - hit_player_obj.y) / 4
	}
}
