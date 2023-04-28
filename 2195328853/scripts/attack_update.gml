// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if (attack == AT_NSPECIAL){
    if(window == 2){
        if(special_down && !shield_down){
        	can_move = false;can_fast_fall = false;
        	nspecialcharge += 1.5;
        	hsp *= 0.95;
        }else if(!shield_down){
        	sound_play(asset_get("sfx_swipe_weak2"));
        	window = 3;window_timer = 0;
        }else{
        	window = 4;window_timer = 0;
        }
    }else if(window == 3){
        if(window_timer == 1){
        	if(nspecialcharge >= 60){
			   	create_hitbox(AT_NSPECIAL,2,x,y-25);
			   	spawn_hit_fx(x,y-15, fx_blob_ball_explosion);spawn_hit_fx(x,y-15, fx_blob_ball_explosion2);
			   	sound_play(asset_get("sfx_waterhit_heavy"));
			}
			if(!instance_exists(blob_ball)){
				blob_ball = instance_create(x+30*spr_dir,y-30,"obj_article1");
			}
			if(runeM){
			if(!instance_exists(blob_ball2)){
				blob_ball2 = instance_create(x+30*spr_dir,y-30,"obj_article1");
				blob_ball2.ball = 1;
			}if(!instance_exists(blob_ball3)){
				blob_ball3 = instance_create(x+30*spr_dir,y-30,"obj_article1");
				blob_ball3.ball = 2;
			}
			}
			with(obj_article1){
				if("BlueBlobBall" in self && BlueBlobBall && player_id == other && !dontdestroylol && !Pocketed){
		        	if (instance_exists(ballhitbox)) {
				    	instance_destroy(ballhitbox);
				    }if(ballmode == 0){
					    if(other.nspecialcharge < 60){
					    	var explosion = create_hitbox(AT_NSPECIAL,3,x,y);explosion.player = player;
					    	spawn_hit_fx(x+20,y+20, player_id.fx_blob_ball_explosion);spawn_hit_fx(x-20,y+20, player_id.fx_blob_ball_explosion);
					    	spawn_hit_fx(x+20,y-20, player_id.fx_blob_ball_explosion);spawn_hit_fx(x-20,y-20, player_id.fx_blob_ball_explosion);
					    }else{
					    	var explosion = create_hitbox(AT_NSPECIAL,2,x,y);explosion.player = player;
					    	spawn_hit_fx(x,y, player_id.fx_blob_ball_explosion);spawn_hit_fx(x,y, player_id.fx_blob_ball_explosion2);
					    }
					    sound_play(asset_get("sfx_waterhit_heavy"));
					}else if(ballmode == 1){ //ice
					    var explosion = create_hitbox(AT_NSPECIAL,4,x,y);explosion.player = player;
					    spawn_hit_fx(x,y, 199);
					    sound_play(asset_get("sfx_ice_back_air"));
					}else if(ballmode == 2){ //steam
					    var explosion = create_hitbox(AT_NSPECIAL,5,x,y);explosion.player = player;
					    spawn_hit_fx(x+20,y-20, 144);spawn_hit_fx(x-20,y-20, 144);spawn_hit_fx(x+20,y+20, 144);spawn_hit_fx(x-20,y+20, 144);
					    sound_play(asset_get("sfx_ell_steam_release"));
					}else if(ballmode == 3){ //whirlpool
					    var explosion = create_hitbox(AT_NSPECIAL,6,x,y);explosion.player = player;
					    spawn_hit_fx(x,y, 196);
					    sound_play(asset_get("sfx_waterhit_heavy"));
					}instance_destroy(self);
		    	}
			}
			nspecialcharge = 0;
	    }
    }
}else if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    if(window == 1){
        can_move = false;
        if(window_timer == 10){
	        if(!special_down){
	        	
	        }else{
        		window = 4;window_timer = 0;
        	}
        	if (get_player_color( player ) == 4 || get_player_color( player ) == 5  || get_player_color( player ) == 6 || get_player_color( player ) == 14){
			    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("star"));
			    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
			}
	    }
    }else if(window == 2){
    	can_move = false;
        if(window_timer == 1){
        	with(obj_article1){
				if("BlueBlobBall" in self && BlueBlobBall && player_id == other && !Pocketed){
		        	if(ballmode != 2){
						ballmode = 2;bounceanim = 0;hitplayertimer = 0;hitstop = 0;
						if(hitlockout < 10){
							hsp = 0.5*other.spr_dir;	
						}
		        	}else if(ballmode == 2){
						ballmode = 0;hitplayertimer = 0;hitstop = 0;
		        	}
		    	}
			}
	    }
    }else if(window == 3){
        can_move = false;
    }else if(window == 4){
        can_move = false;
        if(window_timer == 11){
	        window = 5;window_timer = 0;
	    }
    }else if(window == 5){
    	can_move = false;
        if(special_down && !shield_down){
        	window_timer = 0;fspecialcharge += 3;
        	if(fspecialcharge < 45){
        		if(right_down && hsp <= 4.5){
		        	hsp += .4;
		        }else if(left_down && hsp >= -4.5){
		        	hsp -= .4;
		        }if(vsp > 0.5){
	        		vsp = 0.5;
	        	}
        	}else if(fspecialcharge < 90){
        		if(right_down && hsp <= 4){
		        	hsp += .2;
		        }else if(left_down && hsp >= -4){
		        	hsp -= .2;
		        }if(vsp > 1){
	        		vsp = 1;
	        	}
        	}else{
        		if(right_down && hsp <= 3){
		        	hsp += .2;
		        }else if(left_down && hsp >= -3){
		        	hsp -= .2;
		        }if(vsp > 3){
	        		vsp = 3;
	        	}
        	}
        }else if(!shield_down){
        	if(fspecialcharge < 180 && runeO || !runeO){
        		window = 6;window_timer = 0;
        	}else if(fspecialcharge >= 180 && runeO){
        		window = 8;window_timer = 0;
        	}
        }else{
        	window = 10;window_timer = 0;
        }
    }else if(window == 6){
    	can_move = false;
        if(window_timer == 1){
        	if(steam_cooldown <= 0 && !instance_exists(steam_cloud) && fspecialcharge >= 60){
				steam_cooldown = 600;
				if(!runeI){
					steam_cloud = instance_create(round(x+30*spr_dir),round(y-30),"obj_article2");
				}else{
					steam_cloud = instance_create(round(x+50*spr_dir),round(y-30),"obj_article2");
					steam_cloud2 = instance_create(round(x+10*spr_dir),round(y-30),"obj_article2");
					steam_cloud3 = instance_create(round(x+30*spr_dir),round(y-50),"obj_article2");
					steam_cloud4 = instance_create(round(x+30*spr_dir),round(y-10),"obj_article2");
				}
        	}else{
        		if(!runeI){
        			create_hitbox(AT_FSPECIAL,3,round(x+30*spr_dir),round(y-30));
        		}else{
					create_hitbox(AT_FSPECIAL,3,round(x+50*spr_dir),round(y-30));
					create_hitbox(AT_FSPECIAL,3,round(x+10*spr_dir),round(y-30));
					create_hitbox(AT_FSPECIAL,3,round(x+30*spr_dir),round(y-50));
					create_hitbox(AT_FSPECIAL,3,round(x+30*spr_dir),round(y-10));
				}
        	}
	    }
	    if(vsp > 1){
	    	vsp = 1;
	    }
        if(window_timer == 3){
        	window = 7;window_timer = 0;
        }
        fspecialcharge = 0;
    }else if(window == 8){
    	can_move = false;
    	vsp = 0;hsp = -2.5*spr_dir;
        if(window_timer <= 1 || window_timer == 4 || window_timer == 8 || window_timer == 12 || window_timer == 16 || window_timer == 20 || window_timer == 24 || window_timer == 28){
        	if(!runeI){
        		create_hitbox(AT_FSPECIAL,4,round(x+620)*spr_dir,round(y-25));
        	}else if(runeI){
        		create_hitbox(AT_FSPECIAL,4,round(x+610)*spr_dir,round(y-35));
        		create_hitbox(AT_FSPECIAL,4,round(x+610)*spr_dir,round(y-20));
        		create_hitbox(AT_FSPECIAL,4,round(x+630)*spr_dir,round(y-5));
        		create_hitbox(AT_FSPECIAL,4,round(x+630)*spr_dir,round(y-45));
        	}
	    }else if(window_timer == 32){
        	if(!runeI){
        		create_hitbox(AT_FSPECIAL,5,round(x+620)*spr_dir,round(y-25));
        	}else if(runeI){
        		create_hitbox(AT_FSPECIAL,5,round(x+610)*spr_dir,round(y-35));
        		create_hitbox(AT_FSPECIAL,5,round(x+610)*spr_dir,round(y-20));
        		create_hitbox(AT_FSPECIAL,5,round(x+630)*spr_dir,round(y-5));
        		create_hitbox(AT_FSPECIAL,5,round(x+630)*spr_dir,round(y-45));
        	}
        }else if(window_timer == 44){
        	window = 9;window_timer = 0;
        }
        fspecialcharge = 0;
    }else if(window == 9){
    	can_move = false;
    	hsp = -1*spr_dir;
    	if(vsp > 1){
	    	vsp = 1;
	    }
    }
}else if (attack == AT_USPECIAL){
    if(window == 1){
        if(window_timer == 10){
	        if(!special_down){
	        	
	        }else if(!upb || runeH){
        		window = 4;window_timer = 0;
        	}
	    }
    }else if(window == 2){
        if(window_timer == 1){
        	with(obj_article1){
				if("BlueBlobBall" in self && BlueBlobBall && player_id == other && !Pocketed){
		        	if(ballmode != 3){
						ballmode = 3;hitplayertimer = 0;hitstop = 0;
		        	}else if(ballmode == 3){
						ballmode = 0;vsp *= 1.75;hitplayertimer = 0;hitstop = 0;
		        	}
		    	}
			}
	    }
    }else if(window == 4){
    	upb = true;upbtimer = 0;
        if(window_timer == 8){
	        window = 5;window_timer = 0;
	        if(free){
	        	vsp = -3;//hsp *= 0.25;
	        }else{
	        	vsp = -3;hsp = 0;
	        }
	    }
    }else if(window == 5){
        can_fast_fall = false;
        if(special_down && free && upbtimer < 300 && !has_rune("L")){
	    	can_move = false;
	    	if(right_down && hsp <= 2.5){
	        	hsp += .2;
	        }else if(left_down && hsp >= -2.5){
	        	hsp -= .2;
	        }
        	window_timer = 0;
        	if(vsp > 0.5){
        		vsp = 0.5;
        	}
        	upbtimer += 1;
        }else{
        	destroy_hitboxes();
        	window = 6;window_timer = 0;
        }
        cancelattack();
    }
}else if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    if(window == 1){
    	dspecialtimer = 0;dspecialkbhsp = 0;dspecialkbvsp = 0;
        if(window_timer == 10){
	        if(!special_down){
	        	
	        }else{
        		window = 4;window_timer = 0;
        	}
	    }
    }else if(window == 2){
        if(window_timer == 1){
        	with(obj_article1){
				if("BlueBlobBall" in self && BlueBlobBall && player_id == other && !Pocketed){
		        	if(ballmode != 1){
						ballmode = 1;hsp *= 0.25;
		        	}else if(ballmode == 1){
						ballmode = 0;
		        	}hitstop = 0;
		    	}
			}
	    }
    }else if(window == 4){
        if(window_timer == 1){
	        vsp = -6;hsp *= 0.7;
	    }else if(window_timer == 19 || !free){
	        window = 5;window_timer = 0;
	    }
    }else if(window == 5){
        can_move = false;soft_armor = 20;
        if(window_timer == 1){
	        vsp = 8;
	    }else if(window_timer == 7 || !free){
	       window = 6;window_timer = 0;
	    }
    }else if(window == 6 || window == 7){
        can_move = false;soft_armor = 20;dspecialtimer += 2;
        if(window == 6 && !free){
        	window = 7;window_timer = 0;
        }else if(window == 7 && free){
        	window = 6;window_timer = 0;
        }if(window == 6){
        	/*if(instance_exists(dspecialhitbox2)){
        		dspecialhitbox2.damage = 4+(vsp/2);
	    		dspecialhitbox2.kb_scale = 0.3+(vsp/16);
	    		print(dspecialhitbox2.kb_scale);
        	}*/if(instance_exists(dspecialhitbox)){
	        	instance_destroy(dspecialhitbox);
        	}vsp += 0.5;
        }else if(window == 7){
        	if(instance_exists(dspecialhitbox)){
	        	//dspecialhitbox.damage = 3+(hsp/3*spr_dir);
		    	dspecialhitbox.kb_scale = 0.1+(abs(hsp)/7);dspecialhitbox.kb_scale = min(1.4, dspecialhitbox.kb_scale);
		    	//print_debug(string(dspecialhitbox.kb_scale));
        	}if(instance_exists(dspecialhitbox2)){
	        	instance_destroy(dspecialhitbox2);
        	}if(instance_exists(dspecialhitbox3)){
	        	instance_destroy(dspecialhitbox3);
        	}
        }
        if(window_timer == 1){
        	if(window == 6 && vsp > 0.5){
	    		dspecialhitbox2 = create_hitbox(AT_DSPECIAL,3,x,y);dspecialhitbox3 = create_hitbox(AT_DSPECIAL,6,x,y);
        	}if(window == 7 && (hsp*spr_dir > 1.5 || hsp*spr_dir < -0.5)){
	    		dspecialhitbox = create_hitbox(AT_DSPECIAL,4,x,y);
        	}
	    }else if(window_timer == 30){
	    	window_timer = 0;
	    	if(free){
	    		attack_end();
	    	}
	    }if(special_pressed && (free && dspecialtimer > 30 || !free && dspecialtimer > 90)){
	    	window = 8;window_timer = 0;
	    	if(instance_exists(dspecialhitbox)){
	        	instance_destroy(dspecialhitbox);
        	}if(instance_exists(dspecialhitbox2)){
	        	instance_destroy(dspecialhitbox2);
        	}if(instance_exists(dspecialhitbox3)){
	        	instance_destroy(dspecialhitbox3);
        	}
	    }
    }else if(window == 8){
        can_move = false;soft_armor = 0;
        if(window_timer == 1){
        	if(!free){
	        	vsp = -6;hsp = 0;
        	}else{
	        	vsp = -3;hsp = 0;
        	}
	    }else if(window_timer == 10){
        	window = 9;window_timer = 0;
	    }
    }else if(window == 9){
        can_move = false;soft_armor = 0;
    }
    if(window >= 5 && window < 8){
    	if(get_gameplay_time() % 2 == 0){
        	var rand_dir = random_func(1, 359, true);
        	spawn_hit_fx((x) + round(lengthdir_x(-15, rand_dir)), (y - 30) + round(lengthdir_y(-15, rand_dir)), fx_bluetrail);
    		spawn_hit_fx((x) + round(lengthdir_x(25, rand_dir)), (y - 30) + round(lengthdir_y(25, rand_dir)), fx_bluetrailslow);
        }
    }if(window > 5 && window < 8 && !hitpause){
		if(dspecialkbhsp != 0){
			hsp = dspecialkbhsp;
			dspecialkbhsp = 0;
		}if(dspecialkbvsp != 0){
			vsp = dspecialkbvsp;
			dspecialkbvsp = 0;
		}
    }
}else if (attack == AT_FSTRONG){
    if(window < 4){
    	can_move = false;
    }
    if(window == 1 && window_timer == 1){
        fstrongloop = 0;
    }else if(window == 3){
        if(window_timer == 1){
        	vsp -= 1;
        }
    }else if(window == 4){
        if(window_timer == 1){
	        if(vsp > -3){
	           vsp = -3; 
	        }
	    }
    }else if(window == 5){
        hsp *= 0.85;
    }
    if(window == 3 && window_timer >= 5){
        if(fstrongloop < 4){
            fstrongloop += 1;
            window = 3;window_timer = 0;
        }else{
            window = 4;window_timer = 0;
        }
    }
    if(window > 2 && window < 4){
    	var rand_dir = random_func(1, 359, true);
    	spawn_hit_fx((x) + round(lengthdir_x(15, rand_dir)), (y - 30) + round(lengthdir_y(15, rand_dir)), fx_bluetrail2slow);
    }else if(window == 4){
    	var rand_dir = random_func(1, 359, true);
    	spawn_hit_fx((x) + round(lengthdir_x(25, rand_dir)), (y - 30) + round(lengthdir_y(25, rand_dir)), fx_bluetrail2slow);
    	spawn_hit_fx((x) + round(lengthdir_x(45, rand_dir)), (y - 30) + round(lengthdir_y(45, rand_dir)), fx_bluetrail2slow);
    }
}else if (attack == AT_USTRONG){
    if(window == 1 && window_timer == 1){
        ustrongloop = 0;
    }else if(window == 3){
        hsp *= 0.95;
    }else if(window == 4){
        if(window_timer == 1){
	        if(vsp > -7){
	           vsp = -7; 
	        }
	    }hsp *= 0.9;
    }else if(window == 5){
        hsp *= 0.85;
    }
    if(window == 3 && window_timer >= 6){
        if(ustrongloop < 5){
            ustrongloop += 1;
            window = 3;window_timer = 0;
        }else{
            window = 4;window_timer = 0;
        }
    }
    if(window > 1 && window < 4){
    	var rand_dir = random_func(1, 359, true);
    	spawn_hit_fx((x) + round(lengthdir_x(25, rand_dir)), (y - 30) + round(lengthdir_y(25, rand_dir)), fx_bluetrailslow);
    }
}else if (attack == AT_NAIR){
    if((window == 3 && window_timer >= 15 || window == 4) && jump_pressed){
        window = 10;window_timer = 100;
    }
    if((window == 3 || window == 5) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && attack_down){
        window = 5;window_timer = 0;
    }
    if(window == 5 && !attack_down){
        window = 4;window_timer = 0;
    }
}else if (attack == AT_UAIR){
    if(window == 1 && window_timer == 1){
        uairloop = 0;
        if(!runeH){
        	uairboost /= 2;
        }
    }else if(window == 2){
        if(window_timer == 1){
	        if(vsp > -6){
	            if(vsp < 0){
	                vsp -= 2*uairboost; 
	            }else{
	                vsp -= 4*uairboost; 
	            }
	        }
        }
    }else if(window == 3 && window_timer == 1){
        if(vsp > -10){
           vsp = -10*uairboost; 
        }
    }
    if(window == 2 && window_timer >= 5){
        if(uairloop < 4){
            uairloop += 1;
            window = 2;window_timer = 0;
        }else{
            window = 3;window_timer = 0;
        }
    }
    if(window < 3){
        if(get_gameplay_time() % 2 == 0){
        	var rand_dir = random_func(1, 359, true);
    		spawn_hit_fx((x) + round(lengthdir_x(25, rand_dir)), (y - 30) + round(lengthdir_y(25, rand_dir)), fx_bluetrailslow);
        }
    }
}else if (attack == AT_DTILT){
    if(window == 2 && window_timer >= 3 || window >= 3){
    	cancelattack();
    }
}else if (attack == AT_DATTACK){
    if(has_rune("A") && window >= 2 && has_hit && jump_pressed){
        window = 10;window_timer = 100;
    }
    if(free){
    	hsp *= 0.9;
    	vsp *= 0.95;
    }
    if(window == 2 && window_timer >= 6 || window >= 3){
    	cancelattack();
    }
}else if (attack == AT_DSTRONG){
    if(window == 1){
    	if(window_timer == 1){
	        reset_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH);reset_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME);
	    	reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH);reset_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH);
	    }
	    if(strong_charge >= 30){
	    	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 24);set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 19);
	    	set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 12);set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 34);
	    }
        set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 7*damagebuff+strong_charge/22);
        set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8*damagebuff+strong_charge/18);
        set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.05*damagebuff+strong_charge/260);
        //print_debug(string(1.05*damagebuff+strong_charge/260));
    }
}else if (attack == AT_TAUNT){
    if(window == 1){
		tauntspeed = 0;
		reset_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH);
		reset_window_value(AT_TAUNT, 2, AG_WINDOW_CUSTOM_GRAVITY);
    }else if(window == 2){
	    if(y > -room_height){
	        vsp -= 0.025;
	    }else{
	        vsp += 1;
	    }
	    hsp *= 0.25;
	    if(window_timer == 30-(1*tauntspeed) && taunt_down){
	        window_timer = 0;
	        if(tauntspeed < 20){
		        tauntspeed += 1;
		        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 30-(1*tauntspeed));
		        set_window_value(AT_TAUNT, 2, AG_WINDOW_CUSTOM_GRAVITY, 1-(1*tauntspeed)/19.5);
	        }
	    }
    }
    
    //dance
    if(window == 3){
    	if(!free){
    		if(right_down && hsp < 2){
    			hsp += 0.5;
    		}else if(left_down && hsp > -2){
    			hsp -= 0.5;
    		}
    	}
    	if(window_timer == 12 && !hitpause){
    		if(!free){
				sound_play(asset_get("sfx_land"));
    		}else{
    			sound_play(asset_get("sfx_swipe_medium1"));
    		}
		}
        if(!taunt_down){
            window = 11;window_timer = 0;
        }
    }
    
    //pose
    if(window == 4){
        
    }else if(window == 5){
        if(!taunt_down){
            window = 6;window_timer = 0;
        }
    }
}

#define cancelattack
    if(has_hit && (attack_pressed || special_pressed || jump_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)){
		window = 20;
	}