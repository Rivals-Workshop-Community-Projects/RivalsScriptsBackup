//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_TAUNT){
	if (window == 2 && window_timer == 2){
        snd_rng = random_func(0, 5, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("taunt1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("taunt2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("taunt3"));            
        } else if (snd_rng == 3){
            sound_play(sound_get("taunt4"));            
        } else if (snd_rng == 4){
            sound_play(sound_get("taunt5"));            
        }
    }
	if (window == 3 && taunt_down && window_timer == 62){
		window = 2;
	    window_timer = 0;
	} else if (window == 2 && !taunt_down && window_timer == 62 || window == 3 && !taunt_down && window_timer == 56){
		window = 4;
	    window_timer = 0;
	    sound_stop(sound_get("taunt1"));
	    sound_stop(sound_get("taunt2"));
	    sound_stop(sound_get("taunt3"));
	    sound_stop(sound_get("taunt4"));
	    sound_stop(sound_get("taunt5"));
	    taunted = true;
	if (taunted){
         spawn_hit_fx(x + 20 * spr_dir, y - 122, twinkle);
}
}
}

if (attack == AT_FSPECIAL_AIR && !free){
    state = PS_LAND;
    state_timer = 0;
    sound_play(sound_get("land"));
    hurtbox_spr = sprite_get("big_band_hurtbox");
}

if (attack == AT_NSPECIAL_AIR){
		can_fast_fall = false;
	if (!free){
    state = PS_LAND;
    state_timer = 0;
    sound_play(sound_get("land"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("big_band_hurtbox"));
}
if (window >= 1 && has_hit_player){
	can_move = false;
		 with (hit_player_obj){
         self.hitstop = 8;
}
}
if (window == 1 && has_hit_player){
	window = 2;
	window_timer = 0;
} else if (window == 1 && !has_hit_player && window_timer == 19){
	window = 7;
	window_timer = 999;	
}
if (window == 2 && window_timer >= 4){
	        	 with (hit_player_obj){
        if(other.spr_dir = 1){
        self.x = other.x + 0;
        self.y = other.y + 42;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 0;
        self.y = other.y + 42;
    }
}
}
if (window == 1 && free){
move_cooldown[AT_NSPECIAL_AIR] = 60*60;	
if (window == 2){
	move_cooldown[AT_FSPECIAL_AIR] = 100;
}
}
}

if (attack == AT_NSPECIAL){
	soft_armor = 10;
		    	if(special_down && state_timer == 6){
	attack = AT_FTHROW;
}
    if (window == 3 && !has_hit_player){
    	window = 10;
    	window_timer = 0;
    	move_cooldown[AT_FSPECIAL] = 60;
move_cooldown[AT_EXTRA_2] = 60;
move_cooldown[AT_NSPECIAL] = 60;
move_cooldown[AT_FTHROW] = 60;

} else if (window == 2 && has_hit_player && window_timer >= 8){
	window = 4;
	window_timer = 0;
}
if (window == 4 && has_hit_player && window_timer == 6 && !hitstun){
 with (hit_player_obj){
	visible = false;
}
}
	if (window <= 7 && has_hit_player && window >= 3){
 with (hit_player_obj){
         self.hitstop = 8;
        
        if(other.spr_dir = 1){
        self.x = other.x + 50;
        self.y = other.y - 22;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 50;
        self.y = other.y - 22;
    }
}
}
if (window == 8 && has_hit_player || attack != AT_NSPECIAL){
 with (hit_player_obj){
 	visible = true;
}
move_cooldown[AT_FSPECIAL] = 120;
move_cooldown[AT_EXTRA_2] = 120;
move_cooldown[AT_NSPECIAL] = 120;
move_cooldown[AT_FTHROW] = 120;
}
if(window == 10 && window_timer == 1){
					soft_armor = 0;
    		sound_play(sound_get("nspecial_close"));
    	}
}

if (attack == AT_FTHROW){
		soft_armor = 10;
	hurtboxID.sprite_index = sprite_get("nspecial_strong_hurt");
	    if (window == 3 && !has_hit_player && is_end_of_window){
    	window = 14;
    	move_cooldown[AT_FSPECIAL] = 80;
move_cooldown[AT_EXTRA_2] = 80;
move_cooldown[AT_NSPECIAL] = 80;
move_cooldown[AT_FTHROW] = 80;
} else if (window == 2 && has_hit_player && window_timer >= 8){
	window = 4;
	window_timer = 0;
}
if (window == 4 && has_hit_player && window_timer == 6){
 with (hit_player_obj){
	visible = false;
}
}
	if (window <= 12 && has_hit_player && window >= 3){
 with (hit_player_obj){
         self.hitstop = 8;
        
        if(other.spr_dir = 1){
        self.x = other.x + 50;
        self.y = other.y - 22;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 50;
        self.y = other.y - 22;
    }
}
}
if (window == 13 && has_hit_player){
 with (hit_player_obj){
 	visible = true;
}
move_cooldown[AT_FSPECIAL] = 120;
move_cooldown[AT_EXTRA_2] = 120;
move_cooldown[AT_NSPECIAL] = 120;
move_cooldown[AT_FTHROW] = 120;
}
if(window >= 14 && window_timer == 1){
					soft_armor = 0;
    		sound_play(sound_get("nspecial_close"));
    	}
}

if(attack == AT_FSPECIAL_AIR){
    	if (!hitpause && !down_hard_pressed && !fast_falling && window <= 3){
    	vsp = min(vsp, 3);	
    	}
    	if(window == 2 && window_timer == 1){
    	sound_play(sound_get("cymbal")); 
    	}
move_cooldown[AT_FSPECIAL_AIR] = 100;
move_cooldown[AT_NSPECIAL_AIR] = 100;
}

if (attack == AT_FSPECIAL){
			soft_armor = 32;

if (window == 4){
move_cooldown[AT_FSPECIAL] = 40;
move_cooldown[AT_EXTRA_2] = 40;
move_cooldown[AT_NSPECIAL] = 50;
}
if(window >= 3){
				soft_armor = 0;
}
if(special_down && state_timer == 6 && taunted == true){
	attack = AT_EXTRA_2;
}
}
if(attack == AT_EXTRA_2){
	        super_armor = true;
      if(window == 4){
        super_armor = false;
		move_cooldown[AT_FSPECIAL] = 150;
	move_cooldown[AT_EXTRA_2] = 150;
    move_cooldown[AT_NSPECIAL] = 120;
    }
        		    taunted = false;
    }

if (attack == AT_DSPECIAL){
	
			if(special_down && state_timer == 6 && taunted == true){
	attack = AT_DTHROW;
}
    	if (has_hit_player){
    		 with (hit_player_obj){
    		 	 if (super_armor == false){
     self.hitstop = 0.50;
    	}
    	}
    	}
    	
		move_cooldown[AT_DSPECIAL] = 120;
}

if(attack == AT_DTHROW){
		move_cooldown[AT_DSPECIAL] = 220;
		if (window == 3){
			   shake_camera( 5, 5 );
		}
		    		    
}

if (attack == AT_USPECIAL){
move_cooldown[AT_USPECIAL] = 120;
if (window == 3){
			   shake_camera( 2, 2 );
}
}

if(attack = AT_USPECIAL_2){
	if (window <= 3){
		vsp = -2;
	}
	can_fast_fall = false;
	if (window == 3){
			   shake_camera( 2, 2 );
}
}

if (attack = AT_DTILT && state_timer == 1){
    
    snd_rng = random_func(0, 2, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("dtilt1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("dtilt2"));            
        }
}

if (attack = AT_FTILT){
        if (window == 2 || window == 5){
        if (window_timer == 1){
    
    snd_rng = random_func(0, 4, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("ftilt1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("ftilt2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("ftilt3"));            
        } else if (snd_rng == 3){
            sound_play(sound_get("ftilt4"));            
        }
}
}
}

if (attack = AT_JAB){
    if (window == 2 && window_timer == 1 || window == 4 && window_timer == 1){
    sound_play(sound_get("jab"));   
    }
}

if (attack == AT_JAB || attack == AT_DTILT || attack == AT_FTILT || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_NAIR || attack == AT_FAIR || attack == AT_DAIR || attack == AT_BAIR || attack == AT_UAIR || attack == AT_FSPECIAL || attack == AT_EXTRA_1 || attack == AT_EXTRA_2 || attack == AT_NSPECIAL || attack == AT_FTHROW || attack == AT_DSPECIAL || attack == AT_DTHROW || attack == AT_FSPECIAL_AIR || attack == AT_TAUNT || attack == AT_DATTACK || attack == AT_NSPECIAL_AIR){
    if (state_timer == 1){
        snd_rng = random_func(0, 2, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("move"));
        } else if (snd_rng == 1){
            sound_play(sound_get("move2"));            
        }
    }
}

if (attack == AT_DATTACK){
	if(has_hit_player && !was_parried){
		        can_special = true;
		        can_Uspecial = false;
	}
}

  if (attack == AT_NSPECIAL_AIR){
  	  	if(window == 4 && window_timer == 1){
            sound_play(sound_get("bell_close"));  		
  	}
  	if(window == 5 && window_timer == 1){
            sound_play(sound_get("bong"));  		
  	}
  	}

if (attack == AT_UTILT){
	if(!has_hit_player){
	    	can_special = true;
    	    move_cooldown[AT_DSPECIAL] = 2;
    	    move_cooldown[AT_USPECIAL] = 2;
	}
    if (window == 1 || window == 4){
        if (window_timer == 1){
        snd_rng = random_func(0, 2, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("move"));
        } else if (snd_rng == 1){
            sound_play(sound_get("move2"));            
        }
    }
    }
            if (window > 1 && has_hit_player && !was_parried) {
            	
            	if (window == 2){
            		if (attack_pressed || up_stick_pressed)
						hitpause_buffer = true;
            	}
            	
            	can_jump = true;
            }
            
			if (window == 3){
				if (hitpause_buffer || up_stick_pressed){
				window = 4;
				window_timer = 0;
				}else if (window_timer == 11 && !up_stick_pressed){
					window = 7;
					window_timer = 0;
				}
			}
    
    if (window == 1 || window == 4){
                if (window_timer == 1){
        snd_rng = random_func(0, 3, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("utilt1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("utilt2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("utilt3"));            
        }
    }
        
    }
    hitpause_buffer = false;
}


if (attack == AT_FSTRONG){
    if (window == 2 && state_timer == 1){
        sound_play(sound_get("fstrong"));
    }
    if (window == 2 && is_end_of_window()){
            snd_rng = random_func(0, 3, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("fstrong_land1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("fstrong_land2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("fstrong_land3"));            
        }
}

if (window == 3 && is_end_of_window()){
               snd_rng = random_func(0, 2, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("move"));
        } else if (snd_rng == 1){
            sound_play(sound_get("move2"));            
        }
}
}

if (attack == AT_DSTRONG){
	        bb_consecutive_cancelled_attacks = 0;
}

if (attack == AT_USTRONG){
	        bb_consecutive_cancelled_attacks = 0;
    if (window == 1){
         ustrong_ticks = 0;
    }
    if (window == 4 && !has_hit_player){
    	window = 5;
    	move_cooldown[AT_USTRONG] = 36;
    }
    if (window == 4 && is_end_of_window() && ustrong_ticks < 6){
        window = 4;
        window_timer = 0;
        if (window_timer == 0){
            sound_play(sound_get("ustrong_loop"));   
        }
        if (window == 4){
            ustrong_ticks++;
        }
    }
    if (window == 4 && ustrong_ticks == 6){
        ustrong_ticks = 0;
        window = 5;
    }
        if (window == 5 && window_timer == 1){
                           snd_rng = random_func(0, 2, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("move"));
        } else if (snd_rng == 1){
            sound_play(sound_get("move2"));            
        }
        
}
if (window >= 3 && has_hit_player){
 with (hit_player_obj){
 if (super_armor == false){
        self.hitstop = 8;
        
        if(other.spr_dir = 1){
        self.x = other.x + 20;
        self.y = other.y - 135;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 20;
        self.y = other.y - 135;
    }
}
}
}
if (window == 4 && has_hit_player){
 with (hit_player_obj){
        self.hitstop = 20;
        can_move = false;
 }
}
}

if (attack == AT_FAIR){
		if (window == 3 && window_timer == 8 && !attack_down){
		window = 4;
		window_timer = 0;
}
}

if (attack == AT_NAIR && has_hit_player){
	can_fast_fall = false;
}

if (attack == AT_DAIR){
		can_fast_fall = false;
		if (window == 3 && down_stick_pressed){
			window = 4;
			window_timer = 0;
		}
	
	if (window == 5){
			dair_timer++
	}
	
	if (window == 4 && dair_float == true || window == 5 && dair_float == true){
		if (vsp >= -0.60){
	 vsp--;
		}
	 if (attack_down && vsp >= -1.80){
	 		 vsp--;
	}
	}
		if (window == 5 && dair_timer == 16){
		window = 6;
		window_timer = 0;
		dair_float = false;
		dair_timer = 0;
	}
	
	if (window == 1 && window_timer == 1 && free){
	snd_rng = random_func(0, 2, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("dair_start1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("dair_start2"));            
        }
		
	}
	if (window == 5 || window == 4){
		if (window_timer == 1 || window_timer == 12){
	snd_rng = random_func(0, 3, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("dair1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("dair2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("dair3"));            
        }
		}
	}
	        move_cooldown[AT_NAIR] = 12;
}

if (attack == AT_NAIR){
	if (window == 2){
		if (window_timer == 1 || window_timer == 4 || window_timer == 8){
	snd_rng = random_func(0, 4, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("nair1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("nair2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("nair3"));            
        } else if (snd_rng == 3){
            sound_play(sound_get("nair4"));            
        }
		}
}
}


//normal and special cancels
var normal_cancel_value = 0;

switch (attack) {
    case AT_FTILT:
    if (has_hit_player && window_timer >= 5){
        can_strong = 1;
	    can_ustrong = 1;
	    can_special = 1;
	    can_uspecial = 1;
        move_cooldown[AT_FTILT] = 12;
        move_cooldown[AT_UTILT] = 2;
    }
    bb_consecutive_cancelled_attacks = 0;
    break;
    
     case AT_FSTRONG:
     if (has_hit_player && window_timer >= 2){
    	move_cooldown[AT_JAB] = 2;
    	move_cooldown[AT_FTILT] = 2;
    	move_cooldown[AT_DTILT] = 2;
    	move_cooldown[AT_UTILT] = 2;
	    can_special = 1;
	    can_uspecial = 1;
     }
        
    case AT_DTILT:
     if (has_hit_player && window_timer >= 2){
    	move_cooldown[AT_DTILT] = 2;
    	move_cooldown[AT_JAB] = 2;
        can_attack = 1;
        can_strong = 1;
	    can_ustrong = 1;
	    can_special = 1;
	    can_uspecial = 1;
     }
     bb_consecutive_cancelled_attacks = 0;
     break;
    
    case AT_JAB:
        if (has_hit_player && window_timer >= 5){
        move_cooldown[AT_JAB] = 2;
        can_attack = 1;
        can_strong = 1;
	    can_ustrong = 1;
	    can_special = 1;
	    can_uspecial = 1;
        }
        bb_consecutive_cancelled_attacks = 0;
	    break;
	    
    case AT_NAIR:
        if (has_hit_player && window_timer >= 1){
        move_cooldown[AT_NAIR] = 2;
        can_attack = 1;
        }
        bb_consecutive_cancelled_attacks = 0;
	    break;
	    
    case AT_DAIR:
        if (window == 2 && has_hit_player && window_timer >= 4 || window == 5 && has_hit_player && window_timer >= 4 || window == 6 && has_hit_player && window_timer >= 1){
        can_special = 1;
        can_attack = 1;
                move_cooldown[AT_NSPECIAL] = 4;
                move_cooldown[AT_DSPECIAL] = 4;
                move_cooldown[AT_USPECIAL] = 2;           
                move_cooldown[AT_NAIR] = 2;           
                move_cooldown[AT_DAIR] = 2;           
                move_cooldown[AT_BAIR] = 2;           
                move_cooldown[AT_UAIR] = 2;           
        }
        bb_consecutive_cancelled_attacks = 0;
	    break;

    case AT_UTILT:
	            if (has_hit_player && !hitpause && window_timer >= 6) {
	                can_strong = 1;
	                can_uspecial = 1;
	      	        can_special = 1;
	            }
        bb_consecutive_cancelled_attacks = 0;
        
                //save facing direction, for ground uspecial
        bb_uspecial_attack_cancel_dir = spr_dir;
    break;
    
}

if (hitpause) exit;

//count number of consecutively-cancelled attacks
if (attack == AT_JAB || attack == AT_UTILT || attack == AT_DTILT || attack == AT_FTILT) {
	if (has_hit_player && window_timer <= 8){
    bb_consecutive_cancelled_attacks++;
	} else if (window_timer >= 8){
        bb_consecutive_cancelled_attacks = 0;	
	}
}


//normal cancels
switch (attack) {
	
	/*
	case AT_NAIR:
		switch (window) {
			case 2:
				//do nothing
			break;
			case 3:
			//case 5:
			//case 6:
				//allow endlag cancels if the attack hit
				if (has_hit && !was_parried) {
					can_attack = true;
					can_special = true;
					move_cooldown[AT_NAIR] = 2;
				}
				else {
					can_attack = false;
					can_special = false;
				}
			break;
			
			case 4:
				//reset 'has_hit'
				if (window_timer == 1) {
					if (has_hit) {
						vsp = min(vsp, -0.5);
					}
					
					has_hit = false;
					has_hit_player = false;
				}
			break;
		}
	break;
		*/

 //coyote time
    case AT_EXTRA_3:
        //allow all cancels including shield
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_special = true;
        can_jump = true;
        can_shield = true;
        can_move = false;
        switch (window) {
            case 1:
                //when the player stops walking, or after three seconds, stop.
                if (!free) {
                    var ctime = window_timer;
                    set_state(PS_WALK);
                    state_timer = ctime;
                }
                else if (right_down - left_down != spr_dir || state_timer > 90) {
                    window = 2;
                    window_timer = 0;
                }
            break;

        }
    break;
}

//invincible while noise cancelling
if (attack == AT_EXTRA_1)
{
	if (window_timer == 0){
	    with (pHitBox){
	    	destroyed = true;
	    	}
	    }
    
	invincible = true;
	invince_time = 2;
	if (is_end_of_window()){
        snd_rng = random_func(0, 2, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("move"));
        } else if (snd_rng == 1){
            sound_play(sound_get("move2"));            
        }
            outline_color = [ 0, 0, 0 ];
    init_shader();
	}
}

// Quake
if (attack == AT_DTHROW){

var quake_x;
var quake_y;

with (pHitBox)
{
	if (attack == AT_DTHROW && hbox_num == 1 && orig_player = other.player)
	{
		quake_x = x;
		quake_y = y;
	}
}

if (window == 3){
with(asset_get("oPlayer"))
{
    if (player != other.player)
    {
    	var quake_dist = 460; //quake range
		if (point_distance(x, y, quake_x, quake_y) < quake_dist) && 
		(!free) && (y = other.y)
		{
			with (other)
			create_hitbox( AT_DTHROW, 2, other.x, other.y );
			
		}
    }
}
taunted = false;
}
}



//Voiced Mode
if (!cancelled_voice) {
	if (easter_egg_set == true){
		
if (attack == AT_UTILT) {
	if (window == 1 && window_timer <= 1){
	chain_rng = random_func(0,3,true);
	if (chain_rng == 0){
		voice_utilt_chain1 = true;
	} else if (chain_rng == 1){
				voice_utilt_chain2 = true;
	} else if (chain_rng == 2){
				voice_utilt_chain3 = true;
	}
	}
	
	if(window == 1 && window_timer == 2 && voice_utilt_chain1 == true || window == 4 && window_timer == 2 && voice_utilt_chain1 = true){
	    snd_rng = random_func(0, 3, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_utilt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_utilt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_utilt3"));
    }
	}
	
	if(window == 1 && window_timer == 2 && voice_utilt_chain2 = true){
        sound_play(sound_get("voice_utilt_chain1"));
    } if (window == 4 && window_timer == 2 && voice_utilt_chain2 = true) {
        sound_play(sound_get("voice_utilt_chain2"));
    }		
    
    	if(window == 1 && window_timer == 2 && voice_utilt_chain3 = true){
        sound_play(sound_get("voice_utilt_chain3"));
    }  if (window == 4 && window_timer == 2 && voice_utilt_chain3 = true) {
        sound_play(sound_get("voice_utilt_chain4"));
    }
    if (voice_utilt_chain1 == true || voice_utilt_chain2 == true || voice_utilt_chain3 == true){
    	if (window >= 5){
    	voice_utilt_chain1 = false;
    	voice_utilt_chain2 = false;
    	voice_utilt_chain3 = false;
    }
}
}
		

if ((attack == AT_DSTRONG) && state_timer == 4) {
    snd_rng = random_func(0, 3, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_dstrong1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_dstrong2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_dstrong3"));
    }
}

if ((attack == AT_USTRONG) && state_timer == 4) {
    snd_rng = random_func(0, 2, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_ustrong1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_ustrong2"));
    }
}

if ((attack == AT_FSTRONG) && window == 2 && window_timer == 1) {
    snd_rng = random_func(0, 6, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_fstrong1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_fstrong2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_fstrong3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_fstrong4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("voice_grunt_high1"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("voice_grunt_high2"));
    }
}

if ((attack == AT_NSPECIAL) && state_timer == 2) {
    snd_rng = random_func(0, 3, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_nspecial1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_nspecial2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_nspecial3"));
    }
}

    if (attack == AT_NSPECIAL && window == 4 && window_timer == 1){
    	    snd_rng = random_func(0, 2, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_nspecial_grab_weak1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_nspecial_grab_weak2"));
    }
    }
    
        if (attack == AT_FTHROW && window == 4 && window_timer == 1){
    	    snd_rng = random_func(0, 2, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_nspecial_grab_strong1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_nspecial_grab_strong2"));
    }
    }
    
if ((attack == AT_FSPECIAL) && state_timer == 6) {
    snd_rng = random_func(0, 3, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_fspecial1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_grunt_high2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_grunt_high1"));
    }
}

if (attack == AT_EXTRA_2 && window == 2 && window_timer == 2) {
    snd_rng = random_func(0, 3, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_fspecial1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_fspecial2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_fspecial3"));
    }
}

if (attack == AT_NAIR && state_timer == 2) {
    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_nair1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_nair2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_grunt_low1"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_grunt_low2"));
    }
}

if (attack == AT_BAIR && state_timer == 2) {
    snd_rng = random_func(0, 4, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_bair1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_bair2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_bair3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_grunt_low2"));
    }
}

if (attack == AT_UAIR && state_timer == 2) {
    snd_rng = random_func(0, 4, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_grunt_low1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_grunt_low2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_grunt_med1"));
    }
}

if (attack == AT_FAIR && state_timer == 2) {
    snd_rng = random_func(0, 4, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_grunt_high1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_grunt_high2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_fair1"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_fair2"));
    }
}

if (attack == AT_DAIR && state_timer == 2) {
    snd_rng = random_func(0, 4, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_dair1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_dair2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_grunt_low1"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_grunt_low2"));
    }
}


if (attack == AT_EXTRA_1 && window == 1 && window_timer == 2) {
    snd_rng = random_func(0, 3, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_nc1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_nc2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_nc3"));
    }
}

    if (attack == AT_DSPECIAL && state_timer == 6){
    	    snd_rng = random_func(0, 2, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_dspecial_weak1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_dspecial_weak2"));
    }
    }
    
        if (attack == AT_DTHROW && window == 2 && window_timer == 1){
    	    snd_rng = random_func(0, 2, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_dspecial_strong1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_dspecial_strong2"));
    }
    }
    
        if (attack == AT_FSPECIAL_AIR && window_timer == 1 && window == 1){
    	    snd_rng = random_func(0, 4, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_air_fspecial1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_air_fspecial2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_air_fspecial3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_air_fspecial4"));
    }
    }
 
    if (attack == AT_DATTACK && state_timer == 6){
    	    snd_rng = random_func(0, 4, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_dattack1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_dattack2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_grunt_high2"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_grunt_high1"));
    }
    }
    
    if (attack == AT_NSPECIAL_AIR){
    	if(window == 1 && !has_hit_player && window_timer == 13){
    	    snd_rng = random_func(0, 2, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_grab_miss1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_grab_miss2"));
    }
    }
    if (window == 2 && window_timer == 1){
    	    	    snd_rng = random_func(0, 2, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_grab1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_grab2"));
    }
    }
    }
    
        if (attack == AT_JAB && state_timer == 2){
    	    snd_rng = random_func(0, 40, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_chen"));
    }
    }
            if (attack == AT_USPECIAL && state_timer == 1 || attack == AT_USPECIAL_2 && state_timer == 1){
        sound_play(sound_get("voice_breathe"));
    }


}
}
    
    
//TRUMPET
if (attack == AT_TAUNT_2){
	
	if (window = 2)
	{ 
		
		
		/*      
		A = Play note,
		B = Play note #,
		Shield = Octave Up,
		Jump = Octave Down
		
		   BCD
		   A E
		   G F
		*/
		
		
		
		if (shield_down)
		note_octave = "_UP";
		else if (jump_down)
		note_octave = "_DN";
		else
		note_octave = "";
		
		
		
		if (up_down && left_down){
		current_note = 6;
			if (attack_pressed or special_pressed){
			note_visual = 13;
			sound_play(sound_get("note_B" + note_octave));
			}
		}
		
		else if (up_down && right_down){
		current_note = 1;
			if (attack_pressed){
			note_visual = 17;
			sound_play(sound_get("note_D" + note_octave));
			}
			else if (special_pressed){
			note_visual = 11;
			sound_play(sound_get("note_D#" + note_octave));
			}
		}

		else if (up_down){
		current_note = 0;
			if (attack_pressed){
			note_visual = 3;
			sound_play(sound_get("note_C" + note_octave));
			}
			else if (special_pressed){
			note_visual = 19;
			sound_play(sound_get("note_C#" + note_octave));
			}
		}
		
		else if (right_down && down_down){
		current_note = 3;
			if (attack_pressed){
			note_visual = 5;
			sound_play(sound_get("note_F" + note_octave));
			}
			else if (special_pressed){
			note_visual = 13;
			sound_play(sound_get("note_F#" + note_octave));
			}
		}
		
		else if (right_down){
		current_note = 2;
			if (attack_pressed or special_pressed){
			note_visual = 7;
			sound_play(sound_get("note_E" + note_octave));
			}
		}

		else if (left_down && down_down){
		current_note = 4;
			if (attack_pressed){
			note_visual = 3;
			sound_play(sound_get("note_G" + note_octave));
			}
			else if (special_pressed){
			note_visual = 11;
			sound_play(sound_get("note_G#" + note_octave));
			}
		}
		

		else if (left_down){
		current_note = 5;
			if (attack_pressed){
			note_visual = 7;
			sound_play(sound_get("note_A" + note_octave));
			}
			else if (special_pressed){
			note_visual = 5;	
			sound_play(sound_get("note_A#" + note_octave));
			}
		}
		
		switch (current_note){
		    case 0: 
		    note_str = "C";
		    break;
		    
		    case 1: 
		    note_str = "D";
		    break;
		    
		    case 2: 
		    note_str = "E";
		    break;
		    
		    case 3: 
		    note_str = "F";
		    break;
		    
		    case 4: 
		    note_str = "G";
		    break;
		    
		    case 5: 
		    note_str = "A";
		    break;
		    
		    case 6: 
		    note_str = "B";
		    break;
		}


		
		if (attack_pressed || special_pressed) && !joy_pad_idle && (!down_down || (down_down && left_down) || (down_down && right_down)){
		spawn_hit_fx( x, y, toot );
		window_timer = 0;
		}
		
		if (!joy_pad_idle)
		window_timer = 0;
		
		clear_button_buffer( PC_ATTACK_PRESSED );
		clear_button_buffer( PC_SPECIAL_PRESSED );
		

		
		if (taunt_pressed){
		window = 3
		window_timer = 0;
		}
	}
}


#define is_end_of_window
return window_timer + 1 > get_window_value(attack, window, AG_WINDOW_LENGTH);



