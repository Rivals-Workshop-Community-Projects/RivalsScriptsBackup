//B - Reversals
if (/*attack == AT_NSPECIAL|| */ attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_FSPECIAL_2){
    trigger_b_reverse();
}

//#region Specials

    //#region Nspecial
if(attack == AT_NSPECIAL){
    if(window == 1){
        if(window_timer <5){
            if(left_down) spr_dir = -1
            if(right_down) spr_dir = 1
        }
    }
    if(window == 2 && window_timer == 1){
        Dgrab = false;
        reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
        take_damage(player,1,5);
        with(obj_article1){
            if(player_id == other.id){
                plimit -= 1;
            }
        }
        var sun_d = instance_create(x + (20 * spr_dir), y- 20, "obj_article1")
        sun_d.state = 0;
    }
    if(window == 1 && free){
        vsp = 0;
        
        
    }
    if(window == 2 && free){
        vsp = ease_sineOut(-14, 0, window_timer, 20)
        hsp = (ease_sineOut(-5, 0, window_timer, 20)) * spr_dir
    }
    if(window == 2 && window_timer == 2){
        if(Dgrab == true){
            set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 20);
        }
    }
}
if(attack == AT_NSPECIAL){
    if(window == 1){
        if(window_timer == 1){
            reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
        }
        with(obj_article1){
            if(player_id == other.id){
                if(state == 2 || state == 3){
                    if(other.joy_pad_idle || other.joy_dir == 90 || other.joy_dir == 270){ //if no direction is chosen, forger goes in direction Don is facing
                        for_dir = player_id.spr_dir;
                    }
                    if(!other.joy_pad_idle){ //forger goes the way the joystick is input
                        if(other.joy_dir > 90 && other.joy_dir < 270){
                            for_dir = -1;
                        }
                        if((other.joy_dir >= 0 && other.joy_dir < 90) || (other.joy_dir > 270 && other.joy_dir < 360)){
                            for_dir = 1;
                        }
                    }
                }
            }
        }
    }
    if(window == 2 && window_timer == 1){
        with(obj_article1){
            if(player_id == other.id){
                if(state == 2 || state == 3){
                    state = 4;
                    state_timer = 0;
                    image_index = 0;
                }
            }
        }
    }
}





if(state == 2 || state == 3){ //assign Forger Direction
    if(attack == AT_NSPECIAL){
        if(window == 1){
            if(joy_pad_idle || joy_dir == 90 || joy_dir == 270){ //if no direction is chosen, forger goes in direction Don is facing
                for_dir = player_id.spr_dir;
            }
            if(!joy_pad_idle){ //forger goes the way the joystick is input
                if(joy_dir > 90 && joy_dir < 270){
                    for_dir = -1;
                }if((joy_dir > 0 && joy_dir < 90) || (joy_dir > 270 && joy_dir < 360)){
                    for_dir = 1;
                }
            }
        }
    }
    if(window = 2){
        state = 4;
        state_timer = 0;
        image_index = 0;
    }
}

//#endregion


    //#region Uspecial

if(attack == AT_USPECIAL){
    can_wall_jump = true;
    if(window == 2 && window_timer == 1){
        if(shield_down){
            vsp = -8;
            window_timer = 22
        }
        if(left_down){
            hsp = -4
        }
        if(right_down){
            hsp = 4
        }
        take_damage(player,-1,uspec_exhaust);
        uspec_exhaust += 3 ;
        with(obj_article1){
            if(player_id == other.id){
                plimit -= 1;
            }
        }
        var citrine = instance_create(x, y +40 , "obj_article1")
        citrine.spr_dir = spr_dir;
        citrine.state = 10;
        citrine.state_timer = 0;
        citrine.index_timer = 0;
        citrine.spr_dir = spr_dir;
        
        if(!uspec_cd){
            uspec_cd = true;
            with(obj_article1){
                if(player_id == other.id){
                    if(state == 2 || state == 3){
                        state = 13
                        state_timer = 0;
                        image_index = 0;
                    }
                }
            }
        }
    }
    
    
}
//#endregion

    //#region Fspecial

if (attack == AT_FSPECIAL){
    can_wall_jump = true;
    if(window == 1){
        if(window_timer == 1){
            with(obj_article1){
            	if(player_id == other.id){
                    if(state == 2 || state == 3){
                        state = 40;
                        state_timer = 0;
                        image_index = 0;
                    }
                }
            }
        }
    }
    if (window == 2){
    //can_special = true;
        if(!hitpause){
            hsp = ease_circOut(28, 0, window_timer, 32)*spr_dir;
        }
        else{
            hsp = 0;
        }
    }
    
    if(window == 3){
        if(window_timer == 8){
            move_cooldown[AT_FSPECIAL] = 60
        }
    }
    
    can_fast_fall = false;
}

   
    
if(special_pressed || special_down){
    if(attack != AT_FSPECIAL_2 && (position_meeting(x + 30*spr_dir, y, obj_article2)|| position_meeting(x + 30*spr_dir, y - 50, obj_article2)) ){
        if(obj_article2.player_id == id){
            if(attack == AT_FSPECIAL){
                destroy_hitboxes();
                attack_end();
            }
            set_attack(AT_FSPECIAL_2)
            hurtboxID.sprite_index = sprite_get("fspecial_2_hurt");
        }
    }
}

if(attack == AT_FSPECIAL_2){
    if(window == 1){
        if(window_timer == 1){
            fspec_jump = false;
        }
    }
    if(fspec_jump == true){
        can_jump = true;
    }
}

    //#endregion


    //#region Dspecial
if (attack == AT_DSPECIAL){
    if(window == 1){
        if(window_timer == 1){
            offset_full = 195;
        }
        if(window_timer == 8 && special_down){
            offset_full = 280;
        }
    
    temp_offset = offset_full;
        while ((!collision_point(x+spr_dir*temp_offset,y+1,asset_get("par_block"),true,true)&& 
               !collision_point(x+spr_dir*temp_offset,y+1,asset_get("jumpthrough_32_obj"),true,true))&& 
               temp_offset > -10 ){
            temp_offset -= 1;
        }
        if(temp_offset < 92){
            x = x - 16 *spr_dir
        }
        else{
            x = x;
        }
    }
    
    if(window = 2){
        if(window_timer = 3){
            take_damage(player,1,3);
            with(obj_article1){
                if(player_id == other.id){
                    plimit -= 1;
                }
            }
            var sword = instance_create(x + (temp_offset-18)*spr_dir, y, "obj_article1")
            sword.state = 30;
            sword.ypos = y+1;
            sword.spr_dir *= spr_dir;
            
            with(obj_article1){
                if(player_id == other.id){
                    if(state == 2 || state == 3){
                        state = 31;
                        state_timer = 0;
                        image_index = 0;
                    }
                }
            }
        }
    }
        
    
}

    //#endregion

    //#region Dspecial_air
if(attack == AT_DSPECIAL_AIR){
    can_wall_jump = true;
    can_fast_fall = false;
    if(window == 1){
        if(window_timer == 1){
            getup_dir = spr_dir;
            
            take_damage(player,1,5);
            DSPA_grab = false;
            with(obj_article1){
                if(player_id == other.id){
                    if(state == 2 || state == 3){
                        sound_play(asset_get("sfx_frog_dstrong"))
                        state = 31;
                        state_timer = 0;
                        image_index = 0;
                    }
                }
            }
        }
    }
    if(window == 4){
        
        if(state_timer < 90){
            vsp = ease_cubeOut(0, 23, state_timer, 90);
        }
        else{
            vsp = 23;
        }
        if !free {
            sound_play(asset_get("sfx_abyss_explosion_big"))
            window = 5;
            window_timer = 0;
            image_index = 0;
            DSPEC_TP = true;
            destroy_hitboxes();
        }
    }
    if(window == 4 || (window == 1 && window_timer > 1)){
        if(DSPA_grab && DSPA_grab_id.state != PS_RESPAWN){
            if(DSPA_timer <= 22){
                DSPA_grab_id.x = ease_linear(DSPA_grab_id.x, x+4*spr_dir, DSPA_timer, 22);
                DSPA_grab_id.y = ease_linear(DSPA_grab_id.y, y-0, DSPA_timer, 22);
            }
            else{
                DSPA_grab_id.x = x+4*spr_dir;
                DSPA_grab_id.y = y-0;
            }
        }
        
        
    }
    if(window == 5){
        if(window_timer == 1){
            with(obj_article1){
                if(player_id == other.id){
                    plimit -= 1;
                }
            }
            var air_sword = instance_create(x+9*spr_dir, y + 4, "obj_article1");
            air_sword.state = 3;
            air_sword.vis_timer = 0;
            air_sword.ypos = y+4;
        }
        
    }
    DSPA_timer++
    
}




//#endregion

//#endregion

//#region Strongs

    //#region Dstrong
    
if(attack == AT_DSTRONG && window == 1){
    if(window_timer == 1){
        Dgrab = false;
        dstrongcharge = strong_charge;
    }
}
 
if(attack == AT_DSTRONG && window == 2  && Dgrab == true){
    if(window_timer <= 12){
        if(spr_dir > 0){
            Dgrab_id.x = ease_linear(Dgrab_id.x, x + 42 * spr_dir, window_timer, 12);
        }
        if(spr_dir < 0){    
            Dgrab_id.x = ease_linear(Dgrab_id.x, x + 42 * spr_dir, window_timer, 12);
        }
    }
    
    
        Dgrab_id.y = ease_linear(Dgrab_id.y, y - 50, window_timer, 7);
    
    if(window_timer == 12){
        window = 5;
        window_timer = 0;
        image_index = 0;
    }
}

    
if(attack == AT_DSTRONG && window == 5){
    if(spr_dir > 0){
        Dgrab_id.x = x +42*spr_dir;
    }
    if(spr_dir < 0){
        Dgrab_id.x =  x +42*spr_dir;
    }
    Dgrab_id.y =  y - 50;
    attack_invince = true;
    Dgrab_id.soft_armor = 99;
    Dgrab_id.vsp = 0;
    Dgrab_id.hsp = 0;
    
    if(window_timer == 28){
        window = 6;
        window_timer = 0;
        image_index = 0;
        Dgrab_id.attack_invince = false;
    }
}
    
if(attack == AT_DSTRONG && window == 6){
    if(window_timer == 1){
        var lifesteal = create_hitbox(AT_DSTRONG, 3, x +42, y -50)
            lifesteal.damage = 8 * (1 + strong_charge/100)
            sound_play(asset_get("sfx_burnconsume"))
    }
    attack_invince = true;
    if(spr_dir > 0){
        Dgrab_id.x = x +42*spr_dir;
    }
    if(spr_dir < 0){
        Dgrab_id.x =  x +42*spr_dir;
    }
    Dgrab_id.y = y - 50;
    Dgrab_id.vsp = 0;
    Dgrab_id.hsp = 0;
    
    
    if(window_timer == 24){
        window = 7;
        window_timer = 0;
        image_index = 0;
    }
}
    
if(attack == AT_DSTRONG && window == 7){
    
    if(spr_dir > 0){
        Dgrab_id.x =  x +42*spr_dir;
    }
    if(spr_dir < 0){
        Dgrab_id.x = x +42*spr_dir;
    }
    Dgrab_id.y = y - 50;
    Dgrab_id.vsp = 0;
    Dgrab_id.hsp = 0;
    
    attack_invince = false;
    if(window_timer == 9){
        window = 8;
        window_timer = 0;
        image_index = 0;
    }
}
    
if(attack == AT_DSTRONG && window == 8){
    
    if(window_timer == 9){
        window = 9;
        window_timer = 0;
        image_index = 0;
    }
    
}
    
    
    //#endregion
    
    
    //#region Fstrong
if(attack == AT_FSTRONG){
    if(window == 1 && window_timer > 8 && !smash_charging){
        hsp = 2*spr_dir
    }
    if(window <= 2 && !hitpause){
        /*with(oPlayer){
            if(position_meeting(other.x +20*other.spr_dir, other.y-30,player)){
                other.hsp = -6*other.spr_dir;
            }
            if(position_meeting(other.x +30 *other.spr_dir, other.y-30,player)){
                other.hsp = -6*other.spr_dir;
            }
        }*/
            
    }
    if(window == 1){
        if(window_timer == 1){
            fstr_dir = spr_dir;
            fstr_tp = true;
        }
    }
    if(window == 3 && !hitpause){
        with(oPlayer){
            if(id != other.id){
                if(!position_meeting(other.x + 25*other.spr_dir,other.y - 20, player)){
                   other.hsp = 10*other.spr_dir;
                }
                else{
                    other.hsp = 0;
                }
            }
        }
    }
}
    
    
    //#endregion
    
    //#region Ustrong
if(attack == AT_USTRONG){
	if(state == PS_ATTACK_GROUND){
		hsp = clamp(hsp,-8,8);
	}
    if(window == 1){
        if(window_timer == 1){    
            set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
        }
    }
	if (window == 2){
		char_height = ease_linear(54, 106, window_timer, 3);
	}
	
	if (window == 4 && window_timer >= 6){
		char_height = lerp(char_height, 54, 0.3);
	}
    if(window == 3){
        if(window_timer % 6 == 0 && !hitpause){
            create_hitbox(AT_USTRONG, 2, x, y)
        }
        if(window_timer == 6){    
            set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 4);
        }
    }
}
    
    //#endregion
    
//#endregion

//#region Aerials

    //#region Uair
    
if (attack == AT_UAIR)
{
	var spawn;
	spawn = false;
    if ( (window == 3 or window == 4) && window_timer % 6 == 0 && !hitpause && window_timer < 16)
    {
    	
    	var num;
    	num = ((window-3)*2) +1;
    	
        create_hitbox(AT_UAIR, num, x, y);
        create_hitbox(AT_UAIR, num+1, x, y);
        spawn = true;
    }
    //print("window: " + string(window)+ ", window_timer: "+string(window_timer)+", spawn?: "+ (spawn ? "yes" : "no") );
    // if(UAGrab == true && window_timer < 15){
    //     if(UAGdir == 1){
    //         UAGrab_id.x = ease_linear(UAGrab_id.x, x + 40*spr_dir, UAGrab_timer, 4)
    //         UAGrab_id.y = ease_linear(UAGrab_id.y, y - 108, UAGrab_timer, 4)
    //     }
    //     if(UAGdir == 2){
    //         UAGrab_id.x = ease_linear(UAGrab_id.x, x - 65*spr_dir, UAGrab_timer, 4)
    //         UAGrab_id.y = ease_linear(UAGrab_id.y, y - 88, UAGrab_timer, 4)
    //     }
    //         UAGrab_timer++
    //         print(UAGrab_timer)
        
    // }
    
    // if(window_timer == 15){
    //     UAGrab = false;
    // }
}
    
    
    //#endregion


//#endregion

//#region Grounded


if (attack == AT_DTILT and window == 1 and window_timer >= get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH)-1 and attack_down)
{
	window = 4;
	window_timer = 0;
//	dtilt_held = true;
	set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
//	print("HELD")
}

    //#region Dtilt
if(attack == AT_DTILT){
    if(window == 2){
        if(window_timer == 1){
            puddle_exist = false;
            with(obj_article1){
                if(player_id == other.id){
                    if(instance_exists(obj_article1) == true){
                        other.puddle_exist = true;
                    }
                    
                }
            }
            if(!puddle_exist){
                        with(obj_article1){
                            if(player_id == other.id){
                                plimit -= 1;
                            }
                        }
                        var surge = instance_create(x, y +1, "obj_article1")
                        surge.state = 20;
                        surge.spr_dir = spr_dir;
                        surge.state_timer = 0;
                        //surge.visible = false;
                        surge.ignores_walls = true;
            }
        }
    }
}
    
if(attack == AT_DTILT && instance_exists(obj_article1) && window == 2 && window_timer == 1){
    take_damage(player,1,1);
        with(obj_article1){
            if(player_id == other.id){

                if(state == 3){
                    state = 21;
                    state_timer = 0;
                    image_index = 0;
                }
            
            if(state == 0){
                dial_adjust = true;
                state_timer -= 10;
            }
            
            
        }
    }
}
    
    
    //#endregion
    
    
    //#region Ftilt
if(attack == AT_FTILT){
    if(window == 1){
        ftilt_canc = false;
    }
    if(window == 3 && ftilt_canc){
        can_jump = true;
    }
}
    //#endregion
    
    //#region Utilt
if (attack == AT_UTILT){
	if (window == 1){
		char_height = ease_linear(54, 70, window_timer, 3);
	}
	
	if (window == 3 && window_timer >= 6){
		char_height = lerp(char_height, 54, 0.3);
	}
}
    //#endregion
    
    //#region Jab
if(attack == AT_JAB){
    if(window == 7){
        if(window_timer == 1){
            hsp = 7*spr_dir
        }
    }
    if(window == 9){
        if(window_timer  >= 10){
            hsp = ease_linear(7,2,window_timer,20)*spr_dir;
        }
    }
}
    
    //#endregion
    
    //#region Dattack
    if attack = AT_DATTACK and window = 2 and has_hit_player {
		can_ustrong = true
}
    
//#endregion



//#region Taunt
if(attack == AT_TAUNT){
    if(window == 1){
        if(window_timer == 25){
            sound_play( sound_get("coin_flip"));
            sound_play( sound_get("coin_flip"));
            sound_play( sound_get("coin_flip"));
            sound_play( sound_get("coin_flip"));
            sound_play( sound_get("coin_flip"));
            sound_play( sound_get("coin_flip"));
            sound_play( sound_get("coin_flip"));
            sound_play( sound_get("coin_flip"));
            sound_play( sound_get("coin_flip"));
        }
        if(window_timer = 66){
            sound_play(sound_get("coin_smack"));
            sound_play(sound_get("coin_smack"));
            sound_play(sound_get("coin_smack"));
            sound_play(sound_get("coin_smack"));
            sound_play(sound_get("coin_smack"));
            sound_play(sound_get("coin_smack"));
            sound_play(sound_get("coin_smack"));
            sound_play(sound_get("coin_smack"));
            sound_play(sound_get("coin_smack"));
        }
    }
    if(image_index >= 7 && image_index < 14){
        coin_result = random_func(0,2,true)
    }
    if(window_timer == get_window_value(attack,2, AG_WINDOW_LENGTH) && window == 2){
        if(coin_result == 0){
            window = 4;
        }
        if(coin_result = 1){
            window = 3;
        }
        window_timer = 0;
    }
}

//#endregion
//#region Taunt
if (attack == AT_TAUNT_2){
	if window <= 1 {
		if window == 1 && window_timer == 4 && !down_down && up_down {
			window = 6;
			window_timer = 0;
		}
	}
    if window == 4 && !taunt_down {
    window++;
    window_timer=0;
    }
    if window == 5 {
    	if window_timer == 30 window = 13
    }
    if(window = 7){
        if(window_timer = 1){
            take_damage(player,1,-1);
        }
    }
    if(window = 12){
        if(window_timer = 1){
            take_damage(player,1,1);
        }
    }
}

//#endregion


