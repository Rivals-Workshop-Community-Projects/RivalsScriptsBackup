///
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL ){
    trigger_b_reverse();
}

switch attack {
    
    case AT_JAB :
        
        if btrain >= 100 {
            create_hitbox(AT_NSPECIAL,2,x,y - 50)
        }
        
        if !hitpause {
            
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_forsburn_combust"),false,noone,.8,1.3)
        }
        
        if window != 1 {
            can_jump = true
        }
        }
        
    break;
    
    case AT_NAIR :
        
        if btrain >= 100 {
            create_hitbox(AT_NSPECIAL,2,x,y - 50)
        }
        
        if hitpause {
            window_timer += 0.5
        }
        if !hitpause {
            
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_forsburn_combust"),false,noone,.8,1.2)
        }
        
        
        }
        
    break;
    
    case AT_FTILT :
        
        if !hitpause {
            
        if window == 1 && window_timer == 6 {
            sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
        }
        
        
        }
        
    break;
    
    
    case AT_DATTACK :
        
        if !hitpause {
            
        if window == 1 && window_timer == 10 {
            sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1,1.2)
            sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.4)
        }
        
        if window == 1{
            hsp += 0.7*spr_dir
        }
        
        if window == 2  {
            hsp = 2*spr_dir
        }
        
        }
        
    break;
    
    case AT_DTILT :
        
        if !hitpause {
            
        if window == 1 && window_timer == 3 {
            sound_play(asset_get("sfx_swipe_weak2"),false,noone,1,1)
        }
        
        }
        
    break;
    
    case AT_UTILT :
        
        if has_hit && !hitpause {
        	window_timer += 0.5
        }
        
        if hitpause {
            y -= 2
            x += 1*spr_dir
                //if hit_player_obj.state_cat == SC_HITSTUN {
                //    hit_player_obj.y += floor((y - 100 - hit_player_obj.y )/8)
                //}
                
                window_timer += 1
        }
        
        if !hitpause {
            can_move = false
        if window == 1 && window_timer == 7 {
            sound_play(asset_get("sfx_abyss_explosion"),false,noone,1,1.6)
            shake_camera(2,2)
            spawn_base_dust(x, y, "land", spr_dir)
        }
        
        }
        
    break;
    
    
    case AT_BAIR :
        
        if !hitpause {
        if window == 1 && window_timer == 5 {
            sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
        }
        
        }
        
    break;
    
    case AT_DAIR :
        
        if !hitpause {
        	if window == 1 && window_timer == 1 {
        		set_attack_value(AT_DAIR, AG_CATEGORY, 1);
        	}
        if window == 1 && window_timer == 10 {
            sound_play(asset_get("sfx_swipe_medium1"),false,noone,1,1)
        }
        
        }
        
    break;
    
     case AT_UAIR :
        
        if !hitpause {
        if window == 1 && window_timer == 5 {
            sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,1)
        }
        
        }
        
    break;
    
    case AT_FAIR :
        
        if !hitpause {
        if window == 1 && window_timer == 6 {
            sound_play(asset_get("sfx_spin"),false,noone,1,1)
        }
        
     }
        
    break;
    
    case AT_FSTRONG :
        
        if !hitpause {
            
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1.2)
        }
        
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,1,1.2)
        }
        
        if window == 2 && window_timer == 3 {
            sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1,1.2)
             sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.2)
        }
        
     }
        
    break;

    case AT_DSTRONG :
        
        if !hitpause {
            
        if window == 2 && window_timer == 3 {
            sound_play(asset_get("sfx_ori_stomp_hit"),false,noone,1,1)
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1)
            shake_camera(6,6)
        }
        
     }
        
    break;
    
    case AT_USTRONG :
    draw_indicator = false
    break;
    
    
    case AT_TAUNT:
   
    invince_time = 0
    invincible = false
    
    if free {
    	vsp = 1.5
    }
    
    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    vsp /= 1.4
    if window_timer == 4*7 {
    	spawn_hit_fx(x,y,nf1)
    }
    
    if window_timer > 4*4 && taunt_pressed{
    	spawn_hit_fx(x,y,nf1)
    	window_timer = 1
    	spawn_base_dust(x,y,"land",spr_dir)
    	sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1,1.2)
    	if btrain < 100 {
    		btrain += 1
    	}
    	if htrain < 100 {
    		htrain += 1
    	}
    	if atrain < 100 {
    		atrain += 1
    	}
    	if ltrain < 100 {
    		ltrain += 1
    	}
    }
    
    break;
    
    case AT_FSPECIAL :
        
        can_move = false
        can_fastfall = false
        if window < 3 {
            hsp /= 1.05
        } else {
            vsp /= 1.15
            can_wall_jump = true
        }
        
        if window == 1 && window_timer % 3 == 0 && !hitpause {
            spawn_base_dust(x,y,"dash",spr_dir)
        }
        
        if window == 2 && window_timer == 3 && free {
        	vsp = -6
        }
        
        if !hitpause {
            if window == 1 && window_timer == 1 {
                spawn_base_dust(x,y,"dash_start",spr_dir)
                hsp = 10*spr_dir
                sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1,1.2)
                sound_play(asset_get("sfx_bird_dspecial"),false,noone,1,1)
            }
            
        }
        
    break;
    
    case AT_DSPECIAL :
    
    print(move_cooldown[AT_DSPECIAL])
        can_move = false
        can_fast_fall = false
        
        if window == 1 && state_timer == 1 && !hitpause {
            sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1)
        }
        
        if window == 1 && free {
            if window_timer % 6 == 0 or window_timer == 1{
		      spawn_base_dust(x,y,"land",spr_dir)
	        }
        }
        
        if window < 3 {
            state_timer = 1
            if vsp > 0 {
                vsp = 0
            }
            vsp /= 1.2
            hsp /= 1.1
        }
        
        if window == 4 {
            can_wall_jump = true
            vsp /= 1.3
            hsp /= 1.1
        }
        
        if window == 2 && window_timer == 8 && !hitpause{
                
                spawn_base_dust(x,y,"dash_start",spr_dir)
                x += 10*spr_dir
                  spawn_base_dust(x - 20*spr_dir,y,"dash",spr_dir*-1)
                 sound_play(asset_get("sfx_kragg_rock_pillar")) 
                sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1,.8)
                hsp = 8*spr_dir
                if free {
                  spawn_base_dust(x,y,"land",spr_dir)
                    vsp = -3
                } else {
                    shake_camera(3,2)
                }
            }
            
        if window == 3 && !hitpause {
            if window_timer % 12 == 0 {
            create_hitbox(AT_DSPECIAL,1,x,y)
            }
            super_armor = true
            
            
            if state_timer > 120 or (special_down && state_timer > 30) {
                 window = 4
                 window_timer = 0
                 super_armor = false
                  with (asset_get("pHitBox")) {
                        if player_id == other.id {
                          destroyed = true;
                        }
                    }
            }
            
            if has_hit_player {
                can_jump = true
            }
            
            if window_timer == 3*4 or window_timer == 7*4 {
                sound_play(asset_get("sfx_kragg_rock_shatter"))
                 spawn_base_dust(x,y,"dash_start",spr_dir)
                  spawn_base_dust(x - 20*spr_dir,y,"dash",spr_dir*-1)
                 if free {
                     spawn_base_dust(x,y,"land",spr_dir)
                    vsp = -2
                } else {
                    shake_camera(3,2)
                }
            }
            
            if move_cooldown[AT_DSPECIAL] == 0 {
            hsp = (8 - free*2)*spr_dir
            } else {
            hsp = move_cooldown[AT_DSPECIAL]/-3*spr_dir	+ (8 - free*2)*spr_dir
            }
        }
        
    break;
   
    case AT_USPECIAL :
       draw_indicator = false
       uspecside = spr_dir
       
       can_move = 0
       can_fast_fall = 0 
       hsp = 0
       vsp = -0.6
         
         if state_timer == 1 {
         	prat_land_time = 8;
         }
         
       if state_timer == 1 && !hitpause {
           spawn_hit_fx(x,y - 110, 305)
           create_hitbox(AT_USPECIAL,1,x,y - 110)
           sound_play(sound_get("charge2"),false,noone,1,.8)
           sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1,1)
           
                    fxhup = spawn_hit_fx(x,y - 120,hup)
         fxhup.depth = -100
         sound_play(asset_get("sfx_coin_collect"))
         //htrain += 5
         
       }
       
       if state_timer % 8 == 0 {
           spawn_base_dust(x,y,"land",spr_dir)
       }
       
       
       
       if state_timer > 90 {
           set_state(PS_PRATFALL)
           state_timer = 1
           vsp = -10
       }
       
       
    break;   
       
    case AT_NSPECIAL :   
    
    move_cooldown[AT_NSPECIAL] = 30
    
    if window == 1 {
    	 if right_pressed {
             spr_dir = 1
         }
         
         if left_pressed {
             spr_dir = -1
         }
    }
    
    
    if window == 1 && window_timer == 1 && !hitpause {
    
        sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1)
    }
    

    
    if window == 3 {
        if window_timer == 1  && !hitpause{
            hsp = 8*spr_dir
                  spawn_base_dust(x,y,"dash_start",spr_dir)
                  spawn_base_dust(x - 20*spr_dir,y,"dash",spr_dir*-1)
        }
        
        if free {
            can_move = false
            hsp /= 1.1
        }
        
        if window_timer % 4 == 0 && !hitpause && free{
            spawn_base_dust(x ,y,"dash",1)
            spawn_base_dust(x ,y,"dash",-1)
        }
    }
    
    if window >= 3 {
     
     if has_hit_player && hit_player_obj.super_armor == false {
         
         hit_player_obj.state_timer -= 1
         
         if free {
         	hsp /= 1.2
             vsp = 0
             if state_timer % 5 == 0 {
                 spawn_base_dust(x ,y,"dash",spr_dir*-1)
                spawn_base_dust(x ,y,"dash_start",spr_dir)
             }
         }
         
         if window == 4 {
         window_timer -= 1
         }
         
         soft_armor = 999
         
         hit_player_obj.hsp = 0
         hit_player_obj.vsp = 0
         
         hit_player_obj.fall_through = true
         
         hit_player_obj.x += floor((x + 32*spr_dir - hit_player_obj.x)/4)
         hit_player_obj.y += floor((y - 4 - hit_player_obj.y)/4)
         
         if state_timer > 15 {
         if special_down or state_timer >= 45{
             set_attack(AT_EXTRA_1)
             window = 1
             window_timer = 1
         }
         
         if right_down {
             spr_dir = 1
             set_attack(AT_EXTRA_1)
             window = 2
             window_timer = 1
         }
         
         if left_down {
             spr_dir = -1
             set_attack(AT_EXTRA_1)
             window = 2
             window_timer = 1
         }
         
         if up_down {
             set_attack(AT_EXTRA_1)
             window = 3
             window_timer = 1
         }
         
         if down_down {
             set_attack(AT_EXTRA_1)
             window = 4
             window_timer = 1
         }
         
         }
         
     }   
        
        
    }
    
    break;
 
     case AT_EXTRA_1 :      
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
        can_move = 0
        can_fast_fall = 0 
        hsp /= 1.06
        if free {
             vsp = 0
             if state_timer % 6 == 0 {
                 spawn_base_dust(floor(x) ,floor(y),"dash_start",spr_dir*-1)
                spawn_base_dust(floor(x) ,floor(y),"dash_start",spr_dir)
             }
         }
         
         if window == 1 && window_timer == 4*7 {
             spawn_hit_fx(x,y,nf1)
         }
         if window == 2 && window_timer == 4*5 {
             spawn_hit_fx(x,y,nf2)
         }
         if window == 3 && window_timer == 4*9 {
             spawn_hit_fx(x,y,nf3)
         }
         if window == 4 && window_timer == 4*5 {
         	set_attack_value(AT_DAIR, AG_CATEGORY, 2);
             spawn_hit_fx(x,y,nf4)
             attack_end()
             vsp = -5
             x = hit_player_obj.x
             y = hit_player_obj.y - 20
             set_attack(AT_DAIR)
             window = 1
             window_timer = 5
             sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.2)
         }
         
         if window == 1 && window_timer < 4*4 {
               hit_player_obj.hsp = 0
               hit_player_obj.vsp = 0
               
               hit_player_obj.x += floor((x - 16*spr_dir - hit_player_obj.x)/4)
               hit_player_obj.y += floor((y - 6 - hit_player_obj.y)/4)
         }
         
         if window == 2 && window_timer < 4*2 {
               hit_player_obj.hsp = 0
               hit_player_obj.vsp = 0
               
               hit_player_obj.x += floor((x + 46*spr_dir - hit_player_obj.x)/4)
               hit_player_obj.y += floor((y - 16 - hit_player_obj.y)/4)
         }
         
         if window == 3 && window_timer <= 4*6 {
             if window_timer == 1 {
                 hit_player_obj.vsp = -4
             }
               hit_player_obj.hsp = 0
               
               hit_player_obj.x += floor((x - 6*spr_dir - hit_player_obj.x)/4)
               
               if window_timer == 4*5 or window_timer == 4*6 {
                   hit_player_obj.y -= 4
               }
         }
         
         if window == 4 && window_timer < 4*2 {
         	
             if window_timer == 1 {
             	y -= 1
                 hit_player_obj.vsp = -2
             }
               hit_player_obj.hsp = 0
               
               hit_player_obj.x += floor((x - 6*spr_dir - hit_player_obj.x)/4)
         }
         
     break ;
     
          case AT_EXTRA_3 :
          
          if window_timer == 1 {
              
              sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1)
          }
          
          if window_timer == 64 {
              sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
              sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1)
              shake_camera(2,2)
              
          }
          
          if window_timer == 90 {
              spawn_hit_fx(x,y-50,306)
            sound_play(asset_get("sfx_ori_stomp_hit"),false,noone,1,1)
            sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1)
            sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1,1)
            shake_camera(6,6)
          }
          
          break;
}
///

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