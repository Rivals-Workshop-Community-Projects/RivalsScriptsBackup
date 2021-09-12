///
if (attack == AT_USPECIAL || attack == AT_NSPECIAL || attack == AT_FSPECIAL ){
    trigger_b_reverse();
}


/// 

if !hitpause {
    
    if attack == 49 {
        
        if window > 1 {
        	hitpause = false
        }
        
        if window == 1 {
            
            if window_timer == 2 {
                    spawn_hit_fx(x,y - 30,304)    
                    sound_play(sound_get("sage"),false,noone,1.2)
                    sound_play(asset_get("sfx_absa_whip3"),false,noone,1)
                    sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
                    spawn_hit_fx(x,y,lighten)
            }
            
            vsp /= 2
            hsp /= 2
         }
         
        if window == 2 {
            vsp = -12
            if window_timer = 1 {
                spawn_hit_fx(x,y,304)
                 sound_play(sound_get("fspec"),false,noone,0.8)
            }
        }
        
        if window == 3 && vsp > 0 {
            vsp /= 1.15
        }

        
        if state_timer % 8 == 0 && window != 1 {
            sound_play(sound_get("bathit"),false,noone,0.8)
            sound_play(sound_get("b1"),false,noone,0.6)
            sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8)
            sound_play(asset_get("sfx_ori_energyhit_medium"))
        set_hitbox_value(49, 1, HG_ANGLE, random_func(3,360,true));
                create_hitbox(49 ,1, x, y)
        create_hitbox(AT_NSPECIAL,3, x + 20*spr_dir - random_func(1,30,true) , y - 20 - random_func(2,30,true))
        }
        
        if state_timer < 160 {
            set_window_value(49, 3, AG_WINDOW_TYPE, 9);
        } else {
            set_attack(AT_USPECIAL)
            window = 2 
            window_timer = 0
    create_hitbox(AT_NSPECIAL,3, x + 20*spr_dir - random_func(1,30,true) , y - 20 - random_func(2,30,true))
    create_hitbox(AT_NSPECIAL,3, x + 20*spr_dir - random_func(1,30,true) , y - 20 - random_func(2,30,true))
    create_hitbox(AT_NSPECIAL,3, x + 20*spr_dir - random_func(1,30,true) , y - 20 - random_func(2,30,true))
    create_hitbox(AT_NSPECIAL,3, x + 20*spr_dir - random_func(1,30,true) , y - 20 - random_func(2,30,true))
    create_hitbox(AT_NSPECIAL,3, x + 20*spr_dir - random_func(1,30,true) , y - 20 - random_func(2,30,true))
    create_hitbox(AT_NSPECIAL,3, x + 20*spr_dir - random_func(1,30,true) , y - 20 - random_func(2,30,true))    
        }
        
        super_armor = false 
        soft_armor = 621
    }
    if sagemode == 6 && move_cooldown[AT_EXTRA_3] = 0 {
        if attack != AT_FSPECIAL && attack != AT_DSPECIAL && attack != AT_USPECIAL
        && attack != AT_NSPECIAL && attack != AT_TAUNT{
            
        if (attack == AT_FTILT or attack == AT_JAB or attack == AT_UTILT or attack == AT_DTILT or attack == AT_NAIR) and window == 2  && window_timer <= 1    {
        create_hitbox(AT_NSPECIAL,3,x + 46*spr_dir ,y - 40)
        //create_hitbox(AT_NSPECIAL,3,x + 42*spr_dir ,y - 44)
        //create_hitbox(AT_NSPECIAL,3,x + 44*spr_dir ,y - 46)
        //create_hitbox(AT_NSPECIAL,3,x + 48*spr_dir ,y - 47)
        //create_hitbox(AT_NSPECIAL,3,x + 41*spr_dir ,y - 32)
                sagemode = 0
                spawn_hit_fx(x - 26*spr_dir, y - 50, 305)
        }
        
        if (attack == AT_DAIR  or attack == AT_DATTACK) and window == 2  && window_timer <= 1   {
        create_hitbox(AT_NSPECIAL,3,x + 46*spr_dir ,y - 20)
                sagemode = 0
               spawn_hit_fx(x - 26*spr_dir, y - 50, 305)
        }
        
        if (attack == AT_UAIR) and window == 2  && window_timer <= 1  {
        create_hitbox(AT_NSPECIAL,3,x + 26*spr_dir ,y - 60)
                sagemode = 0
               spawn_hit_fx(x - 26*spr_dir, y - 50, 305)         
        }
        
        if (attack == AT_DSTRONG) and window == 2  && window_timer == 6  {
        create_hitbox(AT_NSPECIAL,3,x + 46*spr_dir ,y - 20)
                sagemode = 0
               spawn_hit_fx(x - 26*spr_dir, y - 50, 305)
        }
        
        if (attack == AT_USTRONG ) and window == 2  && window_timer == 8  {
        create_hitbox(AT_NSPECIAL,3,x + 26*spr_dir ,y - 60)
                sagemode = 0
               spawn_hit_fx(x - 26*spr_dir, y - 50, 305)
        }

        
        if (attack == AT_FSTRONG) and window == 3  && window_timer == 2  {
        create_hitbox(AT_NSPECIAL,3,x + 26*spr_dir ,y - 60)
                sagemode = 0
               spawn_hit_fx(x - 26*spr_dir, y - 50, 305)
        }
        
        
           if attack == AT_BAIR and window == 2  && window_timer <= 1 {
        create_hitbox(AT_NSPECIAL,3,x - 46*spr_dir ,y - 30)
                sagemode = 0
               spawn_hit_fx(x - 26*spr_dir, y - 50, 305)
        }
        
        if attack == AT_FAIR and window == 2  && window_timer == 4 {
            create_hitbox(AT_NSPECIAL,3,x + 46*spr_dir ,y - 40)
                 sagemode = 0
               spawn_hit_fx(x - 26*spr_dir, y - 50, 305)
        }
        
        if window == 2  && window_timer <= 1 {
        
        if attack == AT_JAB or attack == AT_UAIR or attack == AT_FTILT or attack == AT_DAIR or attack == AT_NAIR or attack == AT_DTILT
        or attack == AT_FAIR {
            spawn_hit_fx(x + 46*spr_dir ,y - 40, 302)
        sound_play(sound_get("bathit"),false,noone,0.8)
        sound_play(sound_get("b1"),false,noone,0.6)
        sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8)
        sound_play(asset_get("sfx_ori_energyhit_medium"))
        }
        
        if attack == AT_DATTACK {
        		    sound_play(asset_get("sfx_ori_energyhit_medium"))
		   sound_play(asset_get("sfx_kragg_rock_land"))
        }
        
        if attack == AT_UTILT {
        		    sound_play(asset_get("sfx_ori_energyhit_medium"))
		   sound_play(asset_get("sfx_kragg_rock_land"))
        }
        }

        
        }
    }


    if attack == AT_DTILT {
        if window == 3 && window_timer == 4 && !has_hit{
            sound_play(sound_get("bonk"),false,noone,0.8)
            shake_camera(2,2)
        }
    }
    
    if attack == AT_FSTRONG or attack == AT_DSTRONG or attack == AT_USTRONG{
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_shovel_brandish"))
            sound_play(asset_get("sfx_ori_bash_hit"))
        }
        
        if window == 2 && window_timer == 1 {
            sound_play(asset_get("sfx_burnapplied"),false,noone,2)
        }
    }
    
       if attack == AT_USTRONG{
        if window == 2 && window_timer == 1 {
            sound_play(asset_get("sfx_clairen_swing_mega_instant"))
        }
    }

       if attack == AT_DSTRONG{
        if window == 2 && window_timer == 1 {
            sound_play(asset_get("sfx_clairen_swing_mega_instant"))
            sound_play(asset_get("sfx_clairen_spin"))
        }
    }
    
    
    if attack == AT_NAIR{
        if window == 1 && window_timer == 6 {
            sound_play(asset_get("sfx_swipe_medium1"))
            sound_play(asset_get("sfx_spin"))
        }
        
        if has_hit_player && window < 4 {
            window = 4
            window_timer = 1
        }
    }
    
    
    if attack == AT_FAIR{
        if window == 2 && window_timer == 1 {
            sound_play(asset_get("sfx_swipe_heavy2"))
        }
    }
    
    if attack == AT_DATTACK {
        if window < 3 {
        vsp = 0
        }
        
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_absa_dattack"),false,noone,0.8)
        }
        
        if window == 1 && window_timer == 8 {
            x += 10*spr_dir
            sound_play(asset_get("sfx_absa_dashup"),false,noone,0.8)
        }
        
         if window >= 2 {
            hsp /= 1.1
        }
        
         if window == 3 && window_timer == 1 && !free {
            sound_play(asset_get("sfx_land"),false,noone,1)
        }
        
        if has_hit_player && window < 3 {
            window = 3
            window_timer = 1
            hsp /= 1.2
        }
        
    }

    
        if attack == AT_NSPECIAL {
            

            if ncharge < 65 {
                move_cooldown[AT_NSPECIAL] = 10
            } else {
            	move_cooldown[AT_NSPECIAL] = 0
            }
            
        if window == 1 {
            
            if window_timer == 1 {
                ///if sagemode >= 0 {
                ncharge = 0
                ///} else {
                    //ncharge = 50
                    //sagemode += 1
                ///}
                
                ///if sagemode == 5 {
                ///    shake_camera(6,8)
                ///    spawn_hit_fx(x, y - 36, lighten)
                ///    spawn_hit_fx(x, y - 36, 306)
                ///    set_attack(AT_DSPECIAL)
                ///    window = 2
                ///    window_timer = 2
                ///    sound_play(sound_get("sage"),false,noone,1.2)
                ///    sound_play(asset_get("sfx_absa_whip3"),false,noone,1)
                ///    sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
                ///    sagemode = -5
                ///}
                
                spawn_hit_fx(x + 22*spr_dir, y - 36, 302)
            }
            if ncharge == 20 {
                sound_play(asset_get("sfx_zetter_shine"),false,noone,1.2)
                spawn_hit_fx(x + 22*spr_dir, y - 36, 302)
                ncharge += 10
            }
            
             if ncharge == 50 {
                 spawn_hit_fx(x + 22*spr_dir, y - 36, 305)
                sound_play(asset_get("sfx_zetter_shine_charged"),false,noone,1)
                ncharge += 5
            }
            
            if (special_down and ncharge <= 20) && window_timer > 1 {
                ncharge += 1
                window_timer = 4
            }
        }
        
        if window == 2 && window_timer == 1 {
             if ncharge < 20 {
               create_hitbox(AT_NSPECIAL,1,x+20*spr_dir,y-56)
           }
           
           if ncharge >= 20 && ncharge < 50 {
               create_hitbox(AT_NSPECIAL,2,x+20*spr_dir,y-56)
           }
           
           if ncharge >= 50 && ncharge < 65 {
               create_hitbox(AT_NSPECIAL,3,x+20*spr_dir,y-56)
           }    
           
           if ncharge >= 65 {
               
               if sagemode > 0 {
               	create_hitbox(AT_NSPECIAL,3,x+20*spr_dir,y-56)
               }
                        sagefx1 = x
                        sagefy1 = y
                    
                    
                        sagefx2 = x
                        sagefy2 = y
                    
                        sagefx3 = x
                        sagefy3 = y
                    
                    
                        sagefx4 = x
                        sagefy4 = y
                        
                    
                        sagefx5 = x
                        sagefy5 = y
    
                sound_play(sound_get("sage"),false,noone,1.2)
                sound_play(asset_get("sfx_absa_whip3"),false,noone,1)
                sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
                    spawn_hit_fx(x, y - 36, 306)
                    sagemode = 6
           }   
           
        }
        
          if state_timer <= 5 {
              if left_down && !right_down {
                  spr_dir = -1
              }
              if right_down && !left_down {
                  spr_dir = 1
              }
          }   
        }


        if attack == AT_FSPECIAL {
            can_fast_fall = false
            if window == 2 {
                hsp /= 1.08
                if vsp > 0 {
                vsp /= 1.2
                }
            }
        if window == 1 {
            if window_timer == 1 {
                     sound_play(asset_get("sfx_absa_whip"),false,noone,1)
                                      sound_play(asset_get("sfx_absa_whip3"),false,noone,1)
            }
            
             if window_timer == 11 && voiced == 1{
             	sound_play(sound_get("b1"),false,noone,0.8,0.9)
                 sound_play(sound_get("fspec"),false,noone,0.6)
             }
             
             if window_timer == 11 && voiced == 0{
             	sound_play(sound_get("b1"),false,noone,0.8,0.9)
             }
        }
        }
       
       if attack == AT_DSPECIAL {
           
              if state_timer <= 5 {
              if left_down && !right_down {
                  spr_dir = -1
              }
              if right_down && !left_down {
                  spr_dir = 1
              }
          }   
        
        
        if window == 2 && window_timer == 1 {
            hsp /= 2
            
            move_cooldown[AT_DSPECIAL] = 120
            //spawn_hit_fx(x,y-15,sw)
            spawn_hit_fx(x,y-15,sw2)
                            //create_hitbox(AT_DSPECIAL,11, x + 10 * spr_dir , y - 36)
               sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,1.2)
               sound_play(asset_get("sfx_absa_whip3"),false,noone,1.2)
                sound_play(asset_get("sfx_swipe_weak1"))
        }   
           
       }
       
       
      if attack == AT_USPECIAL {
          
          can_fast_fall = false
          
          if super_armor {
       super_armor = false 
        soft_armor = 621
          }
          if uspecbat > 8 {
              uspecbat = 8
          }
          if window == 1 {
          	if window_timer == 1 {
          		sound_play(asset_get("sfx_bird_sidespecial_start"))
          		sound_play(asset_get("sfx_bird_downspecial"))
          	}
            hsp /= 1.2   
            uspecbat = 0
          }
          
          if window == 2 {
              if window_timer % 3 == 0 {
              create_hitbox(AT_USPECIAL,1, x,y)
              }
              if uspecbat == 0 {
              vsp = -7
              } else {
              vsp = -12	
              }
              
              if uspecbat == 0 {
                hsp /= 1.05   
             	} else {
             		spawn_hit_fx(x - 40 + random_func(1,80,true),y - 10 + random_func(2,20,true), bfx5)
          		if left_down {
          			x -= 4
          		}
          		if right_down {
          			x += 4
          		}
          	  }
              
              if has_hit_player && hit_player_obj.visible = true {
                  hit_player_obj.x += floor((x - hit_player_obj.x)/3)
                  hit_player_obj.y += floor((y - 30 - hit_player_obj.y)/4)
              }
          }
          
          if window == 3 {
              vsp /= 1.2
              
          	  
              if window_timer == 6 && uspecbat >= 1 {
                  sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,2)
                  create_hitbox(AT_NSPECIAL,11, x - 60 ,y - 30)
                  create_hitbox(AT_NSPECIAL,11, x + 60 ,y - 30)
              }
              
              if window_timer == 16 && uspecbat > 1 {
                  window_timer = 5
                  uspecbat -= 1
                  vsp = -6
              }
          }
          
        if window == 1 && window_timer == 14 {
            sound_play(asset_get("sfx_absa_whip3"),false,noone,1)
            sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
        }   
         
         if window == 2 && window_timer == 1 {
            sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1)
         }  
        if window == 2 && window_timer == 16 {
            sound_play(asset_get("sfx_bird_upspecial"),false,noone,1)
        }     
        
        if window > 1 {
            can_wall_jump = true
        }
        
        }
       
       if attack == AT_TAUNT {
       	
       	   if voiced == 1 {
           if window < 10 {
           	suppress_stage_music( 0.5, 100 );
           }
              if window == 1 taunt_sound = sound_play(sound_get("tauntdance"));
       	   }
       	   
       	   if voiced == 0 {
              if window == 1 && window_timer == 1 {
              	sound_stop(asset_get("sfx_spin"))
              	taunt_sound = sound_play(asset_get("sfx_spin"))
              }
              if window == 4 && window_timer == 1 {
              	sound_stop(asset_get("sfx_spin"))
              	taunt_sound = sound_play(asset_get("sfx_spin"),false,noone,1,0.85)
              }
              if window == 6 && window_timer == 1 {
              	sound_stop(asset_get("sfx_spin"))
              	taunt_sound = sound_play(asset_get("sfx_spin"),false,noone,1,0.7)
              }

       	    }
       	   
       	   
       	   
       	   
           if window >= 3 && !taunt_down {
               set_state(PS_IDLE)
               sound_stop(taunt_sound);
           }
       }
}
    
