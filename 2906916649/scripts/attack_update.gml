//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

if(attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG){
	if strong_charge == 55 && window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW){ 
        sound_play(sound_get("chargingChargerDone"));
		spawn_hit_fx(x - 12*spr_dir,y - 90,Charge_Blink);
	}
}



if(attack == AT_DATTACK){
	if(window == 2){
		if(window_timer == 1){
			spawn_base_dust(x, y, "dash_start", 0);
		}
	}
	if(window == 4){
		if(window_timer == 1){
			spawn_base_dust(x, y, "land", 0);
		}
	}
}

if(attack == AT_FSTRONG){
	if(window == 2){
		if(window_timer == 1){
			spawn_base_dust(x, y, "dash_start", 0);
		}
	}
	if(window == 2 || window == 3){
		if (collision_point(x + 40 * spr_dir, y - 20, asset_get("par_block"),false,true) != noone){ 
			var wall_x = x - 42 *spr_dir;
			while(collision_point(wall_x, y - 40, asset_get("par_block"), false, true) != noone){
				wall_x -= spr_dir;
			}
			x = wall_x + spr_dir * 40;
			if(window_timer >= 0){
				window = 5;
				window_timer = 0
				if(!hitpause){
					sound_play(sound_get("Surprised00"))
				}
			}
		}
		if(instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
    		splatbomb.spr_dir = spr_dir;
    		splatbomb.hsp = 6 * spr_dir;
    		splatbomb.vsp = -9;
    		window = 5;
    		window_timer = 0;
    		sound_play(sound_get("BulletBombMarkingFly"))
		}
	}
	if(window == 5){
		if(window_timer == 1){
			if(!hitpause){
				vsp = -6
				hsp = -2 * spr_dir
			}
		}
	}
}

if(attack == AT_DTILT){
	if(window == 2){
		if(window_timer == 1){
			spawn_base_dust(x, y, "dash_start", 0);
		}
	}
}

if(attack == AT_USTRONG){
	if(window == 2 ){
		if(instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
			splatbomb.x = x + 10 * spr_dir
    		splatbomb.spr_dir = -spr_dir;
    		splatbomb.hsp = -1 * spr_dir;
    		splatbomb.vsp = -9;
    		splatbomb.hitbox_timer = 100
    		sound_play(sound_get("BombAlert01"))
		}
	}
	if(window > 3 ){
		if(instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
    		splatbomb.bomb_explode = true
		}
		if(instance_exists(bobblehat) && instance_exists(bobblehat.InkstrikeBomb) && place_meeting(x, y, bobblehat.InkstrikeBomb)){
			bobblehat.InkstrikeBomb.Inkstrike_destroyed = true;
		}

	}
	if(window == 3){
		if(window_timer == 1){
			spawn_base_dust(x, y, "dash_start", -0);
		}
	}
	if(window == 4){
		if(window_timer == 1){
			spawn_base_dust(x, y, "land", 0);
		}
	}
}

if(attack == AT_DTILT){
	if(hsp > dtilt_max_speed){
		hsp = dtilt_max_speed
	}
	if(hsp < -dtilt_max_speed){
		hsp = -dtilt_max_speed
	}
}


if(attack == AT_JAB){
	if(hit_player_obj != noone && hit_player_obj.pantsed_status_timer != 0){
		set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
	}else{
		
		reset_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_JAB, 1, HG_ANGLE);
	}
	if(window == 2){
		if(window_timer >= get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH) - 2){
			can_attack = true;
			if(attack_pressed){
				move_cooldown[AT_JAB] = 25;
				window = 4;
				window_timer = 0;
			}
		}
	}
	if(window == 3){
		if(window_timer == get_window_value(AT_JAB, 3, AG_WINDOW_LENGTH)){
				set_state(PS_IDLE)
		}
	}
	if(window == 4){
		if(window_timer == 1){
			if(!hitpause){
				sound_play(asset_get("sfx_clairen_sword_activate"));
				spawn_hit_fx(x - 12*spr_dir,y - 90,Charge_Blink);
			}
		}
		
	}
	
	if(window == 5){
		if(window_timer == 1){
			if(!hitpause){
				spawn_hit_fx(x ,y - 0,SniperShot);
			}
		}
		if(window_timer >= get_window_value(AT_JAB, 5, AG_WINDOW_LENGTH) - 3){
			can_attack = true;
			if(attack_pressed && has_hit_player){
				window = 7;
				window_timer = 0;
			}
		}
	}
	if(window == 6){
		if(window_timer == get_window_value(AT_JAB, 6, AG_WINDOW_LENGTH)){
				set_state(PS_IDLE)
		}
	}
}

if(attack == AT_FTILT){
	if(window == 1){
		if(window_timer == 1){
				grabbedid = noone;
		}
	}
	if(window == 2){
		if(window_timer == 1){
			spawn_base_dust(x, y, "dash_start", 0);
		}
        if(has_hit_player && hit_player_obj.prev_state != PS_HITSTUN_LAND && !clones_player_id) || (instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
        	window = 4;
        	window_timer = 0;
        	if(instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
        		splatbomb.x = lerp(floor(splatbomb.x), x+50*spr_dir, .7);
        	}

    	}
	}
	if(window == 3){
		if(window_timer == 1){
			spawn_base_dust(x, y, "land", 0);
		}
    	if (window_timer == get_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH)){
    		set_state(PS_IDLE);
		}
		
	}
	if(window == 4){
		if(window_timer < 8){
			if(grabbedid != noone){
				if(!instance_exists(grabbedid)){
					grabbedid = noone;
				} else if(grabbedid.state == PS_DEAD || grabbedid.state == PS_RESPAWN){
					grabbedid = noone;
				} else{
					grabbedid.ungrab = 0;
					//grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
					grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
					grabbedid.free = 0;
					grabbedid.state = PS_HITSTUN_LAND;
					hit_player_obj.x = lerp(floor(hit_player_obj.x), x+50*spr_dir, .7);
					hit_player_obj.y = lerp(floor(hit_player_obj.y), y+0, 1.5);
				}
			}
		}
		if(window_timer == 8 && (instance_exists(splatbomb) && instance_place(x, y, splatbomb))){
    			splatbomb.bomb_explode = true;
    			create_hitbox(AT_FSPECIAL , 2, x + 50 * spr_dir , y)
		}
	}
		
}


if (attack == AT_NSPECIAL)
{
	can_move = true;
    can_fast_fall = false;
    if(window == 1){
    	if(window_timer == 1){
    		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED);
    		reset_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE);
    		if(InkTank <= MinInkTank){
				set_num_hitboxes(AT_NSPECIAL, 0);
    			sound_play(sound_get("se_inkling_tankempty"));
    		}else{
    		set_num_hitboxes(AT_NSPECIAL, 2);
    		}
    	}
    }
    if( window == 2){
    	if(window_timer == 1){
    		if(!free){
    			spawn_base_dust(x, y, "dash_start", 0);
    		}
    		if(!hitpause){
    			splatter = create_hitbox(AT_NSPECIAL, 1, x + 62 * spr_dir, y - 30);
    			big_splatter = create_hitbox(AT_NSPECIAL, 2, x + 32 * spr_dir, y - 30);
    		}
    		if(InkTank > MinInkTank){
				InkTank= InkTank - 3
    		}
    	}
    	if(up_down){
    		if(get_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED) > -10){
    			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, get_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED) - .5);
    			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, get_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE) + .5); 
    			nspecial_angle = get_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED)
    		}
    	}
    	if(down_down){
    		if(get_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED) < 10){
    			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, get_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED) + .5);
    			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, get_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE) - .5); 
    			nspecial_angle = get_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED)
    		}
    	}
    }
    if (window == 3){
        if (special_down && InkTank > MinInkTank){
            window = 2;
            window_timer = 0;
         }
	}
	
}

	



if (attack == AT_FSPECIAL){
	if(instance_exists(splatbomb)){
		bomb_out = true;
		if(instance_place(x, y, splatbomb)){
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
		}else{
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_E"));
		}
	}else{
		bomb_out = false
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_E"));
	}
	if(window == 1){
		if(window_timer == 1){
			if(!hitpause){
				if(bomb_out){
					if(instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
						sound_play(sound_get("se_item_item_get"))
					}
				}
			}
		}
	}
    if (window == 2){
    	if(window_timer == get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)){
    		if(up_down){
    			window = 3;
            	window_timer = 0;
    		}else if(down_down){
    			window = 5;
            	window_timer = 0;
    		}else{
    			window = 4;
            	window_timer = 0;
    		}
    		if(free && InkTank > InkBombMax){
    			vsp = -3
    			hsp = 3 * spr_dir
    		}
    	}
    }
    if(window > 2 && window_timer > 15){
    	can_special = true;
    }
    if(window == 3 || window == 4 || window == 5){
    	if(window == 3){
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
    	}
    	if(window == 4){
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -9);
    	}
    	if(window == 5){
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
    	}
    	if(window_timer == 7){
    		if(!hitpause){
    			if(bomb_out = true){
    				if(instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
    					splatbomb.spr_dir = spr_dir;
    					splatbomb.hsp = get_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED) * spr_dir;
    					splatbomb.vsp = get_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED);
    					sound_play(sound_get("BulletBombMarkingFly"))
    				}	
    			}else if(bomb_out = false && InkTank > InkBombMax){
    				splatbomb = create_hitbox(AT_FSPECIAL, 1, x + 20 * spr_dir, y - 40);
    				InkTank= InkTank - 15
    				sound_play(sound_get("BulletBombMarkingFly"))
    				
    			}else if(InkTank <= InkBombMax){
    				sound_play(sound_get("se_inkling_tankempty"));
    			}
    		}
    	}
    }
    can_fast_fall = false;
}



if (attack == AT_USPECIAL){
	if(window == 1){
		if(joy_dir > 90){
			spr_dir = -1
		}else if(joy_dir < 90){
			spr_dir = 1
		}
	}
	if(window == 2){
    	if(window_timer == 1){
			if(voice_enabled == 1){
    			sound_play( sound_get(happy[random_func(0, 6, true)]));
			}
    		if(!free){
    			spawn_base_dust(x, y, "jump", 0);
    		}
    	}
    	if (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)){
        	can_move = false;
        	if not (special_down && InkTank > MinInkTank){
        	set_state( PS_PRATFALL );	
    		}
			if(!hitpause){
			//sound_play(sound_get("ARC_BTL_SYS_AssistAct"))
			var dist_to_ground = 0;
			//increase detection range until it reaches the ground or goes too far
			while((!collision_line(x,y,x,y+dist_to_ground,asset_get("par_block"),true,true) && !collision_line(x,y,x,y+dist_to_ground,asset_get("par_jumpthrough"),true,true)) && dist_to_ground < 999) {
				dist_to_ground += 4;
			}
			//if dist to ground is less than the limit (onstage)
			if dist_to_ground < 999 {
    				junp_point = create_hitbox(AT_USPECIAL, 4, x , y + dist_to_ground );
			} else {
				var leftstage = get_stage_data(SD_X_POS);
				var rightstage = room_width - get_stage_data(SD_X_POS);
				var upstage = get_stage_data(SD_Y_POS);
				if x < room_width/2 {
    				junp_point = create_hitbox(AT_USPECIAL, 4, leftstage , upstage );
				} else {
    				junp_point = create_hitbox(AT_USPECIAL, 4, rightstage , upstage );
				}
				}
			}
		}
	}
	if(window > 3){
		can_wall_jump = true;
	}
	if(window == 4){
		if(window_timer == 10 && hitpause == false){
			spawn_hit_fx(x, y - 50, 305);
			if(get_player_color(player) == 26){
				sound_play(sound_get("PlaneCrash1"))
			}else{
				sound_play(sound_get("Splashdown1"))
			}
		}
	}
	if(window == 5){
		spawn_hit_fx(x, y, uspecial_effect);
	 		if(instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
	 			window = 2;
	 			window_timer = 0;
	 			splatbomb.bomb_explode = true
	 			if(instance_exists(junp_point)){
	 				junp_point.destroyed = true	
	 			}
    			if(InkTank >= MinInkTank){
    				InkTank = InkTank - 20;
    			}
	 		}
	}
	if (window == 5 && window_timer == get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH))
    {
    	if (free){
    window = 5
    window_timer = 0
    		
    } else{
    	window = 6
    	destroy_hitboxes();
    	window_timer = 0
    	}
	}
	if(window == 6){
		if(window_timer == 1 && !hitpause){
			shake_camera( 8, 6 )/*
	 		if(instance_exists(splatbomb) && instance_place(x, y, splatbomb)){
				spawn_hit_fx(x, y, super_Inkstrike_ground);
	 			splatbomb.destroyed = true
					if(get_player_color(player) == 26){
						sound_stop(sound_get("PlaneCrash1"))
						sound_play(sound_get("PlaneCrash2"))
					}else{
						sound_play(sound_get("Superball_Explosion00"));
					}
				set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -30*2);
				set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 140*2);
				set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 60*2);
				bomb_out = false
    			if(InkTank >= MinInkTank){
    				InkTank = InkTank - 20;
    			}
    			}else{
    				*/
				spawn_hit_fx(x, y, Inkstrike_ground);
					if(get_player_color(player) == 26){
						sound_stop(sound_get("PlaneCrash1"))
						sound_play(sound_get("PlaneCrash2"))
					}else{
						sound_play(sound_get("Splashdown2"));
					}
				reset_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX);
				reset_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y);
				reset_hitbox_value(AT_USPECIAL, 3, HG_WIDTH);
				reset_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT);
				
			//}
    	}
	}
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	if(window == 1 && InkTank > InkBombMax){
		if(char_height < 100){
			char_height = char_height + char_height_plus;
			char_height_plus =+ 7
		}
	}
	if(window == 3){
		if(char_height > 62){
			char_height = char_height - char_height_plus;
			char_height_plus =+ 7
			
		}
		
	}
	if(window == 1 && window_timer == 1){
		if(InkTank < InkBombMax){
			set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
    		sound_play(sound_get("TankGotoEmpty00"));
			if(voice_enabled == 1){
				if(Team_Member == 1){
					sound_play(sound_get("VoiceMComeOn00"))
				}else 
				if(Team_Member == 2){
					sound_play(sound_get("VoiceMComeOn01"))
				}else
				if(Team_Member == 3){
					sound_play(sound_get("VoiceMComeOn02"))
				}
			}
		}else{
    		sound_play(sound_get("touchComeOnCmp"));
			if(Team_Member == 1){
				if(voice_enabled == 1){
					sound_play(sound_get("VoiceMComeOn00"))
				}
				set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_call_specs"));
			}else 
			if(Team_Member == 2){
				if(voice_enabled == 1){
					sound_play(sound_get("VoiceMComeOn01"))
				}
				set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_call_headphones"));
			}else
			if(Team_Member == 3){
				if(voice_enabled == 1){
					sound_play(sound_get("VoiceMComeOn02"))
				}
				set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_call_bobblehat"));
			}
		}
	}
		if window == 2 && window_timer == 2{
			Team_Member++;
			if(Team_Member > 3){
			    Team_Member = 1;
			}
		}
		if window == 2 && window_timer == 1 && InkTank >= InkBombMax{ //spawn p2
		//sound_play(sound_get("ARC_BTL_SYS_AssistAct"))
			var dist_to_ground = 0;
			//increase detection range until it reaches the ground or goes too far
			while((!collision_line(x,y,x,y+dist_to_ground,asset_get("par_block"),true,true) && !collision_line(x,y,x,y+dist_to_ground,asset_get("par_jumpthrough"),true,true)) && dist_to_ground < 999) {
				dist_to_ground += 4;
			}
			//if dist to ground is less than the limit (onstage)
			if dist_to_ground < 999 {
				if(Team_Member == 1){
				    specs = instance_create(x + 20 * spr_dir,y + dist_to_ground,"obj_article1");
					InkTank= InkTank - 15
				    
				}else if(Team_Member == 2){
				    headphones = instance_create(x - 80 * spr_dir,y + dist_to_ground,"obj_article2");
					InkTank= InkTank - 15
				    
				}else if(Team_Member == 3){
				    bobblehat = instance_create(x - 40 * spr_dir,y + dist_to_ground,"obj_article3");
					InkTank= InkTank - 15
				    
				}
			} else {
				var leftstage = get_stage_data(SD_X_POS);
				var rightstage = room_width - get_stage_data(SD_X_POS);
				var upstage = get_stage_data(SD_Y_POS);
				if x < room_width/2 {
				if(Team_Member == 1){
					instance_create(leftstage,upstage,"obj_article1");
				    
				}else if(Team_Member == 2){
					instance_create(leftstage,upstage,"obj_article2");
				    
				}else if(Team_Member == 3){
					instance_create(leftstage,upstage,"obj_article3");
				    
				}
				} else {
				if(Team_Member == 1){
					instance_create(rightstage,upstage,"obj_article1");
				    
				}else if(Team_Member == 2){
					instance_create(rightstage,upstage,"obj_article2");
				    
				}else if(Team_Member == 3){
					instance_create(rightstage,upstage,"obj_article3");
				    
				}
				}
			}
		}
}

if(attack == AT_NAIR){
	can_fast_fall = false;
	if(window == 1){
		has_bounced = false;
	}
	if(window == 2 || window == 3){
		if(has_bounced = false){
			can_fast_fall = true;
			move_cooldown[AT_NAIR] = 0;
		}else{
			move_cooldown[AT_NAIR] = 25;
		}
		if(window_timer == get_window_value( AT_NAIR, 2, AG_WINDOW_LENGTH )){
			if(free){
				window = 3;
				window_timer = 0;
			}
			
		}
		if(!free && has_bounced = false && attack_down){
			window = 4;
			window_timer = 0;
		}
	}
	if(window == 3){
		if(!free){
			set_state(PS_LANDING_LAG)
		}
	}
	if(window == 4){
		if(window_timer == 1){
			if(!hitpause){
				sound_play(jump_sound);
			}
			
		}
		if(window_timer == get_window_value( AT_NAIR, 4, AG_WINDOW_LENGTH )){
			set_attack(AT_NAIR);
			window = 2;
			has_bounced = true;
			vsp -= 7
			djump = 0
			
		}
	}
}

if(attack == AT_TAUNT){
    if(instance_exists(specs) && instance_exists(headphones) && instance_exists(bobblehat)){
        //specs
        specs.state = 3;
        specs.window = 1;
        specs.window_timer = 0;
        //headphones
        headphones.state = 3;
        headphones.window = 1;
        headphones.window_timer = 0;
        //bobblehat
        bobblehat.state = 3;
        bobblehat.window = 1;
        bobblehat.window_timer = 0;
        set_attack(AT_TAUNT_2);
    }else
    if(instance_exists(specs)){
        //specs
        specs.state = 4;
        specs.window = 1;
        specs.window_timer = 0;
        set_attack(AT_UTHROW);
    }else
    if(instance_exists(bobblehat)){
        //bobblehat
        bobblehat.state = 4;
        bobblehat.window = 1;
        bobblehat.window_timer = 0;
        set_attack(AT_FTHROW);
    }else
    if(instance_exists(headphones)){
        //bobblehat
        headphones.state = 4;
        headphones.window = 1;
        headphones.window_timer = 0;
        set_attack(AT_DTHROW);
    }else
    
    
    
	if(get_player_name(player) == "SEESAW"){
		set_attack(AT_FSTRONG_2);
	}
	if(get_player_name(player) == "TENCHU"){
		set_attack(AT_DSTRONG_2);
	}
}

if(attack == AT_FSTRONG_2){
	if(window_timer == 1){
		sound_play(sound_get("vine-boom"))
		shake_camera( 8, 6 )
		spawn_hit_fx(x + 30 * spr_dir, y - 40, 13)
	}
	if(window_timer > 3 && taunt_down){
		window_timer = 3
	}
	move_cooldown[AT_TAUNT] = 5
}


if(attack == AT_DSTRONG_2){
	if(window == 1){
		if(window_timer == 1){
			sound_stop(sound_get("CARAMELLGASSIN"));
		}
		suppress_stage_music();
	}
	if(window == 2){
		suppress_stage_music();
		if(shield_pressed){
			sound_stop(sound_get("CARAMELLGASSIN"));
			set_state(PS_IDLE)
		}
		if(window_timer == get_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH)){
			window_timer = 0;
		}
	}
	
}

//voices

if(!hitpause){
	
if(attack == AT_FSTRONG || attack == AT_USTRONG){
	if(window == 2){
		if(window_timer == 1){
			if(voice_enabled == 1 && random_func(0, 5, true) == 1){
    			sound_play( sound_get(chance[random_func(0, 5, true)]));
			}
		}
	}
}
if(attack == AT_DSTRONG){
	if(window == 1){
		if(window_timer == 1){
			if(voice_enabled == 1){
    			sound_play( sound_get("aah"));
			}
		}
	}
	if(window == 2){
		if(window_timer == 1){
			if(voice_enabled == 1){
    			sound_play( sound_get("Chooo"));
			}
		}
	}
	if(window == 3){
		if(instance_exists(splatbomb) && instance_place(x, y, splatbomb) && bomb_interacted = false){
			bomb_interacted = true;
    		splatbomb.spr_dir = spr_dir;
    		splatbomb.hsp = 3 * spr_dir;
    		splatbomb.vsp = -12;
    		sound_play(sound_get("BulletBombMarkingFly"))
		}
		
	}else{
		bomb_interacted = false
	}
}

if(attack == AT_UAIR || attack == AT_DAIR){
	if(window == 2){
		if(window_timer == 1){
			if(voice_enabled == 1 && random_func(0, 5, true) == 1){
    			sound_play( sound_get(strike[random_func(0, 5, true)]));
			}
		}
	}
}

if(attack == AT_TAUNT){
	if(window == 2){
		if(window_timer == 1){
			if(!hitpause && voice_enabled == 1){
				sound_play(sound_get("VoiceMDefeat13"))
			}
		}
	}
	if(window == 4){
		if(window_timer == 1){
			if(!hitpause && voice_enabled == 1){
				sound_play(sound_get("VoiceMChance03"))
			}
		}
	}
}

}




if(attack == AT_EXTRA_1 || attack == AT_EXTRA_2){
	if(window == 1){
		if(window_timer == 5){
			if(get_player_color(player) == 26){
				sound_play(sound_get("PlaneCrash1"))
			}
		}
	}
	if(window == 2){
		if(window_timer == 5){
				if(get_player_color(player) == 26){
					sound_stop(sound_get("PlaneCrash1"))
					sound_play(sound_get("PlaneCrash2"))
				}else{
					sound_play(sound_get("PlayerMissionStart00"))
			}
		}
	}
	if(window == 3){
		if(window_timer == 1){
			spawn_hit_fx(x, y, Inkstrike_ground);
		}
	}
	if(attack == AT_EXTRA_2 && window == 4){
		if(window_timer == 1){
    		if(voice_enabled == 1){
        		sound_play( sound_get(hit[random_func(0, 5, true)]));
    		}
		}
	}
}



#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
