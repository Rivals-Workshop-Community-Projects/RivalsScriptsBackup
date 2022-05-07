//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

move_cooldown[AT_EXTRA_3] = 0

//sai code
if ((window == 1 && window_timer == floor(get_window_value(attack, 1, AG_WINDOW_LENGTH)/2) )) && !hitpause && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG 
&& attack != AT_FSPECIAL  && attack != AT_USPECIAL && attack != AT_TAUNT{
      sound_play(asset_get("sfx_waveland_ori"),false,noone, .6 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
        max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
      sound_play(asset_get("sfx_waveland_ori"),false,noone, .3 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
        max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))

	
}
///

switch attack {
	
	case AT_TAUNT :
	  if window_timer == 1 {
	  	sound_play(asset_get("sfx_jumpair"),false,noone,1,1.2 + window/10)
	  }
	  
	  if window == 2 && window_timer == 4*5 && taunt_down {
	  	state_timer = 60
	  	window = 1
	  	window_timer = 0
	  }
	  if state_timer >= 60 {
	  	can_jump = true
	  	can_shield = true 
        can_dash = true 
	  }
	
	break;
	
	case AT_USPECIAL:
	can_fast_fall = false
	
	if state_timer >= 200 && window != 4 && !hitpause{
		vsp = -6
		window = 4
		window_timer = 1
		sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.2)
		sound_play(asset_get("sfx_spin"),false,noone,1,1)
	}
	
	if window == 4 {
		if window_timer < 20 {
			fx = spawn_hit_fx(x- hsp,y - 30 ,fx_fstrong )
                fx.spr_dir = .6
                fx.image_yscale = .6
                fx.draw_angle = random_func(1,360,true)
		}
		
		if window_timer == 20 {
			sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
			vfx = spawn_hit_fx(x+20*spr_dir, y , 302)
			vfx.pause = 6
			create_hitbox (AT_USPECIAL,3,x+20*spr_dir, y)
		}
		
	}
	
	if window == 1 {
		
    if state_timer > 6 {
    	move_cooldown[AT_EXTRA_2] = 20
    	can_wall_jump = true 
    	if special_pressed or attack_pressed {
    		spawn_hit_fx(x,y,14)
    		if right_down - left_down != 0 spr_dir = right_down - left_down
    		if vsp > - 6 vsp = -6
    		window = 2 
    		window_timer = 1 
    		sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.3)
    		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
    	}
    }
		
	if window_timer == 2 && !hitpause {
		move_cooldown[AT_EXTRA_2] = 20
		vsp = -8
		sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.1)
	}
	
	if window_timer = 9*4 && state_timer < 50 {
	   window_timer = 5*4
	}
	
	if window_timer > 5 && !free && !hitpause && !has_hit_player{
		set_state(PS_PRATFALL)
		
	}
	
	}
	
	if window < 3 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause {
		move_cooldown[AT_USPECIAL] = 60
		destroy_hitboxes()
		djumps = 0
		vsp = -6
		window = 3
		window_timer = 1
	}
	
	if window == 3 {
		hsp = 4*spr_dir
		if window_timer < 4 {
			hit_player_obj.hitstop += 1
			hit_player_obj.x += floor(x - 50*spr_dir - hit_player_obj.x)/4
			hit_player_obj.y += floor(y + 10 - hit_player_obj.y)/4
		} else if window_timer < 8 {
			hit_player_obj.hitstop += 1
			hit_player_obj.x += floor(x - 10*spr_dir - hit_player_obj.x)/4
			hit_player_obj.y += floor(y - 60 - hit_player_obj.y)/4
		} else if window_timer < 16 {
			hit_player_obj.hitstop += 1
			hit_player_obj.x += floor(x + 14*spr_dir - hit_player_obj.x)/4
			hit_player_obj.y += floor(y - 50 - hit_player_obj.y)/4
		}
		
	}
	
	if window == 2 {
		
		fall_through = true
		
		if vsp > 0 && y > room_height/2 + 250 && (shield_down or jump_down) {
			set_state(PS_PRATFALL)
			spawn_hit_fx(x,y,14)
			vsp = -7
			sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
		}
		
		can_move = false 
		if window_timer > 12 {
           fx = spawn_hit_fx(x - hsp,y - vsp ,fx_fstrong )
                fx.spr_dir = .3
                fx.image_yscale = .3
                fx.draw_angle = random_func(1,360,true)
		}
	 if window_timer == 14 && !hitpause {
		vsp = 12
		hsp = 4*spr_dir
		sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1,1.1)
		sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.4)
	 }
	 
	 if window_timer == 19 {
	 	window_timer = 15
	 }	
	 
	 if !free && !hitpause && !has_hit_player{
	 	shake_camera(3,3)
	 	sound_play(asset_get("sfx_blow_medium3"),false,noone,1,1.1)
		set_state(PS_PRATFALL)
		old_hsp = 0
		old_vsp = 0
		hitpause = true 
		hitstop = 10

	  }
	
	}
		
	break; 
	
	
	
	case AT_FSPECIAL:
	
	if window == 1 && window_timer < 8 {
		invincible = true 
		invince_time = 1 
	}
	
	if (has_hit or state_timer >= 100) && state_cat != SC_HITSTUN && !hitpause && window != 4{
		move_cooldown[AT_FSPECIAL] = 30
		destroy_hitboxes();
		djumps = 0
	if state_timer < 100 {	
	hsp = 9*spr_dir	
    vsp = -6
    window = 4
    window_timer = 1 
	} else {
	hsp = 3*spr_dir	
    vsp = -6
    window = 4
    window_timer = 1 	
	}
	
    }
    
    if window == 1 {
    	move_cooldown[AT_EXTRA_2] = 8
    }
       can_fast_fall = false 
       if window == 2 {
       	vsp /= 2
       	hsp = 10*spr_dir
       }
       
       if window == 3 {
       	hsp /= 1.05
       	  vsp /= 1.05
       }
       
	break;
	
	case AT_DSPECIAL:
       
       move_cooldown[AT_DSPECIAL] = 10
       
	break;
	
	
	case AT_JAB:
       
       if (window == 3 or window == 5) && right_down-left_down == -spr_dir && attack_pressed {
       	  can_attack = true
       	  hsp = -2*spr_dir
       }
       
       if window == 4 && window_timer == 1 && !hitpause {
       	   sound_play(asset_get("sfx_waveland_ori"),false,noone, .6 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
           sound_play(asset_get("sfx_waveland_ori"),false,noone, .3 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
       }
       
	break;
	
	case AT_UTILT:
		if has_hit_player {
			set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 110);
            set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 120);
		} else {
			set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 76);
            set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 90);
		}
	
	break;
	
	case AT_DTILT:
		if has_hit_player {
			set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 140);
            set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 50);
		} else {
			set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 100);
            set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 30);
		}
	
	break;
	
	case AT_DATTACK:

       if window == 3 && window_timer == 1 && !hitpause {
       	   sound_play(asset_get("sfx_waveland_ori"),false,noone, .6 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
           sound_play(asset_get("sfx_waveland_ori"),false,noone, .3 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
       }
       
       if window == 2 && has_hit_player && window_timer < 10 {
          	hit_player_obj.x += floor(x + 20*spr_dir - hit_player_obj.x)/4
			hit_player_obj.y += floor(y - 10 - hit_player_obj.y)/4
       }
       
	break;
	
	case AT_NAIR:

       if window == 1 && window_timer == 1 && !hitpause {
       	sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1,1)
       	}
       	
       	if window == 2 && window_timer == 6 && !hitpause {
       	   sound_play(asset_get("sfx_waveland_ori"),false,noone, .6 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 2 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
           sound_play(asset_get("sfx_waveland_ori"),false,noone, .3 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 2 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
       }
       
	break;
	
	case AT_DAIR:
        if window == 1 && window_timer == 1 && !hitpause {
       	sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1,1)
       	}
    break;
       	
	case AT_UAIR:
        if window == 2 && window_timer == 1 && !hitpause {
       	sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1,1.2)
       	}
       	
       if window == 2 && window_timer == 6 && !hitpause {
       	sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.4)
       	}
       	
       	if has_hit_player {
			set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 92);
            set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 92);
		} else {
			set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 62);
            set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 62);
		}
		
       
	break;
	
	case AT_FSTRONG:
       if free {
       	  hsp /= 1.1
       	  vsp /= 1.05
       	  if vsp > 0 vsp /= 1.2
       }
       if window == 2 && window_timer == 1 && !hitpause {
       	   sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.3)
       	   sound_play(asset_get("sfx_waveland_ori"),false,noone, .6 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
           sound_play(asset_get("sfx_waveland_ori"),false,noone, .3 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
       }
       if window == 2 && window_timer == 3 && !hitpause {
       	fx_fstrong = hit_fx_create( sprite_get( "fx_fstrong" ),15);
       	  fxf = spawn_hit_fx(x,y,fx_fstrong)
       	  fxf.depth = -10
       }

	break;
	
	case AT_DSTRONG:
	   if free {
       	  hsp /= 1.1
       	  vsp /= 1.05
       	  if vsp > 0 vsp /= 1.2
       }
       if window == 1 && window_timer >= 6 && state_timer % 6 == 0 {
       	  if window_timer < 9 {
       	  	strong_charge += 1
       	  }
       	 charging = spawn_hit_fx(x + (70)*spr_dir,y - 46,fx_fstrong)
       	 charging.spr_dir = 0.5*spr_dir 
       	 charging.image_yscale = 0.5
       	 charging.draw_angle = 180
       } 
       if window == 2 && window_timer == 1 && !hitpause {
       	   sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.3)
       	   sound_play(asset_get("sfx_waveland_ori"),false,noone, .6 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
           sound_play(asset_get("sfx_waveland_ori"),false,noone, .3 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
       }
       if window == 2 && window_timer == 3 && !hitpause {
       	fx_dstrong = hit_fx_create( sprite_get( "fx_fstrong" ),10);
       	//set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -2 + strong_charge*12);
       	//set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 60+ strong_charge*12);
       	  fx_fstrong = hit_fx_create( sprite_get( "fx_fstrong" ),15);
       	  fxf = spawn_hit_fx(x + (60)*spr_dir,y - 70,fx_dstrong)
       	  fxf.depth = -10
       	  fxf.draw_angle = 180
       }
       

	break;
	
	
	case AT_USTRONG:
       if free {
       	  hsp /= 1.1
       	  vsp /= 1.05
       	  if vsp > 0 vsp /= 1.2
       }
       if window == 2 && !hitpause {
       	if window_timer == 1 {
       	   sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.3)
       	   sound_play(asset_get("sfx_waveland_ori"),false,noone, .6 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
           sound_play(asset_get("sfx_waveland_ori"),false,noone, .3 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
       	} else if window_timer == 3 {
       	sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.3)	
       	} else if window_timer == 5 {
       	sound_play(asset_get("sfx_ice_on_player"),false,noone,1,1.3)		
       	}
       }
       if window == 2 && window_timer == 3 && !hitpause {
       	fx_ustrong = hit_fx_create( sprite_get( "fx_ustrong" ),10);
       	  fxf = spawn_hit_fx(x,y,fx_ustrong)
       	  fxf.depth = -10
       }

	break;
	
	case AT_NSPECIAL:
	 move_cooldown[AT_NSPECIAL] = 30
       if window >= 2 {
       	  hsp /= 1.1
       	  vsp /= 1.05
       	  if vsp > 0 vsp /= 1.2
       }
       if window == 1 && window_timer == 5 && !hitpause {
       	
       	if !special_down && move_cooldown[AT_EXTRA_1] == 0 {
       	  window = 3 
       	  window_timer = 0
       } else {
       	state_timer = 100
       	sound_play(asset_get("sfx_ori_bash_hit"),false,noone,1,1.2)
       }
       
     }
       
       if window == 3 && window_timer == 1 && !hitpause {
       	if move_cooldown[AT_EXTRA_1] == 0 {
       		
       	if state_timer < 100 {
       		take_damage(player,-1,10)
       		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
       		create_hitbox(AT_NSPECIAL,1,x + 10*spr_dir,y - 30)
       		
       	} else {
       		take_damage(player,-1,10)
       		sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.1)
       		create_hitbox(AT_NSPECIAL,2,x + 10*spr_dir,y - 30)
       	}
       	}
       	   sound_play(asset_get("sfx_waveland_ori"),false,noone, .6 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
           sound_play(asset_get("sfx_waveland_ori"),false,noone, .3 + (get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) ,
           max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
       }
       
	break;
	
}