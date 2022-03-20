//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if (attack == AT_DATTACK){
	if has_hit_player {
		can_jump = true
	}
}

if !hitpause {
if (attack == AT_NSPECIAL){
    
    if window == 1 && window_timer == 1 {
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
    }
    
    if (window == 3){
        
        if spamb < 1 {
        if (special_pressed){
            window = 1;
            window_timer = 0;
            spamb += 1
        }
        }
        

        if spamb >= 1 {
        if (special_pressed){
            window = 1;
            
            if ostyle == 2 {
            window_timer = 6;
            spamb += 1
            sound_play(sound_get("gun"));
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 2 - random_func(1, 5, true));
            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, - 4 + random_func(1, 5, true)*2);
            create_hitbox(AT_NSPECIAL , 2 , x + 30*spr_dir  , y + 14 - random_func(1, 9, true)*3);
            x -= 3 * spr_dir
            }
        }
       }
        
    }
    
}



if (attack == AT_USPECIAL){
    can_fast_fall = false
    if ostyle == 1 or ostyle == 3{
    	sound_play(asset_get("sfx_spin"),false,noone,1,1.5); 
        sound_play(asset_get("sfx_bird_downspecial"),false,noone,.7,1.5); 
       	set_state (PS_PRATFALL)
       	vsp = -14
       	goup = spawn_hit_fx (x , y - 40 , 302)
       	goup.pause = 6
    }
    
        
   if window == 1 && !hitpause {
   	  grelive = 0
       hsp /= 1.2
       vsp /= 1.4
       if window_timer == 1 {
         sound_play(asset_get("sfx_ell_eject"));
       }
   }
   
   if window > 2 {
       can_wall_jump = true
   }
      if window == 3 && !hitpause {
      	

      
       	
          if window_timer % 4 == 0 {
              spawn_hit_fx (x  + 18 - random_func(1, 36, true), y - 10 , 108)
          }
          
          jettime += 1
          
          if jettime > 30 {
          	vsp -= 0.4
          	hsp /= 1.1
          } else {
          	if vsp > -6  {
          	 vsp -= 2
          	}
          }
          

      
      }
      
      if jettime > 45 && (down_down or !free or vsp > 4) {
      	sound_play(asset_get("sfx_ell_eject"),false,noone,0.8,1.15); 
      	if vsp < 6 && down_down {
       		vsp = 10
       	}
       	set_state (PS_PRATFALL)
       	

      }
           
     if ostyle == 2 {   
           if window == 6 or (window > 2 && special_pressed) {
               
               if right_down - left_down != 0  {
                   spr_dir = right_down - left_down
               }
               
            
               create_hitbox(AT_USPECIAL , 3 , x  , y - 60 );
     
             sound_play(asset_get("sfx_ell_eject")); 
             set_attack (AT_JAB) 
             window = 7
             window_timer = 0
            } 
            
            
     }
     
      
}

if (attack == AT_DSPECIAL){
	
    move_cooldown[AT_DSPECIAL] = 30
    
    if window == 7 or window == 6 or window == 5{
    	can_move = false
    	if free {
    		hsp /= 1.08
    		if vsp > 0 {
    		vsp /= 1.2
    		}
    	}
    	
    }
    
    if ostyle == 2 {
    if (window >= 2 && window < 4) or (window == 1 && window_timer > 10) {
        if  jump_pressed or special_pressed {
            
          if right_down - left_down != 0  {
              spr_dir = right_down - left_down
          }
          

          
            window = 8
            window_timer = 0
            vsp = -5.5
            sound_play(asset_get("sfx_ori_stomp_spin")); 
            sound_play(asset_get("sfx_bird_sidespecial")); 
        }
    }
    }
    
    if window != 8 {
    can_fast_fall = false;
    }
    
    if window == 8 && window_timer == 24 {
        window = 4
        window_timer = 1
    }
}


if (attack == AT_JAB){
    
           can_wall_jump = true
           

    
    if has_hit {
        set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 0);
        if window > 7 {
        window_timer += 0.2
        
        }
    } else {
        if window > 7 {
            hsp /= 1.2
        }
        set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 7);
    }
    
    
}



if attack == AT_UTILT && ostyle == 3 {
    if window == 3 && window_timer == 3 && has_hit && bullet == 0 {
                  sound_play(sound_get("SGL"));
                  bullet = 1
    }
    
    if window == 3 && window_timer == 2  {
            if bullet == 1 {
                spawn_hit_fx (x - 30*spr_dir, y - 30, shotgun1 )
                  sound_play(sound_get("SGF"));
                  bullet = 0
                            
              create_hitbox(AT_UTILT , 3 , x + 60*spr_dir, y - 66 );
            }
    }
    
}


if attack == AT_USTRONG {
	
	if has_hit_player && window == 3 && window_timer < 6 {
		hit_player_obj.x += floor((x - 20*spr_dir - hit_player_obj.x)/15)
		hit_player_obj.y += floor( (y - 100 - hit_player_obj.y)/8)
	}
    
    set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, -7 - jettime/10);
    
    if window == 1 {
        
        if window_timer == 1 {
           jettime = 0 
        } 
        if jettime = 2 {
        	jettime = 0
        }
        jettime += 1
          if jettime == 1 or ((jettime == 16 or jettime == 31 or jettime == 46) and ostyle == 4 ) {
                sound_play(asset_get("sfx_ice_shieldup"));
                jettime += 5
            }
    
        if get_gameplay_time() % 6 == 0 {

              if jettime > 0 {
                  spawn_hit_fx (x - 30*spr_dir, y, 27 )
              }
        if ostyle == 4 {      
              if jettime > 15 {
                  spawn_hit_fx (x + 30*spr_dir, y, 27 )
              }
              
              if jettime > 30 {
                  spawn_hit_fx (x - 60*spr_dir, y, 27 )
              }
              
              if jettime > 45 {
                  spawn_hit_fx (x + 60*spr_dir, y, 27 )
              }
        }
        
        }
    }
 if ostyle == 4 {     
    if window == 3 && window_timer == 6 && jettime > 15 {
        create_hitbox(AT_USTRONG , 2 , x + 30*spr_dir, y );
         sound_play(asset_get("sfx_bird_screech"));
    }
    
    if window == 3 && window_timer == 9 && jettime > 30 {
        create_hitbox(AT_USTRONG , 2 , x - 60*spr_dir, y );
        sound_play(asset_get("sfx_bird_screech"));
    }
    
     if window == 3 && window_timer == 12 && jettime > 45 {
        create_hitbox(AT_USTRONG , 2 , x + 60*spr_dir, y );
        sound_play(asset_get("sfx_bird_screech"));
    }
 }
    
}


if attack == AT_FSTRONG {
    can_move = false
    can_fast_fall = false
   if free {
       hsp /= 1.2
   }
   

    
    if window == 1  {
    	
        jettime += 1
    }
   
    
    if window < 5 && has_hit_player {
        spamb = 1
    }

if ostyle != 4 {
	if window == 3 {
		window = 5
		window_timer = 0
		x += 60*spr_dir
		hsp = 4*spr_dir
	}
	vsp = 0
}    
if ostyle == 4 {
	
	if free {
		can_move = false 
		can_fast_fall = false 
		can_wall_jump = true
	if window == 1 {
		hsp /= 1.2
		vsp /= 1.2
	} 
	
	if window == 1 and window_timer > 8  {
		vsp = 0
	}
	
	if window > 1 && window < 5 {
		vsp = 0
	}
	
	if window >= 5 {
		
		if has_hit {
		vsp = 0
		} else {
			vsp /= 1.1
			x += (8 - window) *spr_dir
		}
	}
	
	}
	   set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 15 + jettime*1.5 );
	   set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 3 + jettime/20);
    if window == 4 or (window == 3){
        spawn_hit_fx (x  + 32 - random_func(1, 64, true) + floor(window_timer*strong_charge/3*spr_dir), y - 20 -  random_func(2, 64, true) , esp2)
        spawn_hit_fx (x  - 32 + random_func(1, 64, true), y -  random_func(2, 64, true) , esp2)
    }
    
    if window == 4 && has_hit_player {
        hsp = 0
        x = hit_player_obj.x + 100*spr_dir

    }
    
    if has_hit_player {
        spawn_hit_fx (hit_player_obj.x  + 32 - random_func(1, 64, true), hit_player_obj.y  - 20 -  random_func(2, 64, true) , esp2)
        spawn_hit_fx (hit_player_obj.x  - 32 + random_func(1, 64, true), hit_player_obj.y  -  random_func(2, 64, true) , esp2)
    }
    if spamb == 1 && window_timer % 3 == 0 {
           create_hitbox(AT_FSTRONG , 3 , hit_player_obj.x  + 32 - random_func(1, 64, true), hit_player_obj.y  + 32 -  random_func(2, 64, true));
            hit_player_obj.y += (y - 80 - hit_player_obj.y) / 2
    }
    
    if window == 7 && spamb == 1 {
        create_hitbox(AT_FSTRONG , 4 , hit_player_obj.x , hit_player_obj.y );
         spamb = 0
    }
}

}

if (attack == AT_FAIR or attack == AT_BAIR) and strong_down{
	
	if left_down{
		spr_dir = -1
	} else {
		spr_dir = 1
	}
	
	if window == 1 && window_timer == 1 {
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
	}
	
	if ostyle = 4 && window == 1 && window_timer == 1 {
		set_attack (AT_FSTRONG)
		window = 1
		window_timer = 0
	}
	
	
}

if attack == AT_FSPECIAL {

if ostyle == 2 {    
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, (10 - jettime/10)/1.2 + 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -4 - jettime/10);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60 + jettime/2);
} else {
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 4 );
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -7 );	
}


        move_cooldown[AT_FSPECIAL] = 40 - floor(spamb/3); 
        can_fast_fall = false
    
    if window == 3 {
    	if window_timer == 4 {
      	grelive = 0
    	}
      	
      	if window_timer > 5 {
        can_wall_jump = true
      	}
    }    
    
    if window == 1 {
    	    	grelive = 0	
    	if window_timer == 1 {
    		spawn_hit_fx (x + 6*spr_dir, y - 10, 27 )
    	}
    	
    jettime = 0
    spamb = 0
    
    if (!special_down or ostyle != 2) && window_timer == 11 {
             window = 3
            window_timer = -1
            if ostyle = 2 {
            	vsp = -5
            }
    }
    
    
    }
    

    
    if window == 2 {
        	grelive = 1
        if spamb >= 100 {
        grelive = 0		
        spawn_hit_fx (x - 28*spr_dir , y - 50 , 253)
	    spawn_hit_fx (x - 28*spr_dir , y - 50  , 204)
	    sound_play(sound_get("exp2")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 
	    create_hitbox(AT_FSPECIAL , 2 , x - 20*spr_dir , y - 50  );
        }
        
        if spamb % 20 == 0 or (spamb > 80 && spamb % 3 == 0) {
            sound_play(asset_get("sfx_ell_steam_hit"))
            spawn_hit_fx (x - 26*spr_dir , y - 50 , 109)
        }
        
        if vsp > 0 {
        vsp = 0
        } 
        

    
        if !free {
            y -= 6
            if hsp < 7 && hsp > -7 {
            hsp += 2 * (right_down - left_down) 
            }
        }
        
        if !special_down {
            window = 3
            window_timer = -1
            vsp = -6
        }
        
        jettime += (up_down - down_down) * 4
        spamb += 1
        


        if jettime > 80 {
            jettime = 80
        }
        
        if jettime < -30 {
            jettime = -30
        }
    }
}




if attack == AT_DTILT {
	if has_hit {
		can_jump = true
	}
	
	
}


if attack == AT_DSTRONG {
	
	if window == 3 {
		super_armor = true
		if window_timer % 2 == 0 && window_timer <= 20 {
           sound_play(asset_get("sfx_holy_lightning"))
           
    		spawn_hit_fx (x  + (32 - random_func(1, 40, true))*spr_dir, y - 20 -  random_func(2, 30, true), 27 )

		}
	}
	
	if window < 5 {
		hitpause = false
	}
	
   if window == 5 {
   	
   	    if window_timer == 8 {
   	    	super_armor = false
   	    	create_hitbox(AT_DSTRONG , 2 , x + 1*spr_dir  , y - 40 );
   	    }
   	    
	    if window_timer == 3 {
	    			
	    sound_play(sound_get("exp2")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 

	   
	   if ostyle == 4 {	   	 
	   //	sound_play(sound_get("exp2")); 
	   //sound_play(asset_get("sfx_abyss_explosion")); 
	    spawn_hit_fx (x - 50*spr_dir , y - 80 , 253)
	    spawn_hit_fx (x + 50*spr_dir , y - 80 , 204)
	   spawn_hit_fx (x - 10*spr_dir , y - 20 , 253)
	    spawn_hit_fx (x + 10*spr_dir , y - 20 , 204)
	    
	    spawn_hit_fx (x - 30*spr_dir , y  , 253)
	    spawn_hit_fx (x + 30*spr_dir , y , 204)
	   	
	   }
	   
	    spawn_hit_fx (x , y - 60 , 253)
	    spawn_hit_fx (x , y - 60 , 204)
	    

	    
	    
	    }
	    
	    if window_timer == 2 {
	   
	    if ostyle == 4 {
	    spawn_hit_fx (x + 50*spr_dir , y - 80 , 253)
	    spawn_hit_fx (x - 50*spr_dir , y - 80 , 204)
	    spawn_hit_fx (x + 10*spr_dir , y - 20 , 253)
	    spawn_hit_fx (x - 10*spr_dir , y - 20 , 204)
	    
	    spawn_hit_fx (x + 30*spr_dir , y  , 253)
	    spawn_hit_fx (x - 30*spr_dir , y , 204)
	    	
	    }
	    
	    spawn_hit_fx (x , y - 20 , 253)
	    spawn_hit_fx (x , y - 20 , 204)
	    
	    
	    
	    }
	    	    	    	    
   	
   }
} 
   
   
if attack == AT_NAIR && ostyle == 3 {

if window == 1 && window_timer == 1 {
	set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
}

if gun == 1 {
	
	if window >= 2 and window <= 4{
		if window_timer % 2 == 0 {
			sound_play(sound_get("gun")); 
			
		if ( window_timer % 2 == 0) {	
			if nbullet > 0 {
			nbullet -= 1
			}
		}
		
		}
	}
	
	if window == 4 {
		gun = 0
	}
}   
	
}

if attack == AT_BAIR && ostyle == 3 {
   
  if window == 3 and bbullet == 1 {
		if window_timer % 1 == 0 {
			if window_timer % 3 == 0 or window_timer == 1 { 
			sound_play(sound_get("gun1"));
			}
			if window_timer < 8 {
			create_hitbox(AT_BAIR , 3 , x - 80*spr_dir  , y + 60 - window_timer*20 );
			}
		}
   }
	
   if (window == 4 or (window > 2 && !free)) && bbullet == 1  {
   	bbullet = 0
   }

}

if attack == AT_DAIR{
	if window == 4 && window_timer == 1 {
		
		if dbullet == 1 {
			create_hitbox(AT_DAIR , 3 , x + 8*spr_dir, y - 30 );
			dbullet = 0
		}
	}
	
	if window == 3 {
	   	spawn_hit_fx (x + 8*spr_dir, y + 20, 3)
	}
	
	if window == 4 && has_hit && dbullet == 0 && ostyle == 3 && window_timer > 1 {
		dbullet = 1
		sound_play(sound_get("SGL"));
		sound_play(sound_get("GL"));
	}
		
}


if attack == AT_TAUNT {
	if obabo > 0 {
		if window == 1 && window_timer == 1 && down_down {
			set_attack (AT_EXTRA_1)
			window = 1
			window_timer = 0
		}
	}
}


if attack == AT_EXTRA_1 {
	
	if window >= 2 {
					suppress_stage_music( 0, 20 );	
		bullet = 0


nbullet = 0
bbullet = 0
fbullet = 0
dbullet = 0

gun = 0

		invincible = true
		if window == 2 && window_timer == 1{
			sound_play(asset_get("sfx_ori_charged_flame_charge2"));	
			spawn_hit_fx (x + 36*spr_dir, y - 72, 196 )
			spawn_hit_fx (x + 32*spr_dir, y - 72, 156 )
		}
		create_hitbox(AT_EXTRA_1 , 5 , x, y - 80 );
		spawn_hit_fx (x  + 150 - random_func(1, 300, true), y + 70 - random_func(2, 300, true) , esp2)
		
		if jump_pressed {
			otime = 900
		    sound_play(asset_get("sfx_kragg_rock_pillar"));
		    spawn_hit_fx (x, y - 40, 115);
		    sound_play(sound_get("obolaugh"));
	        obabo -= 1
	        ostyle = 1
	        move_cooldown[AT_EXTRA_1] = 60
	        set_state(PS_PRATLAND)
		}
		
		if special_pressed {
			otime = 900
			sound_play(sound_get("exp2"));
		    spawn_hit_fx (x, y - 40, 115);
	        sound_play(asset_get("mfx_confirm"));	
	        obabo -= 1
	        ostyle = 2
	        move_cooldown[AT_EXTRA_1] = 60
	        set_state(PS_PRATLAND)
		}
		
		if attack_pressed {
			otime = 900
			sound_play(sound_get("SGL"));
			sound_play(sound_get("GL"));
		    spawn_hit_fx (x, y - 40, 115);
	        sound_play(asset_get("mfx_confirm"));	
	        obabo -= 1
	        ostyle = 3
	        move_cooldown[AT_EXTRA_1] = 60
	        set_state(PS_PRATLAND)
		}
		
		if left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed {
			otime = 900
			sound_play(asset_get("sfx_bird_screech"));
			sound_play(sound_get("slicen"));
		    spawn_hit_fx (x, y - 40, 115);
	        sound_play(asset_get("mfx_confirm"));	
	        obabo -= 1
	        ostyle = 4
	        move_cooldown[AT_EXTRA_1] = 60
	        set_state(PS_PRATLAND)
		}
		
		if shield_pressed {
	        spawn_hit_fx (x, y - 40, 115);
	        sound_play(asset_get("mfx_back"));	
	        sound_play(asset_get("sfx_diamond_collect"));	
	        obabo -= 1
	        ostyle = 0
	        move_cooldown[AT_EXTRA_1] = 0
	        set_state(PS_PRATLAND)
	        take_damage(player, -1, -10)
		}
		
	}
	
	if window == 3 && window_timer == 119  {
		spawn_hit_fx (x, y - 40, 115);
	    sound_play(asset_get("mfx_back"));	
	    sound_play(asset_get("sfx_diamond_collect"));	
	    obabo -= 1
	    move_cooldown[AT_EXTRA_1] = 0
	    set_state(PS_PRATLAND)
	    take_damage(player, -1, -10)
	}
	
}

}


	
/////with hitpause



