
	//B - Reversals

if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL 
|| attack == AT_DAIR || attack == AT_UAIR){
    trigger_b_reverse();
}

if attack == AT_JAB{

	if window < 3 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
			hit_player_obj.hsp = ((x + (50 * spr_dir)) - hit_player_obj.x) / 10
	}
	
}

if attack == AT_NAIR && window == 1 {
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
ethrow = 0
}

if attack == AT_FAIR && window == 1 {
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
}

if attack == AT_DSTRONG {
    if window == 1 && window_timer == 1 {
        spr_dir *= -1
    }
}


if attack == AT_DAIR {
    
        if window == 1 && window_timer == 1 {
             	state_timer = 0
       	    if vsp > -2 {
       	    	vsp = -2
       	    }
       	    
       	    if left_down && !right_down {
       	    	spr_dir = -1
       	    }
       	    if !left_down && right_down {
       	    	spr_dir = 1
       	    }
         }
         
    fall_through = 1
    
    can_fast_fall = false
    if window >= 2 {
    	if left_down {
    		x -= 1
    	}
    	if right_down {
    		x += 1 
    	}
    can_wall_jump = true
    }

    if (y > room_height/2 + 300){
    	can_shield = true
    }
    
    if (has_hit or !free) && !hitpause {
    	if has_hit {
    	vsp = -7
    	window = 4 
    	window_timer = 0
    	}
    	
    	if !free {
    	sound_play(asset_get("sfx_ori_stomp_hit"),false,noone,0.7);
    	}
    }
    
    if window == 1 && window_timer == 14 {
         sound_play(asset_get("sfx_swipe_heavy2"));
    }
    
    
    if window == 2 && !hitpause {
        vsp = 14
    }
    
    if window == 2 && hitpause  {
        old_vsp = -14
    }
    
    if window == 2 && window_timer == 8 && free {
        window_timer = 1
    }
    
}

if attack == AT_NSPECIAL  {
	if window == 1 && window_timer < 5{
	    if left_down && !right_down {
  	    	spr_dir = -1
  	    }
  	    
  	    if !left_down && right_down {
  	    	spr_dir = 1
  	    }
	}
	
	if window == 1 && window_timer == 12 && special_down && state_timer < 400 {
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 24);
		spawn_hit_fx(x - 30*spr_dir,y - 60,timeS2)
		state_timer = 400
		window = 1
		window_timer = 2
		sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"),false,noone,1,1.1);
		shake_camera(4,4)
	}
	
	if window == 1 && window_timer == 1 {
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
		sound_play(asset_get("sfx_bird_downspecial"));
	}
	
	can_fast_fall = false
	
	if window == 1 {
		hsp /= 1.1
		vsp /= 1.1
	} else {
		hsp = 0
		vsp = 0
	}
	
	if state_timer >= 400 {
		hsp = 0
		vsp = 0
		if window == 2 && window_timer <= 1 && !hitpause {
			spawn_hit_fx(x + 40*spr_dir,y - 80,timeS2)
			spawn_hit_fx(x + 40*spr_dir,y + 10,timeS2)
			spawn_hit_fx(x + 80*spr_dir,y - 35,timeS2)
			spawn_hit_fx(x,y - 35,timeS2)
			
			spawn_hit_fx(x + 40*spr_dir,y - 36,timeS)
            
            create_hitbox(AT_NSPECIAL,3,x,y)
            create_hitbox(AT_NSPECIAL,5,x,y)
            create_hitbox(AT_NSPECIAL,4,x,y)
            create_hitbox(AT_NSPECIAL,6,x,y)
            

		}
	}
	
	if hitpause && window == 2 {
		window_timer += 0.2
	}
	
  if window == 1 && window_timer == 12 && !hitpause  && state_timer < 400  {
  	sound_play(sound_get("RI"),false,noone,1,1);
  	sound_play(asset_get("sfx_abyss_explosion"),false,noone,0.5,1.2);
  	sound_play(asset_get("sfx_spin"),false,noone,1.4,0.6);
  	shake_camera(4,4)
  	move_cooldown[AT_NSPECIAL_2] = 5
  	move_cooldown[AT_NSPECIAL] = 60
  }
  
  if window == 1 && window_timer == 24 && !hitpause  && state_timer >= 400  {
  	sound_play(sound_get("RI"),false,noone,1,1);
  	sound_play(asset_get("sfx_abyss_explosion"),false,noone,0.5,1.2);
  	sound_play(asset_get("sfx_spin"),false,noone,1.4,0.6);
  	shake_camera(4,4)
  	move_cooldown[AT_NSPECIAL_2] = 5
  	move_cooldown[AT_NSPECIAL] = 60
  }
  
}



if attack == AT_DATTACK {
    if ((window < 3 && window_timer < 3) or window < 3) && (has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause){
			hit_player_obj.x += ((x + (30 * spr_dir)) - hit_player_obj.x) / 10
			hit_player_obj.y += (y - 10 - hit_player_obj.y) / 10
    }
}




if attack == AT_DTILT{
	
	if window == 1 && window_timer == 1 && !hitpause {
			sound_play(asset_get("sfx_jumpground"));
		
	}
	
	
}

if attack == AT_NAIR{
	
	if window == 1 && window_timer == 6 && !hitpause {
			sound_play(asset_get("sfx_swipe_medium2"));
		
	}
	
	if window == 3 && ethrow != 0 && !hitpause {
		y -= 50
		set_attack(AT_DSPECIAL)
		window = 2
		window_timer = 0
		vsp = -7
	}
	
}

if attack == AT_FSTRONG{

if !hitpause && window == 2 && window_timer == 5 {
	sound_play(asset_get("sfx_shovel_hit_heavy2"))
	sound_play(asset_get("sfx_blow_heavy2"))
	shake_camera(4,4)
}

}

if attack == AT_FSPECIAL{
	move_cooldown[AT_FSPECIAL] = 30
  if state_timer < 5 {
  	if left_down && !right_down {
  		spr_dir = -1
  	}
  	
  	if !left_down && right_down {
  		spr_dir = 1
  	}
  }
  
	can_fast_fall = false
	if window = 1 && window_timer == 6 { 
		if special_down && !free && batt >= 3{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -5);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -7);
				spawn_hit_fx( x  , y - 50 , 305 )
			window = 3
			window_timer = 0
		}
		
		if special_down && free && batt >= 3{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 1);
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 2);
				spawn_hit_fx( x  , y - 50 , 305 )
				vsp = -6
			window = 5
			window_timer = 0
		}
		
	}
	
	if window == 1 && window_timer == 9 {
		sound_play(asset_get("sfx_swipe_heavy2"));
	}
	    
	    if has_rune("O") and (window == 4 or window == 6) {
	    	if window_timer % 3 <= 1 && batt > 0{
	    					set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 4 + random_func(1,8,true));
	    					if free {
	    					set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 2 - random_func(2,6,true));
	    					} else {
	    					set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -4 - random_func(2,6,true));	
	    					}
	    			create_hitbox(AT_FSPECIAL , 3 , x + 20 - random_func(3,40,true) + (32 * spr_dir)  , y - 14 - random_func(4,40,true));
	    			spawn_hit_fx(x + 20 - random_func(3,40,true) + (32 * spr_dir),y - 14 - random_func(4,40,true), 27)
	    			sound_play(asset_get("sfx_ice_shieldup"));
	    	}
	    	

	    	
	    }
	    
		if window == 4 && window_timer == 1 && !hitpause  {

		if !free {
			hsp = 5 * (spr_dir)
		}

			create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 22 );
			create_hitbox(AT_FSPECIAL , 2 , x + (32 * spr_dir) , y - 32 );
			create_hitbox(AT_FSPECIAL , 3 , x + (32 * spr_dir) , y + 12 );
			batt -= 3
			move_cooldown[AT_TAUNT] = 16
			sound_play(asset_get("sfx_swipe_heavy2"));
			sound_play(asset_get("sfx_spin"));
			
			with (asset_get("pHitBox")) {
                    if player_id == other.id {
                      hit_effect_x += 3
                    }
            }
                
	   }
	
	
		if window == 6 && window_timer == 1 && !hitpause {

			hsp = -3 * (spr_dir)
			vsp = -8 

            create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 02 );
			create_hitbox(AT_FSPECIAL , 2 , x + (32 * spr_dir) , y - 02 );
			create_hitbox(AT_FSPECIAL , 3 , x + (32 * spr_dir) , y + 12 );
			batt -= 3
			move_cooldown[AT_TAUNT] = 16
			sound_play(asset_get("sfx_swipe_heavy2"));
			sound_play(asset_get("sfx_spin"));

            with (asset_get("pHitBox")) {
                    if player_id == other.id {
                      hit_effect_x += 3
                    }
            }
            
	}
	
	
	
	
	if window == 2 && window_timer == 1 && !hitpause  {
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
		if !free {
			hsp = 5 * (spr_dir)
		}
		
        if batt < 1 {
		create_hitbox(AT_JAB , 1 , x + (32 * spr_dir) , y - 32 );	
        } else {

			sound_play(asset_get("sfx_ice_shieldup"));
			create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 32 );
			batt -= 1
			move_cooldown[AT_TAUNT] = 16
			
			with (asset_get("pHitBox")) {
                    if player_id == other.id {
                      hit_effect_x += 1
                    }
            }
            
        }

	}
	
     if window = 3 && window_timer == 12 {
			window = 4
			window_timer = 0
     }
     
     if window = 5 && window_timer == 15 {
			window = 6
			window_timer = 0
     }
     
}


if attack == AT_DSPECIAL{
	if window == 1 && window_timer == 1 {
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
		ethrow = 0
		if !free {
			vsp = -14
		} else {
			vsp = -10
		}
		sound_play(asset_get("sfx_bird_sidespecial_start"));
	}
    
    
    
	if window == 1 && window_timer == 6 && ((batt <= 0 && ethrow = 0) or shield_down) {
	 set_state(PS_IDLE_AIR)	
	 move_cooldown[AT_DSPECIAL] = 999
	 clear_button_buffer( PC_SHIELD_PRESSED );
	}
	
	if window >= 3 {
		vsp -= 0.3
	}
	
   if window == 2 && window_timer < 10{
   	    vsp /= 1.2
   	     hsp /= 1.2
   	    vsp -= 0.1
   	    
   	    if ethrow = 0 {
   	    if move_cooldown[AT_DTILT] = 0 {	
   	    if window_timer == 1 && batt >= 1 {
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 6);
   	    	create_hitbox(AT_FSPECIAL,4,x,y+30)
   	    	batt -= 1
   	    	move_cooldown[AT_TAUNT] = 16
   	    	sound_play(asset_get("sfx_ice_shieldup"));
   	    	
   	    	with (asset_get("pHitBox")) {
                    if player_id == other.id && type == 2 {
                      hit_effect_x += 1
                    }
            }
            
   	    }
   	    if window_timer == 2 && batt >= 1 {
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 2.5);
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 5);
   	    	create_hitbox(AT_FSPECIAL,4,x,y+30)
   	    	batt -= 1
   	    	sound_play(asset_get("sfx_ice_shieldup"));
   	    	
   	    	with (asset_get("pHitBox")) {
                    if player_id == other.id {
                      hit_effect_x += 1
                    }
            }
   	    }
   	    if window_timer == 3 && batt >= 1 {
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, -2.5);
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 5);
   	    	create_hitbox(AT_FSPECIAL,4,x,y+30)
   	    	batt -= 1
   	    	sound_play(asset_get("sfx_ice_shieldup"));
   	    	
   	    	with (asset_get("pHitBox")) {
                    if player_id == other.id {
                      hit_effect_x += 1
                    }
            }
   	    }
   	    if window_timer == 4 && batt >= 1 {
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 5);
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 4);
   	    	create_hitbox(AT_FSPECIAL,4,x,y+30)
   	    	batt -= 1
   	    	sound_play(asset_get("sfx_ice_shieldup"));
   	    	
   	    	with (asset_get("pHitBox")) {
                    if player_id == other.id {
                      hit_effect_x += 1
                    }
            }
   	    }
   	    if window_timer == 5 && batt >= 1 {
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, -5);
   	    	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 4);
   	    	create_hitbox(AT_FSPECIAL,4,x,y+30)
   	    	batt -= 1
   	    	sound_play(asset_get("sfx_ice_shieldup"));
   	    	
   	    	with (asset_get("pHitBox")) {
                    if player_id == other.id {
                      hit_effect_x += 1
                    }
            }
            
   	    }
   	    }
   	    } else {
   	       	    if window_timer == 1 && ethrow >= 1 {
   	            	create_hitbox(AT_FSPECIAL,5,x,y+10)
   	            	ethrow -= 1
   	            	sound_play(asset_get("sfx_ice_shieldup"));
   	            	sound_play(asset_get("sfx_bird_sidespecial"));
   	            	sound_play(asset_get("sfx_bird_sidespecial_start"));
		            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.4);
   	            	vsp = -10
   	            }
   	            

   	            if window_timer == 3 && ethrow >= 1 {
   	            	create_hitbox(AT_FSPECIAL,5,x,y-10)
   	            	ethrow -= 1
   	            	sound_play(asset_get("sfx_ice_shieldup"));
   	            	sound_play(asset_get("sfx_bird_sidespecial_start"));
		            sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1.4);
   	            	vsp = -10
   	            }

   	            if window_timer == 5 && ethrow >= 1 {
   	            	create_hitbox(AT_FSPECIAL,5,x,y-30)
   	            	ethrow -= 1
   	            	sound_play(asset_get("sfx_ice_shieldup"));
   	            	sound_play(asset_get("sfx_bird_sidespecial_start"));
		            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.4);
		            vsp = -10
   	           }	
   	    }
   }
}


if attack == AT_USPECIAL{
	move_cooldown[AT_DSPECIAL] = 0
		set_attack_value(AT_FAIR, AG_CATEGORY, 2);
	draw_indicator = false
	hsp = 0
	vsp = 0
	if window == 2{
	    if left_down && !right_down {
	    	spr_dir = -1
	    }
	    
	    if !left_down && right_down {
	    	spr_dir = 1
	    }
	}
	can_fast_fall = 0
	
	if window == 1 && window_timer == 1 {
		ethrow = 0
	}
	
	if window == 1 && window_timer == 8{
		spawn_hit_fx(x,y,cape)
		spawn_hit_fx(x,y - 34,timeS2)
	}
    
    if window == 2 && window_timer == 1 && !hitpause {
    	var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
			vsp += -10
			y += -120;
			
		}else{
			hsp += (10 * cos(angle));
			vsp += (10 * sin(angle));
			x += (120 * cos(angle));
			y += (120 * sin(angle)) + 10;
			
		}
		
    }
    
    if window == 2 && window_timer == 2 && !hitpause {
    	spawn_hit_fx(x,y - 30,timeS2)
    }
    
    if window == 3 && window_timer == 1 && !hitpause {
    	sound_play(asset_get("sfx_forsburn_reappear"));
    	sound_play(asset_get("sfx_abyss_explosion"),false,noone,0.5,1.2);
    	shake_camera(2,4)
    	create_hitbox(AT_NSPECIAL,2,x,y)
    		spawn_hit_fx(x,y - 30,timeS)
    		
    	//if special_down && batt > 0 && !has_hit_player{
    	//	batt -= 1
    	//	window = 1
    	//    window_timer = 9
    	//}
    }
    

    if window == 3 && window_timer > 10 && !free {
    	set_state(PS_PRATLAND)
    	state_timer = 9
    }

    if window == 3 && has_hit_player {
    	set_attack(AT_FAIR)
    	window = 4
    	window_timer = 1
    	hsp = -2*spr_dir
    	old_hsp = -2*spr_dir
        vsp = -8
        old_vsp = -8
    }
    
    if window == 3 && ethrow != 0 && !hitpause && !has_hit_player{
    	y -= 50
		set_attack(AT_DSPECIAL)
		window = 2
		window_timer = 0
		vsp = -7
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 7);
	}
}
	

if attack == AT_TAUNT {
	

	draw_indicator = false
	
	if cheapmode = 0 && hit_player_obj.url != "2273636433" && hit_player_obj.url != "1870768156"
	&& hit_player_obj.url != "1869351026" && hit_player_obj.url != "2443363942" &&
	(string_count("nald", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("%", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("sand", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("psy", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ultra", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("god", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("boss", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ui ", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ssg", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("melee", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("accurate", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	
	or hit_player_obj.url == "2159023588"
	or hit_player_obj.url == "1980469422"
	){
        cheapmode = 1
    }
    
	if cheapmode = 1 {
		

		invincible = true
		nctimer += 1
		if window == 2 && window_timer == 18 {
			window_timer -= 1
			if attack_pressed {
				set_attack (AT_EXTRA_2)
				window = 2
				window_timer = 0
			}
			if special_pressed {
				cheapmode = -1
			}
		}
		if window == 1 && window_timer == 2 {
			sound_play(sound_get("radio2"));
		}
	}
	
	if cheapmode != 1 {
	nctimer += 1
	if nctimer == 1{
		if hit_player_obj == self {
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
		}	

		create_hitbox(AT_TAUNT , 1 , x , y );
		sound_play(sound_get("radio2"));
	}
	if taunt_down && window == 2 && window_timer == 18 {
		window_timer -= 1
	}
	if !taunt_down && window == 2 && window_timer == 18 {
		sound_stop(sound_get("radio2"));
	}
	}
}	

	
	if attack == AT_EXTRA_2 {
		
		
		draw_indicator = false
		suppress_stage_music( 0, 0.4 );	
		nctimer = 0
		
		if window == 3 {
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					invincible = false
				}
			}
			create_hitbox(AT_EXTRA_2 , 1 , x , y );
			spawn_hit_fx (x , y - 56, lighten)
			hit_player_obj.state = PS_IDLE_AIR
			hit_player_obj.hsp = 0
			hit_player_obj.vsp = 0
			hit_player_obj.y -= 1
			hit_player_obj.x += 1 * spr_dir
		}
		
		if window < 4 {
		  invincible = true
		}
		

			hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE);
        

		if window == 1 && window_timer == 30 {
			spawn_hit_fx (x, y - 40, 306)
		}

		if window == 4  {
			create_hitbox(AT_EXTRA_2 , 1 , x , y );
			
			if looptime < 1 && window_timer >= 290 && get_player_stocks(hit_player_obj.player) > 1 {
				inloop = 1
				sound_play(sound_get("supercombo"));
			} 
			

			
			hit_player_obj.hit_player_obj = self
			visible = true
			thisx = x
			thisy = y
			thisface = spr_dir
	with (asset_get("pHitBox")) {
		if(player_id != other.id) {
          destroyed = true;
		}
        }
    
    
			if get_gameplay_time() % 60 == 0{
    	sound_play(sound_get("gun4"));
    	    spawn_hit_fx (x, y, redden)
    	    shake_camera(2, 10)
          }
          
          
          if get_gameplay_time() % 70 == 0{
              	sound_play(sound_get("gun4"));
              	    spawn_hit_fx (x, y, lighten)
              	    shake_camera(6, 30)
          }
          
          
          if get_gameplay_time() % 40 == 0 {
              	sound_play(sound_get("CCloop"));
              	    spawn_hit_fx (x, y, lighten)
              	    spawn_hit_fx (x, y, redden)
              	    shake_camera(8, 10)
          }
          
          if get_gameplay_time() % 30 == 0 {
              sound_play(sound_get("CCloop"));
          }
          
          if get_gameplay_time() % 20 == 0 {
              sound_play(asset_get("sfx_troupe_rumble"));
          }


			
			if ((window_timer == 1) or (window_timer % 6 == 0)) and !inloop {
			sound_play(sound_get("gun4"));	
			spawn_hit_fx (x + (800 * spr_dir) , y + 300 - random_func(1, 800, true), laser)

			spawn_hit_fx (x + 50 - (random_func(1, 100, true)), y - 70 + random_func(2, 100, true) , 306)
			
			}
			
            if looptime <= 400 {
            if !inloop {
			hit_player_obj.x += 9999 * spr_dir
			hit_player_obj.y = 1000 - random_func(1, 1000, true)
            } else {
            if get_gameplay_time() %2 = 0 {
            	spawn_hit_fx (x + (800 * spr_dir) , y + 300 - random_func(1, 800, true), laser)
            } else {
            	
            	if get_gameplay_time() % 3 == 0 {
               			sound_play(sound_get("gun4"));	
               			sound_play(sound_get("lazercharge"));	
            	}
               shake_camera(16, 2)
            }
            

            thisx = room_width/2  - 70 + random_func(1, 150, true);
            thisy = room_height/2  - 70 + random_func(2, 150, true);
            hit_player_obj.x = room_width/2
            hit_player_obj.y = room_height/2
            with (asset_get("oPlayer")) {
				if (player != other.player) {
					invincible = false
				}
			}
			
            }
            }
			
			
			if window_timer > 1 {
			create_hitbox(AT_EXTRA_2 , 1 , x + (800 * spr_dir)  , y - 46 );
			create_hitbox(AT_EXTRA_2 , 3 , x + (800 * spr_dir)  , y - 46 );
						if get_gameplay_time() < 300 {
			create_hitbox(AT_EXTRA_2 , 2 , hit_player_obj.x  , hit_player_obj.y);
						}
			}
		}
		
		if window == 2 {
			if window_timer == 100 {
							 shake_camera(2, 35)
				spawn_hit_fx (x, y - 160, km1)
				sound_play(sound_get("slicel"))
				sound_play(sound_get("slice3"))
			}
			if window_timer == 135 {
				shake_camera(4, 35)
				spawn_hit_fx (x, y - 160, km2)
				sound_play(sound_get("slice"))
				sound_play(sound_get("slice1"))
			}
			if window_timer == 170 {
				shake_camera(6, 50)
				spawn_hit_fx (x, y - 160, km3)
				sound_play(sound_get("slice1"))
				sound_play(sound_get("slice3"))
			}
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					if get_player_stocks(player) != 0 {
					 set_player_stocks(player, 99);
					}
				}
			}
		}
		
		if window == 2 && window_timer % 5 == 0 {
			spawn_hit_fx (x , y - 56, 302)
		}
		
		
		if window == 2 && window_timer == 1 {
			 shake_camera(6, 10)
			sound_play(sound_get("slice"));
			sound_play(sound_get("Lethal"))
			spawn_hit_fx (x , y - 56, 304)
			spawn_hit_fx (x , y - 56, redden)
		}
	}	
	

	
