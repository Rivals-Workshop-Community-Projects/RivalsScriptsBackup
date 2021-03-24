
	//B - Reversals

if (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_EXTRA_1 || attack == AT_FSPECIAL){
    trigger_b_reverse();
}

if attack == AT_JAB{

	if window < 3 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN{
			hit_player_obj.x += ((x + (50 * spr_dir)) - hit_player_obj.x) / 10
	}
	
}

if attack == AT_NAIR && window == 1 {
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
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
       	    if vsp > -2 {
       	    	vsp = -2
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
    	set_attack (AT_NAIR)
    	set_attack_value(AT_NAIR, AG_CATEGORY, 2);
    	window = 4 
    	window_timer = 0
    	}
    	
    	if !free {
    	sound_play(asset_get("sfx_ori_stomp_hit"));
    	vsp = -7
    	set_attack (AT_FAIR)
    	set_attack_value(AT_FAIR, AG_CATEGORY, 2);
    	window = 4 
    	window_timer = 0
    	spawn_hit_fx (x, y + 6, 14)
    	}
    }
    
    if window == 1 && window_timer == 14 {
         sound_play(asset_get("sfx_swipe_heavy2"));
    }
    
    
    if window == 2 && !hitpause {
        vsp = 14
    }
    
    if window == 2 && hitpause  {
        vsp = 0
    }
    
    if window == 2 && window_timer == 10 && free {
        window_timer = 1
    }
    
}


if attack == AT_DATTACK {
    if ((window < 3 && window_timer < 3) or window < 3) && (has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause){
			hit_player_obj.x += ((x + (20 * spr_dir)) - hit_player_obj.x) / 10
			hit_player_obj.y += (y - 10 - hit_player_obj.y) / 10
    }
}


if attack == AT_NSPECIAL{
	
	if window = 3 { 
		move_cooldown[AT_NSPECIAL] = 30 
	}
	
     if free {
		vsp /= 2
		hsp /= 1.2
     }
	
	if window == 2 && batt < 2 && window_timer = 1 {
		sound_stop(sound_get("radio1"));
		sound_play(asset_get("sfx_holy_textbox"));
		window = 3 
		window_timer = 0
	}
	
    if window == 2 && batt >= 2 && window_timer == 1 && !hitpause  {
    	batt -= 2
    	create_hitbox(AT_NSPECIAL , 1 , x , room_height/2 - 1000 );
    }
    
     if window == 2 && has_rune("O") && batt > 0 && window_timer % 2 == 0{
     	create_hitbox(AT_NSPECIAL , 1 , x - 70*window_timer , room_height/2 - 1000 - 80*window_timer );
        create_hitbox(AT_NSPECIAL , 1 , x + 70*window_timer , room_height/2 - 1000 - 80*window_timer );
     	batt -= 1
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
	
	
}

if attack == AT_FSTRONG{

if hitpause && window == 3{
	window_timer += 0.5
}	


if window == 1 {
	strong_charge += 4.5
}

if window == 2 && window_timer = 4 {
	if strong_charge >= 60 && batt >= 1{
     batt -= 1
	} else {
		window = 4
		windowtimer = 0
		sound_play(asset_get("sfx_swipe_medium2"));
		create_hitbox(AT_FSTRONG , 1 , x  , y );
	}
}	

}

if attack == AT_FSPECIAL{
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
		if special_down && !free && batt >= 2{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -7);
				spawn_hit_fx( x  , y - 50 , 305 )
			window = 3
			window_timer = 0
		}
		
		if special_down && free && batt >= 2{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 3);
				spawn_hit_fx( x  , y - 50 , 305 )
				vsp = -6
			window = 5
			window_timer = 0
		}
		
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
	    	
	    	if window_timer % 5 == 0 {
	    	   batt -= 1	
	    	}
	    	
	    }
	    
		if window == 4 && window_timer == 1 && !hitpause  {

		if !free {
			hsp = 5 * (spr_dir)
		}

			create_hitbox(AT_FSPECIAL , 1 , x + (32 * spr_dir) , y - 22 );
			create_hitbox(AT_FSPECIAL , 2 , x + (32 * spr_dir) , y - 32 );
			batt -= 2
	   }
	
	
		if window == 6 && window_timer == 1 && !hitpause {

			hsp = -3 * (spr_dir)
			vsp = -8 


			create_hitbox(AT_FSPECIAL , 2 , x + (32 * spr_dir) , y - 02 );
			create_hitbox(AT_FSPECIAL , 3 , x + (32 * spr_dir) , y + 12 );
			batt -= 2

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
	
	  if state_timer < 5 {
  	if left_down && !right_down {
  		spr_dir = -1
  	}
  	
  	if !left_down && right_down {
  		spr_dir = 1
  	}
  }
  
	can_fast_fall = false
    if window == 1 && window_timer == 1 {
    	
    	if batt >= 1 {
    		spawn_hit_fx ( x - ( 8 * spr_dir) , y - 30, 305)
    			sound_play(asset_get("sfx_ell_steam_hit"))
    	} else {
    			sound_play(asset_get("sfx_jumpair"));
    	}
    	
    	
    	
    	if !free {
			hsp -= (5 * spr_dir)
		}
		
		if free {
			window = 4
		}
    }	
    
    if window == 4 {
    	if window_timer < 15 {
    		hsp /= 1.2 
    		vsp /= 1.2
    	}
    	
    	if window_timer == 15 && !hitpause {
    		vsp = -6
    		if batt >= 1 {
    		if special_down {
    		sound_play(asset_get("sfx_spin"));
        	batt -= 2
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 42 );

    		}
    		
    		if !special_down {
    	sound_play(asset_get("sfx_spin"));	
    		batt -= 2
    	create_hitbox(AT_DSPECIAL , 3 , x + (32 * spr_dir) , y - 32 );
    		}
    		}
    	}
    	
    }
    
    if has_rune("O") and (window == 4 or window == 2) and batt > 1 {
    		    		    set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 4 - random_func(1,8,true));
	    					set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 2 - random_func(2,6,true));
	    					set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 4 - random_func(3,8,true));
	    					set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 2 - random_func(4,6,true));
	    					
    	if window_timer % 3 == 0 {
    		create_hitbox(AT_DSPECIAL , 3 , x + (32*spr_dir) , y - 32 );
    		create_hitbox(AT_DSPECIAL , 1 , x + (32*spr_dir) , y - 32 );
    		batt += 1
    	}
    }
    
    if window == 2 && window_timer == 1 && !hitpause && batt > 1{
    	batt -= 2
    	sound_play(asset_get("sfx_spin"));
    	create_hitbox(AT_DSPECIAL , 3 , x + (32 * spr_dir) , y - 32 );
    }
    
    if window == 3 && window_timer == 1 && !hitpause && batt > 1{
    	sound_play(asset_get("sfx_spin"));
    	batt -= 2
    	create_hitbox(AT_DSPECIAL , 1 , x , y - 42 );
    }
    
    
	if window == 1  {
		
		if window_timer == 5 && (!special_down or has_rune("O")){
			window = 2 
			window_timer = 0
		}

		if window_timer == 10 {
			window = 3
			window_timer = 0
		}
	}
	
}


if attack == AT_USPECIAL{
	
			move_cooldown[AT_USPECIAL] = 999 
			
	if window == 1 && window_timer == 1 && !hitpause {
		prat_land_time = 10;
			sound_play(asset_get("sfx_swipe_medium2"));
		    		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
    		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
    		set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
    		set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
	}
if window < 3 {	
can_fast_fall = false
} else {
	if vsp < 0 {
		vsp /= 1.01
	}
can_fast_fall = true	
}
if window == 1 {
	hsp /= 1.1
	vsp /= 2
}

if ((window == 3 && window_timer < 8) or (window < 3)) && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN && !hitpause {
	hit_player_obj.y += (y - hit_player_obj.y) / 5
	hit_player_obj.x += ((x + (36 * spr_dir)) - hit_player_obj.x) / 5
}
if window == 4{

	
	if (special_down or attack_down) && vsp < -3  {
		vsp = -6
		window = 5
		window_timer = 0
		sound_play(asset_get("sfx_bird_sidespecial"));
		sound_play(asset_get("sfx_swipe_heavy2"));
	}
	
can_wall_jump = true	
	if !free {
	set_state (PS_PRATLAND)
}
}


if window == 6 {
	
	if free && window_timer == 7 {
		window_timer = 1
	}	
	if has_hit {
		prat_land_time = 15;
	}
	
	if !has_hit{
		prat_land_time = 20;
	}
	
	
    if (y > room_height/2 + 300){
    	can_shield = true
    }
	if !hitpause {
	vsp = 16
	} else {
		vsp = 3
	}
	can_wall_jump = true	
	if !free {
	set_state (PS_PRATLAND)
    }
}

}
	

if attack == AT_TAUNT {
	
	if window == 2 
	draw_indicator = false
	
	if cheapmode = 0 && hit_player_obj.url != "2273636433" && hit_player_obj.url != "1870768156"
	&& hit_player_obj.url != "1869351026" &&
	(string_count("nald", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("%", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("sand", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("oku", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("psy", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ultra", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("god", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("boss", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ui ", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ssg", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("melee", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("accurate", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
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
	

	
