//B - Reversals
if (attack == AT_NSPECIAL  || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USTRONG){
    trigger_b_reverse();
}

if(was_parried){
	fuse++;
}


//#region specials
    //#region Nspecial
    
    
if(attack == AT_NSPECIAL_AIR){
    if(window == 1){
        if(window_timer == 14){
            
            with(obj_article1){
                if(player_id == other.id){
                	if(skull == 0){
                    	bomb_limit--;
                	}
                }
            }
            var DAbomb = instance_create(x-10*spr_dir, y - 10, "obj_article1")
                DAbomb.state = 1;
                DAbomb.vsp = 6;
                DAbomb.loose = true;
                //DAbomb.
               // DAbomb.
            fuse = fuse_max + 29    
            
        }
    }
}
    
if(attack == AT_NSPECIAL){
	can_fast_fall = false;
    if(window == 1){
    	if(window_timer == 1){
    		nsp_dair = false;
    	}
    	if(window_timer == 5 && free && special_down && down_down){
    		attack_end()
    		set_attack(AT_NSPECIAL_AIR)
    	}
    	if(window_timer == 5 && special_down && !nsp_dair){
    		attack_end();
        	set_attack(AT_NSPECIAL_2);
    	}
        if(window_timer == 9){
            
            with(obj_article1){
                if(player_id == other.id){
                	if(skull == 0){
                    	bomb_limit--;
                	}
                }
            }
            var bomb = instance_create(x + 13*spr_dir, y - 20, "obj_article1");
            bomb.state = 1;
            bomb.vsp = vsp;
            bomb.hsp = (hsp * 0.5) +2.5*spr_dir;
            bomb.loose = true;
        }
    }
        if(window_timer == 11){
            fuse = fuse_max + 11;
        }
    if(window == 2 && free){
        can_jump = true;
        
    }
}
    //#endregion
    
        //#region Nspecial_2
if(attack == AT_NSPECIAL_2){
    if(window == 1){
        if(window_timer < 5){
        	if(down_down && !left_down && !right_down && free){
        		attack_end()
        		set_attack(AT_NSPECIAL_AIR);
        	}
            if(!joy_pad_idle){
                if((joy_dir == clamp(joy_dir, 91, 269) && !right_strong_down)){
                    spr_dir = -1;
                }
                if((joy_dir == clamp(joy_dir, 0, 89) || joy_dir == clamp(joy_dir, 271, 360) && !left_strong_down) ){
                    spr_dir = 1;
                }
            }
            if(left_strong_down){
            	spr_dir = -1
            }
            if(right_strong_down){
            	spr_dir = 1
            }
        }
        if(!joy_pad_idle){
            if(joy_dir > 270 || joy_dir == clamp(joy_dir, 0, 20) || joy_dir == clamp(joy_dir, 160,269)){
                strong = 0;
            }
            if(joy_dir == clamp(joy_dir, 70,110)){
                strong = 1;
            }
            if((joy_dir == clamp(joy_dir,21,69) && spr_dir == 1) || (joy_dir == clamp(joy_dir, 111,159) && spr_dir == -1)){
                strong = 2;
            }
        }
        if(up_strong_down && !left_strong_down && !right_strong_down){
        	strong = 1;
        }
        if(up_strong_down && (left_strong_down || right_strong_down)){
        	strong = 2;
        }
        if(!up_strong_down && (left_strong_down || right_strong_down)){
        	strong = 0;
        }
        if(window_timer == 1){
            strong = 0;
        }
        if(strong == 1){
            set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("ustrong"));
            hurtboxID.sprite_index =  sprite_get("ustrong_hurt");
            strong_x = 10
            strong_y = -30
            strong_v = -13 //- floor(nspec_charge / 15);
            strong_h = 0
            strong_state = 1;
        }
        if(strong == 2){
            set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("fustrong"));
            hurtboxID.sprite_index =  sprite_get("fustrong_hurt");
            strong_x = 30
            strong_y = -30
            strong_v = -9 //- floor(nspec_charge / 20);
            strong_h = 9 *spr_dir //+ floor(nspec_charge / 15))*spr_dir;
            strong_state = 0;
        }
        if(strong == 0){
            set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("fstrong"));
            hurtboxID.sprite_index =  sprite_get("fstrong_hurt");
            strong_x = 25;
            strong_y = -20;
            strong_v = 0;
            strong_h = 13 *spr_dir//+ floor(nspec_charge / 10))*spr_dir;
            strong_state = 1;
        }
    }
    if(window == 2){
        if(window_timer == 5){
            
            with(obj_article1){
                if(player_id == other.id){
                	if(skull == 0){
                    	bomb_limit--;
                	}
                }
            }
            if(!hitpause){
                var FSTRboom = instance_create(x + strong_x*spr_dir, y + strong_y, "obj_article1")
                FSTRboom.state = 1;
                FSTRboom.loose = true;
                FSTRboom.hsp = strong_h
                FSTRboom.vsp = strong_v;
                FSTRboom.state = strong_state;
            }
        }
        if(window_timer == 6){
            fuse = fuse_max +31;
        }
    }
}
    
    //#endregion

    //#region Fspecial

if(attack == AT_FSPECIAL){
    can_wall_jump = true;
    can_fast_fall = false;
    if(window == 1){
        if(window_timer == 1){
            fspec_cancel = false;
            if(lowfuse){
                fspec_low       = true;
                fspec_bkb       =8
                fspec_kbs       =0.3
                fspec_damage    =12
                fspec_bhp       =16
                fspec_hps       =1.1
            }
            else{
                fspec_low       = false;
                fspec_bkb       =7
                fspec_kbs       =0.3
                fspec_damage    =6
                fspec_bhp       =9
                fspec_hps       =0.5
            }
        }
        if(vsp >= 6){
            vsp = 6;
        }
        if(!joy_pad_idle){
            if(spr_dir == 1){
                if(joy_dir == clamp(joy_dir, 0, 20) || joy_dir > 340){
                    fspec_dir = 0; //right
                }
                if(joy_dir == clamp(joy_dir, 21, 180)){
                    fspec_dir = 1; //right+up
                }
                if(joy_dir == clamp(joy_dir, 181, 339)){
                    if(free){
                        fspec_dir = 2; //right+down 
                    }
                    else{
                        fspec_dir = 0;
                    }
                }
                
            }
            else{
                if(joy_dir == clamp(joy_dir, 160, 200)){
                    fspec_dir = 3 // left
                }
                if(joy_dir == clamp(joy_dir, 201, 360)){
                    if(free){
                        fspec_dir = 4 // left+down
                    }
                    else{
                        fspec_dir = 3 // left
                    }
                }
                if(joy_dir == clamp(joy_dir, 0, 159)){
                    fspec_dir = 5 // left+up
                }
            }
            switch (fspec_dir){
                case 0: //right
                    if(lowfuse){
                        fp_hsp = cos(degtorad(18)) * fsplow
                        fp_vsp = sin(degtorad(18)) * fsplow
                    }
                    else{
                        fp_hsp = cos(degtorad(18)) * fsphigh
                        fp_vsp = sin(degtorad(18)) * fsphigh
                    }
                break;
                case 1: //right+up
                    if(lowfuse){
                        fp_hsp = cos(degtorad(35)) * fsplow
                        fp_vsp = sin(degtorad(35)) * fsplow
                    }
                    else{
                        fp_hsp = cos(degtorad(35)) * fsphigh
                        fp_vsp = sin(degtorad(35)) * fsphigh
                    }
                    
                break;
                case 2: //right+down
                    if(lowfuse){
                        fp_hsp = cos(degtorad(340)) * fsplow
                        fp_vsp = sin(degtorad(340)) * fsplow
                    }
                    else{
                        fp_hsp = cos(degtorad(340)) * fsphigh
                        fp_vsp = sin(degtorad(340)) * fsphigh
                    }
                    
                break;
                case 3: //left
                    if(lowfuse){
                        fp_hsp = cos(degtorad(162)) * fsplow
                        fp_vsp = sin(degtorad(162)) * fsplow
                    }
                    else{ //
                        fp_hsp = cos(degtorad(162)) * fsphigh
                        fp_vsp = sin(degtorad(162)) * fsphigh
                    }
                    
                break;
                case 4: //left+down
                    if(lowfuse){
                        fp_hsp = cos(degtorad(200)) * fsplow
                        fp_vsp = sin(degtorad(200)) * fsplow
                    }
                    else{
                        fp_hsp = cos(degtorad(200)) * fsphigh
                        fp_vsp = sin(degtorad(200)) * fsphigh
                    }
                    
                break;
                case 5: //left+up
                    if(lowfuse){
                        fp_hsp = cos(degtorad(145)) * fsplow
                        fp_vsp = sin(degtorad(145)) * fsplow
                    }
                    else{
                        fp_hsp = cos(degtorad(145)) * fsphigh
                        fp_vsp = sin(degtorad(145)) * fsphigh
                    }
                    
                break;
            }
        }
    }
    if(window == 2){
        can_move = false;
        
        if(!free && window_timer > 2){
            window = 4;
            window_timer = 0;
        }
        if(window_timer == 1 && !hitpause){
            hsp = fp_hsp;
            vsp = -fp_vsp;
            
            rocketpunch = create_hitbox(AT_FSPECIAL, 1, x, y)
            rocketpunch.kb_value            =fspec_bkb
            rocketpunch.kb_scale            =fspec_kbs
            rocketpunch.damage              =fspec_damage
            rocketpunch.hitpause            =fspec_bhp
            rocketpunch.hitpause_growth     =fspec_hps
            var rocketboom = instance_create(x-11, y-15,"obj_article1")
            rocketboom.state = 100;
            
        }
        if(!hitpause){
            rocketpunch.x_pos = cos(degtorad(point_direction(0,0,hsp,vsp)))*17
            rocketpunch.y_pos = -sin(degtorad(point_direction(0,0,hsp,vsp)))*15 - 18
        }
        if(hsp != 0){
            if(spr_dir == 1){
                spr_angle = point_direction(0,0,hsp,vsp)
            }
            if(spr_dir == -1){
                spr_angle = point_direction(0,0,-hsp,-vsp)
            }
        }
        
        if(window_timer == 2){
            fuse = fuse_max +40;
        }
        if(window_timer % 2 = 0 && window_timer < 15){
            spawn_hit_fx(x,y,13);
            if(fspec_low){
                spawn_hit_fx(x, y - 20, 3)
            }
        }   
    }
    if(window == 3){
        if(!free && window_timer > 2){
            spr_angle = 0;
            window = 4;
            window_timer = 0;
        }
        if(window_timer == 1){
            destroy_hitboxes();
            fuse = fuse_max +20;
        }
    }
    if(window == 4){
        spr_angle = 0;
        if(window_timer == 1){
            destroy_hitboxes();
            fuse = fuse_max +20;
        }
    }
    if(window > 1 && fspec_cancel){
        can_jump = true;
    }
}

    //#endregion
    
    //#region Uspecial
if(attack == AT_USPECIAL){
    blinkT = 0;
    can_fast_fall = false;
    if(window == 1){
        
        if(vsp > 4){
            vsp = 4;
        }
        if(window_timer == 2){
            
            //fuse = 59
            
        }
        if(window_timer == 1){
            
            uspec_lowcancel = false;
            if(lowfuse){
                set_window_value(AT_USPECIAL,2, AG_WINDOW_TYPE, 1)
                set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
                set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 20);
                set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.9);
                uspec_low = true;
            }
            else{
                reset_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE)
                reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
                reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING);
                uspec_low = false
            }
        }
    }
    if(window == 2){
        can_wall_jump = true;
        if(uspec_lowcancel == true){
            can_attack = true;
            can_jump = true;
        }
        if(window_timer % 2 = 0 && window_timer < 15){
                spawn_hit_fx(x,y,13);
                if(uspec_low){
                    spawn_hit_fx(x, y - 20, 3)
                }
        }
        if(window_timer == 1){
            fuse = fuse_max + 60
            
            if(left_down){
                hsp = -5
            }
            if(right_down){
                hsp = 5
            }
            if(!hitpause){
            var USPboom = instance_create(x+12*spr_dir, y, "obj_article1")
            USPboom.state = 100;
            }
        }
    }
    if(window == 3){
        can_wall_jump = true;
        if(window_timer == 1){
            fuse = fuse_max +12;
        }
    }
}
    
    
    //#endregion
    
    //#region Dspecial
if(attack == AT_DSPECIAL){
    can_wall_jump = true;
    can_fast_fall = false;
    if(window == 1){
        if(free){
            window = 2;
            window_timer = 12;
        }
    }
    if(window == 4){
        if(!free){
            window = 5;
            window_timer = 0;
            sound_play(asset_get("sfx_blow_heavy2"))
            spawn_hit_fx(x+40, y-15, 144)
            spawn_hit_fx(x-40, y-15, 144)
            destroy_hitboxes();
            with(obj_article1){
                if(player_id == other.id){
                
                    vsp = -6.5;
                    hsp *= 0.2;
                    if(fuse > 15){
                        fuse = 15;
                    }
                }
        
            }
        }
    }
    if(window == 5){
        if(window_timer == 19){
            window = 6;
            window_timer = 0;
        }
    }
}
    //#endregion
    
//#endregion

//#region strongs

	//#region Fstrong
if(attack == AT_FSTRONG){
	air_accel = .2
	can_fast_fall = false
	can_wall_jump = true;
    if(image_index == 7){
    }
	if(window == 1){
		if(window_timer = 12){
			spinhit1 = true;
			spinhit2 = true;
			spinhit3 = true;
			spinhit4 = true;
			spinhit5 = true;
			spinhit6 = true;
			sound_play(asset_get("sfx_swipe_medium1"))
		}
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) 
		&& !left_strong_down
		&& !right_strong_down
		&& !up_strong_down
		&& !down_strong_down
		&& !strong_down
		&& !attack_down){
			window +=2;
			window_timer = 1;
		}
		
	}
	if(spr_dir = 1){
		fst_dir = point_direction(x, y, x + hsp, y-vsp)
	}
	if(spr_dir = -1){
		fst_dir = point_direction(x, y, x - hsp, y+vsp)
	}
	
	
	if(window == 2){
		if(free){
			window = 3;
			window_timer = 0;
		}
		if(state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 19 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 40){
			if(spinhit1 == true){
				create_hitbox(attack, 2, x+21, y - 0)
				spinhit1 = false;
				spinhit2 = true;
			}
				
		}
		if(state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 22 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 2 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 43){
			if(spinhit2 == true){
				create_hitbox(attack, 3, x+500, y - 500)
				spinhit2 = false;
				spinhit3 = true;
			}
				
		}
		if(state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 26 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 5 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 47){
			if(spinhit3 == true){
				create_hitbox(attack, 4, x+500, y - 500)
        		sound_play(asset_get("sfx_swipe_medium1"))
				spinhit3 = false;
				spinhit4 = true;
			}
				
		}
		if(state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 29 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 8 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 50){
			if(spinhit4 == true){
				create_hitbox(attack, 5, x+500, y - 500)
				spinhit4 = false;
				spinhit5 = true;
			}
				
		}
		if(state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 33|| state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 12 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 54){
			if(spinhit5 == true){
				create_hitbox(attack, 6, x+500, y - 500)
				spinhit5 = false;
				spinhit6 = true;
			}
				
		}
		if(state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 36|| state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 15 || state_timer - get_window_value(attack, 1, AG_WINDOW_LENGTH) == 57){
			if(spinhit6 == true){
				create_hitbox(attack, 7, x+500, y - 500)
				spinhit6 = false;
				spinhit1 = true;
			}
				
		}
		if(!smash_charging){
			destroy_hitboxes()
		}
	}
	
	
	if(window == 3){
		//spr_angle = -(fst_dir) + 15
		fst_sp = 7 + floor(strong_charge / 10)
		if(window_timer == 1 && !hitpause){
			destroy_hitboxes();
			create_hitbox(attack, 8, x, y)
			fst_bomb = create_hitbox(attack, 9, x, y)
			vsp = -fst_sp * sin(degtorad(20))
			hsp = fst_sp * cos(degtorad(20)) * spr_dir
            handsx = (floor((cos (spr_dir*arctan(31/36)+ degtorad( point_direction(0,0,hsp,vsp))))*sqrt((36*36)+(31*31)))+10)*spr_dir
            handsy = floor((sin  (spr_dir*arctan(31/36)+ degtorad( point_direction(0,0,hsp,vsp))))*sqrt((36*36)+(31*31)))
		}
	}
	if(window > 2 && instance_exists(fst_bomb) && !hitpause){
			
            fst_bomb.x_pos = (cos (spr_dir*arctan(31/36)+ degtorad( point_direction(0,0,hsp,vsp))))*sqrt((36*36)+(31*31))// - 19 *spr_dir
            fst_bomb.y_pos = (-sin  (spr_dir*arctan(31/36)+ degtorad( point_direction(0,0,hsp,vsp))))*sqrt((36*36)+(31*31)) //- 15 
            handsx = floor((cos (spr_dir*arctan(31/36)+ degtorad( point_direction(0,0,hsp,vsp))))*sqrt((36*36)+(31*31)))*spr_dir
            handsy = floor((sin  (spr_dir*arctan(31/36)+ degtorad( point_direction(0,0,hsp,vsp))))*sqrt((36*36)+(31*31)))
		
	}
	if(window == 4){
		if(hsp != 0 && vsp != 0){
			spr_angle = -fst_dir
			hurtboxID.image_angle = -fst_dir
		}
		
		if(!free){
			destroy_hitboxes();
			window = 6;
			window_timer = 0;
		}
	}
	if(window > 4){
		spr_angle = 0;
		hurtboxID.image_angle = 0
	}
}
	
	//#endregion

    //#region Ustrong
if(attack == AT_USTRONG){
	
    if(!alterExtra){
    	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
    	alterExtra = true;
    }
	if(window == 1 && window_timer <= 6){
		if(left_down) spr_dir = -1
		if(right_down) spr_dir = 1
	}
    if(window == 2){
    	if(window_timer == 3){
    		handsx = 20
    		handsy = 50
    	}
    	if(window_timer == 6){
    		if(Ustrong_mine){
    			vsp = -18
    		}else{
    			vsp = -8 - floor(strong_charge / 15)
    		}
    		if(!Ustrong_mine){
	    		if(left_down){
	    			hsp = -1 - floor(strong_charge / 20)
	    		}
	    		if(right_down){
	    			hsp = 1 + floor(strong_charge / 20)
	    		}
    		}
    	}
    }
    if(window == 3){
    	if(!Ustrong_mine){
    		can_move = false;
    	}else{
    		can_move = true;
    	}
    	if(vsp > 0){
    		destroy_hitboxes();
    		window = 4
    		window_timer = 0;
    	}
    }
}
    
    //#endregion
    

    
    //#region Dstrong
if(attack == AT_DSTRONG){
	
    if(window == 2){
        if(window_timer == 9){
            with(obj_article2){
                if(player_id ==other.id){
                    fuse = 0;
                }
            }
        }
        if(window_timer < 10){
        	if(!position_meeting(x+25*spr_dir,y+3,asset_get("par_block")) && !position_meeting(x+25*spr_dir,y+3,asset_get("par_jumpthrough"))){
        		if(!hitpause){
        			hsp = -4*spr_dir
        		}
        	}
        }
        if(window_timer == 10){
            var mine = instance_create(x + 16  *spr_dir, y-8, "obj_article2")
            fuse = fuse_max+37;
        }
    }
}
    
    
    //#endregion
    
//#endregion

//#region Aerials

    //#region Dair
if(attack == AT_DAIR){
    switch(image_index) {
	    	case 0: 
	    		handsx = 1;
	    		handsy = 33;
	    		boomvsp = -3;
	    		boomhsp = 0;
	    		break;
	    	case 2: 
	    		handsx = 1;
	    		handsy = -29;
	    		boomvsp = -8;
	    		boomhsp = -0;
	    		break;
	    	case 3: 
	    		handsx = 0;
	    		handsy = 9;
	    		boomvsp = -3;
	    		boomhsp = 0;
	    		break;
	    	case 4: 
	    		handsx = 1;
	    		handsy = 23;
	    		boomvsp = -3;
	    		boomhsp = 0;
	    		break;
	    	case 5: 
	    		handsx = 8;
	    		handsy = 35;
	    		boomvsp = -3;
	    		boomhsp = 0;
	    		break;
	    	case 6: 
	    		handsx = 10;
	    		handsy = 35;
	    		boomvsp = -3;
	    		boomhsp = 0;
	    		break;
	    }	
}
    
    //#endregion
    
    
    //#region Uair
    
    if(attack == AT_UAIR){
    	switch(image_index) {
	    	case 1: 
	    		handsx = 1;
	    		handsy = 36;
	    		boomvsp = 2;
	    		boomhsp = 0;
	    		break;
	    	case 2: 
	    		handsx = 2;
	    		handsy = 20;
	    		boomvsp = 2;
	    		boomhsp = 0
	    		break;
	    	case 3: 
	    		handsx = 3;
	    		handsy = 80;
	    		boomvsp = 2;
	    		boomhsp = 0;
	    		break;
	    	case 4: 
	    		handsx = 2;
	    		handsy = 58;
	    		boomvsp = 2;
	    		boomhsp = 0;
	    		break;
	    	case 5: 
	    		handsx = 2;
	    		handsy = 50;
	    		boomvsp = 2;
	    		boomhsp = 0;
	    		break;
	    	case 6: 
	    		handsx = 13;
	    		handsy = 37;
	    		boomvsp = -3;
	    		boomhsp = -2;
	    		break;
	    }
	    if(!alterExtra){
	    	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
	    	alterExtra = true;
	    }
        
        if(window == 2){
            if(window_timer <= 4){
            char_height = ease_linear(30,70, window_timer, 4);
            }
            
        }
        if(window == 3){
            char_height = ease_linear(70, 30, window_timer, 24);
        }
    }
    
    //#endregion
    
    
    //#region Fair
if(attack == AT_FAIR){
		
    switch(image_index) {
	    	case 0: 
	    		handsx = -20;
	    		handsy = 44;
	    		boomvsp = -3;
	    		boomhsp = 2;
	    		break;
	    	case 1: 
	    		handsx = -28;
	    		handsy = 26;
	    		boomvsp = -3;
	    		boomhsp = 4
	    		break;
	    	case 3: 
	    		handsx = -2;
	    		handsy = 45;
	    		boomvsp = -3;
	    		boomhsp = 0;
	    		break;
	    	case 4: 
	    		handsx = 44;
	    		handsy = 9;
	    		boomvsp = -7;
	    		boomhsp = -2;
	    		break;
	    	case 5: 
	    		handsx = -7;
	    		handsy = -9;
	    		boomvsp = -7;
	    		boomhsp = 0;
	    		break;
	    	case 6: 
	    		handsx = -24;
	    		handsy = 3;
	    		boomvsp = -7;
	    		boomhsp = 2;
	    		break;
	    	case 7: 
	    		handsx = -28;
	    		handsy = 29;
	    		boomvsp = -6;
	    		boomhsp = 3;
	    		break;
	    	case 8: 
	    		handsx = -5;
	    		handsy = 45;
	    		boomvsp = 3;
	    		boomhsp = 4;
	    		break;
	    }	
}
    
    //#endregion
    
    
    //#region Nair
if(attack == AT_NAIR){
    var correct_window;
    correct_window = window == 2 and window_timer mod 3 == 0 and window_timer != 0;
    
    if (correct_window and !hitpause)
    {
        var hitbox;
        hitbox = 2 + (window_timer > 6);
        
        create_hitbox(attack, hitbox, x, y)
    }
    if(window == 1){
        if(window_timer == 1){
            handsx = 20
            handsy = 25
            boomvsp = -9;
            boomhsp = -6;
        }
    
    }
    if(window == 2){
        if(window_timer == 1){
            destroy_hitboxes();
        }
    }

}
    
    //#endregion
    
    //#region Bair
if(attack == AT_BAIR){
	if(!hitstop){
	    switch(image_index) {
	    	case 0: 
	    		handsx = 27;
	    		handsy = 50;
	    		boomvsp = -3;
	    		boomhsp = -4;
	    		break;
	    	case 1: 
	    		handsx = 37;
	    		handsy = 20;
	    		boomvsp = -4;
	    		boomhsp = -4;
	    		break;
	    	case 2: 
	    		handsx = 23;
	    		handsy = -6;
	    		boomvsp = -7;
	    		boomhsp = -4;
	    		break;
	    	case 3: 
	    		handsx = -50;
	    		handsy = 24;
	    		boomvsp = -3;
	    		boomhsp = 4;
	    		break;
	    	case 4: 
	    		handsx = 5;
	    		handsy = 52;
	    		boomvsp = -3;
	    		boomhsp = 0;
	    		break;
	    	case 5: 
	    		handsx = 29;
	    		handsy = 48;
	    		boomvsp = -3;
	    		boomhsp = -2;
	    		break;
	    	case 6: 
	    		handsx = 23;
	    		handsy = 36;
	    		boomvsp = -3;
	    		boomhsp = -2;
	    		break;
	    }		
    }
}
    
    //#endregion
    
    
//#endregion

//#region Grunded Normals
    //#region Jab
if(attack == AT_JAB){
		was_parried = false;
	

    if(window == 1 && window_timer == 3){
        handsx = 39;
        handsy = 24;
        boomvsp = -8;
        boomhsp = -5;
    }
}
    
    //#endregion
    
    //#region Dattack
if(attack == AT_DATTACK){
    if(window == 1 && window_timer == 1){
        DAslow = false;
    }
    if(DAslow == true){
        hsp *=0.9;
    }
    if(window == 2){
        if(window_timer == 1){
            handsx = 32;
            handsy = 13;
            boomvsp = -9;
            boomhsp = -8;
        }
    }
    if(window == 3){
        if(window_timer >= 10 && !attack_down && window_timer < 24){
            window = 3;
            window_timer = 24;
        }
    }
    if(window == 4){
    	destroy_hitboxes();
    }
}
    
    //#endregion
    
    //#region Utilt
    
if(attack == AT_UTILT){
    if(window == 1){
        if(window_timer == 3){
            handsx = 26;
            handsy = 11;
            boomvsp = -13;
            boomhsp = -2;
        }
    }
} 
    
    //#endregion
    
    
    //#region Ftilt
if(attack == AT_FTILT){
    switch (image_index){
    	case 0:
    		handsx = -43;
    		handsy = 40;
    		boomvsp = -3;
    		boomhsp = 5;
    		break;
    	case 1:
    		handsx = 68;
    		handsy = 12;
    		boomvsp = -4;
    		boomhsp = -5;
    		break;
    	case 2:
    		handsx = 62;
    		handsy = 20;
    		boomvsp = -4;
    		boomhsp = -2;
    		break;
    	case 4:
    		handsx = 17;
    		handsy = 16;
    		boomvsp = -5;
    		boomhsp = -1;
    		break;
    }
}
    
    //#endregion
    
    
    //#region Dtilt
if(attack == AT_DTILT){
    if(window == 1){
        if(window_timer == 1){
            
            boomvsp = -10;
            boomhsp = 8;
        }
    }
    if(window > 1){
    	can_strong = true;
    	can_ustrong = true;
    	move_cooldown[AT_DSTRONG] = 1;
    }
}
    
    //#endregion


//#endregion

//#region Extra_1

if(attack == AT_EXTRA_1){
    if(handsoff){
        if(window == 1 && window_timer == 1){
            take_damage(player, -1, 8)
        }
    }
    can_wall_jump = true;
    if(window == 1){
        if(window_timer = 1){
            if(handsoff){
                set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 0);
                skullhands = true
            }
            else{
                set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 10);
                skullhands = false
            }
            fuse = 999
            var bomb = instance_create(x + handsx*spr_dir, y - handsy, "obj_article1")
            bomb.state = 100
            bomb.flip_up = flip_up;
            
            if(ovenhands > 15){
                take_damage(player, -1, 2)
            }
        }
        if(window_timer = 2){
            vsp = boomvsp
            hsp = boomhsp*spr_dir;
        }
    }
    if(window == 2){
    	if(free && handsoff_tumble > 0 && window_timer == 15){
    		window_timer = 0;
    		handsoff_tumble--;
    	}
        if(window_timer == 16 || !free){
            window = 3;
            window_timer = 0;
            image_index = 0;
            fuse = fuse_max+20
            
        }
    }
}

//#endregion



//#region Taunt

//#endregion

if(jabParry){
	if((attack == AT_UTILT || attack == AT_DTILT || attack == AT_FTILT) && window == 3){
		was_parried =  true;
	}
}
//#region Prime Extra Hitpause
// if(prime){
// 	with(pHitBox){
// 		if(player_id == other.id){
// 			extra_hitpause = 4;
// 		}
// 	}
// }else{
// 	with(pHitBox){
// 		if(player_id == other.id){
// 			extra_hitpause = 0;
// 		}
		
// 	}
	
// }

//#endregion