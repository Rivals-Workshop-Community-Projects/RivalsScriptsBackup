//Update
//#region Fuse

//#region Low fuse
if(fuse <= 240 && !lowfuse){
    lowfuse = true;
}
if(fuse > 240 && lowfuse){
    lowfuse = false;
}

//#endregion

//#region boom
if(fuse <= 0 && !hitpause){
        bubbled = false;
        wrapped = false;
    
    	if((attack == AT_NAIR || attack == AT_UAIR) && state == PS_ATTACK_AIR){
    		flip_up = true;
    	}else{
    		flip_up = false;
    	}
    
        state = PS_ATTACK_AIR
        attack_end();
        destroy_hitboxes();
        
        
        set_attack(AT_EXTRA_1);
//set_attack.gml:
//fix hurtbox. ideally put at the bottom of the file
hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
        
        
    //window = 1
   // window_timer = 0
    
}

//#endregion

//#region charge stop
//if((attack != AT_USPECIAL ) || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
if(hitstun && activated_kill_effect){
	fuse_pause = true;
}else{
	fuse_pause = false;
}
if(!smash_charging && state != PS_HITSTUN && state != PS_HITSTUN_LAND && state != PS_WRAPPED && state != PS_FROZEN){
    
    
    //if(fuse > 60){
        fuse--;/*
    }
    else{
        fuse -= 0.5
    }*/
}
if(fuse <= 120 && !prime){
	prime = true;
}if(fuse > 120 && prime){
	prime = false;
}
	

//}

//#endregion

//#region uspecial stop
////if(attack == AT_USPECIAL && window == 1){
    //fuse--;
////}

//#endregion

//#region bomb position reset
if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    handsx = 15
    handsy = 40;
    boomvsp = -10;
    boomhsp = 0;
    char_height = 30;
    if(state != PS_HITSTUN && state != PS_HITSTUN_LAND){
        handsoff = false
    }
}

if(state != PS_HITSTUN && state != PS_HITSTUN_LAND && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	if(handsoff_tumble != -1){
		handsoff_tumble = -1;
	}
}
//#endregion

//#region Hot hands
if(state == PS_HITSTUN || state == PS_HITSTUN_LAND){
    handsoff = true;
    handsoff_tumble = 2;
}

if(handsoff_tumble > 0){
	set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
	air_accel = 0.22
	can_fast_fall = false;
}else{
	reset_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_CUSTOM_FRICTION)
	air_accel = 0.4
	can_fast_fall = true;
}

    
//#endregion

//#region Wall jump
if(state == PS_WALL_JUMP && (prev_state == PS_ATTACK_AIR || prev_state == PS_PRATFALL)){
    fuse = fuse_max;
}

//#endregion

//#region Pratfall



if(state == PS_PRATFALL){
    sprite_index = sprite_get("pratland");
    fuse = fuse_max;
}
//#endregion

//#region bomb colors
    //#region fuse count
if(fuse >= 240){
    blinkT = 1;
}    
if(fuse < 240 && fuse >= 120){
    if(state != PS_HITSTUN && state != PS_HITSTUN_LAND){
	    if(fuse % 10 == 0){
	        blinkT++;
	    }
	}if(state == PS_HITSTUN || state == PS_HITSTUN_LAND){
		if(sparktimer % 10 = 0){
			blinkT++;
		}
	}
    if(fuse % 40 == 0){
        //sound_play(sound_get("pb_beep"));
    }
}
if(fuse < 120 ){
	if(state != PS_HITSTUN && state != PS_HITSTUN_LAND){
	    if(fuse % 5 == 0){
	        blinkT++;
	    }
	}if(state == PS_HITSTUN || state == PS_HITSTUN_LAND){
		if(sparktimer % 5 = 0){
			blinkT++;
		}
	}
    if(attack != AT_USPECIAL && fuse % 20 == 0){
        //sound_play(sound_get("pb_beep"));
    }
}
    //#endregion
    //#region blinkT

if(fuse < 241 || fuse > fuse_max - 5){
    if(blinkT % 2 == 1){
        
        init_shader();
    }
    else{
        init_shader();
        
    }
}
if(smash_charging){
    blinkT = 1;
}
    //#endregion

//#endregion

//#region Fuse sound
//if(fuse == fuse_max || fuse== fuse_max - fuse_max / 2){
if(!fusesound){
    if(fuse <= 240 && attack != AT_USPECIAL){
        fusesound = true;
    
        sound_stop(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        
        
    }
}
if(!fusesound2){
	if(fuse <= 120){
		fusesound2 = true;
		// sound_stop(sound_get("mollo_fuse"))
	    sound_play(sound_get("crackerFuse"));
	    sound_play(sound_get("crackerFuse"));
	    sound_play(sound_get("crackerFuse"));
	    	
    }
}

if(fuse > 240 && fusesound){
    sound_stop(sound_get("mollo_fuse"))
    sound_stop(sound_get("crackerFuse"))
    fusesound = false;
    fusesound2 = false;
}


//#endregion

//#region fuseshow

if(down_down && taunt_pressed){
    fuseshow++;
}

//#endregion

//#region limit break

if(get_gameplay_time() < 300){
    if(up_down && taunt_pressed){
        if(bomb_limit == 2){
            bomb_limit = 5;
            limitshow = 0;
            exit;
        }
        if(bomb_limit == 5){
            bomb_limit = 99;
            limitshow = 0;
            exit;
            
        }
        if(bomb_limit == 99){
            bomb_limit = 2
            limitshow = 0;
            exit;
        }
        
    }
}


limitshow++;
//#endregion

//#region ovenhands
if(!hitpause){
    ovenhands++;
}

//#endregion

//#region handsoff
if((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) && attack != AT_EXTRA_1 && skullhands){
    set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 10)
    skullhands = false;
}


//#endregion

//#region minesuper jump //fix set_atack
with(obj_article2){
    if(player_id == other.id){
        if((position_meeting(x, y, other) || position_meeting(x + 5*spr_dir, y, other) || position_meeting(x - 10*spr_dir, y, other)) && other.down_down){
            if(fuse > 1){
                other.jump_speed = 18;
                other.short_hop_speed = 18;
                other.Ustrong_mine = true;
            }else{
                other.jump_speed = 10;
                other.short_hop_speed = 6;
                if(!other.free){
                    other.Ustrong_mine = false;
                }
            }
        }else{
            other.jump_speed = 10
            other.short_hop_speed = 6
            other.Ustrong_mine = false;
        }
    }
}

//#endregion

if(vsp > 0){
    Ustrong_mine = false;
}

if(air_accel != 0.5 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    air_accel = 0.5
}
if(hurtboxID.image_angle != 0 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    
	hurtboxID.image_angle = 0;
}


fst_cos = (cos( degtorad(arctan(30/36) + point_direction(0,0,hsp,vsp))))
if(free && (jump_speed != 10 || short_hop_speed != 6)){
    jump_speed = 10;
    short_hop_speed = 6;
    
}




//#region fairspike
if(fair_spike){
	if(state != PS_ATTACK_AIR){
		fair_spike = false;
		reset_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE)
		reset_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER)
	}
}

if(bair_launch){
	if(state != PS_ATTACK_AIR){
		bair_launch = false;
		reset_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE)
		reset_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER)
	}
}


//#endregion


//#region Spark
if(sparktimer > 100){
	sparktimer = 0;
}

sparktimer++;

//#endregion


//#region reset Extra HB stats
if((state == PS_IDLE || state == PS_IDLE_AIR || state == PS_HITSTUN) && alterExtra){
	reset_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE);
	reset_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER);
	alterExtra = false;
}

//#endregion



//#region Jab

if(state != PS_ATTACK_GROUND && jabParry){
	jabParry = false;
}


//#endregion

//#region Dstrong
with(oPlayer){
	if(id != other.id){
		if(DstrongGrab){
			if(state == PS_HITSTUN){
				y = ease_linear(y, other.dMiney, state_timer, 10)
				x = ease_linear(x, other.dMinex, state_timer, 10)
			}
		}
	}
}


//#endregion



//#region Prime CounterPlay
if(primeCounterTimer > 0){
	primeCounterTimer--;
}else{
	primeDamage = primeDamageLimit;				//If not in prime reset damage limit to max
	reset_hitbox_value(AT_EXTRA_1,1, HG_DAMAGE);
	reset_hitbox_value(AT_EXTRA_1,1, HG_BASE_KNOCKBACK);
	reset_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE)
	handsoff_tumble = 0
	primeCounter = false;
}

if(primeDamage <= 0){
	primeDamage = primeDamageLimit;
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE,0);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK,0);
	set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 7)
	handsoff_tumble = 3;
	primeCounter = true;
	fuse = -1;
	
}



//#endregion