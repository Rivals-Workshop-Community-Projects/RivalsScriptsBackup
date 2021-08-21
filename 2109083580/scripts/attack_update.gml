//B - Reversals
switch (attack)
{
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_DSPECIAL:
    case AT_USPECIAL:
    case AT_DAIR:
    case AT_DSPECIAL_AIR:
    case AT_DSPECIAL_2:
        trigger_b_reverse();
    	break;
}


		
//#region Grab End on kill
if((uspec_id.state == PS_RESPAWN 
|| fspec_id.state == PS_RESPAWN 
|| dspec_id.state == PS_RESPAWN)){ // take priority
	uspec_grab = false;
	fspec_airgrab = false;
	dspec_airgrab = false;
}
//#endregion


//#region TAKE AWAY FROM BAR
// switch (attack)
// {
// 	case AT_NSPECIAL:
// 	case AT_FSPECIAL:
// 	case AT_USPECIAL:
// 	if (window == 1 and window_timer == 1)
// 	{
// 		slTimer = clamp(slTimer-100,0,slTimerLimit)
// 	}
// 	break;
// }
//#endregion

//optimizing all of the attack code (this is gonna be fun, haha...)
switch attack {
    //#region Specials
	//#region Neutral Special
    case AT_NSPECIAL:
    	if(nspec_directset){
    		set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, nspec_direct)
            set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
    	}
        switch window {
            case 1:
                if (window_timer == 1) {
                    set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 9);
                    reset_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE);
                    reset_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE);
                    nspec_directset = false;
                    nspec_direct = 0;
                }
            break;
            case 2:
                if(!hitpause){
                    if (window_timer % 1 == 0 && window_timer < 16) { //this does nothing, but i'm leaving it in case it was intended to be changed sometime
                        //create_hitbox(AT_NSPECIAL, 2, x, y);
                    }
                    if (window_timer % 6 == 1) {
                        create_hitbox(AT_NSPECIAL, 3, x, y);
                        attack_end();
                    }
                }
                if (window_timer == 15) {
                    //set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 4);
                    set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, 0);
                }
            break;
            case 3:
                can_strong = true;
                can_ustrong = true;
                if(special_down){
                    explode = true;
                }
                if (window_timer == 12 && explode) {
                    window = 4;
                    window_timer = 0;
                    image_index = 0;
                }
            break;
            case 4:
                explode = false;
                if (window_timer == 20) {
                    window = 5;
                    window_timer = 0;
                    image_index = 0;
                }
            break;
        }
        if (state_timer == 30) {
            window = 3;
            window_timer = 0;
            image_index = 0;
        }
        vsp = clamp(vsp, -4, 3.5);
    break;
    //#endregion

	//#region Forward Special
    case AT_FSPECIAL:
        switch window {
            case 1:
            	if(window_timer == 1){
			        fspec_airgrab = false;
			        fspec_jc = false;
			        fspec_wall = false;
			        reset_window_value(attack,3,AG_WINDOW_LENGTH);
			        if (free)
			        	can_fspec = false;
		        }
		        if (!joy_pad_idle)
                {
			        if (joy_dir <= 20 || joy_dir >= 340 || (joy_dir <= 200 && joy_dir >= 160))
				        fspec_angle = 0;
			        else if (joy_dir > 20 && joy_dir < 160)
				        fspec_angle = 15;
			        else if (joy_dir < 340 && joy_dir > 200)
                        fspec_angle = free?345:0;
		        }
            break;
            case 2:
            	if (slActive)
                {
            		fsp_sp = 22;
            		fsp_spend = 8;
            	}
                else
                {
            		fsp_sp = 22;
            		fsp_spend = 8;
            	}
                can_wall_jump = true;
                if (fspec_angle = 345 && !free)
        	        fspec_angle = 0;
                if (fspec_airgrab)
                {
        	        fspec_id.x = ease_linear(fspec_id.x, x + (60 * spr_dir), window_timer, 19);
        	        fspec_id.y = ease_linear(fspec_id.y, y - 10, window_timer, 19);
    	        }
                if (was_parried)
                {
                    window = 3;
                    window_timer = 0;
                }    
                if(window_timer % 4 == 0)
                    create_hitbox(AT_FSPECIAL, 1, x, y);
                //movement
                hsp = cos(degtorad(fspec_angle)) * ease_cubeOut(fsp_sp * spr_dir, (fsp_spend+3) * spr_dir , window_timer, 19);
                vsp = -sin(degtorad(fspec_angle)) * ease_cubeOut(fsp_sp , fsp_spend+3 , window_timer, 19);   
                //angle
                spr_angle = fspec_angle * spr_dir;	
                //wall stop
                if(x == oldx && !hitpause){
                	fspec_wall = true;
                }
                oldx = x;
                if(fspec_wall)
                	if(window_timer < 17)
                		window_timer = 17;
                if(window_timer == 18)
                	destroy_hitboxes();
            break;
            case 3:
            	if(window_timer == 1){
    				move_cooldown[AT_FSPECIAL] = 1;
            	}
            	/*if(!free)
            		set_window_value(attack, window, AG_WINDOW_LENGTH, 20);
            	else if(!fspec_jc)	
                    reset_window_value(attack, window, AG_WINDOW_LENGTH);
            	}*/
            	
            	if (fspec_wall)
                {
            		can_special = true;
    				move_cooldown[AT_DSPECIAL] = 2;
    				move_cooldown[AT_NSPECIAL] = 2;
            		if (vsp >= 1) vsp = 1;
            	}
                can_wall_jump = true;
                if !was_parried {
                	if(fspec_jc){
                		//if(left_down) hsp -= .5;
                		//if(right_down) hsp += .5;
                		fspec_boost_timer = 0;
                    	if(window_timer == 1){
                    		vsp = -13;
                    		hsp = 0;
                    	};
                	}
            		else{
            			if(window_timer == 1){
            				hsp *= 0.7
            			}
            		}
            	
                    //can_special = true;
                    //can_strong = true;
                    //can_ustrong = true;
                }
                spr_angle = 0;
                
                // go into pratfall
                if window_timer >= get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)
                {
                	if(!fspec_grounded){
	                	var prat;
	                	prat = (fspec_hit || !free) || slActive ? 1 : 7;
	                	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, prat);
	                	fspec_hit = false;
                	}
                }
             
            break;
        }
        can_fast_fall = false;
	    x = clamp(x, 0, room_width);
    break;
    //#endregion

	//#region Up Special
    case AT_USPECIAL:
    	can_fast_fall = false;
	    if(uspec_cancel && !hitpause){
	    	can_attack = true;
	    	if(!slActive){
				set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 7)
				set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 7)
				set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 7)
				set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 7)
				set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 7)
	    	}
	    }
        switch window {
            case 1:
                if (window_timer == 1) {
                	reset_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH)
                	uspec_cancel = false
                    uspec_grab = false;
		            uspec_id = -1;
                    /*if(FtoU_timer < 30){
			            FtoU = true;
		            }
                    else{
                        FtoU = false;
                    }*/
                }
            break;
            case 2:
                switch (window_timer) {
                    case 1:
                        if (!joy_pad_idle) USPdir = joy_dir;
                        //if(FtoU){
                        //    Fspec_speed = 12;
                        //}
                        //else{
                            Fspec_speed = 26;
                        //}
                    break;
                    case 6:
                        can_US = false;
                    break;
                    case 25:
                        if (USPpow == true && !hitpause) {
                            create_hitbox(AT_USPECIAL, 3, x, y);
                        }
                    break;
                }
                if(window_timer % 5 == 0 && window_timer < 25){
                    var uspdrag = create_hitbox(AT_USPECIAL, 2, x, y);

                    /*if(window_timer <= 3 && USPpow == true){
                        uspdrag.image_xscale = 0.9
                        uspdrag.kb_value = 18;
                    }*/
                    if(window_timer >= 20){
                        uspdrag.kb_value = 4;
                    }
                }
                if(window_timer >= 21 && uspec_grab){
        	        uspec_grab = false;
                }
                if(!hitpause){
                    if((USPdir >= 80 && USPdir <= 100) || (USPdir >= 170 && USPdir <= 360) || USPdir <= 10){
                        vsp = ease_cubeOut(-Fspec_speed, 0, window_timer, 26);
                    }
                    if(USPdir > 100 && USPdir < 170){
                        vsp = sin((110 / 180) * 3.14) * ease_cubeOut(-Fspec_speed, 0, window_timer, 26);
                        hsp = cos((110 / 180) * 3.14) * ease_cubeOut(Fspec_speed, 0, window_timer, 26);
                    }
                    if(USPdir > 10 && USPdir < 80){
                        vsp = sin((70 / 180) * 3.14) * ease_cubeOut(-Fspec_speed, 0, window_timer, 26);
                        hsp = cos((70 / 180) * 3.14) * ease_cubeOut(Fspec_speed, 0, window_timer, 26);
                    }
                }
                else {
                    vsp = 0;
                    hsp = 0;
                }
                if(uspec_grab){
        	        uspec_id.x = ease_expoOut(uspec_id.x, x + (30 * spr_dir), window_timer, 26);
        	        uspec_id.y = ease_linear(uspec_id.y, y +25, window_timer, 26);
    	        }
            break;
            case 3:
            	if(USPpow){
	            	if(up_down){
	            		vsp -= 0.4
	            	}
	            	if(down_down){
	            		vsp += 0.2
	            	}
	            	if(left_down){
	            		hsp -= 0.2
	            	}
	            	if(right_down){
	            		hsp += 0.2
	            	}
            	}
                USPpow = false;
                if(window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){
                	vsp *= 0.6;
                	hsp *= 0.6;
                }
            break;
        }
        can_move = true;
        can_wall_jump = true;
    break;
	//#endregion
	
	//#region Down Special
    case AT_DSPECIAL:
        shake++;
        switch window {
        	case 1:
        	hsp *=.9;
        	vsp *=.9;
        	if(window_timer == 1){
        			counter_heal = get_player_damage(player);
        	}
        		break
            case 2:
        	hsp *=.7;
        	vsp *=.7;
                can_fast_fall = false;
                soft_armor = 99999;
                if(state_timer == 22){
                    window = 3;
                    window_timer = 0;
                    image_index = 0;
                    shake = 0;
                }
            break
            case 3:
                soft_armor = 0;
                if (shake == 22) {
                    set_state(PS_IDLE);
                }
            break;
            case 4:
                soft_armor = 50;
                //if(window_timer == 1 || window_timer == 0){
    		        attack_invince = true;
    	        //}
    	        //if(window_timer >= 18){
    		    //    attack_invince = false;
    	        //}
            break;
        }
    break;

    case AT_DSPECIAL_2:
        
        switch window {
            case 1:
        		soft_armor = 99999;
        		if(window_timer == 1){
    				set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10 + DSP_dam);
    				set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 6 + DSP_dam*0.6);
        		}
            case 2:
            	soft_armor = 0
                if (window_timer == 6) {
                    slTimer -= miniSL_timer;
                    miniSL_timer = 0;
                    if (dspec_buff) {
                        dspec_buff = false;
                    } 
                    
                }
            break;
            case 3:
            break;
        }
    break;

    case AT_DSPECIAL_AIR:
        can_move = false;
        fall_through = down_down || down_stick_down;
        switch window {
            case 1:
                if (window_timer == 1) {
                    reset_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX);
                    dspec_airgrab = false;
    				set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10 + DSP_dam);
    				set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 6 + DSP_dam*0.6);
                }
            break;
            case 2:
                if (dspec_airgrab) {
                    dspec_id.x = x + (60 * spr_dir);
                    dspec_id.y = y + 30;
                }
                if (!free || place_meeting(x, y, asset_get("par_bock"))) {
                    window = 3;
                    window_timer = 0;
                    image_index = 0;
                }
            break;
            case 3:
            soft_armor = 0;
            dspec_id = -1;
                if (window_timer == 6) {
                    if (dspec_buff) {
                        dspec_buff = false;
                    }
                    else {
                        slTimer -= miniSL_timer;
                        miniSL_timer = 0;
                    }
                }
            break;
        }
        if (window == 1 || window == 2) {
            soft_armor = 9999;
        }
    break;
    //#endregion
    //#endregion
    
	//#region Strongs
	//#region Up Strong
    case AT_USTRONG:
        switch window {
            case 3:
                if (!hitpause) {
                    vsp = ease_sineOut(-6 + (floor(strong_charge / 15) *  -4), 0, window_timer, 20); //jump charge distance
                    hsp = 0;
                    if (window_timer == 1) {
                        var UST = create_hitbox(AT_USTRONG, 1, x, y)
                        UST.can_tech = 1;
                        UST.kb_value = 12 + floor(window_timer / 5) * 3;
                    }
                }
            break;
            case 4:
            	if(y > USTstart){
            		state = PS_IDLE_AIR
            	}
            
            break;
            case 6:
            	hsp = clamp(-2, hsp, 2);
            	destroy_hitboxes();
                if (window_timer < 10 && hit_player_obj.hitpause && has_hit_player && hit_player_obj.soft_armor <= 0 && !hit_player_obj.super_armor)
		        {
				    Grab(0, -90, 3, 3);
		        }
		        if (!hitpause)
		        {
			        vsp = ease_sineOut(-8, -4, window_timer, 15);
			
			        if(window_timer <= 6 && window_timer % 3 = 0){
			            var USTsparks1 = create_hitbox(AT_USTRONG, 3, x + (12 + random_func(1, 3, true)) * spr_dir, y - 100 + random_func(5, 3, true)); 
			            var USTsparks2 = create_hitbox(AT_USTRONG, 3, x + (12 + random_func(2, 3, true)) * spr_dir, y - 100 + random_func(6, 3, true)); 
			            var USTsparks3 = create_hitbox(AT_USTRONG, 3, x + (12 + random_func(3, 3, true)) * spr_dir, y - 100 + random_func(7, 3, true)); 
			            var USTsparks4 = create_hitbox(AT_USTRONG, 3, x + (12 + random_func(4, 3, true)) * spr_dir, y - 100 + random_func(8, 3, true)); 
			
				        var USTsparkspeed = -7;
				
				        USTsparks1.vsp = USTsparkspeed * sin(degtorad(258 + random_func(1, 30, true))); 
				        USTsparks1.hsp = USTsparkspeed * cos(degtorad(258 + random_func(1, 30, true))) * spr_dir * -1;
				
				        USTsparks2.vsp = USTsparkspeed * sin(degtorad(258 + random_func(2, 30, true))); 
				        USTsparks2.hsp = USTsparkspeed * cos(degtorad(258 + random_func(2, 30, true))) * spr_dir * -1;
				
				        USTsparks3.vsp = USTsparkspeed * sin(degtorad(258 + random_func(3, 30, true))); 
				        USTsparks3.hsp = USTsparkspeed * cos(degtorad(258 + random_func(3, 30, true))) * spr_dir * -1;
				
				        USTsparks4.vsp = USTsparkspeed * sin(degtorad(258 + random_func(4, 30, true))); 
				        USTsparks4.hsp = USTsparkspeed * cos(degtorad(258 + random_func(4, 30, true))) * spr_dir * -1;
				        /*
				        can_jump = true;
				        can_special = true;
				        can_move = true;
				        can_attack = true;*/
			        }
		        }
            break;
        }
    break;
    //#endregion

	//#region Forward Strong
    case AT_FSTRONG:
        switch window {
            case 2:
	            if(window_timer == 1){
					set_window_value(attack, 3, AG_WINDOW_LENGTH, 15)
					fstronghit = false;
	            }
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)*(0.75)) {
                    if(strong_charge >= 10 && strong_charge < 40){
                        window = 5;
                        window_timer = 0;
                        image_index = 0;
                    }
                    if(strong_charge >= 40){
                        window = 6;
                        window_timer = 0;
                        image_index = 0;
                    }
                }
            
            case 5:
            
            case 6:
	            if(fstronghit){
	            		if(window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){
	            			window = 7;
	            			window_timer = 0;
	            		}
	            	}else{
		            		if(window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){
		                    window = 3;
		                    window_timer = 0;
		                    image_index = 0;
		                }
	            	}
            break;

        }
    break;
    //#endregion
    
	//#region Down Strong
    case AT_DSTRONG:
        switch window {
            case 1:
                if (window_timer == 1) {
                    dspec_grab = false;
                    dstrong_cap = false;
                    /*if(!slActive){
        	        reset_hitbox_value(AT_DSTRONG, 2, HG_ANGLE);
        	        reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK);
        	        reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
		            }*/
                }
            break;
            case 3:
                if (dspec_grab) {
                    dspec_id.x = ease_linear(dspec_id.x, x - (60 * spr_dir), window_timer, 9);
                    dspec_id.y = ease_linear(dspec_id.y, y - 12, window_timer, 9);
		            with (dspec_id)
		            {
			            if (state != PS_RESPAWN || state != PS_DEAD) 
                        {
				            set_state(PS_HITSTUN);
                        }
		            }
                }
            break;
        }
    break;
    //#endregion
	//#endregion
	
	//#region Grounded Normals
    case AT_DATTACK:
	    if(DA_jcancel){
	    	can_jump = true;
	    }else{
	    	can_jump = false;
	    }
        if(window == 2){
            if(was_parried){
			    window = 3;
			    window_timer = 0;
            }
        }
    break;

    case AT_DTILT:
        if(window == 1 && window_timer == 1){
            dtiltjumpcancel = false;
            if(dtparry_timer < dtparry_limit){ //don't let dtilt ledge cancel make it parry-safe
                set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0);
            }
            else{
                reset_attack_value(AT_DTILT, AG_OFF_LEDGE);
            }
        }
        if(dtiltjumpcancel){
            //can_jump = true;
            //can_strong = true; //temporarily disabled for balance reasons
        }
        // stop at ledge
        var width = 76;
        if (!collision_line(x+width*spr_dir, y, x+width*spr_dir, y+2, asset_get("par_block"), 0, 1) && !collision_line(x+width*spr_dir, y, x+width*spr_dir, y+2, asset_get("par_jumpthrough"), 0, 1)) hsp = 0;
    break;

    /*case AT_UTILT:
        switch window {
            case 3:
                if (!was_parried) {
                    can_jump = true;
                }
            break;
        }
    break;*/
    
    case AT_JAB:
    	if(!was_parried &&
    	(window == 3 && window_timer == 6)
    	|| (window == 6 && window_timer == 6)
    	){
    		window = 12;
    		window_timer = 0;
    	}
    break;
    //#endregion

	//#region Aerials
    case AT_DAIR:
        switch window {
            case 1:
            	if(window_timer == 1){
            		dair_spike = 0;
            		reset_hitbox_value(AT_DAIR, 1, HG_ANGLE)
            		reset_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE)
            	}
                if (window_timer == 14) {
                	dair_detect = false;
                	dairvic_found = false;
					reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
					reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
					reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
                    DAIR_jcTimer = 1;
                }
                
                if(window_timer < 12){
                    if(left_down){
                    	spr_dir = -1;
                    }
                    if(right_down){
                    	spr_dir = 1;
                    }
                }
            break;
            case 2:
            	/*with(oPlayer){
            		if(id != other.id){
	            		if(place_meeting(other.x + 20*other.spr_dir, other.y+80, other)){
            			
            				dair_detect = true;
            			}
            		}
            	}*/
            	
            	
            	
            	/*for (var i; i < 4; i++){
            		
            		player_id[i] = instance_find(oPlayer,i);
            		
            		if(player_id[i]!=-4){
            			if (place_meeting(x+50*spr_dir,y+80,player_id[i]) 
            			|| place_meeting(x+20*spr_dir,y+30,player_id[i])
            			|| place_meeting(x+20*spr_dir,y+80,player_id[i])
            			|| place_meeting(x+50*spr_dir,y+40,player_id[i])){ 
            				dair_detect = true;
            				player_id[i].dairvic = true;
            			}
            			else{
            				player_id[i].dairvic = false;
            			}
            			if(player_id[i] != id){
			            	if(player_id[i].dairvic = true && !dairvic_found){
			            		dairvic_found = true;
			            		if(get_player_damage(player_id[i].player) < 70){
						            set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
						            set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 9);
						            set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
						            
						        }
						        else{
						            reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
						            reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
						            reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
						        }
			            			
			            	}
            			}
        			}
        		}*/
        		if(dair_spike > 2){
        			attack_end();
        			set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 75)
        			set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6)
        		}
        		if(!hitpause){
        			dair_spike++
        		}
        	
            	
            	
            	
            	
            	
            	
            	
                if(!free) {
                    window = 3;
                    window_timer = 0;
                    image_index = 0;
                }
                if((!slActive && DAIR_jcTimer > 20) || (slActive && DAIR_jcTimer >10)){
                    can_jump = true;
                    can_special = true;
                }
                can_wall_jump = true;
            break;
        }
        DAIR_jcTimer++;
        air_accel = 0.2;
	    fall_through = down_down || down_stick_down;
    break;

    case AT_BAIR:
        if(window == 3 && !was_parried){
        	if(!uspec_cancel){
		    	can_jump = true;
		    	can_special = true;
        	}else{
        		can_jump = false;
		    	can_special = false;
        	}
		    can_wall_jump = true;
	    }
    break;
    //#endregion
}

//#region Misc. additonal USpecial Code
if(attack == AT_USPECIAL){
    air_accel = 0.25;
}
else{
	air_accel = 0.4;
}
//#endregion

//Taunt for SL
 if(inPractice && attack == AT_TAUNT && window == 1 && window_timer == 1 && !hitpause && down_down && !slActive){
   slTimer += 600;
}

if(slActive){
    set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("SL_spark"))
}
else{
    reset_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE)
}

if(!slActive && stun_timer > stun_limit){
	stun_shift();
}

#define stun_shift
if(stun_timer > stun_limit){
	
	reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DSTRONG, 2, HG_ANGLE);
	reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
	
	for(var i = 1; i <= 12; ++i){
		reset_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSTRONG, i, HG_ANGLE);
		reset_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSTRONG, i, HG_EXTRA_HITPAUSE);
	}
	
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER);
}
else{
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.4);
	
	for(var i = 1; i <= 12; ++i){
		set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, 55);
		set_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FSTRONG, i, HG_EXTRA_HITPAUSE, 0);
	}
	
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 18);
	set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
	set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.5);
}

#define Grab(xpos, ypos, xsmooth, ysmooth)
{
    if (xsmooth != 0)
    {
        hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
        hit_player_obj.hsp = 0;
    }
    if (ysmooth != 0)
    {
        hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
        hit_player_obj.vsp = 0;
    }
} // Lukaru