//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//Sai SFX
if (state_timer == 1 or (window == 1 && window_timer == 1)) && attack != AT_JAB && attack != AT_NAIR  && !hitpause {
  sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone, .6 ,
    max ( 0.5, 1.6 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
  
  
  if attack != AT_USPECIAL && attack != AT_DSPECIAL  {
  if attack == AT_FSTRONG or attack == AT_DSTRONG or attack == AT_USTRONG or attack == AT_FSPECIAL {
  	
    if sword_id[1].follow_type == 0 {
  
         sound_play(asset_get("sfx_ice_on_player"),false,noone, .7,
    max ( 1, 2 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/30) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/30)) - (random_func(1,10,true))/100 ))
               sound_play(asset_get("sfx_ice_on_player"),false,noone, .45 ,
    max ( 0.5, 2 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/15) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/15)) - (random_func(1,10,true))/100 ))
  
               sound_play(asset_get("sfx_spin"),false,noone, .9 , .8)
  
    } 
    
  } else {
  	
  	 if sword_id[0].follow_type == 0  && attack != AT_TAUNT {
  
         sound_play(asset_get("sfx_ice_on_player"),false,noone, .6 ,
    max ( 0.5, 2 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/15) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/15)) - (random_func(1,10,true))/100 ))
  
    } 
    
    
  }
}
  
   //sound_play(asset_get("sfx_swipe_heavy2"),false,noone, .8 ,
   //max( 0.9, .5 + get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) - (random_func(1,10,true))/100 )



 if  (window == 2 && window_timer == 1) && ( attack == AT_FSTRONG or attack == AT_DSTRONG or attack == AT_USTRONG or attack == AT_FSPECIAL ) && !hitpause {
 	  
 	        sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone, .6 ,
        max ( 0.5, 2 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/20) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/20)) - (random_func(1,10,true))/100 ))
      
      
 	    sound_play(asset_get("sfx_ice_shieldup"),false,noone, .9 ,
        max ( 0.5, 2 - ((get_window_value(attack, 1, AG_WINDOW_LENGTH)/15) + (get_window_value(attack, 2, AG_WINDOW_LENGTH)/15)) - (random_func(1,10,true))/100 ))
      
 }
}

for (var i = 0; i <= 1; i++) {
    if (instance_exists(sword_id[i])) {
        if (sword_id[i].follow_type == 0) {
            sword_id[i].spr_dir = spr_dir 
            move_cooldown[AT_NSPECIAL] = 5;
        }
        
    }
}



//Sword facing the correct position when attacking.

if (attack == AT_FSTRONG) {
    if (window == 3 && window_timer == 1) {
        if (instance_exists(sword_id[1])) {
            if (sword_id[1].follow_type == 1 || sword_id[1].state == PS_DEAD || sword_id[1].state == PS_RESPAWN) {
                window = 5;
                window_timer = 1;
            }
        }
    }
}

if (attack == AT_USTRONG) {
    if (window == 2 && window_timer == 1) {
        if (instance_exists(sword_id[1])) {
            if (sword_id[1].follow_type == 0 && sword_id[1].state != PS_DEAD && sword_id[1].state != PS_RESPAWN)  {
                window = 5;
                window_timer = 1;
            }
        }
    }
}

if (attack == AT_DSTRONG) {
    if (window == 2 && window_timer == 1) {
        if (instance_exists(sword_id[1])) {
            if (sword_id[1].follow_type == 0 && sword_id[1].state != PS_DEAD && sword_id[1].state != PS_RESPAWN)  {
                window = 5;
                window_timer = 1;
            }
        }
    }
}

if (attack == AT_FTILT) {
    if (window == 3 && window_timer == 1) {
        if (instance_exists(sword_id[0])) {
            if (sword_id[0].follow_type == 1 || sword_id[1].state == PS_DEAD || sword_id[1].state == PS_RESPAWN) {
                window = 5;
                window_timer = 1;
            }
        }
    }
}

if (attack == AT_DTILT) {
    if (window == 3 && window_timer == 1) {
        if (instance_exists(sword_id[0])) {
            if (sword_id[0].follow_type == 1 || sword_id[1].state == PS_DEAD || sword_id[1].state == PS_RESPAWN) {
                window = 5;
                window_timer = 1;
            }
        }
    }
}


if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 15;
    can_fast_fall = false;
    grav = 0.4;
    if (window == 1) {
        if (window_timer == 1) {
            if (free) vsp = -4;
        }
        for (var i = 0; i <= 1; i++) {
            if (instance_exists(sword_id[i])) {
                if (sword_id[i].follow_type == 0) {
                    sword_id[i].spr_dir = spr_dir 
                }
            }
        }
            
        nspecial_charge_timer = 0;
    }
    if (window == 2) {
        
        nspecial_charge_timer ++;
        
        if (shield_pressed && nspecial_charge_timer < nspecial_charge_timer_max_hold) {
            available_swords();
            clear_button_buffer(PC_SHIELD_PRESSED);
            window = 25;
            window_timer = 0;
        }
        if (jump_pressed && nspecial_charge_timer < nspecial_charge_timer_max_hold) {
            available_swords();
            can_jump = true;
        }
        
        if (!special_down && nspecial_charge_timer < nspecial_charge_timer_max_hold) {
            window = 3
            window_timer = 0
            if (instance_exists(sword_id[nspecial_sword])) {
                if (sword_id[nspecial_sword].follow_type == 0 && (sword_id[nspecial_sword].state != PS_DEAD || sword_id[nspecial_sword].state != PS_RESPAWN)) {
                    sword_id[nspecial_sword].window = 8;
                    sword_id[nspecial_sword].window_timer = 0;
                }
            }
        }
        else {
            if (nspecial_charge_timer == nspecial_charge_timer_max_hold) sound_play(asset_get("mfx_star"))
            if (nspecial_charge_timer >= nspecial_charge_timer_max) {
                window = 3
                window_timer = 0
                if (instance_exists(sword_id[nspecial_sword])) {
                    if (sword_id[nspecial_sword].follow_type == 0 && (sword_id[nspecial_sword].state != PS_DEAD || sword_id[nspecial_sword].state != PS_RESPAWN)) {
                        sound_play(asset_get("sfx_ell_overheat"));
                        sword_id[nspecial_sword].window = 10;
                        sword_id[nspecial_sword].window_timer = 0;
                    }
                }
            }
        }
    }
    if (window == 3) {
        if (window_timer == 1) {
            available_swords();
        }
    }
    
    if (window == 5) {
        if (window_timer == 1) {
            retrieve_swords();
        }
    }
}

if (attack == AT_TAUNT) {
    if (window == 1) {
        if (window_timer == 1) {
            retrieve_swords();
        }
    }
    if (window == 4) {
        iasa_script();
    }
}


if (attack == AT_TAUNT_2) {
    move_cooldown[AT_TAUNT_2] = 25;
    if (window == 2) {
        with (pHitBox) {
            if (player_id == other.id) {
                if (attack == AT_TAUNT_2 && hbox_num == 1 && y >= other.y - 12 && y <= other.y) {
                    other.window = 3;
                    other.window_timer = 0;
                    shake_camera(6, 6);
                    spawn_hit_fx(round(x), round(y - 12), 301)
                    instance_destroy(id);
                    break;
                }
            }
        }
    }
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 25;
    can_move = false;
    can_fast_fall = false;
    
    if ((window == 4 || window == 7) && window_timer == 2) {
        for (var i = 0; i <= 1; i++) {
            if (instance_exists(sword_id[i])) {
                if (sword_id[i].follow_type == 0 && sword_id[i].state == PS_ATTACK_AIR) {
                    if (window == 4)
                        sword_id[i].window = 10
                    if (window == 7)
                        sword_id[i].window = 13
                    sword_id[i].window_timer = 2;
                }
                
            }
        }
    }
    
    if (window == 3 || window == 6 || window == 9) {
        can_wall_jump = true
        if (has_hit_player && window_timer >= 14) {
            can_jump = true;
        }
	    
	    for (var i = 0; i <= 1; i++) {
	        if (instance_exists(sword_id[i])) {
	        	if (place_meeting(x + (4 * spr_dir), y, sword_id[i]) && !sword_id[i].go_back && sword_id[i].follow_type = 1 && sword_id[i].state != PS_DEAD && sword_id[i].state != PS_RESPAWN) {
					sound_play(asset_get("sfx_buzzsaw_hit"));
	        		sword_id[i].go_back = true; 
	        		sword_id[i].follow_type = 0;
	        		hitpause = 1;
	        		hitstop = 3;
	        		sword_id[i].hitpause = hitstop;
	        		hsp = 0;
	        		vsp = 0;
	        		old_hsp = 0;
	        		old_vsp = 0;
    				spawn_hit_fx(round(x), round(y - 36), 301)
	        		destroy_hitboxes();
	        		destroy_sword_hitboxes();
	        		var alive_swords = 2;
				    for (var j = 0; j <= 1; j++) {
				        if (instance_exists(sword_id[j])) {
				            if (sword_id[j].state == PS_DEAD || sword_id[j].state == PS_RESPAWN || sword_id[j].follow_type == 1) {
				               alive_swords --;
				            }
				        }
				    }
				    
				    if (alive_swords >= 2) {
				        window = 7;
				        window_timer = 0;
				    }
				    else if (alive_swords == 1) {
				        window = 4;
				        window_timer = 0;
				    }
				    else {
				        window = 1;
				        window_timer = 0;
				    }
			        if (sword_id[i].follow_type == 0) {
	        			sword_id[i].next_attack = AT_FSPECIAL;
			        }
	        	}
	        }
	    }
    }
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
    can_wall_jump = true;
    uspecial_used = true;
    
    if (window == 4)  {
        can_move = false
    }
    
    if (window == 3) {
        if (vsp >= -5) {
            destroy_hitboxes();
            window ++;
            window_timer = 0;
        }
    }

    if (window == 6 || window == 7) {
        if (!free) {
            sound_play(asset_get("sfx_obstacle_hit"))
            window = 8;
            window_timer = 0;
        }
    }
    
    if (window == 8) {
        can_shield = true;
    }
    
    for (var i = 0; i <= 1; i++) {
        if (instance_exists(sword_id[i])) {
        	if (place_meeting(x, y, sword_id[i]) && !sword_id[i].go_back && sword_id[i].follow_type = 1 && sword_id[i].state != PS_DEAD && sword_id[i].state != PS_RESPAWN) {
				sound_play(asset_get("sfx_buzzsaw_hit"));
        		sword_id[i].go_back = true;
        		sword_id[i].follow_type = 0;
        		hitpause = 1;
    			hitstop = 4;
	        	sword_id[i].hitpause = hitstop;
        		hsp = 0;
        		vsp = 0;
        		old_hsp = 0;
        		old_vsp = 0;
        		destroy_hitboxes();
        		destroy_sword_hitboxes();
        		
        		spawn_hit_fx(round(x), round(y - 36), 301)
        		
        		window = 1;
        		window_timer = 4;
        		
            	if (left_down)
            		spr_dir = -1;
            	if (right_down)
            		spr_dir = 1;
        	}
        }
    }
}

if (attack == AT_DSPECIAL){
    move_cooldown[AT_DSPECIAL] = 30;
    grav = 0.4;
    if (window == 1) {
        if (window_timer == 1) {
            if (free) vsp = -1;
        }
    }
    vsp = min(vsp, max_fall / 2)
    can_fast_fall = false;
    //can_move = false
}

//Final Smash
if (attack == 49) {
    move_cooldown[49] = 30;
    can_move = false;
    can_fast_fall = false;
    can_attack = false;
    can_strong = false;
    can_ustrong = false;
    can_special = false;
    
	if (window == 1) {
        if (window_timer == 2) {
            for (var i = 0; i <= 1; i++) {
                if (instance_exists(sword_id[i])) {
                    with (sword_id[i]) {
                        committed = 1;
                        percent = 0;
            		    strong_charge = 0;
            		    window_timer = 2;
            		    window = 6;
            		    go_back = false;
                        state_timer = 0;
                        state = PS_ATTACK_AIR;
                        attack = 49;
                        follow_type = 0;
                    }
                }
            }
        }
	}
    grav = 0;
	if (window == 2) {
	    if (window_timer == 1) {
    		with (oPlayer) {
    			if (id != other.id) {
    				hitstop += 1;
				    hitstop_full = 9999;
    				old_hsp = hsp
    				old_vsp = vsp;
    				prev_prev_hsp = hsp;
    				prev_prev_vsp = vsp;
    				hitpause = true;
    				attack_invince = true;
    				invince_time += 1;
    			}
    		}
	    }
	   
		if (window_timer == 25) {
	        sound_play(asset_get("sfx_clairen_hair"))
		}
		
		if (window_timer == 75) {
	        sound_play(asset_get("sfx_forsburn_cape_swipe"))
		}
	    
		if (window_timer == 100) {
	        sound_play(sound_get("sfx_final1"))
		}
		with (oPlayer) {
			if (id != other.id) {
    				old_hsp = hsp
    				old_vsp = vsp;
				hitstop += 1;
				hitstop_full = 9999;
				hitpause = true;
				attack_invince = true;
				invince_time += 1;
			}
		}
	}
	
	if (window == 3) {
	    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
	        var article = instance_create(x + 48, y - 48, "obj_article2");
	        article.image_angle = spr_dir == -1 ? 180 : 0;
	    }
	}
	if (window == 4) {
	    var laser = false;
	    with (obj_article2) {
	        if (player_id == other.id) {
	            laser = true;
	        }
	    }
	    
	    if (!laser) {
	        window = 5;
	        window_timer = 0;
            for (var i = 0; i <= 1; i++) {
                if (instance_exists(sword_id[i])) {
                    sword_id[i].follow_type = 0;
                }
            }
	    }
	}
	
}
#define destroy_sword_hitboxes()

with (pHitBox) {
    if ("sword_owner" in self && player_id == other.id && type == 1) {
        if (instance_exists(sword_owner)) {	
        	instance_destroy(id);
        	continue;
        }
    }
}

#define available_swords()
nspecial_sword = !nspecial_sword
if (instance_exists(sword_id[nspecial_sword])) {
    if (sword_id[nspecial_sword].follow_type == 1 || sword_id[nspecial_sword].state == PS_DEAD || sword_id[nspecial_sword].state == PS_RESPAWN) {
        nspecial_sword = !nspecial_sword
    }
}

#define retrieve_swords
for (var i = 0; i <= 1; i++) {
    if (instance_exists(sword_id[i])) {
        if (sword_id[i].follow_type == 1 && sword_id[i].state != PS_DEAD && sword_id[i].state != PS_RESPAWN)
            sword_id[i].go_back = true;
    }
}