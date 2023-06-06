#macro AT_OLD_FAIR 42
#macro AT_TAUNT_3 43
//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	case AT_USPECIAL:
		hsp *= .96;
	    if(window == 1){
	        if(sanic_uspec_count >= 2){
	            move_cooldown[AT_USPECIAL] = 9999;
	        }
	    }
	    if(window == 2 && window_timer == 1){
	        sanic_uspec_count+=1;
	        sound_play(sound_get("cough"))
	        if (y < 60){
	        	vsp = -4;
	        }else{
	        	vsp = -9;
	        }
	    }
	break;
	case AT_NSPECIAL:
		if(window == 1){
			if(window_timer == 8){
				airhorn_sfx = sound_play(sound_get("dorito_bag"));
			}
		}
		if(free && !nspec_stall){
			vsp = min(vsp,3);
			hsp = sign(hsp)*lerp(abs(hsp), 0, .04); 
		}
		if(window == 1 && !hitpause){
			if(window_timer == phone_window_end-2 && !instance_exists(dorito_hb)){
				sound_play(asset_get("sfx_swipe_medium2"))
				dorito_hb = create_hitbox(AT_NSPECIAL,1,x+30*spr_dir,y-70);//var collision_dorito = create_hitbox(AT_NSPECIAL,5,x+20*spr_dir,y-60);collision_dorito.depth=depth-4;
	        	if(right_down && spr_dir == 1 || left_down && spr_dir == -1){
	        		if(up_down){
	        			dorito_hb.hsp *= 1.5;dorito_hb.vsp *= 1.2;
	        		}else{
	        			dorito_hb.hsp *= 1.75;dorito_hb.vsp *= 0.5;
	        		}
	        	}else if(right_down && spr_dir == -1 || left_down && spr_dir == 1){
	        		dorito_hb.hsp *= -0.4;dorito_hb.vsp *= 1.2;
	        	}else if(up_down){
	        		dorito_hb.hsp *= 0.5;dorito_hb.vsp *= 1.5;
	        	}else if(down_down){
	        		dorito_hb.hsp *= 0.2;dorito_hb.vsp *= 0.5;
	        		if(!free && freemd)dorito_hb.dorito_hp = 4;
	        	}				
				move_cooldown[AT_NSPECIAL] = 999;
			}
		}
		if(window == 3){
			if(window_timer == phone_window_end){
				nspec_stall = true;
			}
		}
	break;
	case AT_FSPECIAL:
		can_move = true;
		can_fast_fall = false;
		if(window == 1 && !hitpause && window_timer == 1){
			fspec_launch = false;
		}
		if(window != 2 && !hitpause){
			vsp *= .95;
			vsp = min(vsp,2)
			hsp *= .95;
			if(window == 1){
				vsp = min(vsp,1)
				if(window_timer == 6){
					sound_play(sound_get("dew_drink"))
				}
			}
		}
		if(window == 2 && !hitpause){
			if(window_timer >= 6){
				vsp *= .95;
				hsp *= .95;
			}else{
				if(!fspec_launch)
					vsp = 0;
			}
			if(window_timer >= 12){
				can_wall_jump = true;
			}
			if(window_timer == 6){
				if !free{
					vsp = -5;
				}
				hsp = 16*spr_dir;
				if(!trigger_warning)
					airhorn_sfx = sound_play(sound_get("fspec_dash"))
				move_cooldown[AT_FSPECIAL] = 999;
			}
		}
	break;
	case AT_DSPECIAL:
		if(window == 1){
			if(need_to_reload){
				window = 5;
				window_timer = 0;
			}
		}
		hsp = clamp(hsp,-5,5)
		if(window == 2){
			if(!hitpause){
				if(!dspec_stall && window_timer == 1){
					vsp = -4;
				}
				if(window_timer >= 4 && window_timer <= 14){
					var horizontal = right_down - left_down;
					if(horizontal != 0){
						spr_dir = horizontal;
					}				
				}
				if(window_timer == phone_window_end-2){
					spawn_hit_fx(x+110*spr_dir,y+10,fx_sound_wave)
				}
				if(window_timer == phone_window_end){
					sound_play(sound_get("gun"));
					//bullet_fx = spawn_hit_fx(x+45*spr_dir,y+2,fx_bullet)
					need_to_reload = true;
				}
			}
		}
		if(window == 3){
			if(!hitpause){
				dspec_stall = true;
				vsp = min(vsp,4);
			}
			if(instance_exists(bullet_fx) && hitpause){
				bullet_fx.pause_timer = 0;bullet_fx.pause = hitstop;
			}			
		}
		if(window == 4 && !hitpause){
			vsp = min(vsp,2);
		}		
		if(window == 5 && !hitpause){
			vsp*=.9;hsp*=.92;
			if(window_timer == 9){
				sound_play(asset_get("sfx_swipe_medium1"))
			}
			if(window_timer == 12){
				sound_play(asset_get("sfx_swipe_medium2"))
			}
			if(window_timer == 18){
				sound_play(asset_get("sfx_swipe_heavy1"))
			}
			if(window_timer == 26){
				sound_play(asset_get("sfx_swipe_medium2"))
			}			
			if(window_timer == 24){
				need_to_reload = false;
				sound_play(sound_get("reload"));
			}
		}
	break;
	case AT_EXTRA_1://Credit to Sai
	    has_airdodge = false;
	    can_fast_fall = false;
	    invincible = false;invince_time = 0;
		if(!free){
	        sound_play(waveland_sound)
	        is_fest = false;
	        curspd_override = false;
	    }else{
		    is_fest = window_timer < 12;
			curspd_override = window_timer < 12;
	    }
		if(window_timer > 5){
	    	can_attack = true
	    }
	    if(window_timer < 2){
	    	going_up = up_down;
	    	going_down = down_down;
	    }
		if(window_timer < 12){
	    	vsp -= 0.4;
			if(window_timer > 1){
				if(!going_up && !going_down){
					hsp = 8*spr_dir;
				}else if(going_up){
					vsp = -8;
					hsp *= .95;
				}else if(going_down){
					vsp = 8;
					hsp *= .95;
				}
			}
		}
	break;
	case AT_FAIR:case AT_OLD_FAIR:
		if(window == 1 && !hitpause){
			if(window_timer == phone_window_end){
				sound_play(asset_get("sfx_swipe_heavy2"));
				sound_play(asset_get("sfx_may_whip2"));
			}
		}
	break;
	case AT_DAIR:
		if(window == 2 && !hitpause){
			if(!free && !was_parried){
				if(attack_down || strong_down || down_stick_down){
					window = 4;
					window_timer = 0;
				}else if(!attack_down && !strong_down && !down_stick_down){
					set_state(PS_LANDING_LAG);
				}
			}
		}else if(window == 4 && !hitpause){
			if(window_timer < 4){
				hsp += 4*spr_dir;
			}
			if(!(spr_dir == 1 && right_down || spr_dir == -1 && left_down)){
				hsp *= .95;
			}else{
				hsp *= .98;
			}
		}
		if(has_hit && !fast_falling && window != 4){
			vsp *= .9;
			hsp *= .95;
		}
	break;
	case AT_NAIR:
	hsp *= .98;
	vsp *= .99;
	if(window == 1){
		if(window_timer == 1){
			hit_attack_timer = 0;
			for(i = 2; i <= 3; i++){
				reset_hitbox_value(AT_NAIR, i, HG_WIDTH);
				reset_hitbox_value(AT_NAIR, i, HG_HEIGHT);	
			}			
		}
		if(has_hit_player){
			hit_attack_timer++;
			for(i = 2; i <= 3; i++){
				set_hitbox_value(AT_NAIR, i, HG_WIDTH, 70);
				set_hitbox_value(AT_NAIR, i, HG_HEIGHT, 70);	
			}
		}
		can_attack = (hit_attack_timer >= 6);
		move_cooldown[AT_NAIR] = 2;
		if(window_timer == 3 && !hitpause){
			sound_play(asset_get("sfx_ori_stomp_spin"));
		}
		if(window_timer == phone_window_end && !hitpause){
			spawn_hit_fx(x+80*spr_dir,y-30,fx_sound_wave)
			var thing2 = spawn_hit_fx(x+80*-spr_dir,y-30,fx_sound_wave)thing2.spr_dir = -spr_dir;			
			sound_stop(asset_get("sfx_ori_stomp_spin"));
			sound_play(sound_get("airhorn"));
		}
	}else if(window == 3){
		vsp *= .95;
	}
	if(!free){
		sound_stop(asset_get("sfx_ori_stomp_spin"));
	}
	/*
		for(i = 0; i <= 12; i++){
			reset_hitbox_value(AT_NAIR, i, HG_WIDTH);
			reset_hitbox_value(AT_NAIR, i, HG_HEIGHT);
			if(has_hit_player){
			    set_hitbox_value(AT_NAIR, i, HG_WIDTH, 70);
			    set_hitbox_value(AT_NAIR, i, HG_HEIGHT, 70);
			}
		}
		if(window == 1){
			sound_stop(airhorn_sfx)
			if(window_timer == phone_window_end && !hitpause){
				airhorn_sfx = sound_play(sound_get("airhorns"))
			}
			if(!free){
				sound_stop(airhorn_sfx)
			}
		}
		can_wall_jump = true;
		if(window == 2){
			can_fast_fall = true;
			if(!fast_falling){
				if(window_timer >= 2 && window_timer <= 4 ||
				window_timer >= 12 && window_timer <= 14 ||
				window_timer >= 18 && window_timer <= 20 || 
				window_timer >= 26 && window_timer <= 28 ||
				window_timer >= 32 && window_timer <= 34){
					vsp = -2;
				}else if(window_timer >= 42 && window_timer <= 58){
					vsp = -2;
				}
			}
			if(window_timer == 2 ||
			window_timer == 12 ||
			window_timer == 18 ||
			window_timer == 26 ||
			window_timer == 32 ||
			window_timer == 42){
				spawn_hit_fx(x+80*spr_dir,y-30,fx_sound_wave)
				var thing2 = spawn_hit_fx(x+80*-spr_dir,y-30,fx_sound_wave)thing2.spr_dir = -spr_dir;
			}
			if(window_timer < 42){
				if(!free){
					sound_stop(airhorn_sfx)
				}
			}
		}*/
	break;
	case AT_FSTRONG://To anyone here wondering why I didn't do this in hitbox_init.gml welllllll it didn't work. It refused to change it, I added a print function and it printed but the damage didn't change. I tried to change it on DStrong and it worked so idfk
		if(window == 1){
			if(strong_charge == 30){
				var fx = spawn_hit_fx(x,y-30,305)fx.pause = 8.58;fx.depth = depth-4;
			}		
			if(!instance_exists(shrek_door)){
				reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
			}
		}
		if(window == 2 && !hitpause){
			if(window_timer == 3){
				sound_play(asset_get("sfx_blow_heavy2"));
				shake_camera(2,5);
			}
			if(window_timer == phone_window_end && !was_parried){
				if(!instance_exists(shrek_door)){
					charged_summon = strong_charge >= 30;
					shrek_door = create_hitbox(AT_FSTRONG, 3, x+54*spr_dir, y-46);
				}				
			}
		}
		vsp *= .90;
		if(window == 4){
			if(window_timer == 1){
				if(charged_summon){
					set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 17);
				}				
				sound_play(sound_get("flush"))
			}
			if(window_timer == 6){
				var blast = spawn_hit_fx(x+50*spr_dir,y-5,fx_sound_wave)blast.depth = depth-4;blast.pause = 12;
			}
			if(window_timer == 11 && instance_exists(shrek_door)){
				move_cooldown[AT_FSTRONG] = 999;
				shrek_door.door_open = true;
				shrek_door.hitbox_timer = 0;
			}
		}
	break;
	case AT_DSTRONG:
		if(window == 1){
			if(strong_charge == 30){
				var fx = spawn_hit_fx(x,y-30,305)fx.pause = 8.58;fx.depth = depth-4;
			}			
		}
		if(window == 2 && !hitpause){
			if(window_timer == 3){
				sound_play(asset_get("sfx_blow_heavy2"));
				shake_camera(2,5);
			}
			if(window_timer == phone_window_end && !was_parried){
				if(!instance_exists(dat_boi)){
					charged_summon = strong_charge >= 30;
					dat_boi = create_hitbox(AT_DSTRONG, 1, x+60*spr_dir, y-46);
				}				
			}			
		}
		vsp *= .90;
		if(window == 4){
			if(window_timer == 6){
				var blast = spawn_hit_fx(x+50*spr_dir,y-5,fx_sound_wave)blast.depth = depth-4;blast.pause = 12;
			}			
			if(window_timer == 11 && instance_exists(dat_boi)){
				sound_play(sound_get("oh_shit_waddup"))
				move_cooldown[AT_DSTRONG] = 999;
				dat_boi.boi_ride = true;
				dat_boi.hitbox_timer = 0;
			}
		}
	break;
	case AT_USTRONG:
		if(window == 1){
			if(strong_charge == 30){
				var fx = spawn_hit_fx(x,y-30,305)fx.pause = 8.58;fx.depth = depth-4;
			}
		}
		if(window == 2 && !hitpause){
			if(window_timer == 3){
				sound_play(asset_get("sfx_blow_heavy2"));
				shake_camera(2,5);	
			}
			if(window_timer == phone_window_end && !was_parried){
				if(!instance_exists(doge)){
					if(strong_charge >= 30 && strong_charge < 60){
						charged_summon = 1;
					}else if(strong_charge == 60){
						charged_summon = 2;	
					}
					doge = create_hitbox(AT_USTRONG, 1, x+56*spr_dir, y-30);
				}					
			}
		}
		vsp *= .90;
		if(window == 4){
			if(window_timer == 6){
				var blast = spawn_hit_fx(x+50*spr_dir,y-5,fx_sound_wave)blast.depth = depth-4;blast.pause = 12;
			}			
			if(window_timer == 11 && instance_exists(doge)){
				move_cooldown[AT_USTRONG] = 999;
				doge.doge_speak = true;
				doge.num = 1;
				doge.hitbox_timer = 0;
			}
		}
	break;
	case AT_DATTACK:
		if(free && window_timer < 4){
			vsp = min(vsp,3)
		}
		if(window == 1 && !hitpause && !was_parried){
			hsp = 12*spr_dir;
		}
		if(window == 2 && !hitpause && !was_parried){
			if(window_timer == 4){
				just_did_dattack = true;
				if(!instance_exists(spring)){
					sound_play(asset_get("sfx_blow_heavy1"));
					spring = create_hitbox(AT_DATTACK, 1, x+35*spr_dir, y-20);
				}else{
					spring.destroyed = true;
					sound_play(asset_get("sfx_blow_heavy1"));
					spring = create_hitbox(AT_DATTACK, 1, x+35*spr_dir, y-20);					
				}
				if(invincible){
			        sound_play (sound_get("spring"))
			        var fx = spawn_hit_fx( spring.x +15*spr_dir, spring.y-0, 305 );fx.pause = 8.58;
		            djumps = 0;has_airdodge = true;
		            has_walljump = true;move_cooldown[AT_USPECIAL] = 0;
		            if(state == PS_PRATFALL){
		              state = PS_IDLE_AIR;
		            }
		            spr_dir = spring.spr_dir;			        
			        spring.img_spd = .25;
			        spring.launched = 30;
			        spring.image_index = 2;					
					window = 4;window_timer = 999;
	                sanic_uspec_count = 0;
	                move_cooldown[AT_FSPECIAL] = 0;
	                if(attack != AT_FSPECIAL){
	                    vsp = -10;hsp = 10*other.spring.spr_dir;
	                    fspec_launch = false;
	                }else if(attack == AT_FSPECIAL){
	                    if(window != 1){
	                        window = 2;window_timer = 2;
	                		for (var i = 0; i < 20; i++){
	                			can_hit[i] = 1;
	                		}                    
	                        fspec_launch = true;
	                    }
	                    if(phone_attacking){
	                        vsp = -8;hsp = 20*other.spring.spr_dir;
	                    }else{
	                        vsp = -10;hsp = 10*other.spring.spr_dir;
	                    }
	                }					
				}
			}
		}
	break;		
	case AT_BAIR:
		if(window == 1){
			reset_attack_value(AT_BAIR, AG_CATEGORY);
			if(window_timer == 1){
				grab_target = noone;
				bair_grab_projectile_box = noone;
			}else if(window_timer == phone_window_end && !hitpause){
				bair_grab_projectile_box = create_hitbox(AT_BAIR,4,x,y);
			}
		}
		if(window == 2 && window_timer <= 4 && !instance_exists(grab_target)){
	        if(window_timer == 1){
		        if(position_meeting(x-85*spr_dir,y-40,asset_get("par_block")) && !bair_pin){
			        window = 5;window_timer = 0;bair_pin = true;
			        shake_camera(4,5);destroy_hitboxes();sound_play(sound_get("succ"))sound_play(asset_get("sfx_blow_heavy2"));
			        if(position_meeting(x-30*spr_dir,y-35,asset_get("par_block"))){
			        	x += 20*spr_dir;
				        if(position_meeting(x-50*spr_dir,y-35,asset_get("par_block"))){
					        x += 20*spr_dir;
					        if(position_meeting(x-70*spr_dir,y-35,asset_get("par_block"))){
						        x += 10*spr_dir;
						    }
					    }
				    }
			    }
	        }
			with(pHitBox){
				if(type == 2 && self != other && string_length(string(player_id.url)) > 0 && orig_player != 5){
					var playerurl = real(player_id.url);
					if("MorshuCanGrab" in self && MorshuCanGrab || playerurl < 20 || !transcendent && (("MorshuCanGrab" in self && MorshuCanGrab) || "MorshuCanGrab" not in self)){
						var dist = point_distance(other.x-40*other.spr_dir, other.y, x, y); //distance
						if(place_meeting(x,y,other.bair_grab_projectile_box) && !other.has_hit_player){
							with(other){
								grab_target = other;
								set_attack_value(AT_BAIR,AG_CATEGORY,2)
								destroy_hitboxes();
								window = 4;
								window_timer = 0;
								sound_play(sound_get("succ"))sound_play(asset_get("sfx_blow_heavy2"))
								grabbed_Proj = true;
								hitpause = true;
								hitstop = 9;
							}
							player = other.player;
							hitbox_timer = 0;
							hit_priority = 0;
						}
					}	
				}
			}if(!instance_exists(grab_target)){
                with(asset_get("obj_article1")){
                    grab_article_if_valid();
                }with(asset_get("obj_article2")){
                    grab_article_if_valid();
                }with(asset_get("obj_article3")){
                    grab_article_if_valid();
                }
			}
		}
	    if(window == 4){
	    	if(grabbed_Proj && instance_exists(grab_target)){
	    		grab_target.hitbox_timer = 0;
	    	}
	        if(window_timer <= 8){
	            Grab(-90,!grabbed_Proj?0:-30,3,3,grab_target,grabbed_Proj)  
	        }
	        vsp = min(vsp,1)
			if(window_timer >= 6 && window_timer < 9){
				var horizontal = right_down - left_down;
				if(horizontal != 0){
					spr_dir = horizontal;
				}				
			}	        
	        if(window_timer < 9 && window_timer > 6 && !hitpause){
	            Grab(60,35,1.2,1.2,grab_target,grabbed_Proj)
	        }
	        if(window_timer == 9){
	        	if(grabbed_Proj){
		        	if(instance_exists(grab_target)){
		        		grab_target.vsp = 9;
		        		grab_target.hsp = 5*spr_dir;
		        		grab_target.spr_dir = spr_dir;
		        		grab_target.hit_priority = 1;
		        	}
		        	grabbed_Proj = false;
	        	}
	        	if(!hitpause){
	        		vsp = -6;
	        	}old_hsp = 0;
	        }
	    }
	    if(window == 5){
	    	can_fast_fall = false;can_move = false;
	    	cancelattack();
	    	if(position_meeting(x-70*spr_dir,y-35,asset_get("par_block"))){
				x += 10*spr_dir;
			}
	    }	    
	break;
	case AT_DTILT:
		if(state_timer == 1){
			dtilt_mash = 0;
			hit_attack_timer = 0;
			reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
			reset_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING);
		}
		if(window >= 2 && !was_parried){
			can_jump = true;
		}
		if(window == 1 && !hitpause){
			curspd_override = true;
			if(state_timer % 12 == 0 || state_timer == 1){
				var dust = spawn_hit_fx(x-30*spr_dir,y,fx_dust_sharp)dust.spr_dir=-spr_dir;
			}
			if(attack_pressed && (dtilt_mash < 5 && !runeF || dtilt_mash < 69 && runeF)){
				sound_stop(spin_sound)
				dtilt_mash+=1;
				spin_sound = sound_play(sound_get("sfx_sonic_spindash_charge"))
				clear_button_buffer(PC_ATTACK_PRESSED);
				if(dtilt_mash > 1){
					set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6*1.5+dtilt_mash);
					set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .7+dtilt_mash/30);
				}
			}
			curspd = dtilt_mash;		
			if(!down_down && !attack_down || (dtilt_mash == 5 && !runeF || dtilt_mash == 69 && runeF)){
				window = 2;window_timer = 0;
				var dust = spawn_hit_fx(x-30*spr_dir,y,fx_dust_sharp_big)dust.spr_dir=-spr_dir;
				sound_stop(spin_sound)sound_play(sound_get("sfx_sonic_spindash_turn"))
			}
			if(dtilt_mash <= 2){
				set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 11);
				set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 6);
			}else if(dtilt_mash >= 3 && dtilt_mash < 5){
				set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
				set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 6);
			}else if(dtilt_mash >= 5){
				set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
				set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
			}
		}else if(window == 2 && !hitpause && !was_parried){
			curspd_override = false;
			if(!runeF){
				hsp = (5+dtilt_mash)*spr_dir;
			}else{
				hsp = (10+dtilt_mash)*spr_dir;
			}
			if(window_timer % 3 == 0){
				spawn_hit_fx(x,y,fx_dodge)
				array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			}
			if(free){
				hsp *= .97;
				vsp = min(vsp,3)
			}
			if(has_hit_player){
				hit_attack_timer++;
			}
		}can_attack = (hit_attack_timer >= 6);
	break;
	case AT_TAUNT:
		if window_timer == phone_window_end - 80 && !hitpause{
			spawn_hit_fx(x, y - 32, 143);
			sound_play(sound_get("weed"))			
		}
	break;
	case AT_TAUNT_3:
		if(up_pressed){
			window = 2;window_timer = 0;
			san_has_played = false;
		}			
		if(right_pressed && spr_dir == 1 || left_pressed && spr_dir == -1){
			window = 3;window_timer = 0;
			san_has_played = false;
		}			
		if(down_pressed){
			window = 4;window_timer = 0;
			san_has_played = false;
		}
		if(left_pressed && spr_dir == 1 || right_pressed && spr_dir == -1){
			window = 5;window_timer = 0;
			san_has_played = false;
		}
		if(shield_pressed || jump_pressed || (taunt_pressed && state_timer >= 8)){
			window = 6;
			clear_button_buffer(PC_SHIELD_PRESSED);
			clear_button_buffer(PC_JUMP_PRESSED);
			clear_button_buffer(PC_TAUNT_PRESSED);
		}
		switch(window){
			case 2:
				if(window_timer == 1 && !san_has_played){
					sound_play(sound_get("fnf_up"));
					san_has_played = true;
				}					
				if(!up_down){
					window = 1;window_timer = 0;
					san_has_played = false;
				}
			break;
			case 3:
				if(window_timer == 1 && !san_has_played){
					sound_play(sound_get("fnf_right"));
					san_has_played = true;
				}				
				if(!right_down && spr_dir == 1 || !left_down && spr_dir == -1){
					window = 1;window_timer = 0;
					san_has_played = false;
				}			
			break;
			case 4:
				hud_offset = lerp(hud_offset,-40,.5)
				if(window_timer == 1 && !san_has_played){
					sound_play(sound_get("fnf_down"));
					san_has_played = true;
				}				
				if(!down_down){
					window = 1;window_timer = 0;
					san_has_played = false;
				}			
			break;
			case 5:
				if(window_timer == 1 && !san_has_played){
					sound_play(sound_get("fnf_left"));
					san_has_played = true;
				}
				if(!left_down && spr_dir == 1 || !right_down && spr_dir == -1){
					window = 1;window_timer = 0;
					san_has_played = false;
				}			
			break;
		}
	break;	
	case AT_JAB:
		if(!trigger_warning){
			if(window == 1 && window_timer == 3 && !hitpause){
				sound_stop(airhorn_sfx);
				switch(get_player_color(player)){
					default:
						airhorn_sfx = sound_play(sound_get("you're"));
					break;
					case 15:
						airhorn_sfx = sound_play(sound_get("you"));
					break;		
					case 16:
						airhorn_sfx = sound_play(sound_get("lamp oil"));
					break;		
				}
				sound_play(sound_get("sfx_sonic_homing_startup"))			
			}else if(window == 4 && window_timer == phone_window_end && !hitpause){
				sound_stop(airhorn_sfx);
				switch(get_player_color(player)){
					default:
						airhorn_sfx = sound_play(sound_get("too"));
					break;
					case 15:
						airhorn_sfx = sound_play(sound_get("tube"));
					break;				
					case 16:
						airhorn_sfx = sound_play(sound_get("rope"));
					break;		
				}
			}else if(window == 7 && window_timer == 1 && !hitpause){
				sound_stop(airhorn_sfx);
				switch(get_player_color(player)){
					default:
						airhorn_sfx = sound_play(sound_get("slow"));
					break;
					case 15:
						airhorn_sfx = sound_play(sound_get("poop"));
					break;				
					case 16:
						airhorn_sfx = sound_play(sound_get("bombs"));
					break;		
				}		    
			}
		}
	break;
	case AT_UAIR:
		if(window == 2 && window_timer == 2 && !hitpause){
			shake_camera(3,6);
		}	
	break;	
}
#define cancelattack
    if(/*has_hit && */(attack_pressed || special_pressed || jump_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)){
		window = 20;
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

#define Grab(xpos, ypos, xsmooth, ysmooth,target,isproj)
{
	if(instance_exists(target)){
	    if(isproj || (!isproj && (target.state != PS_DEAD && target.hitstun > 0 && (target.state == PS_HITSTUN || target.state == PS_HITSTUN_LAND)))){
		    if (xsmooth != 0){
		        target.x += ((x + spr_dir * xpos) - target.x)/xsmooth;
		        target.hsp = 0;
		        target.old_hsp = 0;
		    }
		    if (ysmooth != 0){
		        target.y += ((y + ypos) - target.y)/ysmooth;
		        target.vsp = 0;
		        target.old_vsp = 0;
		    }
		    target.hitpause = true;
		    target.hitstop = 1;		    
	    }
	}
}
#define grab_article_if_valid
    //contributed by Floral qua Floral <3
    if(string_length(string(player_id.url)) > 0 && orig_player != 5){
        var playerurl = real(player_id.url);
        var dist = point_distance(other.x+75*other.spr_dir, other.y-35, x, y); //distance
        if(place_meeting(x,y,other.bair_grab_projectile_box) && ("MorshuCanGrab" in self && MorshuCanGrab || playerurl < 20)){
			with(other){
				grab_target = other;
				set_attack_value(AT_BAIR,AG_CATEGORY,2)
				destroy_hitboxes();
				window = 4;
				window_timer = 0;
				sound_play(sound_get("succ"))sound_play(asset_get("sfx_blow_heavy2"))
				grabbed_Proj = true;
				hitpause = true;
				hitstop = 9;
			}        	
            if("current_player" in self){
                current_player = other.player;
            }
        }
    }