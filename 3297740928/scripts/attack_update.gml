//B - Reversals
//Make sure to put every attack here, UNLESS you want to implement Smash B-reversing like on Mii Brawler.
//If you want that, exclude the attack here and copy the custom B-reverse code on Nspec 1 in this script to another attack.
if (attack == AT_NSPECIAL_2  || attack == AT_USPECIAL_2 || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//resetting fair's projectile stats
if (attack == AT_FAIR){
    if (window == 1 && window_timer == 1){
    	reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
        reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE);
    }
}
//turning on the multihit variable during this specific time in uair
if (attack == AT_UAIR){
    if (window == 2 && window_timer <= 1){
        multihit = 1;
    }
    if (window == 2 && window_timer == 12){
        multihit = 0;
    }
}
//doing the same thing but for fstrong
if (attack == AT_FSTRONG){
    if (window == 3 && window_timer <= 1){
        multihit = 1;
    }
    if (window == 3 && window_timer == 12){
        multihit = 0;
    }
}

//sfx stuff for ustrong
if (attack == AT_USTRONG){
    if (window == 2 && window_timer == 1){
        sound_play(sound_get("sfx_ustrongmulti"));
    }
    if (window == 3){
        if (window_timer == 3){
            sound_play(sound_get("sfx_ustrongmulti"));
        }
        if (window_timer == 7){
            sound_play(sound_get("sfx_ustrongmulti"));
        }
        if (window_timer == 11){
            sound_play(sound_get("sfx_ustrongmulti"));
        }
    }
}

//Charge Blast
//Copy-pasting Cardinal's Nspecial code to Gunner cause they have the same concept
if (attack == AT_NSPECIAL){
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
        can_b_reverse = true;
    }
    if(window == 1 && window_timer <= 5){
        if((right_down - left_down) == (spr_dir * -1) && can_b_reverse){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -1;
        }
    }
    //End of Smash B-reverse code-----------------------------------------------
	
	
	if (window == 1){
		if (window_timer == 1 && cblast_charged == false){
			reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX);
			reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK );
			reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING );
			reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE );
			reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING );
			reset_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME);
			reset_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
			reset_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED);
			reset_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE);
			brainsnotworking = 0;
		}
	}
	if (window == 2){
    can_jump = true;
    can_fast_fall = false;
    can_move = true;
    cblast_timer++;
    cblast_charging = true;
    
    if (special_pressed && cblast_charged = false){
        window_timer = 0;
        window = 3;
        cblast_charging = false;
        cblast_charged = false;
        sound_stop(sound_get("sfx_chargeblastwindup"));
    }
    
    if (cblast_timer > 120 && cblast_charged = false){
        window = 7;
        cblast_charging = false;
        cblast_charged = true;
        sound_stop(sound_get("sfx_chargeblastwindup"));
    }
    
 	if (shield_pressed){ 
		window = 6;
		window_timer = 0;
		sound_stop(sound_get("sfx_chargeblastwindup"));
	}  
    
} 

	if (window == 3){
		if (window_timer = 2){
			cblast_timer = 0;
			if (free && brainsnotworking == 1){
				set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, -4);
				set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
			}
		}
	}

	if (window == 1 && window_timer == 9 && cblast_charged = true){
		window = 3;
		window_timer = 0;
		cblast_charged = false;
    	sound_stop(sound_get("sfx_chargeblastwindup"));
	}
	//i forgot why i put this here and havent cared to check if its important or not lol
	if (cblast_timer >= 120 && cblast_charged = true){
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_chargeblastbig"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 20);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
		brainsnotworking = 1;
		
		
	}
	
}

//Laser Blaze
//if special was held during this part of the window, 
//go back to the first after reaching the END of this window
if (attack == AT_NSPECIAL_2){
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
        can_b_reverse = true;
        STOPHITTINGME = 0;
        reset_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT);
    }
    if(window == 1 && window_timer <= 5){
        if((right_down - left_down) == (spr_dir * -1) && can_b_reverse){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -1;
        }
    }
    //End of Smash B-reverse code-----------------------------------------------
    if (window == 2){
    	if (window_timer == 1){
    		STOPHITTINGME++;
    	}
    	if (window_timer >= 20){
        	if (special_down || special_pressed){
        	    	window = 1;
        	    	window_timer = 6;
        	}
    	}
    	
    }
    if (STOPHITTINGME == 3){
    	set_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT, 9);
    }
}

//Grenade Launch
if (attack == AT_NSPECIAL_3){
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
        can_b_reverse = true;
    }
    if(window == 1 && window_timer <= 5){
        if((right_down - left_down) == (spr_dir * -1) && can_b_reverse){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -1;
        }
    }
    //End of Smash B-reverse code-----------------------------------------------
    
    move_cooldown[AT_NSPECIAL_3] = 20;
    if(window == 1 && window_timer == 10){
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
}

//Flame Pillar
if (attack == AT_FSPECIAL){
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
        can_b_reverse = true;
    }
    if(window == 1 && window_timer <= 5){
        if((right_down - left_down) == (spr_dir * -1) && can_b_reverse){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -1;
        }
    }
    //End of Smash B-reverse code-----------------------------------------------
	
    if (window == 1){
		if(window_timer == 1){
			sound_play(asset_get("sfx_swipe_medium1"));
		}else if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if(free){
				set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 10);
				set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
			}else{
				set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
				set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 10);
			}
		}
    }
}

//Stealth Burst
if (attack == AT_FSPECIAL_2){
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
        can_b_reverse = true;
    }
    if(window == 1 && window_timer <= 5){
        if((right_down - left_down) == (spr_dir * -1) && can_b_reverse){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -1;
        }
    }
    //End of Smash B-reverse code-----------------------------------------------
	move_cooldown[AT_FSPECIAL_2] = 20;
		if window == 1 || window == 2 || window == 3 {
        hsp = clamp(hsp, -2, 2)
        vsp = clamp(vsp, -8, 3)
        }
		if (state_timer == 1)
		{
			Sburst_x = 0; //reset coordinates
			Sburst_y = 0;
			
			reset_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH);
			reset_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE);
			reset_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE);
			reset_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING);
		}
		if((window == 1 && window_timer >= 12) || (window == 2))
		{
			can_move = false;
			can_fast_fall = false;
		}
		//prematurely stopping the sound and replacing it with a looping ver
		if(state_timer == 30)
		{
			sound_stop(sound_get("sfx_stealthburst"));
			sound_play(sound_get("sfx_stealthburstloop"));
		}
		if (state_timer > 30 && !special_down || state_timer >= 65)
		{
			if(window == 2)
			{
				set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 1);
				set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
				with (pHitBox){
					if (attack == AT_FSPECIAL_2 && hbox_num == 2){
						destroy_fx = 1;
						destroyed = true;
						var bursteffect = spawn_hit_fx(x, y, SburstProjAnim);
						player_id.Sburst_x = bursteffect.x //storing these coordinates to be used in hitbox_update
						player_id.Sburst_y = bursteffect.y

						with(player_id) var hbox1 = create_hitbox(AT_FSPECIAL_2, 3, bursteffect.x+2*spr_dir, bursteffect.y-38);
						//these are the same coordinates that Sburst_x/y stored, but I can't use hitbox 2 to spawn the explosion
						//because I just destroyed it. So, i'm replacing it with a non-hittable hitbox that lasts a small amount
						//of time and spawning the explosion using its lifetime kinda like a window creation frame.
						hbox1.spr_dir = spr_dir;
        				hbox1.player = player;
					}
				}
			}
		}
		if(window == 3)
		{
			sound_stop(sound_get("sfx_stealthburstloop"));
		}
		
		//attack gets stronger the longer its out
		if (state_timer == 35){
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 9);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.0);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 11);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.1);
		} else if (state_timer == 50) {
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 11);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.1);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.2);
		} else if (state_timer == 64) { //there is no way someone actually pulls this off
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 13);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9.5);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.15);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 13);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.25);
		}
}

//Gunner Missile
if (attack == AT_FSPECIAL_3){
	hsp = clamp(hsp, -3, 3);
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
		move_cooldown[AT_FSPECIAL_3] = 70;
        can_b_reverse = true;
    }
    if(window == 1 && window_timer <= 5){
        if((right_down - left_down) == (spr_dir * -1) && can_b_reverse){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -1;
        }
    }
    //End of Smash B-reverse code-----------------------------------------------
    
    //change different versions
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    if(special_down){
    	window = 4;
    	window_timer = 0;
    	sound_play(sound_get("sfx_gunnermissilehoming"));
    }else{
    	window = 2;
    	window_timer = 0;
    	sound_play(sound_get("sfx_gunnermissilesuper"));
    }
    }
    
    //end super missile version
    if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    attack_end();
    if(!free){
	set_state(PS_IDLE);	
    }else{
    set_state(PS_IDLE_AIR);		
    }
    }
}

//Lunar Launch
if (attack == AT_USPECIAL){
	if(window == 3) can_wall_jump = true;
}

//Cannon Jump Kick
//spawns vfx when cjk goes weeeeee
if (attack == AT_USPECIAL_2){
	can_fast_fall = false;
	if(window > 1) can_wall_jump = true;
    if (window == 1 && window_timer == 6){
		if (!free) {
			spawn_hit_fx(x, y, cjkgrnd);
		} else if (free) {
			spawn_hit_fx(x, y, cjkair);
		}
    }
    if(window == 3) can_fast_fall = true;
}

//Arm Rocket
if (attack == AT_USPECIAL_3){
	if(window == 1){
		can_fast_fall = false;
		hsp = clamp(hsp, -4, 4);
		vsp = clamp(vsp, -8, 0);
		//get initial angle
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if(joy_pad_idle){
                arocket_angle = 90;
            }else{
                arocket_angle = joy_dir;
                if(arocket_angle > 90 && arocket_angle < 270 && spr_dir == 1){
                    spr_dir = -1;
                }else if(arocket_angle < 90 || arocket_angle > 270 && spr_dir == -1){
                    spr_dir = 1;
                }
            }
            arocket_target_angle = arocket_angle;
            //arocket_can_land = free;
		}
	}else if(window == 2){
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		//change angle mid-flight
		if(!joy_pad_idle){
			arocket_target_angle = joy_dir;
			if(arocket_angle > 90 && arocket_angle < 270 && spr_dir == 1){
                spr_dir = -1;
            }else if(arocket_angle < 90 || arocket_angle > 270 && spr_dir == -1){
                spr_dir = 1;
            }
		}else{
			arocket_angle_target = arocket_angle;
		}
		
		//adjust angle to new target angle
		if(arocket_angle != arocket_target_angle){
			var diff = angle_difference(arocket_angle, arocket_target_angle);
			//make specific directions (like trying to do a 180 when going straight up) angle in intuitive ways
			//basically if you input a 180, it'll make it so turn upwards or in the direction you're facing
			if(diff == -180){
				var temp_angle = ((arocket_angle + 360) % 360);
				if(temp_angle > 45 && temp_angle < 135) || ((temp_angle > 225 && temp_angle < 315)){
					arocket_angle -= arocket_turn_speed * spr_dir;
				}else{
					arocket_angle += arocket_turn_speed * spr_dir;
				}
			}else{
				arocket_angle -= arocket_turn_speed * sign(diff);
			}
			//correct the angle if it doesnt perfectly line up
			if(abs(diff) <= abs(arocket_turn_speed)) arocket_angle = arocket_target_angle;
		}
		//fix spr dir
		if(arocket_angle > 90 && arocket_angle < 270 && spr_dir == 1){
            spr_dir = -1;
        }else if(arocket_angle < 90 || arocket_angle > 270 && spr_dir == -1){
            spr_dir = 1;
        }
        //smoke trail
        if(window_timer % 3){
        	var smoke = spawn_hit_fx(x, y - 26, arsmoke);
        	smoke.draw_angle = arocket_angle - 90;
        }
        
        //actually apply the speed
        hsp = lengthdir_x(arocket_speed, arocket_angle);
        vsp = lengthdir_y(arocket_speed, arocket_angle);
        
        //go into pratland early if you ride into the ground
        if(!free && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)/2 && vsp >= -(dsin(330) * arocket_speed)){
        	attack_end();
        	set_state(PS_PRATLAND);
        }
        //arocket_can_land = free;
        
	}else if(window == 3){
		can_fast_fall = true;
		if(window_timer == 1){
			hsp *= 0.75;
			vsp *= 0.35;
			if(vsp < 2 || vsp > -5) vsp -= 2;
			if(vsp > 2) vsp = 2;
		}
	}
}

//Echo Reflector
if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	hsp = clamp(hsp, -1.5, 1.5);
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
		shine_invince_timer = 0;
        can_b_reverse = true;
        hsp *= .5;
    }
	
	//hold to stay
	if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		if(special_down){
			window = 3;
			window_timer = 0;
		}
	}
	
	if(window == 3){
		//go to endlag
		if(!special_down){
			window = 4;
			window_timer = 0;
		}
	}
	
	if (window == 2 || window == 3){
	//reflect	
	with(pHitBox){
	 if(!plasma_safe && player != other.player && type == 2 && image_xscale > 0 && image_yscale > 0){
			if(point_distance(x, y, other.hurtboxID.x, other.hurtboxID.y) <= 65) {//65
			other.perfect_dodging = 1;
			}
		}
	}
	}
	
	if(shine_invince_timer > 0){
		shine_invince_timer--;
	}
	if(shine_invince_timer == 1){
	sound_play(sound_get("sfx_echoreflectorparry"));
	initial_invince = 0;
	invince_time = 0;
	invincible = false;	
	perfect_dodging = 0;
	}
	
	if (state_timer == 26){
        echosound = 1;
    }
    if (state_timer == 27){
        sound_stop(sound_get("sfx_echoreflector")); //makes it transition better
    }
    if (window == 4 && window_timer >= 1){
        echosound = 0;
    }
    if (has_hit){
    	can_jump = true;
    }
}

//Bomb Drop
if (attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
		move_cooldown[AT_DSPECIAL_2] = 45;
        can_b_reverse = true;
        KILL = false;
    }
    if(window == 1 && window_timer <= 5){
        if((right_down - left_down) == (spr_dir * -1) && can_b_reverse){
            can_b_reverse = false;
            spr_dir *= -1;
            hsp *= -1;
        }
    }
    //------------------------------------------------
    if(window == 1){
    	if (window_timer == 16){
    		DIE = 1;
    	}
    	if (window_timer == 17){
    		DIE = 0;
    	}
    }
}

//Absorbing Vortex
if (attack == AT_DSPECIAL_3){
	can_fast_fall = false;
	hsp = clamp(hsp, -1.5, 1.5);
	vsp = clamp(vsp, -8, 30); //stopping super high momentum
	//Smash B-reverse code------------------------------------------------------
	if(window == 1 && window_timer == 1){
		heal_outline = 0;
        can_b_reverse = true;
        hsp *= .5;
    }
	
	//hold to stay
	if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		if(special_down){
			window = 2;
			window_timer = 0;
		}
	}
	
	if(window == 2){
		//go to endlag
		if(!special_down && state_timer >= 14){
			window = 3;
			window_timer = 0;
		}
	
	//absorb	
	with(pHitBox){
	 if(!plasma_safe && player != other.player && type == 2 && image_xscale > 0 && image_yscale > 0){
			if(point_distance(x, y, other.hurtboxID.x, other.hurtboxID.y) < 105) {
			with(other){
				sound_stop(sound_get("sfx_heal"));
				sound_play(sound_get("sfx_heal"));
				//these two variables determine the white flash whenever gunner heals
				invince_time = 3;
				invincible = true;	
				heal_outline = 1;
				white_flash_timer = 20;
				take_damage(player, other.player, -(round(other.damage/2)));
			}
			destroyed = 1;
			}
		}
	}
	
	}
	if (state_timer == 24){
        absorbvortexsound = 1;
    }
    if (state_timer == 25){
        sound_stop(sound_get("sfx_absorbingvortex")); //makes the transition better
    }
    if (window == 3 && window_timer >= 1){
        absorbvortexsound = 0;
        sound_stop(sound_get("sfx_absorbingvortex"));
    }
    if (has_hit){
    	can_jump = true;
    }
}



//jpeg sfx-------------------------------------------------------------------
//using this get_window_value() function exactly like this after an attack and window check guarantees
//it will play on the last frame of that window, even if you change the frame data
if (attack == AT_DATTACK){
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        sound_play(asset_get("sfx_swipe_medium1"));
    }
}else if (attack == AT_UTILT){
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
}else if (attack == AT_DTILT){
    if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        sound_play(asset_get("sfx_swipe_heavy1"));
    }
}else if (attack == AT_DAIR){
    if (window == 1 && window_timer == 1){
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
}

if (attack == AT_TAUNT){
    if(practice){
        if(window == 2 && window_timer == 1){
            menu_timer = 126;
        }
        if(menu_open = true){
            window = 2;
            window_timer = 2;
        }
    }
}
