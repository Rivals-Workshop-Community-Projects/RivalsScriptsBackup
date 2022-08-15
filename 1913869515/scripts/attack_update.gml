
	//B - Reversals
	
if !was_parried {
if get_window_value(AT_UAIR, 4, AG_WINDOW_TYPE) != 7 {
if (attack == AT_FTILT or attack == AT_UTILT or attack == AT_DTILT or attack == AT_NAIR or attack == AT_FAIR  or attack == AT_DATTACK
or attack == AT_UAIR or attack == AT_FSPECIAL or (attack == AT_JAB && window >= 8)) and state_timer > 2 and window > 2 {
	iaispr = sprite_index
	iaiimg = image_index
	set_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG, 0);
	iaido = true 
	ziaido ++
	if has_hit {
		iaicancel = true 
	}
	iaidir = spr_dir 
}
} else {
	iaido = false 
	iaicancel = false 	
}
}

if state_timer == 1 && iaido == true {
    spr_dir = iaidir
	move_cooldown[AT_EXTRA_2] = 0
	attack_end()
	set_attack(AT_EXTRA_2)
	window = 1
	window_timer = 0
	iaido = false
}


if attack == AT_EXTRA_2 {
    if !free {
    	if !down_down{
    		hsp += (right_down-left_down)*2
    		hsp = clamp(hsp,-4,4)
    	}
    }
    if window_timer == 2 && !hitpause {
    	sound_stop(sound_get("swingw1"))
    	sound_play(sound_get("swingw1"),false,noone,.6,.8)
    	spr_dir = iaidir 
    }

    if window_timer = 5*4 {
    	sound_play(sound_get("swingw1"),false,noone,.6,1.4)
    	sound_play(asset_get("sfx_shovel_hit_med1"),false,noone, .6,1.6)
    	fx1 = spawn_hit_fx( x - (8* spr_dir), y - 20 , slash )	
    	fx1.depth = depth - 2
    	fx1.spr_dir = .7*spr_dir 
    	fx1.image_yscale = .7
		fx2 = spawn_hit_fx( x - (8* spr_dir), y - 20 , slash2 )	
		fx2.depth = depth - 2
		fx2.spr_dir = .7*spr_dir 
    	fx2.image_yscale = .7	
		if iaicancel == true {
    		iaicancel = false 
    		dmhit = 3
    		fx3 = spawn_hit_fx( x - (8* spr_dir), y - 30 , shit5 )	
	    	fx3.depth = depth - 5
	    	sound_play(sound_get("ADfinish"),false,noone, .8,1.4)
	    	shake_camera(4,4)
    	}
    }
    
        if down_down && iaicancel == false {
    		if !free y += 4
    		fall_through = true 
    	}
    	/*
    	if jump_down && !free && iaicancel == false  {
    		hsp = clamp(hsp,-4,4)
     		spawn_base_dust(x,y,"dash",1)
    		spawn_base_dust(x,y,"dash",-1)
    		vsp = -8
    		clear_button_buffer(PC_JUMP_PRESSED)
    	}
    	*/
    if (window_timer > 6*4 or iaicancel = true) && (jump_pressed or shield_pressed or (!free and (left_hard_pressed or right_hard_pressed or down_hard_pressed)) or attack_pressed or taunt_pressed 
    or left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed or special_pressed  
    or up_stick_pressed or down_stick_pressed or left_stick_pressed or up_stick_pressed ) {
    	
    	set_state(PS_IDLE)
   		
    	
    	if iaicancel == true  {
    		sound_play(asset_get("sfx_shovel_hit_med1"),false,noone, .6,1.6)
    	    fx1 = spawn_hit_fx( x - (8* spr_dir), y - 20 , slash )	
    	    fx1.depth = depth - 2
    	    fx1.spr_dir = .7*spr_dir 
    	    fx1.image_yscale = .7
		    fx2 = spawn_hit_fx( x - (8* spr_dir), y - 20 , slash2 )	
		    fx2.depth = depth - 2
		    fx2.spr_dir = .7*spr_dir
    	}
    	
    	iaicancel = false
    }
    


    
}

if (attack == AT_USPECIAL || attack == AT_NSPECIAL || attack == AT_DAIR ){
    trigger_b_reverse();
}

	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
	
if ((window == 1 && window_timer == 1)) && !hitpause && get_gameplay_time() > 120 {
	iaicancel = false 
      sound_play(sound_get("swingw1"),false,noone, .2 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
        max ( 0.5, 1.7 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
        voicecd -= random_func(1,30,true)
        if voicecd < -10 voicecd ++ 
}


	
	
///voicehandle 

if zvoice != 0 && !hitpause && 	voicecd <= 0{
	switch attack {
        case AT_JAB :
        	if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z1"),false,noone,.9,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        	if window == 4 && window_timer == 2 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z1"),false,noone,.9,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        	if window == 7 && window_timer == 2 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z2"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40	
        	}
         break;
         
         case AT_DTILT :
        	if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z4"),false,noone,.65,1.08 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40	
        	}
         break; 
         
         case AT_UTILT :
        	if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z3"),false,noone,.7,.95 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40	
        	}
         break; 
         
     	case AT_FTILT :
        	if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z5"),false,noone,.7,1.15 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40	
        	}
        break; 
        
        case AT_USTRONG :
        	if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z2"),false,noone,.65,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        	if window == 2 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z3"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        break; 
        
         case AT_DSTRONG :
        	if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z4"),false,noone,.65,1.08 + 0.05 + random_func(1,6,true)/100);
        	}
        	if window == 3 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z1"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        	if window == 4 && window_timer == 4 {
        		zvoice = sound_play(sound_get("z5"),false,noone,.7,1.15 + 0.05 + random_func(1,6,true)/100);
        	}

        break; 
        
        case AT_FSTRONG :
        	if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z1"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        	if window == 2 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z3"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        	if window == 8 && window_timer == 2 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("counter"),false,noone,.65,1 + 0.05 + random_func(1,6,true)/100);
        	}
        break; 
        
        case AT_FTHROW  :
            if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z1"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        	
        	if window == 1 && window_timer == 12 {
        		zvoice = sound_play(sound_get("z2"),false,noone,.7,1 + 0.05 + random_func(1,6,true)/100);
        	}
        break; 
        
         case AT_FSPECIAL  :
            if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z3"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        break; 
        
        case AT_DSPECIAL  :
            if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z1"),false,noone,.8,.90 + 0.05 + random_func(1,6,true)/100);
        	}
        break;
        
        case AT_USPECIAL  :
            if window == 1 && window_timer == 6 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z5"),false,noone,.7,1.15 + 0.05 + random_func(1,6,true)/100);
        	}
        	
        	 if window == 2 && window_timer == 6 {
        		zvoice = sound_play(sound_get("z3"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        break;
        
        case AT_DATTACK  :
            if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z1"),false,noone,.8,.90 + 0.05 + random_func(1,6,true)/100);
        	}
        	
        	 if window == 2 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z5"),false,noone,.7,1.15 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40
        	}
        break;
        
        case AT_BAIR  :
            if window == 1 && window_timer == 5 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z5"),false,noone,.7,1.15 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40
        	}
        	

        break;
        
         case AT_DAIR  :
            if window == 1 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z3"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40
        	}
        	
        break;
        
        case AT_NAIR  :
            if window == 1 && window_timer == 5 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z1"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40
        	}
        break;
        
        case AT_FAIR  :
            if window == 2 && window_timer == 1 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z5"),false,noone,.7,1.15 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40
        	}
        break;
        
        case AT_UAIR  :
            if window == 1 && window_timer == 5 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("z3"),false,noone,.8,.95 + 0.05 + random_func(1,6,true)/100);
        		voicecd += 40
        	}
        break;
}
       
}

if attack == AT_FTHROW {
	if special_down && window = 1 && window_timer == 10 && halox == 8 && halo == 3 && !free {
		attack_end()
		set_attack(AT_UTHROW)
		window = 1 
		window_timer = 0
		RCEstart = spawn_hit_fx(x,y-40,SC)
		RCEstart.depth = depth + 2
		sound_play(sound_get("counterhit"));
	}
	
	if window == 1 && window_timer == 12 && !hitpause {
    	spawn_hit_fx( x + (105*spr_dir), y - 32, SCF1)
    	sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
    	
    	if halo > 0 {
    		spawn_hit_fx(x - 20*spr_dir ,y - 60,shit5)
    		sound_play(sound_get("counterhit"),false,noone,1,.7);
    		shake_camera(4,4)
    		pgfx = spawn_hit_fx( x + (100*spr_dir), y - 30, SC2)
            pgfx.spr_dir = 0.8*spr_dir
		    pgfx.image_yscale = 0.8
		      	create_hitbox(AT_FTHROW,2,x + 100*spr_dir,y - 30)
		      	halo -= 1
    	}
	}
	

}


if attack == AT_UTHROW {
	voicecd = 120
	hsp /= 2
    dmhit = 0
    if has_hit_player {
        soft_armor = 999
    } else {
        soft_armor = 0
    }
    
    if window < 4 or (window == 4 && window_timer < 25) {

                	suppress_stage_music( max(0.5, state_timer/120),60 );	
    }
    
    vsp = 0
    
    if window = 1 && !hitpause {
    	oldx = floor(x)
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

        if window_timer == 6 && zvoice != 0{
           sound_play(sound_get("tauntU"),false,noone,.6,1 + 0.05 + random_func(1,6,true)/100);
        }


         if window_timer == 12 && zvoice != 0 {
           sound_play(sound_get("tauntU"),false,noone,.3,1 + 0.05 + random_func(1,6,true)/100);
        }


        if window_timer == 1 {
        	if zvoice != 0 {
        		sound_stop(zvoice)
        		zvoice = sound_play(sound_get("tauntU"),false,noone,1,1 + 0.05 + random_func(1,6,true)/100);
        		         sound_play(sound_get("tauntU"),false,noone,.6,.95 + 0.05 + random_func(1,6,true)/100);
        	}
        	
		offensetimer = 0
		offense = 0
		
		halodeact = spawn_hit_fx( x - (16 * spr_dir) , y - 50 , 302 )
        halodeact.depth = depth + 2
        halodeact.pause = 4

		
	    halo -= 1
        sound_play(asset_get("sfx_bird_downspecial"))
        }
    }
    
    if window = 2 && !hitpause {
    	x = oldx
        draw_indicator = false
        if window_timer == 1  {
        	spawn_hit_fx( x + (40 * spr_dir) , y - 50 , shit7 )
   		    spawn_hit_fx( x - (40 * spr_dir) , y - 50 , shit7 )
   		    spawn_hit_fx( x + (120 * spr_dir) , y - 30 , shit8 )
   		    spawn_hit_fx( x - (120 * spr_dir) , y - 30 , shit8 )
   		    spawn_hit_fx( x + (160 * spr_dir) , y - 70 , shit8 )
   		    spawn_hit_fx( x - (160 * spr_dir) , y - 90 , shit8 )		
   		    spawn_hit_fx( x  , y - 30 , shit5 )
	            halo -= 1
            shake_camera(10,4)
                spawn_hit_fx(x,y,lighten)
                sound_play(asset_get("sfx_absa_boltcloud"))
        }
        
    }
    
    if window == 3 {
        draw_indicator = false
        if window_timer >= 20 && !hitpause {
              shake_camera(4,4)
              if window_timer % 2 == 1 {
                  spr_dir *= -1
              }
              
              if window_timer % 10 == 0{
                spawn_hit_fx(x,y,lighten)
            }
            
            if window_timer % 6 == 0{
                spawn_hit_fx(x,y,lighten)
            }
            
        }
        
        if window_timer >= 20 {
    
         	spawn_hit_fx(x + random_func(5,301,true) - 150,y + random_func(6,301,true) - 150, shit5 )
         	
         	create_hitbox(AT_DSPECIAL , 1 , x + random_func(1,201,true) - 100, y + random_func(2,151,true) - 200); 
         	
         	cut1 = spawn_hit_fx(x + random_func(1,201,true) - 100,y + random_func(2,401,true) - 200,302 )
           cut1.pause = 4
         
       } 

    }


    if window == 4  && !hitpause {
        if window_timer == 1 {
            y += 2
            halo = 0
            shake_camera(6,8)
            sound_play(asset_get("sfx_bird_downspecial"))
             spawn_base_dust(x,y - 0,"land",spr_dir);
             spawn_base_dust(x + 30,y - 0,"dash_start",-1);
             spawn_base_dust(x - 30,y - 0,"dash_start",1);
        }
    }
    
    if window == 4 && window_timer == 28 && !hitpause && !has_hit_player {
    sound_play(asset_get("sfx_shovel_hit_med1"),false,noone, 1,1.6)
    }
    
    if window == 4 && window_timer == 25 && has_hit_player && !hitpause{ 
    	if zvoice != 0 {
    	zvoice = sound_play(sound_get("z3"),false,noone,1,.95 + 0.05 + random_func(1,6,true)/100);
    	}
    	
    	create_hitbox(AT_UTHROW,3,x,y)
        fx = spawn_hit_fx (x+20*spr_dir,y-40, 305)
        fx.pause = 5
        
        sound_play(sound_get("RI"))  
       
        spawn_hit_fx (x+20*spr_dir,y-40, lighten)
        spawn_hit_fx( x + (40 * spr_dir) , y - 50 , shit7 )
   		spawn_hit_fx( x - (40 * spr_dir) , y - 50 , shit7 )
   		spawn_hit_fx( x + (120 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x - (120 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x + (160 * spr_dir) , y - 70 , shit8 )
   		spawn_hit_fx( x - (160 * spr_dir) , y - 90 , shit8 )		
   		spawn_hit_fx( x  , y - 30 , shit5 )

            shake_camera(6,10)
            hitstop = 16
            hitpause = 1
     }
    
    

}


if get_player_color(player) == 6 {
	
		can_move = true;
		can_jump = true




if attack != AT_TAUNT {
	set_attack (AT_TAUNT)
	window = 17;
}




	





if (attack == AT_TAUNT){
	
	invincible = true
	can_jump = true;
	
    if (window <= 2){
        
         if (!up_down){
            window = 16;
            window_timer = 0;
            
            if get_player_color(player) == 1{
            	      sound_play(sound_get("tauntUV"));
            
            } else {
            	sound_play(sound_get("tauntU"));
            }
        }
        
    
        
         if (up_down){
         	
            window = 17;
            window_timer = 0;
            
         	
      }
    }
    
    if(window == 16){
    	
    	with (asset_get("oPlayer")) {
     if (x > other.x) {
x += 900;
y = 1000 - random_func(1, 1000, true)

   }
}

with (asset_get("oPlayer")) {
  if (x < other.x) {
x -= 900;
y = 1000 - random_func(1, 1000, true)
  }
}
        
    }
    
         if(window == 17 && window_timer == 24){
                    	sound_play(sound_get("tauntD"));
    }
    
    
    if(window == 6 && window_timer == get_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH) && !has_hit){
        set_state( PS_IDLE );
    }
    if(window == 15 && window_timer == get_window_value(AT_TAUNT, 15, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }
     if(window == 16 && window_timer == get_window_value(AT_TAUNT, 16, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }

    
 if(window == 17 && window_timer == 138){
         	sound_play(sound_get("tauntDP"));
         	    	with (asset_get("oPlayer")) {
     if (x > other.x) {
hsp = 999;
x = 9999
y = 999
   }
}

with (asset_get("oPlayer")) {
  if (x < other.x) {
hsp = -999;
x = -9999
y = 999
  }
}
         	
    }
    
    
     if(window == 18){
     	set_state (PS_IDLE)
     }
}






  
  

	
}


if attack == AT_FSPECIAL {
	can_fast_fall = false
	move_cooldown[AT_FSPECIAL] = 30
	if window == 1 {
		if halo > 0 && zbayo != 5 {
			 zbayo = 5
			 halo -= 1
			 fx = spawn_hit_fx(x - 20*spr_dir ,y - 35, 305)
			 fx.pause = 6
			 sound_play(sound_get("SpaceCut"),false,noone,1,1);
			 set_num_hitboxes(AT_FSPECIAL, 15);
			 spawn_hit_fx(x + 70*spr_dir,y - 40, shit1)
			 spawn_hit_fx(x + 140*spr_dir,y - 40, shit2)
			 spawn_hit_fx(x + 210*spr_dir,y - 40, shit3)
		} 
		hsp /= 1.5
		vsp = 0
		
		if !hitpause && window_timer == 1 {
			sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
		}
		if !hitpause && window_timer % 4 == 0 && window_timer < 16{
			create_hitbox(AT_DSPECIAL , 1 , x + 120*spr_dir + 20 - random_func(1,41,true), y - 105 ); 
			sound_play(sound_get("SpaceCut2"));
		} 
		if !hitpause && window_timer % 3 == 0 && window_timer > 14 { 
			create_hitbox(AT_DSPECIAL , 1 , x - 100*spr_dir + 20 - random_func(1,41,true), y - 105 ); 
		}
		

		if window_timer == 20 && !hitpause {
			y -= 4
		   if zbayo == 5 {
		   	spawn_hit_fx(x,y-40,shit5)
		   }
 	        hsp = 240*spr_dir
			spr_dir *= -1
			shake_camera(4,2)
			
			var step_up_height = 60;
            
            if place_meeting(x+hsp,y+vsp,asset_get("par_block")) {
                for (var i = 0; i < step_up_height; i += 2) {
                    if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
                        y = y+vsp-i;
                        break;
                    }
                }
            }
            
            if zbayo == 5 {
		   	spr_dir *= -1
		   	x -= 50*spr_dir
		   }
		   
			sound_play(sound_get("counterhit"),false,noone,1,1.4);
		}
	}
	if window == 3 {
    	zbayo = 0	
	 if free {
	 	vsp -= 0.3
	 	hsp /= 1.2
	 	if window_timer == 8 {
	 		iaispr = sprite_index
	        iaiimg = image_index
	        set_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG, 0);
	        iaido = true 
	        ziaido ++
	        if has_hit {
	        	iaicancel = true 
	        }
	        iaidir = spr_dir 
	 	}
	 }
	}
	if window == 2 {
		if window_timer == 1 {
				y += 4
				if hitpause window_timer ++
		}
		if window_timer <= 4 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN{
			state_timer = 90
			if hitpause {
				hit_player_obj.y += floor((y - 10 - hit_player_obj.y)/5)
				hit_player_obj.x += floor((x + 90*spr_dir - hit_player_obj.x)/5)
			}
		}
		


		
			if zbayo = 5 && get_gameplay_time()%4 == 0 && has_hit_player {
				 with hit_player_obj {
               		take_damage( player, -1 , 1 )
                 }
                  
                         	var hits = random_func(5, 3, true) ;
                   

                  shake_camera(3,1)
                  
                  sound_play(sound_get("slicel"));
               	
               	if (hits == 0 ){
                   	var hit1 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash )
                   		hit1.depth = -1000
               	create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (110 * spr_dir) , hit_player_obj.y - 105 ); 
               	}
               	
                 	if (hits == 1 ){
                   var hit2 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash2 )
                   	hit2.depth = -1000
                   	create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (70 * spr_dir) , hit_player_obj.y - 105 ); 
               
                    }
                    
                      	if (hits == 2){
                   	var hit3 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash3 )
                   		hit3.depth = -1000
               
                    }
                    
                      	if (hits == 3){
                	var hit4 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash4 )
                		hit4.depth = -1000
                		create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (90 * spr_dir) , hit_player_obj.y - 105 ); 
                			create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (50 * spr_dir) , hit_player_obj.y - 105 ); 
                   }
              }
		
		if window_timer == 15 && state_timer >= 90 {
			attack_end();
			set_attack(AT_UTILT)
			window = 1
			window_timer = 5 
			if x > hit_player_obj.x {
				spr_dir = -1 
			} else {
				spr_dir = 1 
			}
		}
		
		if window_timer == 1 && !hitpause {
			hsp = 10*spr_dir 
		}
		
		vsp = 0
		hsp /= 1.6
		can_move = false
	}
	
}

if attack == AT_USPECIAL && window == 6 && zbayo = 6 {
	x = hit_player_obj.x - 60 * spr_dir
	y = hit_player_obj.y - 10
	zbayo = 0	
		
}

//////////////////////////////////////////////////////
if attack == AT_UTILT && window == 1 && window_timer == 1{
	
	sound_play(asset_get("sfx_swipe_medium1"));
	zcountered = 0
	
}







	
if attack == AT_BAIR{
	
	if window == 1 {
		can_wall_jump = false
		zcountered2 = 0
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
	}
	
	if window > 1 && zcountered2 == 1 {
		can_wall_jump = true
	}
	
	if window == 1 && window_timer == 1 && !hitpause {
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
		sound_play(asset_get("sfx_swipe_heavy1"));
	}
	
	if has_hit_player && window == 2{
		    vsp = -1
			hit_player_obj.y += ((y - 10) - hit_player_obj.y) / 5
	}
	
}


if (attack == AT_UAIR && window == 1 && window_timer == 1){
	
	sound_play(asset_get("sfx_swipe_heavy2"));
	set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 51);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 71);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
}



if attack == AT_FAIR && zbayo == 3 && window == 3 && !hitpause {
	attack_end();
	    dmhit -= 1
	spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
		sound_play(sound_get("counterhit"));
		vsp = -5
			sound_play(asset_get("sfx_swipe_weak2"));
		x = hit_player_obj.x + 100 * spr_dir
		y = hit_player_obj.y - 10
		spr_dir *= -1
		set_attack (AT_FAIR)
		window = 2
		window_timer = 4
		zbayo = 2 
		hsp *= -1
}

if attack == AT_FAIR && zbayo == 2 && window == 3 && !hitpause {
	spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
		sound_play(sound_get("counterhit"));
		sound_play(asset_get("sfx_swipe_weak1"));
		x = hit_player_obj.x + 20 * spr_dir
		y = hit_player_obj.y + 60
		spr_dir *= -1
		hsp = 0
		set_attack (AT_UAIR)
		window = 2
		window_timer = 2
		zbayo = 0 
		
}

if (attack == AT_USPECIAL){

	if window = 1 && halo >= 1 && window_timer == 1 && offense = 1{

			
		zbayo = -1
		spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
		sound_play(sound_get("SpaceCut"));
	}
	
	if window = 4 && window_timer == 7 && zbayo == -1 {
		halo -= 1 
		
		
		if has_hit_player {

			
		spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
		sound_play(sound_get("counterhit"));
		sound_play(asset_get("sfx_swipe_weak1"));
		zbayo = 3
		vsp = -5
		x = hit_player_obj.x + 60 * spr_dir
		y = hit_player_obj.y - 10
		spr_dir *= -1
		set_attack (AT_FAIR)
		window = 2
		window_timer = 4
		
		}
	}
	
	if window = 4 && window_timer > 8 {
		zbayo = 0
	}
	
	
	if window > 3 {
		can_wall_jump = true
		zcountered2 = 1
	}
	
	if window == 1 && window_timer == 1{
		spawn_hit_fx( x - (6* spr_dir), y - 40 , slash )	
		spawn_hit_fx( x - (6* spr_dir), y - 40 , slash2 )	
		sound_play(asset_get("sfx_boss_shine"));
	}
	
	if window == 4 && window_timer == 18{
		 set_state (PS_PRATFALL)
	}
	
 

	
	if window == 4 && has_hit_player && window_timer == 2{
		move_cooldown[AT_USPECIAL] = 999 ;
		if vsp > -8{
		vsp = -8
		}
	}
	
	if window < 4 && window != 0 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause {
		hit_player_obj.x += ((x + (45 * spr_dir)) - hit_player_obj.x) / (4)
		hit_player_obj.y += (y - 15 - hit_player_obj.y) / 6
	}
	
	if window == 1 {
		
		vsp /= 1.2
		hsp /= 1.02
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
	}

	
	if window == 4 && !free {
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
	}

	
	can_fast_fall = false;
    
    	

    


if (window == 1 && window_timer == 8)  {
prat_land_time = 16;	
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("slice"));

set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("slice"));	
	
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);	

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
	
	
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 4);

    	}
    	
    
    

	
}



if (attack == AT_NSPECIAL){
	
    if window == 1 {
    	attack = AT_FTHROW
    }
    
    if has_hit_player && hit_player_obj.state_cat == SC_HITSTUN{
       hit_player_obj.x += floor((x + 100*spr_dir - hit_player_obj.x)/4)
    	hit_player_obj.y += floor((y - 10 - hit_player_obj.y)/4)
    	hsp /= 2
    }
    
	if special_down && window = 3 && halox == 8 && halo == 3 && !free {
		attack_end()
		set_attack(AT_UTHROW)
		window = 1 
		window_timer = 0
		RCEstart = spawn_hit_fx(x,y-40,SC)
		RCEstart.depth = depth + 2
		sound_play(sound_get("counterhit"));
	}
	
	if window = 1 {
		nrange = 1
	}
	
	if window = 2 && window_timer == 8 {
		
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X,  90 + nrange);
		set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X,  90 + nrange);
		set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X,  100 + nrange);
		
		if nrange < 300 {
			set_num_hitboxes(AT_NSPECIAL, 4);
		}else {
			set_num_hitboxes(AT_NSPECIAL, 5);
		}

		if nrange > 300 && !hitpause{
				sound_play(sound_get("counterhit"));
				spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SC)
		}
	}

	
	can_fast_fall = false;
	if window == 7 && window_timer == 1 {
    	spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SCF1)
    	spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SCF2)
    }
    if window == 8 && window_timer == 1 {
    	spawn_hit_fx( x + (90*spr_dir + nrange*spr_dir), y - 60, SCF2)
    }
    if window == 9 && window_timer == 1 {
    	spawn_hit_fx( x + (90*spr_dir + nrange*spr_dir), y, SCF1)
    }
    

    if (window == 3 && window_timer >= 3){
    	 move_cooldown[AT_NSPECIAL] = 30 ;

        if halo < 1 or offense = 0 {
        	    spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SCF1)
                window = 5;
            	window_timer = 2;
            	sound_play(asset_get("sfx_spin"));
        }
        
         if halo >= 1 and offense = 1 {
         	    	pgfx = spawn_hit_fx( x + (100*spr_dir + nrange*spr_dir), y - 30, SC2)
                    pgfx.spr_dir = 0.8*spr_dir
		        	pgfx.image_yscale = 0.8
         	    	
         	    	create_hitbox(AT_NSPECIAL , 6 , floor(x + (100 + nrange)*spr_dir), floor(y - 30) ); 
         	halo -= 1
         	spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit5 )
                window = 4;
            	window_timer = 0;
            	sound_play(asset_get("sfx_spin"));
        }
            
    }
    
    if (window == 4 && window_timer == 3){
    	
        
            window = 7;
            window_timer = 0;
            sound_play(sound_get("counterhit"));
            

            
             
        
    }
    
 
    
    	
       if !hitpause && ((window == 5 && window_timer == 6) or (window == 9 && window_timer == 6)){
    	if !free {
        set_attack (AT_JAB)
        window = 8
        window_timer = 0
    	} else {
    	set_attack (AT_FAIR)
        window = 3
        window_timer = 0	
    	}
    
      }
    

    

    
    

    
     
}







if (attack == AT_DSPECIAL){
               parry_cooldown = 30
		move_cooldown[AT_DSPECIAL] = 20
		
	if zcountered = 1 {
		invincible = true
	}
	
	vsp /= 1.2
	hsp /= 1.1
	if window == 1 && window_timer == 1 {
		if halo > 0 {
		offensetimer = 0
		offense = 0
		
		halodeact = spawn_hit_fx( x - (16 * spr_dir) , y - 50 , 302 )
        halodeact.depth = depth + 2
        halodeact.pause = 4

 		sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.3);
 		
		}
		zcountered = 0
	}
	
	can_fast_fall = false;
	can_move = false ;
    if window == 2  {
    	if window_timer = 1 && halo >= 1 && offense = 1 {
    		spawn_hit_fx (x, y - 40, shit6)
    		spawn_hit_fx (x, y - 40, shit7)
    	}
    	move_cooldown[AT_EXTRA_3] = 200
        super_armor = true;
    } 
    
    if window == 3 {
        super_armor = false;
    }
    
    if window == 4 && halo >= 1 && offense = 1 {
    	if window_timer % 3 == 0 {
    	create_hitbox(AT_DSPECIAL , 1 , floor(x + ( 0 - 80  - random_func(3, 50, true)) * spr_dir)  , y - 105 ); 
    	create_hitbox(AT_DSPECIAL , 1 , x + floor((( 0  + random_func(3, 50, true))  + random_func(3, 50, true)) * spr_dir)  , y - 105 ); 
    	sound_play(sound_get("SpaceCutB"));
    	}
    }
        
     if window == 5 && halo >= 1 && offense = 1{
        set_attack (AT_EXTRA_1)
        window = 7
        fx = spawn_hit_fx ( x  , y - 20 , 304 );
        fx.pause = 6

			x += 200 * spr_dir
			spr_dir *= -1
			
			hsp = -6 * spr_dir

		sound_play(sound_get("counterhit"));
    }
    
    
	
}


if attack == AT_EXTRA_1 {

	
	if zcountered = 1 {
		invincible = true
	}
	

	vsp /= 1.1
	if window > 7 {
	can_wall_jump = true
	}
	
	
	if has_hit_player && (window < 8 or (window == 8 && window_timer < 12)){
		
	  hit_player_obj.hsp = 0
	  hit_player_obj.vsp = -4
	  
if window_timer % 3 == 0{
	
	   with hit_player_obj {
		take_damage( player, -1 , 1 )
   }
   
          	var hits = random_func(5, 3, true) ;

 hit_player_obj.y += 10
 
   sound_play(sound_get("slicel"));
	
	if (hits == 0 ){
    	var hit1 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash )
    		hit1.depth = -1000
	create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (110 * spr_dir) , hit_player_obj.y - 105 ); 
	}
	
  	if (hits == 1 ){
    var hit2 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash2 )
    	hit2.depth = -1000
    	create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (70 * spr_dir) , hit_player_obj.y - 105 ); 

     }
     
       	if (hits == 2){
    	var hit3 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash3 )
    		hit3.depth = -1000

     }
     
       	if (hits == 3){
 	var hit4 = spawn_hit_fx( hit_player_obj.x + 25 - random_func(3, 50, true), hit_player_obj.y - 60 + random_func(1, 50, true), slash4 )
 		hit4.depth = -1000
 		create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (90 * spr_dir) , hit_player_obj.y - 105 ); 
 			create_hitbox(AT_DSPECIAL , 1 , hit_player_obj.x - (50 * spr_dir) , hit_player_obj.y - 105 ); 
     }
}

	   
	   
	}
	
	if free {
		hsp /= 1.1
		vsp += 0.03
	}
	
	can_move = false 
	can_fast_fall = false
	if window == 7 && window_timer == 2{
		vsp = 0
		create_hitbox(AT_DSPECIAL , 1 , x - (50 * spr_dir) , y - 105 ); 
			create_hitbox(AT_DSPECIAL , 1 , x + (10 * spr_dir), y - 105 ); 
			create_hitbox(AT_DSPECIAL , 1 , x + (70 * spr_dir) , y - 105 ); 
	}
	
	if window == 8 && window_timer == 12 && !hitpause{
		if has_hit_player{
			sound_play(sound_get("RI2"));
			create_hitbox(AT_EXTRA_1,3,x,y)
		} else {
			sound_play(asset_get("sfx_ice_shieldup"));
		}
		
	}

    if window == 9 && window_timer == 10 && !hitpause{
     spr_dir *= -1	
    }

	
}

if attack == AT_FSTRONG && free{

if window > 2 {
	can_move = false
}
if window = 5 && window_timer == 8{
	set_state (PS_PRATFALL)
	vsp = 0
}
}

if(attack == AT_USTRONG){
	
   if window < 4 & has_hit_player && !hitpause{
		hit_player_obj.hsp = ((x + (65 * spr_dir)) - hit_player_obj.x) / 4
		hit_player_obj.y += (y - 75 - hit_player_obj.y) / 8
	}
	

}


if (attack == AT_FSTRONG){
	
	

    
    if (window == 7 && window_timer = 1){
       	create_hitbox(AT_FSTRONG , 8 , x , y );
     }
         	
         		
         		
     if (window == 7 && window_timer = 30){
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 140);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
     	set_attack(AT_FSTRONG)
     	window = 8;
     }
     
     if (window == 8 && window_timer = 20){

			
     		create_hitbox(AT_FSTRONG , 3 , hit_player_obj.x , hit_player_obj.y );
     		create_hitbox(AT_FSTRONG , 9 , hit_player_obj.x , hit_player_obj.y -70 );

     		

     		sound_play(sound_get("RI2"));
     }
     
     if (window == 8 && window_timer = 30){

     	set_attack(AT_FSTRONG)
     	window = 9;
     }
    
}
if attack == AT_DSTRONG {
	
	if window < 4 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
		hit_player_obj.x += floor(((x + (45 * spr_dir)) - hit_player_obj.x) / 3)
	}
	
	if window == 8 && window_timer == 2 {
			set_attack (AT_FSTRONG)
    	window = 3
    	window_timer = 10
    	sound_play(asset_get("sfx_land"));
	}
}
if (attack == AT_DSTRONG && get_player_color(player) == 4){

	
	
}
            
        


if (attack == AT_JAB){
	nrange = 1
	zcountered = 0
    if window == 3 or window == 6 {
    	if (left_down && spr_dir = 1) or (right_down && spr_dir = -1) {
    		if attack_down {
    			attack_end()
    			can_attack = true 
    			spr_dir*= -1
    		}
    	}
    }
    	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X,  90 + nrange);
		set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X,  90 + nrange);
		set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X,  100 + nrange);
		set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X,  100 + nrange);
		
	 if (window == 3 && window_timer >= 11 && !has_hit){
        if (special_pressed){
        move_cooldown[AT_NSPECIAL] = 0
            set_attack(AT_NSPECIAL)
			window = 8;
			window_timer = 0;
            sound_play(sound_get("counterhit"));
           if zvoice != 0 {
           	   sound_stop(zvoice)
           	   zvoice = sound_play(sound_get("z3"),false,noone,1,.95 + 0.05 + random_func(1,6,true)/100);
           }

            
        }
    }
    
    //if (window == 3 && window_timer < 10 and window_timer >= 8){
    //    if (special_pressed){
    //        set_attack(AT_JAB)
	//		window = 7;
	//		window_timer = 0;
    //       
    //        
    //    }
    //}

    


    
    if (hit_player_obj.state_cat == SC_HITSTUN and window >= 8 and has_hit){
    
        if (special_down) && !hitpause && halo > 0 {
        	halo -= 1
        	shake_camera(4,2)
        	fx = spawn_hit_fx(x,y - 35,305)
        	fx.pause = 6
        	sound_play(sound_get("SpaceCut"),false,noone,1,1.2);
            set_attack(AT_FSTRONG)
            set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE,  120);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
			window = 8;
			window_timer = 0;
			iaido = false 
	        iaicancel = false 

        }
    }
    


    

}
    
    
if(attack == AT_DAIR){
	
	if down_down {
		fall_through = true 
	}
	if window == 1 && window_timer < 2{
		
		if move_cooldown[AT_DTHROW] == 0 {
			set_num_hitboxes(AT_DAIR, 1);
		} else {
			set_num_hitboxes(AT_DAIR, 2);
		}
		
		if left_down && !right_down {
			spr_dir = -1
		}
		
		
		if !left_down && right_down {
			spr_dir = 1
		}
		
	}
	
	can_fast_fall = false;
	

	
    if ((window == 3 or window == 2) && has_hit_player)  && !hitpause {
    	window = 4;
    	window_timer = 0;
    	djumps = 0
    	vsp = -4
       	hsp = -3 * spr_dir
    	set_attack (AT_BAIR)
    	window = 10
    	move_cooldown[AT_DAIR] = 5
    	move_cooldown[AT_DTHROW] = 30
    }
    
   
    
    if(window == 3 && window_timer == get_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH)) && !hitpause{
    	djumps = 0
        set_attack (AT_BAIR)
    	window = 5
    	window_timer = 5
    }

     
   
} 
	
	
if (attack == AT_TAUNT){
	zrandom = 2
	move_cooldown[AT_TAUNT] = 25
	

	if window == 1 && window_timer == 1 && offense != 0 {
			var halodeact = spawn_hit_fx( x - (16 * spr_dir) , y - 50 , 302 )
    		halodeact.depth = depth + 2
    		halodeact.pause = 4
    		
			sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.3);
			offense = 0
			offensetimer = 0
	}
	
	move_cooldown[AT_EXTRA_3] = 200
	if window == 18 && window_timer > 6 && window_timer < 71{
		window_timer += 1
	}
	
	if window == 17 && window_timer == 2{
		sound_play(asset_get("sfx_spin"));
	}
	
	if(window == 18 && window_timer == 60){
		
		
      	ztrashes = random_func(15, 8, true);

      	if (get_player_color(player) == 4) {
      		ztrashes = 1
      	}

      	if (get_player_color(player) == 1) {
      		ztrashes = 3
      	}
      	
      	if (get_player_color(player) == 13) {
      		ztrashes = 7
      	}
      	


	if ztrashes == 0 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("hamburger"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("hamburgerstill"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("thamburger"));
    	sound_play(sound_get("thamburger"),false,noone,.7,1.6)
    }
    
    if ztrashes == 1 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("roadroller"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("roadroller"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("troadroller"));
    	sound_play(sound_get("troadroller"),false,noone,1,1.5)
    }
    
    if ztrashes == 2 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("ring"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("ring"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tring"));
    	sound_play(sound_get("tring"),false,noone,1,1.4)
    }
    
     if ztrashes == 3 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("bonespin"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("bone"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tbone"));
    	sound_play(sound_get("tbone"),false,noone,1,1.6)
    }
    
    if ztrashes == 4 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("korb2"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("korb1"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tkorb"));
    	sound_play(sound_get("tkorb"),false,noone,1,1.4)
    }
    
     if ztrashes == 5 {
    	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("fox2"));
    	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("fox1"));
    	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tfox"));
    	sound_play(sound_get("tfox"),false,noone,1,1.6)
     }	
     
      if ztrashes == 6 {
         	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("poke2"));
         	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("poke1"));
         	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tpoke"));
         	sound_play(sound_get("tpoke"),false,noone,1,1.2)
     }	
     
      if ztrashes == 7 {
         	set_hitbox_value(AT_TAUNT, 12, HG_PROJECTILE_SPRITE, sprite_get("hikaru"));
         	set_hitbox_value(AT_TAUNT, 11, HG_PROJECTILE_SPRITE, sprite_get("hikaru"));
         	set_window_value(AT_TAUNT, 18, AG_WINDOW_SFX, sound_get("tHi"));
         	sound_play(sound_get("tHi"),false,noone,1,1.3)
     }
}
	 if ((get_gameplay_time() % 23 = 0 ) && window_timer <= 60 ){
	 	
	 if get_player_color(player) == 3{
         
         
     if (spr_dir == 1){  
        spawn_hit_fx ( x - 60 , y - 120 , G7 );
    } else {
    	spawn_hit_fx ( x + 60 , y - 120 , G72 );
    }    
            
	 }
	 }
	 
	  if (window == 5 && window_timer == 19){
	  	
	  	if (taunt_down){
	  		window = 5
	  		window_timer = 0
	  		
	  	}
	  }
            
	
    if (window <= 2){
        if (special_down or get_player_color(player) == 1){
            window = 7;
            window_timer = 0;
            if zvoice != 0 {
            zvoice = sound_play(sound_get("taunt"),false,noone,.8,1 + random_func(1,5,true)/100);
      	   }
        }
        
         if (down_down){
            window = 16;
            window_timer = 0;
            if zvoice != 0 {
            zvoice = sound_play(sound_get("tauntU"),false,noone,.8,1 + random_func(1,5,true)/100);
      	   }
        }
        
    
        
         if (up_down){
         	
            window = 17;
            window_timer = 0;
        
      }
      
      if (attack_down or get_player_color(player) == 4 or get_player_color(player) == 13){
      	   if zvoice != 0 {
            zvoice = sound_play(sound_get("z1"),false,noone,1,.95 + 0.05 + random_func(1,6,true)/100);
      	   }
      	   
            window = 18;
            window_timer = 0;

      	

      }
    }
    
         if(window == 17 && window_timer == 24){
                      
                    	sound_play(sound_get("tauntD"));
                 	
         }
         
         if(window == 18 && window_timer == 1){
                    	sound_play(sound_get("slice"));
         }
         	if(window == 18 && window_timer == 18){
                    	sound_play(sound_get("counterhit"));
    }
    
if(window == 20 && window_timer > 24){
                  if (attack_down){
         	if zvoice != 0 {
            zvoice = sound_play(sound_get("z1"),false,noone,1,.95 + 0.05 + random_func(1,6,true)/100);
      	   }
            window = 18;
            window_timer = 14;
      }
    }
    
if(window == 18 && window_timer == 30){

            window_timer = 52;

}
      
	
    
    
   
    
    
    
    
    if(window == 6 && window_timer == get_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH) && !has_hit){
        set_state( PS_IDLE );
    }
    if(window == 15 && window_timer == get_window_value(AT_TAUNT, 15, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }
     if(window == 16 && window_timer == get_window_value(AT_TAUNT, 16, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }
    
      if(window == 17 && window_timer == get_window_value(AT_TAUNT, 17, AG_WINDOW_LENGTH)){
        set_state( PS_IDLE );
    }
    
    
     if shield_down && state_timer < 5 {
     	iaispr = sprite_index
     	iaiimg = image_index
    	move_cooldown[AT_EXTRA_2] = 0
		set_attack(AT_EXTRA_2) 
		window_timer = 1
		window = 1
		iaidir = spr_dir
		ziaido += random_func(1,2,true) + 1
	}   
}   


if (attack == AT_DTILT){
	if (has_hit) && !hitpause {
                window_timer += 0.5;
	}
}





if (attack == AT_UAIR && !hitpause){
	if (has_hit) && !hitstop {
                window_timer += 0.5;
	}
	
}

if (attack == AT_FTILT){
	
	if (has_hit) && !hitpause {
                window_timer += 1;
	}
	
	
}

if (attack == AT_UTILT){
	if zcountered = 1  {
		if hitstop > 10 hitstop = 10 
		x -= floor(((20 - state_timer)*spr_dir)/2)
		state_timer++
	}
	if zcountered = 1 && window == 2 && window_timer == 2 {
		if (hit_player_obj.x < x) {
				spr_dir = -1;
			} else {
				spr_dir = 1;
			}
		zcountered = 0 
		  fx = spawn_hit_fx ( x  , y - 30 , SC );
		  fx.spr_dir = 1.2*spr_dir 
		  fx.image_yscale = 1.2
		  create_hitbox(AT_FTHROW,19,x,y - 50)
		  sound_play(sound_get("counterhit"),false,noone,1,1);
		  sound_play(sound_get("counterhit"),false,noone,.6,.6);
	}
	
	vsp /= 2
	if free {
		hsp = 0
	}
	
	can_fast_false = false 
	if (has_hit) && !hitstop   {
                window_timer += 0.5;
	}
}

if (attack == AT_NAIR){
	if has_hit_player && window < 6 && window != 0 {
       
	}

}




if attack == AT_USTRONG {
	if window == 2 && window_timer == 1 && !hitpause && !has_hit_player{
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.2);
	}
	
	if window == 2 or window == 3 or (window == 4 && window_timer <= 15) or (window == 4 && window_timer % 3 <= 1) {
		draw_indicator = false 
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