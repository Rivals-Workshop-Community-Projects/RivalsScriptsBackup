///
if (attack == AT_USPECIAL || attack == AT_NSPECIAL|| attack == AT_DSPECIAL){
    trigger_b_reverse();
}


if (attack == AT_JAB) {
    if (right_down-left_down == -spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player) {
        var win_time = get_window_value(attack,window,AG_WINDOW_LENGTH);
        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, win_time);
        if get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
            set_state(PS_IDLE);
            was_parried = false; 
            //if you get ftilt frame-perfectly on parry you can carry the parry lag over
            //that doesn't happen in base cast so this fixes that
        }
    } else {
        reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
    }
}

if canceltime = 0 && (attack == AT_FAIR or attack == AT_DAIR or attack == AT_UAIR or attack == AT_BAIR or attack == AT_NAIR) {
	set_attack_value(attack, AG_CATEGORY, 1);
}

if state_timer == 2 && free &&  move_cooldown[AT_FSPECIAL_2] > 0 {
    vsp = -3
}

if state_timer == 1 && timebreak {
        if bhood {        
      sound_play(sound_get("wiss"),false,noone,0.6,0.8 + random_func(1,4,true)/30 - timesound)        
    }
    sound_play(sound_get("wissn"),false,noone,0.6,0.7 + random_func(1,4,true)/30 - timesound)   
}
switch attack {
    
    case AT_JAB :
    
    can_fast_fall = false
    
    if window == 1 && window_timer == 5 && !hitpause {
        jabhit = 0
        sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,1 + random_func(1,3,true)/10)
    }
    
        
    if window == 4 && window_timer == 1 && !hitpause {
        sound_play(asset_get("sfx_spin"),false,noone,1, 1.15)
    }
    
    
    if window == 7 && window_timer == 3 && !hitpause {
        sound_play(asset_get("sfx_swipe_medium1"),false,noone,1,1 + random_func(1,3,true)/10)
    }
    
    if window == 8 && window_timer == 8 && !hitpause {
        sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1 + random_func(1,3,true)/10)
    }
    
    if window == 9 && window_timer == 5 && !hitpause {
        spawn_base_dust(x, y, "land", spr_dir)
    }
    
    if window < 8 && free {
        attack_end();
        set_state(PS_IDLE_AIR)
        state_timer = 1
    }
    
    if window == 8 && jabhit == 1 && hit_player_obj.state_cat == SC_HITSTUN{
        
        if window_timer < 8{
            hit_player_obj.y -= 2
        }
        
        if window_timer == 8 {
            spawn_base_dust(x, y, "land", spr_dir)
            
            oldx = x
            oldy = y
            
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
            
            vsp = -5
            x = hit_player_obj.x - 30*spr_dir
            y = hit_player_obj.y - 30
            
            if bhood {
             sound_play(sound_get("wiss"),false,noone,0.8,1 + random_func(1,3,true)/10)    
            }
            sound_play(sound_get("wissn"),false,noone,0.8,0.9 + random_func(1,3,true)/10)   
        }
       
        if window_timer == 20 {
            
            ais2 = sprite_index
            aii2 = image_index
            aix2 = x
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30

            
            x = oldx
            y = oldy
            if bhood {
            sound_play(sound_get("wiss"),false,noone,0.8,0.9 + random_func(1,3,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,0.8,0.7 + random_func(1,3,true)/10)   
        }
        
        
    }
    
    
    break;
  
  
    case AT_FTILT :
    
    if window == 1 && window_timer == 4 && !hitpause {
        sound_play(asset_get("sfx_swipe_medium1"),false,noone,1,1 + random_func(1,3,true)/20)
    }
    
    if window == 2 && has_hit_player && !hitpause && hit_player_obj.state_cat == SC_HITSTUN {
        hit_player_obj.hsp = (x + 50*spr_dir - hit_player_obj.x)/4
        hit_player_obj.vsp = (y + 10 - hit_player_obj.y)/4
        window_timer += 0.3
    }
        
    if window == 2 && window_timer == 8 && !hitpause {
        sound_stop(asset_get("sfx_swipe_medium2"))
        sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1 + random_func(1,3,true)/20)
    }
    

    
    break;  
    
    case AT_UTILT :
    
    can_move = false
    hsp /= 1.05
    if window == 1 && window_timer == 1 && !hitpause  {
    	spawn_base_dust(x, y, "dash", spr_dir)
        sound_play(asset_get("sfx_swipe_weak1"))
    }
    
    if window == 1 && window_timer == 6 && !hitpause {
        sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
        
    if window == 2 && window_timer == 5 && !hitpause {
        sound_play(asset_get("sfx_swipe_medium1"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
    if window == 4 && window_timer == 1 && !hitpause  {
    	if  !free {
        spawn_base_dust(x, y, "land", spr_dir)
        sound_play(asset_get("sfx_land"))
    	} else if canceltime = 0 {
    		attack_end()
    		set_state(PS_IDLE_AIR)
    	} else if canceltime != 0 {
    		attack_end()
    		set_state(PS_PRATFALL)
    	} 
    }
    
    
    if has_hit_player && window < 3 && !hitpause && hit_player_obj.state_cat == SC_HITSTUN{
        hit_player_obj.x += floor((x + 16*spr_dir - hit_player_obj.x)/8) 
        hit_player_obj.y += floor((y - 30 - hit_player_obj.y)/8) 

    }
    
    break;
 
 
     
    case AT_DTILT :
    
    if window == 1 && window_timer == 1 && !hitpause {
        sound_play(asset_get("sfx_spin"))
    }
    
    if window == 1 && window_timer == 7 && !hitpause {
        sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
        
    if window == 2 && window_timer == 5 && !hitpause {
        shake_camera(2,4)
        sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,0.9 + random_func(1,3,true)/20)
        sound_play(asset_get("sfx_blow_medium2"),false,noone,1,0.9 + random_func(2,3,true)/20)
    }

    if has_hit_player && window < 3 && !hitpause && hit_player_obj.state_cat == SC_HITSTUN{
        hit_player_obj.x += floor((x + 36*spr_dir - hit_player_obj.x)/5) 
        hit_player_obj.y += floor((y + 5 - hit_player_obj.y)/5) 

    }
    
    break;
    
    
    case AT_DATTACK :
    
    if window == 1 && window_timer == 9 && !hitpause {
        sound_play(asset_get("sfx_spin"))
    }
    
    if window == 1 && window_timer == 7 && !hitpause {
        sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
        
    if window == 2 && window_timer == 5 && !hitpause {
        sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
    if window < 3 && !hitpause {
        hsp = (12 - state_timer/2)*spr_dir
    }
    
    
    if window == 4 && window_timer == 1 && !hitpause {
        spawn_base_dust(x, y, "land", spr_dir)
    }
    
    if has_hit_player && !hitpause {
        if window <= 2  && hit_player_obj.state_cat == SC_HITSTUN{
                    hit_player_obj.x += floor((x + 20*spr_dir - hit_player_obj.x)/10) 
        }
        hsp /= 2
        if window == 4 {
            can_jump = true
        }
    }
    
    
    break;
  
  
    
    case AT_NAIR :
    
    if hitpause && window < 4 {
        window_timer += 1
    }
    if window == 1 && window_timer == 1 && !hitpause {
        sound_play(asset_get("sfx_swipe_heavy1"))
   }
    
    
    if window == 1 && window_timer == 7 && !hitpause {
      sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
    break;
    
    
    case AT_UAIR :
    
    if window == 1 && window_timer == 8 && !hitpause {
        sound_play(asset_get("sfx_swipe_medium1"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
        
    if window == 2 && window_timer == 4 && !hitpause {
        sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
        
    
    if hitpause && window < 3 {
        
    }

    
    break;
 
 
     
    case AT_BAIR :
    
    if window == 1 && window_timer == 1 && !hitpause {
        sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
        
    if window == 1 && window_timer == 12 && !hitpause {
        sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
    break;
    
    
    
    case AT_DAIR :
    
    if window == 1 && window_timer == 9 && !hitpause {
        sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,0.9 + random_func(1,3,true)/20)
        sound_play(asset_get("sfx_spin"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
    if has_hit_player && window < 5 && hitpause && hit_player_obj.state_cat == SC_HITSTUN{
        if hitpause {
            window_timer += 1
        }
        hit_player_obj.x += floor((x + 10*spr_dir - hit_player_obj.x)/8) 
        hit_player_obj.y += floor((y + 30 - hit_player_obj.y)/8) 
        if old_vsp > 0 {
        old_vsp -= 3
        }
    }
    
    break;
    
    
        
    case AT_FSTRONG:
    
       can_fast_fall = false
       
    if window < 5 && free {
        attack_end();
        set_state(PS_IDLE_AIR)
        state_timer = 1
    }
    
    if window == 2 && window_timer == 5 && !hitpause {
        shake_camera(2,4)
        spawn_base_dust(x+16*spr_dir, y, "dash_start", spr_dir*-1)
        spawn_base_dust(x+46*spr_dir, y, "dash", spr_dir*-1)
        spawn_base_dust(x, y, "dash", spr_dir)
    }
    
    if window == 2 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,0.9 + random_func(1,3,true)/20)
        sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,0.9 + random_func(1,3,true)/20)
    }
    
    if has_hit_player && window == 3 && !hitpause && shock > 5 {
        window = 5 
        window_timer = 0
            if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,6,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,1,0.7 + random_func(1,6,true)/10)   
        sound_play(sound_get("upb"),false,noone,1,0.9 + random_func(1,6,true)/10)
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
            
    }
    
    if window == 5  && !hitpause{
        hsp = 0
        vsp = 0
        
        if window_timer == 12 {
            ais2 = sprite_index
            aii2 = image_index
            aix2 = x
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30
        }
        
        
        
         if window_timer == 15 {
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
        }
        
        
        if window_timer >= 6 && window_timer % 6 == 0 {
             if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,6,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,1,0.7 + random_func(1,6,true)/10)   
            create_hitbox(AT_FSTRONG,3,x,y)
        }
        
        if window_timer >= 6 {
            x = hit_player_obj.x
            y = hit_player_obj.y
        }
        
        if window_timer = 29 {
                        ais2 = sprite_index
            aii2 = image_index
            aix2 = x
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30
        window = 6 
        window_timer = 0 
        
            if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,6,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,1,0.7 + random_func(1,6,true)/10)   
            create_hitbox(AT_FSTRONG,5,x,y)
            
        }
    }
    
    
    if window == 6  && !hitpause {
        hsp = (hit_player_obj.x - x - 40*spr_dir)/3
        vsp =  (hit_player_obj.y - y)/3
        if window_timer = 8 {
        window = 7
        window_timer = 0 
        }
        
        if window_timer == 6 {
                        ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
            if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,6,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,1,0.7 + random_func(1,6,true)/10)   
        }
    }
    
    if window == 7  && !hitpause {
        if window_timer == 1 {
            vsp = -6
            hsp = -6*spr_dir
        }

    }
    
    break;
    
    
    case AT_USTRONG:
    
       can_fast_fall = false
       
    if window < 5 && free {
        attack_end();
        set_state(PS_IDLE_AIR)
        state_timer = 1
    }
    
    if window == 2 && window_timer == 7 && !hitpause {
        shake_camera(2,4)
        spawn_base_dust(x - 10*spr_dir, y, "dash_start", spr_dir)
        spawn_base_dust(x, y, "dash", spr_dir*-1)
        spawn_base_dust(x, y, "land", spr_dir)
    }
    
    if window == 2 && window_timer == 1 && !hitpause {
        sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1,0.9 + random_func(1,3,true)/20)
        sound_play(asset_get("sfx_spin"),false,noone,1,0.9 + random_func(1,3,true)/20)
        spawn_base_dust(x, y, "land", spr_dir)
                sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,0.4 + random_func(1,3,true)/20)
    }


    if has_hit_player && window == 3 && window_timer >= 3 && !hitpause && shock > 5 {
             if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,6,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,1,0.7 + random_func(1,6,true)/10) 
            
            sound_play(sound_get("upb"),false,noone,1,0.9 + random_func(1,6,true)/10)
            
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
           aisd1 = spr_dir
            aid1 = 30
            
            window = 5
            window_timer = 0
        
    }
    
    if window == 5 && !hitpause {
       can_move = false
           
       if window_timer == 5 {
           sound_play(asset_get("sfx_spin"),false,noone,1,0.9 + random_func(1,3,true)/20)
           sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,0.9 + random_func(1,3,true)/20)
        window = 6
        window_timer = 0
       }
    }
     
    if window == 6 && !hitpause {
       can_move = false
       
        hit_player_obj.hsp /= 1.5
        hit_player_obj.vsp /= 1.1
        
        hsp = (hit_player_obj.x - x + 50*spr_dir)/3
        vsp =  (hit_player_obj.y - y - 20)/3  
        
       if window_timer == 11 {
            ais2 = sprite_index
            aii2 = image_index
            aix2 = x
            aiy2 = y
           aisd2 = spr_dir
            aid2 = 30
            
           vsp = -12
           hsp = 0
        sound_play(asset_get("sfx_swipe_medium1"),false,noone,1,0.9 + random_func(1,3,true)/20)
        window = 7
        window_timer = 0
       }
    }
    
     if window == 7 && !hitpause {
       can_move = false
        
       if window_timer == 5 {
           hsp = 0
        window = 8
        window_timer = 0
       }
    }
    
    break;
    
    
    case AT_DSTRONG:
    
       can_fast_fall = false
       
    if hitpause {
        state_timer -= 1
    }
    if window == 1 {
        hsp /= 1.1
    }
    
    if window < 5 && free {
        attack_end();
        set_state(PS_IDLE_AIR)
        state_timer = 1
    }
    
    if window == 2 && window_timer == 6 && !hitpause  {
        set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
        set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 44);
        shake_camera(2,4)
        spawn_base_dust(x - 10, y, "dash_start", 1)
        spawn_base_dust(x + 10, y, "dash_start", -1)
        spawn_base_dust(x, y, "land", spr_dir)
    }
    
    if window == 2 && window_timer == 1 && !hitpause {
        sound_play(asset_get("sfx_bird_nspecial"),false,noone,0.6,0.9 + random_func(1,3,true)/20)
        sound_play(asset_get("sfx_spin"),false,noone,1,0.9 + random_func(1,3,true)/20)
        sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,0.9 + random_func(1,3,true)/20)
        spawn_base_dust(x, y, "land", spr_dir)
    }
    
    
    if has_hit_player && window == 4 && window_timer >= 3 && !hitpause && shock > 5 && hit_player_obj.state_cat == SC_HITSTUN {
        window = 6
        window_timer = 0
        set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 124);
        set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 40);
            if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,6,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,1,0.7 + random_func(1,6,true)/10) 
            
            sound_play(sound_get("upb"),false,noone,1,0.9 + random_func(1,6,true)/10)
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
    }
    
    
    if window == 6 && !hitpause {
        can_move = false
      
        if window_timer == 5 {
            vsp = -17
            x = hit_player_obj.x
            y = hit_player_obj.y
            window = 7
            window_timer = 0
            sound_play(asset_get("sfx_blow_medium3"),false,noone,1,0.9 + random_func(1,3,true)/20)
            spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30,302)
            
        }
    }
    
    if window >= 7 {
        if state_timer % 30 == 0 {
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
           aisd1 = spr_dir
            aid1 = 30
        }
        
        if state_timer % 30 == 15 {
            ais2 = sprite_index
            aii2 = image_index
            aix2 = x
            aiy2 = y
           aisd2 = spr_dir
            aid2 = 30
        }
    }
    if window == 7 && !hitpause {
        can_move = false
         hsp = -3*spr_dir
        
               hit_player_obj.hsp /= 1.2
               hit_player_obj.vsp /= 1.2
               hit_player_obj.x += floor((x - 20*spr_dir - hit_player_obj.x)/6 )
               hit_player_obj.y += floor((y - 10 + (state_timer/2) - hit_player_obj.y)/2) 
               
               hit_player_obj.state = PS_PRATFALL
               hit_player_obj.has_walljump = false
               
               
        if window_timer == 27 && free {
            
            vsp += 1
            window_timer -= 1
        }
        
        if window_timer > 20 && !free or y + vsp >= room_height {
            sound_play(sound_get("cheese"),false,noone,1,1)
            window = 8
            window_timer = 0
            hsp = 0
            vsp = -12
            create_hitbox(AT_DSTRONG,2,x,y)
        }
    }
    
    
    
    break;
    
    
    case AT_NSPECIAL:
    
       can_fast_fall = false
       
    if has_hit_player {
        create_hitbox(AT_NSPECIAL,7,x + 26*spr_dir,y - 40)
        soft_armor = 999
    }
    
    if window == 2 or window > 3 {
        create_hitbox(AT_NSPECIAL,7,x + 26*spr_dir,y - 40)
    }
    
    if window == 3 && countered = 1 {
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
        attack_end();
        set_state(PS_IDLE)
        state_timer = 0
    }
    if state_timer <= 6 && window == 1 {
            if left_down && !right_down {
                spr_dir = -1
                state_timer = 7
            }
  
            if !left_down && right_down {
                spr_dir = 1
                state_timer = 7
            }
    }
    if window == 1 && window_timer == 1 && !hitpause  {
        countered = 0
        if !free {
        hsp = 7*spr_dir
        spawn_base_dust(x - 10, y, "dash_start", spr_dir)
        spawn_base_dust(x + 10, y, "dash", spr_dir* -1)
        sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,0.6,0.9 + random_func(1,3,true)/20)
        }
    }
    
    if  window < 4{
        if (place_meeting(x+40*spr_dir, y - 30, asset_get("par_block"))) && grabwall == -1 && state_timer > 8{
            
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
            
            grabwall = 90
                                    spawn_hit_fx(x + 30*spr_dir,y - 30,305)
            sound_play(asset_get("sfx_blow_medium3"),false,noone,1,0.9 + random_func(1,3,true)/20)
        }
        if has_hit_player {
        window = 4
        window_timer = 1
        }
    }
    
    if grabwall > 0 {
        x += 5 *spr_dir
        grabwall -= 1
        can_move = false
        hsp = 0
        vsp = 0
        window = 4
        window_timer = 1
        if jump_pressed {
            shake_camera(4,4)
            sound_play(asset_get("sfx_blow_medium2"),false,noone,1,0.9 + random_func(1,3,true)/20)
            set_attack(AT_DAIR)
            window = 5
            window_timer = 5
            vsp = -14
            hsp = -2*spr_dir
            grabwall = 0
        }
    }
            if has_hit_player && window <= 4{
               hit_player_obj.hsp = floor((x + 45*spr_dir - hit_player_obj.x)/6) 
               hit_player_obj.vsp = floor((y - 10 - hit_player_obj.y)/6) 
               hit_player_obj.x += floor((x + 45*spr_dir - hit_player_obj.x)/4) 
               hit_player_obj.y += floor((y - 10 - hit_player_obj.y)/4) 
               hsp /= 2
               vsp /= 2
               
               if vsp < 0 {
                   vsp = 0
               }
           }
           
    

           
    if window == 4 && has_hit_player && !hitpause{
    
    
         if window_timer == 25 or attack_pressed or special_pressed {
         	move_cooldown[AT_NSPECIAL] = 20
         
            window = 5
            window_timer = 1
          sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,0.9 + random_func(1,3,true)/20)
            
        }
        
        
        if up_down{
            ais2 = sprite_index
            aii2 = image_index
            aix2 = x
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30
            window = 6
            window_timer = 1
            sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,0.9 + random_func(1,3,true)/20)
        }

        if down_down{
            ais1 = sprite_index
            aii1 = image_index
            aix1 = x
            aiy1 = y
            aisd1 = spr_dir
            aid1 = 30
            if !free {
            spawn_base_dust(x - 10, y, "dash_start", 1)
            spawn_base_dust(x + 10, y, "dash_start", -1)
            }
            vsp = -11
            window = 7
            window_timer = 1
           sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,0.9 + random_func(1,3,true)/20)
        }
        
         if left_down or right_down {
            move_cooldown[AT_NSPECIAL] = 60
             sound_play(sound_get("sideb"),false,noone,1,0.9 + random_func(1,3,true)/20)
             create_hitbox(AT_NSPECIAL,8,x,y)
            if left_down && !right_down {
                hit_player_obj.x = x - 40
                spr_dir = -1
            }
  
            if !left_down && right_down {
                hit_player_obj.x = x + 40
                spr_dir = 1
            }
        set_attack(AT_FSPECIAL)    
           window = 2
           window_timer = 0

        }
        
        
    }
    
    if window == 7 {
        
        if vsp > 15 && y > room_height/2 + 200 {
            attack_end();
            vsp = -10
            hsp = 0
            attack = AT_UAIR
            window = 2
            window_timer = 0
        }
              hit_player_obj.hsp = floor((x - 10*spr_dir - hit_player_obj.x)/7) 
               hit_player_obj.vsp = svsp
                hit_player_obj.x += floor((x - 10*spr_dir - hit_player_obj.x)/3) 
               hit_player_obj.y += floor((y - 50 - hit_player_obj.y)/3) 
               
               hit_player_obj.state = PS_PRATFALL
               hit_player_obj.has_walljump = false
               
        vsp += 0.4
        
        if window_timer == 11 {       
        if free {
            window_timer -= 1
        } else {
            ais2 = sprite_index
            aii2 = image_index
            aix2 = x
            aiy2 = y - 10
            aisd2 = spr_dir
            aid2 = 30
            create_hitbox(AT_NSPECIAL,6,x,y)
            sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1.1 + random_func(1,3,true)/20)
            window = 8
            window_timer = 1
            spawn_base_dust(x - 10, y, "dash_start", 1)
            spawn_base_dust(x + 10, y, "dash_start", -1)
            spawn_base_dust(x, y, "land", spr_dir)
        } 
        }
    }

    break;
    
    
    case AT_FSPECIAL :
    

	 set_attack_value(AT_FAIR, AG_CATEGORY, 2);
     set_attack_value(AT_NAIR, AG_CATEGORY, 2);
     set_attack_value(AT_BAIR, AG_CATEGORY, 2);
     set_attack_value(AT_DAIR, AG_CATEGORY, 2);
     set_attack_value(AT_UAIR, AG_CATEGORY, 2);
     
         
        canceltime = 20
        
           can_fast_fall = false
        
        if window == 3 {
            can_attack = true
            can_strong = true   
            can_ustrong = true    
            move_cooldown[AT_FSPECIAL_2] = 5
            
            if window_timer > 10 && !free {
               set_state(PS_PRATLAND)
		       state_timer = 0
            }
        }
        
        if window == 1  {
            //move_cooldown[AT_FSPECIAL] = 999
            ais1 = sprite_index
            aii1 = image_index + 1
            aix1 = x
            aiy1 = y
            aisd1= spr_dir
            aid1 = 30
            
            hsp /= 2
            vsp = 0
            
            if window_timer == 1 && !hitpause {
            spawn_base_dust(x - 10, y, "dash_start", 1)
            spawn_base_dust(x, y, "land", spr_dir)
            }
            

        }
        
        if window == 2 {
            vsp = 0
            if window_timer == 1 && !hitpause {
                
            ais2 = sprite_index
            aii2 = image_index + 1
            aix2 = x + 60*spr_dir
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30
            hsp = 80*spr_dir    
            
            spawn_base_dust(x, y, "dash_start", spr_dir)
            spawn_base_dust(x , y, "dash", spr_dir)
            
            sound_play(sound_get("sideb"),false,noone,1,1 + random_func(1,3,true)/10)  
            
            if bhood {
             sound_play(sound_get("wiss"),false,noone,1,1 + random_func(1,3,true)/10)    
            }
            sound_play(sound_get("wissn"),false,noone,1,0.9 + random_func(1,3,true)/10)   
            
            }
            
            if window_timer == 2 && !hitpause {
            x += 50*spr_dir

                             hsp = 6 * spr_dir
            }
            
            if window_timer == 3 && !hitpause {
                        spawn_base_dust(x - 10, y, "dash_start", spr_dir)
            spawn_base_dust(x, y, "land", spr_dir)
            }
        }
        
          if window == 3  {
              vsp /= 1.2
              can_move = false
              hsp /= 1.05
              can_wall_jump = true
            if has_hit_player {
                move_cooldown[AT_FSPECIAL] = 0
                window_timer += 2
            }
        }
        
    break;    
    
    case AT_USPECIAL:
    
    can_fast_fall = false 
    
    if window < 4 {
        hsp /= 1.2
    }
    
    if window > 4 {
        can_wall_jump = true
    }
    
    if window == 3 && has_hit_player{
        set_num_hitboxes(AT_USPECIAL, 4);
    }
    
    if uspechit == 1 && window < 5 {
        
        if  !hitpause  {
            if hit_player_obj.state_cat == SC_HITSTUN {
               hit_player_obj.x += floor((x + 30*spr_dir - hit_player_obj.x)/4) 
               hit_player_obj.y += floor((y - 60 - hit_player_obj.y)/4) 
            }
        } else {
            if window_timer < 3 {
                window_timer += 0.5
                state_timer += 1
            }
        }
    }
    
    
     if window == 1 && window_timer == 1 {
         uspechit = 0
         set_num_hitboxes(AT_USPECIAL, 2);
            ais1 = sprite_index
            aii1 = image_index 
            aix1 = x
            aiy1 = y
            aisd1= spr_dir
            aid1 = 30
          sound_play(sound_get("upb"),false,noone,1,1 + random_func(1,3,true)/10)  
         spawn_base_dust(x , y, "dash_start", 1)
         spawn_base_dust(x, y, "dash_start", -1)
     }
     if window == 4 && window_timer == 1 {
         spawn_hit_fx( x,y + 10 , hfx2 )
     }
    if window == 2 && window_timer == 1 {
        
            ais2 = sprite_index
            aii2 = image_index 
            aix2 = x 
            aiy2 = y
            aisd2 = spr_dir
            aid2 = 30
        hsp = 10*spr_dir
        spawn_base_dust(x, y, "dash_start", spr_dir)
            spawn_base_dust(x, y, "land", spr_dir)
    }
    
    break; 
    
    
    
    case AT_DSPECIAL:
    
    can_fast_fall = false
    cam_move = false
        vsp = 0
        hsp = 0
    
    
    draw_indicator = false 
    
    if window == 1 && window_timer == 1 && !hitpause {
        shake_camera(3,6)
        spawn_hit_fx(x,y,sw)
        sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1,1.2 + random_func(1,3,true)/10) 
        sound_play(sound_get("wissn"),false,noone,1,1 + random_func(1,3,true)/10)  
    }
    
    
      
        
    if window == 2 && window_timer == 2 && !hitpause {
        move_cooldown[AT_NSPECIAL_2] = 20
        shake_camera(6,6)
        sound_play(asset_get("sfx_abyss_explosion"),false,noone,1,1.2 + random_func(1,3,true)/10)  
        sound_play(sound_get("wissn"),false,noone,1,1 + random_func(1,3,true)/10)  
        spawn_hit_fx(x,y,lighten)
        spawn_hit_fx(x,y,sw)
        spawn_hit_fx(x,y,sw2)
        if !free {
            spawn_base_dust(x - 50, y, "dash_start", 1)
            spawn_base_dust(x + 50, y, "dash_start", -1)
             spawn_base_dust(x - 120, y, "dash", 1)
            spawn_base_dust(x + 120, y, "dash", -1)
            spawn_base_dust(x, y, "land", spr_dir)
        }
    }
    
    if window == 2 && window_timer == 6 {
        shock = 0
        shocktimer = 0
    }
    
    if window == 3 && has_hit_player {
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 0);
        window_timer += 2
    }
    
    break;
    
    case AT_TAUNT :    
    
      if !free && window == 1{
          can_jump = true
      }
      
       if window == 1 && taunt_down && window_timer == 16 {
           shocktimer += 1
           window_timer -= 1
       }
    
      if window == 2 && window_timer == 15{
          if free {
              create_hitbox(AT_TAUNT,1,x,y)
              window_timer -= 1
              vsp += 0.4
          } else { 
              shake_camera(4,6)
                sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1.1 + random_func(1,3,true)/20)
               spawn_base_dust(x, y, "land", spr_dir)
               window = 3
               window_timer = 0
          }
      }
    break;
    
    
    case AT_EXTRA_1 :    
    
    if window == 1 {
      if window_timer == 34 && !hitpause{
          create_hitbox(AT_EXTRA_1,1,x - 60*spr_dir,y - 40)
                      sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1)  
          shake_camera(4,4)
          spawn_hit_fx(x - 60*spr_dir,y - 40,305)
          spawn_hit_fx(x,y+4,aih1)
          spawn_hit_fx(x,y+4,aih2)
           sound_play(asset_get("sfx_bird_nspecial"),false,noone,0.6,0.7 + random_func(1,3,true)/10)  
             if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,3,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,0.6,0.7 + random_func(1,3,true)/10)   
            sound_play(sound_get("hith1"),false,noone,1,1 + random_func(1,3,true)/20)
                              spawn_base_dust(x - 50, y, "dash_start", 1)
                 spawn_base_dust(x + 50, y, "dash_start", -1)
                  spawn_base_dust(x - 120, y, "dash", 1)
                 spawn_base_dust(x + 120, y, "dash", -1)
        }
      
      
       if window_timer == 45 && !hitpause{
           create_hitbox(AT_EXTRA_1,2,x + 50*spr_dir,y - 40)
           shake_camera(4,4)
            spawn_hit_fx(x + 50*spr_dir,y - 40,305)
             if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,3,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,0.6,0.7 + random_func(1,3,true)/10)   
            sound_play(sound_get("hith2"),false,noone,1,1 + random_func(1,3,true)/20)
                              spawn_base_dust(x - 50, y, "dash_start", 1)
                 spawn_base_dust(x + 50, y, "dash_start", -1)

        }
      
      
        if window_timer == 53 && !hitpause{
            create_hitbox(AT_EXTRA_1,3,x - 20*spr_dir,y - 40)
            shake_camera(4,4)
            spawn_hit_fx(x - 20*spr_dir,y - 40,305)
             if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,3,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,0.6,0.7 + random_func(1,3,true)/10)   
            sound_play(sound_get("hith1"),false,noone,1,1 + random_func(1,3,true)/20)

                  spawn_base_dust(x - 120, y, "dash", 1)
                 spawn_base_dust(x + 120, y, "dash", -1)
        }
      
      
        if window_timer == 68 && !hitpause{
            create_hitbox(AT_EXTRA_1,4,x + 20*spr_dir,y - 40)
            shake_camera(4,4)
            spawn_hit_fx(x + 20*spr_dir,y - 40,305)
             if bhood {
            sound_play(sound_get("wiss"),false,noone,1,0.9 + random_func(1,3,true)/10)
            }
            sound_play(sound_get("wissn"),false,noone,0.6,0.7 + random_func(1,3,true)/10)   
            sound_play(sound_get("hith2"),false,noone,1,1 + random_func(1,3,true)/20)
                              spawn_base_dust(x - 50, y, "dash_start", 1)
                 spawn_base_dust(x + 50, y, "dash_start", -1)
                  spawn_base_dust(x - 120, y, "dash", 1)
                 spawn_base_dust(x + 120, y, "dash", -1)
        }
      
              
    } 
    
    
    if window == 2 {
              
              if window_timer == 1 && !hitpause{
                  hsp = -3*spr_dir
                  shake_camera(4,4)
                 spawn_base_dust(x, y, "land", spr_dir)
              }
    }
    
    
    break;
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