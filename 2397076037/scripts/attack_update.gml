
if !has_hit_player or attack == AT_DATTACK{
exheld = 0
}

//B - Reversals	
if (attack == AT_NSPECIAL || attack == AT_USPECIAL ){
    trigger_b_reverse();
}

if attack == AT_DSPECIAL {
	
	if !hitpause {
		if window == 1 && window_timer == 1 {
				move_cooldown[AT_DTILT] = 6
				if triggered = 0 {
	            DT -= 2
				}
 		}
 		
 		if window == 3 && window_timer == 1 {
 				move_cooldown[AT_DTILT] = 6
 				if triggered = 0 {
              	DT -= 2
 				}
 		}
	}
if vsp > -1 {
vsp /= 2
}

hsp /= 1.5

can_move = false

	if window == 2 && !special_down {
		set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, state_timer*4 );
		window = 3 
		window_timer = 0
		sound_play(sound_get("vBR"))
	}
	
}

if attack == AT_FSPECIAL {
	
	if window == 2 && window_timer == 1 && !hitpause{
			move_cooldown[AT_DTILT] = 6
			if triggered = 0 {
         	DT -= 2
			}
	}
	
	if window == 1 && window_timer == 1 && !hitpause {
		 if !free && triggered == 0 {
          sound_play(sound_get("cnoise4"))
        }
        
         sound_play(sound_get("vef3"))
	}
	
}

if attack == AT_NSPECIAL {
    if triggered = 0 && window_timer == 1 {
    	DT -= 1
        djumps -= 1
        create_hitbox(AT_NSPECIAL,1,x,y)
        shake_camera(4,10)
        spawn_hit_fx(x,y,lighten)
        spawn_hit_fx(x,y - 40,306)
        sound_play(sound_get("vtaunt2"))
        sound_play(sound_get("RI"))
        sound_play(sound_get("counterhit"))
        triggered = 1
        window_timer = 2
    }
    
    if triggered = 1 && window_timer = 1{
        set_attack(AT_EXTRA_3)
        window_timer = 0 
        window = 1
        sound_play(sound_get("Drive1"))
    }
    
}

if  !hitpause {

if attack == AT_EXTRA_2 {
    weapon = 0
        hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE);
        
    if window == 1 && window_timer == 1 {
        if !free && triggered == 0 {
          sound_play(sound_get("cnoise4"))
        }
        sound_play(asset_get("sfx_bird_sidespecial_start"))
    }
    
    if (window == 2 or window == 3) && window_timer == 1 {
        spawn_hit_fx(x+30*spr_dir,y-20,302)
        sound_play(asset_get("sfx_bird_nspecial"))
        hsp = -4*spr_dir
        if free {
            vsp = -4
        }
    }
    
    
}

if attack == AT_EXTRA_3 {
 
 weapon = 1
 
 if free {
 	can_move = false
 	if vsp > 0 {
     vsp /= 1.4
 	}
     hsp /= 1.1
 }
 
    hurtboxID.sprite_index = get_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE);
        if window == 1 && window_timer == 1 {
         spawn_hit_fx(x-10*spr_dir,y-40,302)
        if !free  && triggered == 0 {
          sound_play(sound_get("cnoise4"))
        }
        sound_play(asset_get("sfx_bird_sidespecial_start"))
            hsp = -4*spr_dir
    }
    
    if (window == 2 or window == 3) && window_timer == 1 {
        shake_camera(4,2)
        spawn_hit_fx(x+10*spr_dir,y-10,303)
         sound_play(asset_get("sfx_bird_downspecial"))
    }
    
    
    if window == 3 && window_timer > 20 && special_down {
        window = 4
        window_timer = 1
         spawn_hit_fx(x-10*spr_dir,y-40,302)
        if !free  && triggered == 0 {
          sound_play(sound_get("cnoise4"))
        }
        sound_play(asset_get("sfx_bird_sidespecial_start"))
        sound_play(asset_get("sfx_clairen_swing_mega_instant"))    
       
            hsp = -2*spr_dir
    }
    
    if window == 4 {
        if window_timer < 33 {
        shake_camera(2,2)
        if window_timer % 3 == 0 {
        window_timer += 1
        }
        }

        if window_timer == 33 {
                 hsp = -6*spr_dir    
        spawn_hit_fx(x+10*spr_dir,y-10,303)
         sound_play(sound_get("counterhit"))
          create_hitbox(AT_EXTRA_3, 3, x + 20*spr_dir , y - 40 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 20*spr_dir , y - 40 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 20*spr_dir , y - 40 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 20*spr_dir , y - 40 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 20*spr_dir , y - 40 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 20*spr_dir , y - 40 - (14*triggered))
          
          create_hitbox(AT_EXTRA_3, 3, x + 30*spr_dir , y - 60 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 30*spr_dir , y - 60 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 30*spr_dir , y - 60 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 30*spr_dir , y - 60 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 30*spr_dir , y - 60 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 30*spr_dir , y - 60 - (14*triggered))
          
          create_hitbox(AT_EXTRA_3, 3, x + 40*spr_dir , y - 80 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 40*spr_dir , y - 80 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 40*spr_dir , y - 80 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 40*spr_dir , y - 80 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 40*spr_dir , y - 80 - (14*triggered))
          create_hitbox(AT_EXTRA_3, 3, x + 40*spr_dir , y - 80 - (14*triggered))
          
        }
    }
    
}

if attack == AT_EXTRA_1 {

weapon = 0

    hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
       	
       	
    if window == 1 && window_timer == 1 {

        jc = 1
         spawn_hit_fx(x-10*spr_dir,y-50,305)
        if !free  && triggered == 0 {
          sound_play(sound_get("cnoise4"))
        }
        sound_play(sound_get("vef3")) 
        sound_play(asset_get("sfx_bird_sidespecial"))
            hsp = -4*spr_dir
        if free {    
            vsp = -4
        }
    }
    
    if window == 1 && free {
        can_move = false
        if vsp < 0 {
            vsp /= 1.01
        }
        
        hsp /= 1.1
    }
    
    if window_timer > 6 && attack_pressed && window == 1 && jc < 2 && (DT >= 2 or triggered == 1){
            window_timer = 2
            if triggered == 0 {
            DT -= 2
            }
        sound_play(sound_get("vJC1"),false,noone, 2)
        sound_play(sound_get("SpaceCutB"))
            hsp = -4*spr_dir
                   if free {    
            vsp = -4
        }
        jc += 1
        spawn_hit_fx(x-10*spr_dir,y-50,305)
        create_hitbox(AT_EXTRA_1, 1, x-10*spr_dir, y)
    }
    
    if window == 1 && window_timer == 8 && jc == 2 {
                    window_timer = 2
        sound_play(sound_get("SpaceCutB"))
            hsp = -4*spr_dir
        if free {    
            vsp = -4
        }
        jc += 1
        spawn_hit_fx(x-10*spr_dir,y-50,305)
        create_hitbox(AT_EXTRA_1, 1, x -10*spr_dir, y)
    }
}

if attack == AT_JAB {
    
    weapon = 0
    
    if window = 4  && triggered == 0 {
        sound_play(sound_get("cnoise2"))
    }
    
    if (window == 6 or window == 3) && window_timer > 4 && special_down && (DT >= 4 or triggered = 1) {
    	if triggered = 0 {
    	DT -= 4 
    	}
    	move_cooldown[AT_DTILT] = 6
                attack_end();
        set_attack(AT_EXTRA_3)
        window = 0
        window_timer = 0
        
        if triggered == 0 {
        sound_play(sound_get("cnoise4"))
        }
        sound_play(sound_get("Drive1"))
    }
    
    if window == 6 && window_timer > 4 && attack_pressed {
                attack_end();
                
        if !up_down and !down_down or ((left_down && spr_dir == -1) or (right_down && spr_dir == 1)) {
        set_attack (AT_FTILT)
        window = 2
        window_timer = 0
        sound_play(asset_get("sfx_ice_shieldup"))
        }
               
       if up_down  {
           hsp = 3*spr_dir
           vsp = -8
        sound_play(sound_get("vef4"))   
        set_attack_value(AT_UAIR, AG_CATEGORY, 2);
        set_attack (AT_UAIR)
        window = 2
        window_timer = 0
        sound_play(asset_get("sfx_ice_shieldup"))
       }
       
       if down_down {
           hsp = 3*spr_dir
           vsp = -6
        sound_play(sound_get("vef4"))   
        set_attack_value(AT_NAIR, AG_CATEGORY, 2);
        set_attack (AT_NAIR)
        window = 1
        window_timer = 4
        sound_play(asset_get("sfx_ice_shieldup"))
       }
       
       if (left_down && spr_dir == 1) or (right_down && spr_dir == -1){
           hsp = 8*spr_dir
           vsp = -6
           sound_play(sound_get("vef1"))   
           set_attack (AT_BAIR)
           set_attack_value(AT_BAIR, AG_CATEGORY, 2);
           window = 1
           window_timer = 6
       }
       
    }
}

if attack == AT_FTILT {

    weapon = 0
        
    if window = 2 && window_timer == 1{
                
        if triggered == 0 {
        sound_play(sound_get("cnoise1"))
        }
        
        sound_play(sound_get("vef3"))
    }
    
}

if attack == AT_DTILT {
    weapon = 1    
    if window = 1 && window_timer == 1{
        if triggered == 0 {    
        sound_play(sound_get("cnoise2"))
        }
        sound_play(sound_get("vef1"))
        sound_play(asset_get("sfx_clairen_swing_strong"))
    }
    
    if (window == 3) && (window_timer > 4 or has_hit) && special_down && DT >= 4 { 
    	if triggered = 0 {
    	DT -= 4
    	}
    	move_cooldown[AT_DTILT] = 6
        attack_end();
        set_attack(AT_EXTRA_3)
        window = 0
        window_timer = 0
       if triggered == 0 {
        sound_play(sound_get("cnoise4"))
       }
        sound_play(sound_get("Drive1"))
    }
    
}

if attack == AT_UTILT {

    weapon = 0
    
    if triggered = 0 {
        set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
    } else {
        set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 0);
    }
    
    if window = 1 && window_timer == 1{
        sound_play(sound_get("vef4"))
        sound_play(asset_get("sfx_ice_shieldup"))
    }
    
   if window = 3 && window_timer == 10{
        sound_play(asset_get("sfx_gus_land"))
    }
    
}

if attack == AT_DATTACK {

    weapon = 0
    
    if has_hit_player {
        exheld = 5
        soft_armor = 999
     set_num_hitboxes(AT_DATTACK,7);
    } else {
        soft_armor = 0
      set_num_hitboxes(AT_DATTACK,6);
    }
    
    if window = 1 && window_timer == 1{
        hsp /= 2
        sound_play(sound_get("vef4"))    
        sound_play(asset_get("sfx_ice_shieldup"))
        sound_play(asset_get("sfx_clairen_spin"))
    }
    
        
    if window = 2 && window_timer == 1{
        spawn_base_dust(x-10*spr_dir,y - 0,"dash_start",spr_dir);
        sound_play(asset_get("sfx_ice_shieldup"))
        sound_play(sound_get("vef1"))    
    }
    
    
   if (window = 3 or window == 2) && (window_timer% 4 = 0 or window_timer == 1 ){
        spawn_base_dust(x-10*spr_dir,y - 0,"dash",spr_dir);
         sound_play(asset_get("sfx_ice_on_player"))
        if triggered == 0 { 
         sound_play(sound_get("cnoise1"))
        }
    }
    
    if window == 4 && has_hit_player && window_timer < 5 {
        window_timer = 10
    }
    
    if window == 4 && window_timer == 20 && has_hit_player {
        spawn_hit_fx (x+20*spr_dir,y-40, 305)
        sound_play(sound_get("vdattackhit"),false,noone,1.2)  
        sound_play(sound_get("RI"))  
        spawn_hit_fx (x+20*spr_dir,y-40, lighten)
    }
    
   if window == 4 && window_timer == 22 && has_hit_player { 
            shake_camera(6,6)
            hitpause = true
            hitstop = 10
   }
    
    
}

if attack == AT_FAIR {
 
     weapon = 1
     
    if window = 1 && window_timer == 1{
        set_attack_value(AT_FAIR, AG_CATEGORY, 2);
        sound_play(sound_get("vef1"))
        sound_play(asset_get("sfx_clairen_swing_strong"))
    }

    
}

if attack == AT_NAIR {
    
    weapon = 0
    
    if window = 1 && window_timer == 1{
        sound_play(asset_get("sfx_swipe_medium1"))
    }
    
    if window == 3 {
        set_attack_value(AT_NAIR, AG_CATEGORY, 1);
    }

    
}


if attack == AT_DAIR {
   can_wall_jump = true
   can_fast_fall = false 
   
   if !free && ground_type = 2 {
       y += 10
       sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6)
       sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.6)
       spawn_hit_fx(x + 44*spr_dir,y - 10, 302)
   }
   
    weapon = 1
    
    if has_hit_player or (y > room_height/2 + 300){
    	can_shield = true
    }
    
    if window > 2 {
        hsp /= 1.1
    }
    
    if window = 1 && window_timer == 1{
        set_attack_value(AT_DAIR, AG_CATEGORY, 2);
        sound_play(sound_get("vef3"))   
        sound_play(asset_get("sfx_swipe_heavy1"))
        vsp = -7
    }
    
    if window = 2 && window_timer == 1{
        sound_play(sound_get("vef4"))   
        sound_play(asset_get("sfx_swipe_heavy1"))
    }
    
    if window = 3 && window_timer == 3{
        vsp = 14
    }
    
    
    if window > 2 && !free && ground_type = 1 {

        set_attack_value(AT_DAIR, AG_CATEGORY, 1);
       sound_play(asset_get("sfx_ori_energyhit_medium"))
       sound_play(asset_get("sfx_blow_heavy2"))
       spawn_hit_fx(x + 44*spr_dir,y - 10, 302)
       spawn_hit_fx(x + 54*spr_dir,y - 10, 303)

    }
    
    
}

if attack == AT_UAIR {

    weapon = 0
    
    if window = 1 && window_timer == 1{
        sound_play(sound_get("vef4"))
        sound_play(asset_get("sfx_ice_shieldup"))
    }
    
    if window = 2 && window_timer == 9{
        set_attack_value(AT_UAIR, AG_CATEGORY, 1);
        sound_play(asset_get("sfx_swipe_medium1"))
    }
    
   if window = 3 && window_timer == 6{
        sound_play(asset_get("sfx_gus_land"))
    }
    
}

if attack == AT_BAIR {

    weapon = 0
    
    if window = 1 && window_timer == 1{
        sound_play(sound_get("vef3"))
        sound_play(asset_get("sfx_ice_shieldup"))
    }
    
       if window = 4 && window_timer == 8{
           set_attack_value(AT_BAIR, AG_CATEGORY, 1);
        sound_play(asset_get("sfx_gus_land"))
    }
    
}


if attack == AT_TAUNT {
    
    if window == 1 {
    	
        if !free {
        	if state_timer % 17 == 0 && state_timer <= 90{
        		DT += 1
                move_cooldown[AT_DTILT] = 6
        	}
        }
        
        if window_timer == 1 && up_down && training{
        	move_cooldown[AT_DSPECIAL] = 0
            set_attack(AT_DSPECIAL)
            window = 4
            sound_play(asset_get("mfx_confirm"))  
            trainingtype = 0
            spawn_hit_fx(x,y,lighten)
        }
        
        if window_timer == 1 && drank == 1 && down_down {
            shake_camera(1,4)
            window = 2
            sound_play(asset_get("sfx_ell_dspecial_drop"))  
            sound_play(sound_get("vef3"))
        }
        
        
        if window_timer == 2 {
            sound_play(asset_get("sfx_spin"))   
        }
        if window_timer > 5 && window_timer % 5 == 0 && window_timer < 17*5 {
            create_hitbox(AT_TAUNT, 2, x, y)
        }
        
        if window_timer % 10 == 0 && window_timer < 17*5{
    	  	 sound_play(asset_get("sfx_ice_shieldup"),false,noone,0.4) 
         }
         
         if window_timer == 17*5 {
             shake_camera(2,4)
             sound_play(asset_get("sfx_ori_energyhit_medium"))
         }
  
  
    }
    
    if window == 2{
    	if window_timer % 3 == 0 && window_timer >  6*5 && window_timer < 10*5{
    		DT += 1
    	}
        if window_timer == 6*5 {
            sound_play(asset_get("sfx_waterwarp_start"))  
        }
        
         if window_timer == 10*5 {
                        drank = 0 
            sound_play(asset_get("sfx_swipe_medium2"))  
             sound_play(sound_get("vtaunt2"))  
        }
    }
    
    
    if window == 3 {
        
        exheld = -1
        
            if window_timer == 1 {
              sound_play(sound_get("intro"))    
            }
            
            
        if window_timer > 22 && window_timer < 90 {
        
            if window_timer % 16 == 0 {
                sound_play(sound_get("cnoise1"))  
            }
            
             if window_timer % 12 == 0 {
                sound_play(sound_get("cnoise1"),false,noone,0.4)  
            }
            
             if window_timer % 14 == 0 {
                sound_play(sound_get("cnoise1"),false,noone,0.4)  
            }
            
             if window_timer % 20 == 0 {
                sound_play(sound_get("cnoise4"))  
            }
        }
    }
}


if attack == AT_USPECIAL{
    exheld = -1
    weapon = -1
    move_cooldown[AT_USPECIAL] = 999  
    move_cooldown[AT_NSPECIAL] = 30
    can_move = false 
    can_fast_fall = false
    
    if window == 1 {
        if vsp > 0 {
        vsp /= 1.5
        }
        
   	if get_gameplay_time() % 2 == 0 {
	spawn_hit_fx( x + 40 - random_func(5, 80, true) - (10*spr_dir), y - 60 - random_func(4, 80, true) , esp )
	}
	
	
    }
    
    if window = 1 && window_timer <= 1{
     
    if triggered = 0 {
    	
    	var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){

		}else{
			hsp = (6 * cos(angle));
		}
		
        vsp = -9
        window = 2
        window_timer = 1
    }

    
                
    if triggered = 1 {
        sound_play(asset_get("sfx_ori_bash_use"))
        sound_play(sound_get("SpaceCut"),false,noone,0.4)
        window_timer = 2
    }
    
    
    
        	char_height = 110;
        sound_play(asset_get("sfx_bird_sidespecial_start"))
        sprite_change_offset("uspecial", 136, 188);
    }

    
    if window == 1 && window_timer == 20{
        
        var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
			hsp = 3*spr_dir;
			vsp = -14;
		}else{
			hsp = (15 * cos(angle));
			vsp = (15 * sin(angle));
		}
		
        shake_camera(2,4)
        spawn_hit_fx(x-20*spr_dir,y - 60,305)
        sound_play(asset_get("sfx_ori_bash_hit"))
        sound_play(sound_get("SpaceCut"),false,noone,0.4)
    
        y -= 30
        	char_height = 80;
        sprite_change_offset("uspecial", 136, 158);
        sound_play(asset_get("sfx_bird_downspecial"))
    }
    
    if window == 2 {
    	char_height = 80;
        sprite_change_offset("uspecial", 136, 158);
    }

    
}



}


if attack == AT_USTRONG {
    
        
    if window == 1 && window_timer < 45 {
    	super_armor = true
    } else {
     	super_armor = false
    }
    
    
    exheld = -1
    
    if window > 1 {
    	suppress_stage_music( 0.4,60 );	
    }
    
    if window == 1 && window_timer > 4 {
        suppress_stage_music( 0.4,60 );	
    }
    
    if hitstop && window = 4{
        window_timer += 1
        shake_camera(5,4)
    }
    
    if window = 1 && !hitpause {
        
        if window_timer % 10 == 0 or window_timer == 1 {
             spawn_base_dust(x,y - 0,"land",spr_dir);
        }
        
        if window_timer % 15 == 0 or window_timer == 5 {
             spawn_base_dust(x + window_timer,y - 0,"dash_start",-1);
             spawn_base_dust(x - window_timer,y - 0,"dash_start",1);
        }
        
        if window_timer % 20 == 0 {
             spawn_base_dust(x,y - 0,"jump",spr_dir);
        }
        
        shake_camera(1,2)
        if window_timer == 1 {
        		move_cooldown[AT_DTILT] = 6
        		if triggered = 0 {
            	DT -= 2
        		}
	
        sound_play(sound_get("Ustrong1"))
        sound_play(asset_get("sfx_absa_whip3"))
        sound_play(asset_get("sfx_absa_singlezap1"))
        sound_play(asset_get("sfx_absa_boltcloud"))
        }
    }
    
    if window = 3 && window_timer == 1 && !hitpause{
    		move_cooldown[AT_DTILT] = 6
    		if triggered = 0 {
         	DT -= 4
    		}
	
        shake_camera(10,10)
        spawn_hit_fx(x,y,lighten)
        sound_play(sound_get("Ustrong2"),false,noone,1)
        sound_play(asset_get("sfx_abyss_explosion"))
        sound_play(asset_get("sfx_bird_downspecial"),false,noone,1.5)
    }

}


if attack == AT_FSTRONG && !hitpause {
    

    if free {
        vsp /= 2
        hsp /= 1.1
        can_move = false
        can_fast_fall = false
    }
    
        
    if window = 1 && !hitpause {
        
        if window_timer % 10 == 0 or window_timer == 1 {
        	if window_timer == 1 {
        		move_cooldown[AT_DTILT] = 6
        		if triggered = 0 {
	            DT -= 2
        		}
        	}
             spawn_base_dust(x,y - 0,"land",spr_dir);
        }
        
        
        shake_camera(1,2)
        if window_timer == 1 {
        sound_play(sound_get("Fstrong1"))
        sound_play(asset_get("sfx_absa_whip3"))
        sound_play(asset_get("sfx_absa_singlezap1"))
        sound_play(asset_get("sfx_absa_boltcloud"))
        }
    }
    
    
    exheld = -1
    
    if window = 2{
        if window_timer == 1 {
        		move_cooldown[AT_DTILT] = 6
        		if triggered = 0 {
             	DT -= 4
        		}
	
            create_hitbox(AT_FSTRONG,1,x,y)
            create_hitbox(AT_FSTRONG,3,x,y)
        sound_play(sound_get("RI"))    
        }
     if !free {
     hsp = 10*spr_dir
     x += 6*spr_dir
     }

        shake_camera(4,4)
        
    }
    
    if window = 3 && window_timer <=16 {
         if has_hit_player {
            hit_player_obj.y += (y - hit_player_obj.y)/3
            hit_player_obj.x += ((x+60*spr_dir) - hit_player_obj.x)/3
        }
    
            if window_timer % 3 == 0 && window_timer < 16{
                create_hitbox(AT_FSTRONG,1,x,y)
                create_hitbox(AT_FSTRONG,3,x,y)
            }
            
    if window_timer % 6 == 0{
        sound_play(asset_get("spin"),false,noone,0.4) 
  	sound_play(sound_get("SpaceCutB"),false,noone,0.4) 
  	if !free {
  	   spawn_base_dust(x-10*spr_dir,y - 0,"dash_start",spr_dir);
  	   spawn_base_dust(x,y - 0,"dash",spr_dir);
  	}
  	}
  	
  	 shake_camera(2,4)
        hsp += 0.6*spr_dir
    }

    

}

if attack == AT_DSTRONG {
    
    exheld = -1
    
    if has_hit_player {
        soft_armor = 999
        set_num_hitboxes(AT_DSTRONG, 2);
    } else {
        set_num_hitboxes(AT_DSTRONG, 1);
        soft_armor = 0
    }
    
    if window < 4 {
                	suppress_stage_music( 0.4,60 );	
    }
    
    

    vsp = 0
    
    if window = 1 && !hitpause {
        oldx = x
        if window_timer % 10 == 0 or window_timer == 1 {
             spawn_base_dust(x,y - 0,"land",spr_dir);
        }
        
        if window_timer % 15 == 0 or window_timer == 5 {
             spawn_base_dust(x + window_timer*2,y - 0,"dash_start",-1);
             spawn_base_dust(x - window_timer*2,y - 0,"dash_start",1);
        }
        
        if window_timer % 16 == 6 or window_timer == 5 {
             spawn_base_dust(x + window_timer,y - 0,"dash_start",-1);
             spawn_base_dust(x - window_timer,y - 0,"dash_start",1);
        }
        
        
        if window_timer % 20 == 0 {
             spawn_base_dust(x,y - 0,"jump",spr_dir);
        }
        
        shake_camera(1,2)
        if window_timer == 1 {
        move_cooldown[AT_DTILT] = 6
        if triggered = 0 {
	    DT -= 2
        }
        sound_play(sound_get("Dstrong1"))
        sound_play(asset_get("sfx_bird_downspecial"))
        }
    }
    
    if window = 2 && !hitpause {
        draw_indicator = false
        if window_timer == 1  {
        		move_cooldown[AT_DTILT] = 6
        		if triggered = 0 {
	            DT -= 4
        		}
            shake_camera(6,4)
                spawn_hit_fx(x,y,lighten)
                sound_play(asset_get("sfx_absa_boltcloud"))
        }
        
    }
    
    if window == 3 {
        x = oldx
        draw_indicator = false
        if window_timer >= 20 && !hitpause {
              shake_camera(4,4)
              if window_timer % 2 == 1 {
                  spr_dir *= -1
              }
              
              if window_timer % 10 == 0{
                spawn_hit_fx(x,y,lighten2)
            }
            
            if window_timer % 6 == 0{
                spawn_hit_fx(x,y,lighten2)
            }
            
        }
    }


    if window == 4  && !hitpause {
        if window_timer == 1 {
            shake_camera(6,8)
            sound_play(asset_get("sfx_bird_downspecial"))
            sound_play(sound_get("cnoise4"),false,noone,2)
              sound_play(sound_get("cnoise1"),false,noone,1.4)
             spawn_base_dust(x,y - 0,"land",spr_dir);
             spawn_base_dust(x + 30,y - 0,"dash_start",-1);
             spawn_base_dust(x - 30,y - 0,"dash_start",1);
        }
    }
    
    if window == 4 && window_timer == 35 && has_hit_player && !hitpause{
        spawn_hit_fx (x+20*spr_dir,y-40, 305)
        sound_play(sound_get("RI"))  
        spawn_hit_fx (x+20*spr_dir,y-40, lighten)
    }
    
     if window == 4 && window_timer == 36 && has_hit_player  && !hitpause { 
            shake_camera(6,10)
            hitstop = 16
            hitpause = 1
     }
    
    

}

if attack == AT_DSPECIAL && window == 4{
	if state_timer > 10 && taunt_pressed && trainingtype == 0 {
	 move_cooldown[AT_TAUNT] = 10
	 state = PS_IDLE
		sound_play(asset_get("mfx_back"))  
		trainingtype = -1
	}
	
	if state_timer > 10 && taunt_pressed && (trainingtype == 1 or trainingtype == 2 or trainingtype == 3)  {
		state_timer = 0
		sound_play(asset_get("mfx_back"))  
		trainingtype = 0
	}
	
	if state_timer > 10 && taunt_pressed && trainingtype > 3   {
		state_timer = 0
		sound_play(asset_get("mfx_back"))  
		trainingtype = 3
	}
	
	
	
	if window_timer == 19 {
		window_timer = 1
	}
	
	if trainingtype == 0 {
		if jump_pressed {
			  spawn_hit_fx(x,y,lighten)
			  sound_play(asset_get("mfx_confirm"))  
			  trainingtype = 1
		}
		if special_pressed {
			  sound_play(asset_get("mfx_confirm"))  
			  trainingtype = 2
			  spawn_hit_fx(x,y,lighten) 
		}
		if attack_pressed {
			state_timer = 0
			  sound_play(asset_get("mfx_confirm"))  
			  trainingtype = 3
			  spawn_hit_fx(x,y,lighten) 
		}
	}
	
	if trainingtype == 3 && state_timer > 10 {
		
		if jump_pressed {
			  spawn_hit_fx(x,y,lighten)
			  sound_play(asset_get("mfx_confirm"))  
			  trainingtype = 4
		}
		if special_pressed {
			  sound_play(asset_get("mfx_confirm"))  
			  trainingtype = 5
			  spawn_hit_fx(x,y,lighten) 
		}
		if attack_pressed {
			  sound_play(asset_get("mfx_confirm"))  
			  trainingtype = 6
			  spawn_hit_fx(x,y,lighten) 
		}
		if shield_pressed {
			  sound_play(asset_get("mfx_confirm"))  
			  trainingtype = 7
			  spawn_hit_fx(x,y,lighten) 
		}
		
	}
	
	
	
	
}

#define spawn_base_dust(x, y, name, dir)
var dlen;
var dfx;
var dfg;
var dust_color = 0;

switch (name) {
    default:
    case "dash_start":
        dlen = 21;
        dfx = 3;
        dfg = 2626;
    break;
    case "dash":
        dlen = 16;
        dfx = 4;
        dfg = 2656;
    break;
    case "jump":
        dlen = 12;
        dfx = 11;
        dfg = 2646;
    break;
    case "doublejump":
    case "djump":
        dlen = 21;
        dfx = 2;
        dfg = 2624;
    break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg;
newdust.dust_color = dust_color;
newdust.spr_dir = dir;