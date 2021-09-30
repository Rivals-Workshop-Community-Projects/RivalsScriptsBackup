// attack_update

//set enums
enum ROCK{
    INIT,
    MOVE,
    DROP,
    IDLE_1,
    IDLE_2,
    RETURN,
    KABOOM,
    THROW
}

enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    dstrong_charge,
    ustrong_charge,
    dstrong_hitbox,
    iku,
    fstrong_charge,
    bad_load
}

if(dragon_install and has_hit_player and !was_parried){
    can_jump = true;	
}

if(state_timer < 5 and (attack_pressed and special_pressed  or di_input == 5 and special_pressed or attack_pressed and taunt_pressed) and tenshi_magic >= tenshi_magic_max/2 and !dragon_install){
    if(di_input == 5){
        true_input = true;
    } else if (taunt_pressed) {
        true_input2 = true;
    }
    window_timer = 0;
    window = 0;
    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}

//B - Reversals
/*if (attack == AT_NSPECIAL){
    if ((left_down && state_timer <= 5 && spr_dir == 1) || (right_down && state_timer <= 5 && spr_dir == -1) &&     
     (b_reversed == false)) {
      hsp *= -1;
      spr_dir *= -1;
      b_reversed = true;
} else if (state_timer == 6) {
    b_reversed = false;
  }
}*/

if(attack == AT_DSPECIAL or attack == AT_DSPECIAL_AIR or attack == AT_FSPECIAL or attack == AT_USPECIAL){
	trigger_b_reverse();
}
switch(attack){
    //------------------- JAB -------------------------
    case AT_JAB:
    	if(window < 6){
    		if(dragon_install and window < 3){
    			soft_armor = install_armor;
    			add_install_trail(10, 30);
    		} else if (dragon_install) {
    			soft_armor = 0;
    			add_install_trail(10, 20);
    		}
    	}
        set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, has_hit);
        if(!has_hit){
            set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
        } else {
            set_attack_value(AT_JAB, AG_NUM_WINDOWS, 14);
        }
        break;
    case AT_DTILT:
    	hud_offset = -24;
    	if(dragon_install and window == 1){
    		soft_armor = install_armor;
    		add_install_trail(10, 30);
    	} else if (dragon_install) {
    		soft_armor = 0;
    		add_install_trail(10, 20);
    	}
    	break;
    case AT_FTILT:
        if(window == 1 and dragon_install){
        	soft_armor = install_armor;
        	add_install_trail(10, 30);
        }else if (dragon_install){
    		soft_armor = 0;
    		add_install_trail(10, 20);
    	}
    	break;
    case AT_UTILT:
    	if(state_timer < 8 and prev_state != PS_ATTACK_GROUND){
    		hud_offset = state_timer*7;
    	} else {
    		hud_offset = 56;
    	}
		if(dragon_install and window == 1){
			soft_armor = install_armor;
			add_install_trail(10, 30);
		}else if (dragon_install){
    		soft_armor = 0;
    		add_install_trail(10, 20);
    	}
    	break;
    //------------------ FSPECIAL ---------------------    
    case AT_FSPECIAL:
        can_wall_jump = true; //allow walljump at any time
    	
        if(window == 1){
            tenshi_fsp_charge = 0;
            if(window_timer == 1){
                var charge_fx = instance_create(x, y, "obj_article2");
                charge_fx.tenshi = self;
                charge_fx.anim_spd = 0.4;
                charge_fx.anim_max = 4;
                charge_fx.sprite_index = sprite_get("fspecial_charge");
                charge_fx.fx_type = FX.fspecial;
                charge_fx.image_alpha = 0;
            }
        }
        else if(window == 2 and special_down and tenshi_fsp_charge < 80 * (1+dragon_install)){
            //spawn_hit_fx(x, y, fspec_hitfx);
            if(dragon_install){
                shake_camera(floor(tenshi_fsp_charge/20),4);
            }
            if(vsp < 10 and vsp > 4){
                vsp = 4;
            }
            hsp = hsp/1.5;
            window_timer = 0;
            tenshi_fsp_charge++;
            white_flash_timer_set(8);
        }
        else if(window == 3){
            if(window_timer == 1){
                fspec_start = free;
                if(free){
                    vsp = -6;
                    spawn_hit_fx(x + spr_dir*tenshi_fsp_charge, y-20, fspec_dash);
                } else {
                	if(!place_meeting(x, y+6, tenshi_uspecial_rock)){
                    	spawn_hit_fx(x, y, fspec_ground);
                	}
                    if(tenshi_fsp_charge > 60){
                        spawn_hit_fx(x + spr_dir*(tenshi_fsp_charge + 60), y, fspec_dash);
                    }
                }
                if(tenshi_uspecial_rock!= noone and place_meeting(x, y+6, tenshi_uspecial_rock) and tenshi_uspecial_rock.y+6 > y) {
                    spawn_hit_fx(x + spr_dir*tenshi_fsp_charge, y-20, fspec_dash);
                    vsp = -10;
                	rock_proj = instance_create(tenshi_uspecial_rock.x, tenshi_uspecial_rock.y+20, "obj_article3");
					rock_proj.image_index = tenshi_uspecial_rock.image_index;
					rock_proj.lifetime = 10;
					instance_destroy(tenshi_uspecial_rock);
					tenshi_uspecial_rock = noone;
					can_move_rock = false;
                }
                
            } 
            if(!fspec_start and dragon_install){
            	hsp = spr_dir*12;
            	x += spr_dir*max((tenshi_fsp_charge/2.4), 10);
            } else {
            	if(fspec_start and !dragon_install){
            		hsp = spr_dir*10;
            		x += spr_dir * (tenshi_fsp_charge/2.4);
            	} else {
            		hsp = spr_dir*12;
            		x += spr_dir * (tenshi_fsp_charge/2.4);
            	}
            }
        }
        else if(window == 4 and window_timer = 1){
        	if(free){
        		hsp -= spr_dir*5;
        	} else {
        		hsp -= spr_dir*2;
        	}
        	if(fspec_start){
        		move_cooldown[AT_FSPECIAL] = 20000;
        	}
        }
        if(!free and window > 2){
            can_jump = true;
            if((window == 4 or window == 3 and window_timer > 5) and special_pressed){
				window = 0;
				window_timer = 0;
            	attack = AT_EXTRA_3;
            	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
            }
        } else if (free and window > 2){
        	if(special_pressed and dragon_install){
        		if(fspec_start){
        			move_cooldown[AT_FSPECIAL] = 20000;
        		}
				window = 0;
				window_timer = 0;
            	attack = AT_FSPECIAL_2;
            	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
            }
        	
        	if(place_meeting(x, y, asset_get("par_jumpthrough"))){
        		can_jump = true;
        		if(jump_down and djumps < max_djumps){
        			if(abs(hsp) > 8 and !dragon_install){
        				hsp = spr_dir *8;
        			}
        			move_cooldown[AT_FSPECIAL] = 2;
        			sound_play(sound_get("uspec"))
        		}
        	}
        }
        break;
    //------------------ USPECIAL --------------------- 
    case AT_USPECIAL:
    	can_fast_fall = false;
    	if(window == 1 and window_timer == 5){
    		uspec_feint = false;
    		if((!can_rock or !can_move_rock) and tenshi_uspecial_rock != noone){
    			sound_play(asset_get("sfx_kragg_rock_shatter"));
    			tenshi_uspecial_rock.rock_state = ROCK.KABOOM;
    			tenshi_uspecial_rock.hold_timer = 0;
    		} else if (can_rock and can_move_rock and (shield_down or shield_pressed)){
    			uspec_feint = true;
    			if(instance_exists(tenshi_uspecial_rock)){
	    			sound_play(asset_get("sfx_kragg_rock_shatter"));
	    			tenshi_uspecial_rock.rock_state = ROCK.KABOOM;
	    			tenshi_uspecial_rock.hold_timer = 0;
    			}
    		}
    	}
    	
        if(window == 1 and window_timer == 6){
        	y_goal = y;
        	if(can_move_rock and can_rock and !uspec_feint){
        		uspecial_summon = true;
        		can_move_rock = false;
            	if(!free){
            	    y_goal = floor(room_height*.33);
            	    spawn_base_dust(x, y, "jump", 0);
            	} else {
            		if(y > room_height*.88){
            			y_goal = floor(room_height*.88);
            		} else if(y < room_height*.33){
            			y_goal = floor(room_height*.33);
            		} else {
            			y_goal -= 50;
            		}
            	    
            	    spawn_base_dust(x, y, "doublejump", 0);
            	}
            	if(tenshi_uspecial_rock == noone){
            	    tenshi_uspecial_rock = instance_create(x < room_width/2 ? 0 : room_width, 0, "obj_article_platform");
            	    //tenshi_uspecial_rock.rock_goal_y = max(y + rock_ymod, floor(room_height*.33));
            	    tenshi_uspecial_rock.rock_goal_y = y_goal+4;
            	    tenshi_uspecial_rock.rock_goal_x = x;
            	} else {
            	    tenshi_uspecial_rock.rock_goal_x = x;
            	    //tenshi_uspecial_rock.rock_goal_y = max(y + rock_ymod, floor(room_height*.33));
            	    tenshi_uspecial_rock.rock_goal_y = y_goal+4;
            	    tenshi_uspecial_rock.rock_state = ROCK.INIT;
            	}
        	} else {
        		uspecial_summon = false;
        		spawn_base_dust(x, y, "doublejump", 0);
        		vsp = -10;
        	}
        }
        if(window == 1 and window_timer > 6 and y_goal != 0 and can_rock and can_move_rock and !uspec_feint){
        	y = lerp(y, y_goal, .1);
        }
        
        if(window == 2 and tenshi_uspecial_rock != noone and uspecial_summon and !uspec_feint){
        	if(tenshi_uspecial_rock.rock_state == ROCK.MOVE){
            	y = lerp(y, y_goal, .2);
            	vsp = vsp < 0 ? vsp : 0;
            	window_timer = 1;
        	} else {
        		window_timer = 0;
        		window++;
        	}
        }
        if(window == 3 and window_timer == 6){
        	if(rock_proj != noone or !uspecial_summon or uspec_feint){
        		
        		set_state(PS_PRATFALL);
        	}
        }
        break;
    case AT_EXTRA_1:
    	if(window == 1 and window_timer == 1){
    		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    	}
    	if(tenshi_magic >= tenshi_magic_max/2 and !dragon_install){
    		//mute stage music if entering dragon install
        	if(!dragon_install){
            	suppress_stage_music(0.0, 0.02);
        	}
        	//toggle dragon install
        	if(window == 2 and window_timer == 1){
        		if(!dragon_install){
            		sound_play(sound_get("spell_card"));
        			shake_camera(2,40)

        		}
        	//theres a lot of goofy shit in this bit but basically it makes a bunch
        	//of rainbow vomit all over the screen
        	//it checks if theres already rainbow barf out and hijacks it if there
        	//is so we dont wind up exploding PCs. Seems like it works
        	} else if (window == 5 and window_timer == 16){
        		dragon_install = true;
            	//run only if we moved into DI
            	if(dragon_install){
            		
            		var volume = 0;
            		volume = get_local_setting(3);
            		print_debug(volume);
            		activate_install();
            		install_time = 0;
            		shake_camera(8,10);
            		//start theme 
            		install_theme = get_player_color(player);
            		if(true_input){
            			install_theme = 33;
            			true_input = false;
            		} else if (true_input2){
            			install_theme = 32;
            			true_input2 = false;
            		}
					if(install_theme == 29 or install_theme = 22){
						if(down_down){
							install_theme += 100;
						} 
					}

            		//clear trail so 2 installs in one game isnt weird
            		for(var i = 0; i < install_trail_size; i++){
						install_trail[i].life = 0;
					}
            		//set dragon install stats
            		dash_speed = install_dash_speed;
	            	initial_dash_speed = install_initial_dash_speed;
	            	fast_fall = install_fast_fall;
	            	moonwalk_accel = install_moonwalk_accel;
	            	max_djumps = install_max_djumps;
	            	wave_land_adj = install_wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
					wave_friction = install_wave_friction;
					air_max_speed = install_air_max_speed;
					max_jump_hsp = install_max_jump_hsp;
	            
	            	// TODO -----------------------<<<<<<<<<<<<<<<<<<<<<<<
	            	//Check other players, I'll figure out UUID stuff for this later
	            	//this var name hack solution works for now
	            	var other_DI = false;
	            	var temp_lw = lightweight;
	            	with(oPlayer){
	            		if("dragon_install" in self){
	            			if(dragon_install and other != self){
	            				other_DI = true;
	            				sound_stop(sound_get("install" + string(install_theme)));
	            			}
	            			if(lightweight){
	            				temp_lw = lightweight;
	            			}
	            		}
	            	}
	            	
            		sound_play(sound_get("install" + string(install_theme)), true, 0, min(volume*2, 1), 1);
            		
	            	if(!other_DI and !temp_lw){
	            		
	            		var temp_bg = instance_create(0, 0, "obj_article2");
            			temp_bg.tenshi = self;
            			temp_bg.fx_type = FX.install_bg;
            			temp_bg.sprite_index = sprite_get("install_bg");
            			temp_bg.image_xscale = room_width/10;
		    			temp_bg.image_yscale = room_height/10;
		    			temp_bg.image_alpha = 0;
	    	        	//for(var i = 0; i < 8; i++){
        					var temp_cloud1 = instance_create(floor(i * (room_width+400)/8), -20, "obj_article2");
        					temp_cloud1.tenshi = self;
    	    	    		temp_cloud1.fx_type = FX.install_cloud;
        		    		temp_cloud1.seed = 0;
        		    		temp_cloud1.sprite_index = sprite_get("cloud");
        	    			temp_cloud1.image_alpha = 0;
        	    			temp_cloud1.sub_alpha = 1;
        	    		/*
        	    			var temp_cloud2 = instance_create(floor(i * (room_width+400)/8), 30, "obj_article2");
	        				temp_cloud2.tenshi = self;
    	    	    		temp_cloud2.fx_type = FX.install_cloud;
        		    		temp_cloud2.seed = 1;
        		    		temp_cloud2.sprite_index = sprite_get("cloud");
        	    			temp_cloud2.image_alpha = 0;
        	    			temp_cloud2.sub_alpha = .4;*/
        				//}
	            	} else {
	            		with(obj_article2){
	            			if ("tenshi" in self){
	            				if(tenshi != other and fx_type == FX.install_cloud or fx_type == FX.install_bg){
	            					tenshi = other;
	            				}
	            			}
	            		}
	            	}
            	} 
        	}
        //what to do when not install toggling
    	} else {
    		if(window == 5 and window_timer == 12){
    			if(dragon_install){
    				tenshi_magic+=40;
    			} else {
    				if(tenshi_magic < tenshi_magic_max){
    					tenshi_magic+=20;
    				}
    			}
    				
    				//sound_stop(sound_get("graze_collect"));
    				//sound_play(sound_get("graze_collect"));
    			if(special_down){
    				white_flash_timer_set(4);
    				sound_stop(sound_get("peach_vore"));
    				window = 2;
    				window_timer = 0;
    			}
    		}
    	}
    	
        break;
    case AT_NSPECIAL_2:
    	if(window == 1 and window_timer == 1){
    		knockback_adj = 1.4;
    		kba_timer = 90;
    		vsp = 0;
    		hsp = 0;
    		shake_camera(15, 10);
    		sound_play(sound_get("stun"));
    		set_player_damage(player, get_player_damage(player)+10);
    		spawn_hit_fx(x, y-30, 157);

    	} else if (window == 3 and window_timer ==1){
    		var iku = instance_create(x + 56*spr_dir, y, "obj_article2");
    		iku.fx_type = FX.iku;
    		iku.sprite_index = sprite_get("iku");
    		iku.image_xscale = -spr_dir;
    		iku.image_alpha = 0;
    	}

    	if(window == 7 and window_timer = 54){
    		knockback_adj = base_knockback_adj;
    	}
    	
    	break;
    case AT_DAIR:
    	if(window < 4 and window > 1){
    		hud_offset = 25;
    	}
    	if(window == 1 and dragon_install){
    		soft_armor = install_armor;
    		add_install_trail(10, 30);
    	}else {
    		soft_armor = 0;
    		add_install_trail(10, 20);
    	}
    	can_wall_jump = true;
    	if(state_timer <= 5 and down_down){
    		fall_through = true;
    	}
    	if(window == 1 and window_timer > 10 and !free){
    		window = 3;
    		window_timer = 0;
    	}
    	if(window == 2 and has_hit and hitstop == 0){
    		vsp = -6;
    	}
    	if(window == 2 and window_timer == 8){
    		sound_play(sound_get("drill_loop"), true);
    	}
    	if(window == 3 and window_timer%2 == 0){
    		create_hitbox(AT_DAIR, 2, x, y);
    	}
    	if(window == 4){
    		sound_stop(sound_get("drill_loop"));
    		sound_stop(sound_get("drill_long"));
    	}
    	if(state_timer >= 50 and window < 4){
    		if(was_parried){
    			can_jump = false;
    		} else {
    			can_jump = true;
    		}
    		if(jump_down){
    			sound_stop(sound_get("drill_loop"));
    		}
    	}
    	break;
    case AT_DSTRONG:
    	if(strong_charge%12 == 0 and window == 2 and charge_level > 0){
    		spawn_base_dust(x - spr_dir*20, y, "dash", spr_dir);
    		spawn_base_dust(x + spr_dir*20, y, "dash", -spr_dir);
    		if(charge_level == 2){
    			spawn_base_dust(x - spr_dir*40, y, "dash", spr_dir);
    			spawn_base_dust(x + spr_dir*40, y, "dash", -spr_dir);
    		}
    	}
    
    	if(window == 1 and window_timer == 7){
    		charge_level = dragon_install;
    		
    		var cfx = instance_create(x, y, "obj_article2");
    		cfx.visible =0;
    		cfx.fx_type = FX.dstrong_charge;
    		cfx.tenshi = self;
    		cfx.sprite_index = sprite_get("dstrong_charge");
    		cfx.image_xscale = 2;
    		cfx.image_yscale = 2;
    		cfx.depth = -10;
    	} else if (window == 2 and strong_charge > 30 and charge_level < 2){
    		strong_charge = 0;
    		charge_level++;
    		if(charge_level > 1){
    			sound_play(asset_get("sfx_zetter_upb_hit"));
    			shake_camera(8, 12);
    			spawn_hit_fx(x+spr_dir*(-4), y-50, hisou_large);
    		} else {
    			sound_play(asset_get("sfx_zetter_upb_hit"));
    			shake_camera(3*charge_level, 6*charge_level);
    			spawn_hit_fx(x+spr_dir*(-4), y-50, hisou_small);
    		}
    	} else if (window == 3){
    		if(window_timer == 1){
    			switch(charge_level){
    				case 0:
    					set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 15);
    					break;
    				case 1:
    					set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 20);
    					break;
    				case 2:
    					set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 25);
    					break;
    			}
    			var h = instance_create(x+spr_dir*50, y, "obj_article2");
    			h.fx_type = FX.dstrong_hitbox;
    			h.sprite_index = sprite_get("dstrong_rock");
    			h.spr_dir = spr_dir;
    			h.tenshi = self;
    			h.depth = -10;
    			h.seed = 0;
    			var i = 0;
    			while(!position_meeting(h.x+h.spr_dir*16, h.y, asset_get("par_block")) and !position_meeting(h.x+h.spr_dir*16, h.y, asset_get("par_jumpthrough"))){
    				h.x-= h.spr_dir*4;
    				i++;
    				if(i > 10){
    					break;
    				}
    			}
    			
    			h = instance_create(x-spr_dir*50, y, "obj_article2");
    			h.fx_type = FX.dstrong_hitbox;
    			h.sprite_index = sprite_get("dstrong_rock");
    			h.spr_dir = -spr_dir;
    			h.tenshi = self;
    			h.depth = -10;
    			h.seed = 0;   
    			i = 0;
    			while(!position_meeting(h.x+h.spr_dir*16, h.y, asset_get("par_block")) and !position_meeting(h.x+h.spr_dir*16, h.y, asset_get("par_jumpthrough"))){
    				h.x-= h.spr_dir*4;
    				i++;
    				if(i > 10){
    					break;
    				}
    			}
    			//h = create_hitbox(AT_DSTRONG, 2, x - spr_dir * 20, y);
    			//h.spr_dir = -spr_dir;
    			if(charge_level > 0){
    				shake_camera(8, 8*charge_level);
    			}
    		}
    	}
    	break;
    case AT_NSPECIAL:
    	if(window == 1 and window_timer == 1){
    		nspec_angle_reg = false;
    		nspec_spawn_throw = false;
    	}
    	if(window < 3 and !joy_pad_idle){
    		if(!nspec_angle_reg){
    			if(tenshi_uspecial_rock != noone){//----------Set throw on rock
    				can_move_rock = false;
                	rock_proj = instance_create(tenshi_uspecial_rock.x, tenshi_uspecial_rock.y+20, "obj_article3");
					rock_proj.image_index = tenshi_uspecial_rock.image_index;
					instance_destroy(tenshi_uspecial_rock);
                	tenshi_uspecial_rock = noone;
    			} else if (can_rock and can_move_rock){ //----------Spawn Rock if not there and set throw
    				nspec_spawn_throw = true;
    				can_rock = false;
    				tenshi_uspecial_rock = instance_create(x < room_width/2 ? 0 : room_width, 0, "obj_article_platform");
    				tenshi_uspecial_rock.fast_fire = true;
            		tenshi_uspecial_rock.rock_goal_y = floor(room_height*.33);
                	tenshi_uspecial_rock.rock_goal_x = x+hsp*9;
                	tenshi_uspecial_rock.rock_state = ROCK.INIT;
    			}
    		}
    		nspec_angle = joy_dir+90;
    		nspec_angle_reg = true;
    		if(nspec_spawn_throw){
    			tenshi_uspecial_rock.fast_fire_angle = nspec_angle
    		} else if (rock_proj != noone){
    			rock_proj.image_angle = nspec_angle;
    		}
    	} else if(window == 3){
    		if(!special_down){
	    		if(!nspec_angle_reg){
	    			if(can_rock and can_move_rock and tenshi_uspecial_rock!= noone){
	    				tenshi_uspecial_rock.rock_goal_y = floor(room_height*.33);
	                	tenshi_uspecial_rock.rock_goal_x = x+hsp*9;
	                	tenshi_uspecial_rock.rock_state = ROCK.INIT;
	                	can_move_rock = false;
	    			} else if (can_rock and can_move_rock){
	    				tenshi_uspecial_rock = instance_create(x < room_width/2 ? 0 : room_width, 0, "obj_article_platform");
	    		    	can_rock = false;
	            		tenshi_uspecial_rock.rock_goal_y = floor(room_height*.33);
	                	tenshi_uspecial_rock.rock_goal_x = x+hsp*9;
	                	tenshi_uspecial_rock.rock_state = ROCK.INIT;
	    			}
	    			nspec_angle_reg = true;
	    		}
    		} else {
    			if(window_timer > 5){
    				window_timer = 0;
    			}
    			if(tenshi_uspecial_rock != noone){
    				if(tenshi_uspecial_rock.rock_state != ROCK.MOVE and tenshi_uspecial_rock.rock_state != ROCK.INIT){
    					rock_proj = instance_create(tenshi_uspecial_rock.x, tenshi_uspecial_rock.y+20, "obj_article3");
						rock_proj.image_index = tenshi_uspecial_rock.image_index;
						instance_destroy(tenshi_uspecial_rock);
                		tenshi_uspecial_rock = noone;
    				}
    			} else if (rock_proj != noone){
    				rock_proj.life = 0;
    				if(!joy_pad_idle){
    					rock_proj.image_angle = joy_dir+90;
    				}
    			} else if (tenshi_uspecial_rock == noone and can_rock and can_move_rock){
    					tenshi_uspecial_rock = instance_create(x < room_width/2 ? 0 : room_width, 0, "obj_article_platform");
	    		    	can_rock = false;
	            		tenshi_uspecial_rock.rock_goal_y = floor(room_height*.33);
	                	tenshi_uspecial_rock.rock_goal_x = x+hsp*9;
	                	tenshi_uspecial_rock.rock_state = ROCK.INIT;
    			}
    		}
    	}
		/*
    	if(window == 1 and !joy_pad_idle){
    			if(window_timer == 5 and tenshi_uspecial_rock != noone){ 
					window = 3;
					window_timer = 0;
    			}
				fast_nspec = true;
				fast_nspec_angle = joy_dir+90;
    	} else {
    		fast_nspec = false;
    	}
    	if(window == 2 and window_timer == 4){
    			
    			if(tenshi_uspecial_rock == noone and can_rock and can_move_rock and rock_proj == noone){
    		    	tenshi_uspecial_rock = instance_create(x < room_width/2 ? 0 : room_width, 0, "obj_article_platform");
    		    	can_rock = false;
            		tenshi_uspecial_rock.rock_goal_y = floor(room_height*.33);
                	tenshi_uspecial_rock.rock_goal_x = x+hsp*9;
                	tenshi_uspecial_rock.rock_state = ROCK.INIT;
                	if(!special_down){
                		if(fast_nspec){
                			window = 3;
                			window_timer = 0;
                			tenshi_uspecial_rock.fast_fire = true;
                			tenshi_uspecial_rock.fast_fire_angle = fast_nspec_angle;
                		} else {
                			window = 4;
            				window_timer = 0;
                		}
                	} else {
                		window_timer = 1;
                	}
    			} else if(can_move_rock and !special_down and can_rock and tenshi_uspecial_rock != noone){
                	tenshi_uspecial_rock.rock_goal_y = floor(room_height*.33);
                	tenshi_uspecial_rock.rock_goal_x = x+hsp*9;
                	tenshi_uspecial_rock.rock_state = ROCK.INIT;
                	can_move_rock = false;
                	window = 4;
            		window_timer = 0;
    			} else if(special_down and tenshi_uspecial_rock != noone){
    				if(tenshi_uspecial_rock.rock_state != ROCK.MOVE and tenshi_uspecial_rock.rock_state != ROCK.INIT and rock_proj == noone){
                		can_move_rock = false;
                		rock_proj = instance_create(tenshi_uspecial_rock.x, tenshi_uspecial_rock.y+20, "obj_article3");
						rock_proj.image_index = tenshi_uspecial_rock.image_index;
						instance_destroy(tenshi_uspecial_rock);
                		tenshi_uspecial_rock = noone;
    				} else {
    					window_timer = 1;
    				}
    			}
    	} else if (window == 3 and special_down and rock_proj != noone and !rock_proj.warm and !fast_nspec){
    			if(!joy_pad_idle) rock_proj.image_angle = joy_dir+90;
    			if(window_timer == 9) window_timer = 0;
    	} else if (window == 3 and fast_nspec){
    		can_move_rock = false;
            rock_proj = instance_create(tenshi_uspecial_rock.x, tenshi_uspecial_rock.y+20, "obj_article3");
			rock_proj.image_index = tenshi_uspecial_rock.image_index;
			instance_destroy(tenshi_uspecial_rock);
            tenshi_uspecial_rock = noone;
    		rock_proj.image_angle = fast_nspec_angle;
    	}
    	
    	if((window == 2 or window == 3)){
    		if(rock_proj != noone and !rock_proj.warm){
    			rock_proj.life = 0;
    		}
    		if(free){
    			can_fast_fall = false;
    			if(vsp > 2){
    				vsp = 2;	
    			}
    		}
    		air_accel = 0;

    	}*/
    	break;
    case AT_DSPECIAL_AIR:
    	if(window < 3){
    		can_fast_fall = false;
    	}
    	counter(teleport_target);
    	break;
    case AT_DSPECIAL:
		counter(teleport_target);
    	break;
    case AT_EXTRA_2:
    	if(window < 5){
    		invincible = true;
    		vsp = 0;
    		can_fast_fall = false;
    	}
    	if(counter_target != noone){
    		if(window == 1 and window_timer == 4){
    			spr_dir = counter_target.spr_dir;
    			if(!position_meeting(counter_target.x - spr_dir * 70, counter_target.y - 2, asset_get("par_block"))){
    				x = counter_target.x - spr_dir * 70;
    				y = counter_target.y;
    			} else {
    				x = counter_target.x;
    				y = counter_target.y;
    			}
    		}
    	}
    	break;
    case AT_USTRONG:
    	if(strong_charge%12 == 0 and window == 1 and window_timer > 9 and charge_level > 0){
    		spawn_base_dust(x - spr_dir*20, y, "dash", spr_dir);
    		spawn_base_dust(x + spr_dir*20, y, "dash", -spr_dir);
    		if(charge_level == 2){
    			spawn_base_dust(x - spr_dir*40, y, "dash", spr_dir);
    			spawn_base_dust(x + spr_dir*40, y, "dash", -spr_dir);
    		}
    	}
    	if(window > 1){
    		hud_offset = 50+30*charge_level;
    	}
    	if(window == 1 and window_timer == 10){
    		charge_level = dragon_install;
    		var cfx = instance_create(x, y, "obj_article2");
    		cfx.visible =0;
    		cfx.fx_type = FX.ustrong_charge;
    		cfx.tenshi = self;
    		cfx.sprite_index = sprite_get("ustrong_charge");
    		cfx.spr_dir = spr_dir;
    		cfx.image_xscale = 2;
    		cfx.image_yscale = 2;
    		cfx.depth = -10;
    	} else if (window == 1 and strong_charge > 30 and charge_level < 2){
    		strong_charge = 0;
    		charge_level++;
    		if(charge_level > 1){
    			sound_play(asset_get("sfx_zetter_upb_hit"));
    			shake_camera(8, 12);
    			spawn_hit_fx(x+spr_dir*(-54), y, hisou_large);
    		} else {
    			sound_play(asset_get("sfx_zetter_upb_hit"));
    			shake_camera(3*charge_level, 6*charge_level);
    			spawn_hit_fx(x+spr_dir*(-54), y, hisou_small);
    		}
    	} else if (window == 2 and window_timer == 1){
    		switch(charge_level){
    			case 0:
					set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
    				set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -55);
					set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 10);
					set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 90);
					set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 11);
					set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 90);
					set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
					
					set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -52);
					set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -30);
					set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 90);
					set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 11);
					set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 94);
					set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1);
    				break;
    			case 1:
    				set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 15);
    			    set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -65);
					set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 10);
					set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 120);
					set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
					set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 120);
					set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
					
					set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -60);
					set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -35);
					set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 120);
					set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 13);
					set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 120);
					set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
    				break;
    			case 2:
    				set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 18);
    				set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -75);
					set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 10);
					set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 150);
					set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 15);
					set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 150);
					set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
					
					set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -70);
					set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -45);
					set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 15);
					set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 150);
					set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 150);
					set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
    			
    				break;
    		}
    	}
    	break;
    case AT_FSTRONG:
    	if(strong_charge%12 == 0 and window == 1 and window_timer > 7 and charge_level > 0){
    		spawn_base_dust(x - spr_dir*20, y, "dash", spr_dir);
    		spawn_base_dust(x + spr_dir*20, y, "dash", -spr_dir);
    		if(charge_level == 2){
    			spawn_base_dust(x - spr_dir*40, y, "dash", spr_dir);
    			spawn_base_dust(x + spr_dir*40, y, "dash", -spr_dir);
    		}
    	}
    
    	if(window == 1 and window_timer == 8){
    		charge_level = dragon_install;
    		var cfx = instance_create(x-spr_dir*40, y+16, "obj_article2");
    		cfx.visible =0;
    		cfx.fx_type = FX.fstrong_charge;
    		cfx.tenshi = self;
    		cfx.sprite_index = sprite_get("fstrong_charge");
    		cfx.spr_dir = spr_dir;
    		cfx.image_xscale = 2;
    		cfx.image_yscale = 2;
    		cfx.depth = -10;
    	} else if (window == 1 and strong_charge > 30 and charge_level < 2){
    		strong_charge = 0;
    		charge_level++;
    		if(charge_level > 1){
    			sound_play(asset_get("sfx_zetter_upb_hit"));
    			shake_camera(8, 12);
    			spawn_hit_fx(x+spr_dir*(-14), y, hisou_large);
    		} else {
    			sound_play(asset_get("sfx_zetter_upb_hit"));
    			shake_camera(3*charge_level, 6*charge_level);
    			spawn_hit_fx(x+spr_dir*(-14), y, hisou_small);
    		}
    	} else if (window == 2 and window_timer == 1){
    		switch charge_level{
    			case 0:
    				set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 18);
    				set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 40);
					set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -32);
					set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 84);
					set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 74);
					set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6);
					set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.01);
				
					set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 50);
					set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -42);
					set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 84);
					set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 74);
					set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
					set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
    				break;
    			case 1:
    			set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 20);
    			    set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 60);
					set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -32);
					set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 104);
					set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 74);
					set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6);
					set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.01);
				
					set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 60);
					set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -52);
					set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 114);
					set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 94);
					set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
					set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
					
					break;
				case 2:
					set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 22);
				    set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 70);
					set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -32);
					set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 144);
					set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 74);
					set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6);
					set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.01);
				
					set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 80);
					set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -52);
					set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 124);
					set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 104);
					set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
					set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
					break;
    		}
    	}
    	break;
    case AT_TAUNT:
    	if(!taunt_down and window == 1){
    		window = 2;
    		window_timer = 0;
    	}
    	if(window_timer == 44 and taunt_down){
    		window_timer = 0;
    	}
    	
    	if(window == 1 and (window_timer == 3 or window_timer == 24)){
    		sound_play(sound_get("tambourine"));
    	}
    	break;
    case AT_FAIR:

		if(window == 2 and window_timer == 1){
			hsp += spr_dir*2;
		}
    	if(window < 3 and dragon_install){
    		soft_armor = install_armor;
    		add_install_trail(10, 30);
    		
    	}else {
    		soft_armor = 0;
    		add_install_trail(10, 20);
    	}
    /*	if(window == 2 and window_timer == 1){
    		if(vsp > 0){
    			vsp = 0;
    		}
    		if(hsp < 7 and hsp > -7){
    			hsp = 5*spr_dir;
    		}
    		if(left_down and spr_dir == -1 or right_down and spr_dir = 1){
    			hsp += 1.5*spr_dir;
    		} else if(left_down and spr_dir == 1 or right_down and spr_dir = -1){
    			hsp -= 1.5*spr_dir;
    		}
    		if(up_down){
    			vsp -= 3;
    			
    		} else if (down_down){
    			vsp += 3;
    		}

    	}
    	if(window > 1 and vsp < -5 and !dragon_install){
    		vsp+=2;
    	}
    	
    	if(vsp < -8){
    		vsp = -8;
    	}
    	if(has_hit and abs(hsp) > 8){
    		hsp = sign(hsp)*8;
    	}*/
    	if(vsp > 4 and window < 4 and !fast_falling){
    		vsp = 4;
    	}
    	break;
    case AT_EXTRA_3:
    	if(window == 1){
    		grabbed_player = noone;
    	}
    	if(has_hit_player){
    		if((window == 2 or window == 3) and grabbed_player != noone){
    			grabbed_player.hitstop = 2;
    			grabbed_player.x = lerp(floor(grabbed_player.x), x+40*spr_dir, .5);
    			grabbed_player.y = lerp(floor(grabbed_player.y), y, .3);
    		}
    		//hsp = 0;
    	}
    	if(has_hit_player and window == 3){
    		window = 6;
    		window_timer = 0;
    	}
    	if(window == 6){
    		if(window_timer < 7){
    			grabbed_player.hitstop = 2;
    			grabbed_player.x = lerp(floor(grabbed_player.x), x+40*spr_dir, .5);
    			grabbed_player.y = lerp(floor(grabbed_player.y), y, .3);
    		} else if (window_timer < 9){
    			grabbed_player.hitstop = 2;
    			grabbed_player.x = lerp(floor(grabbed_player.x), x-40*spr_dir, .5);
    			grabbed_player.y = lerp(floor(grabbed_player.y), y-20, .3);
    		}
    	}
    	if(window == 5 and window_timer == 6){
    		window = 8;
    	}
    	break;
    case AT_FSPECIAL_2:
    	if(window > 3 and window < 6){
    		can_fast_fall = false;
    	}
    	if(window == 1){
    		grabbed_player = noone;
    	} 
    	else if(has_hit_player and window == 2){
    		grabbed_player.x = lerp(floor(grabbed_player.x), x+40*spr_dir, .5);
    		grabbed_player.y = lerp(floor(grabbed_player.y), y, .3);
    		grabbed_player.hitstop = 2;
    		if(hitstop == 0){
	    		window = 4;
	    		window_timer = 0;
	    		throw_count = 0;
	    		throw_max = min(4, floor(get_player_damage(grabbed_player.player)/20));
    		}
    	}
    	else if(window == 3 and window_timer == 11){
    		window = 8;
    	}
    	else if (window == 4){

    		grabbed_player.x = lerp(floor(grabbed_player.x), x+40*spr_dir, .5);
    		grabbed_player.y = lerp(floor(grabbed_player.y), y, .3);
    		grabbed_player.hitstop = 2;
    		vsp = floor(vsp/2);
    		hsp = floor(hsp/2);
    	}
    	else if (window == 5){
    		force_depth = true;
    		grabbed_player.hitstop = 2;
    		hsp = 0;
    		vsp = 0;
    		//print_debug(image_index)
    		switch(image_index){
    			case 5:
    				grabbed_player.x = lerp(floor(grabbed_player.x), x+40*spr_dir, .5);
    				grabbed_player.y = lerp(floor(grabbed_player.y), y, .3);
    				depth = grabbed_player.depth - 1;
    				break;
    				
    			case 6:
    				grabbed_player.x = lerp(floor(grabbed_player.x), x+10*spr_dir, .5);
    				grabbed_player.y = lerp(floor(grabbed_player.y), y+10, .3);
    				depth = grabbed_player.depth + 1;
    				break;
    			case 7:
    				grabbed_player.x = lerp(floor(grabbed_player.x), x-10*spr_dir, .5);
    				grabbed_player.y = lerp(floor(grabbed_player.y), y+10, .3);
    				depth = grabbed_player.depth + 1;
    				break;
    			case 8:
    				grabbed_player.x = lerp(floor(grabbed_player.x), x-40*spr_dir, .5);
    				grabbed_player.y = lerp(floor(grabbed_player.y), y, .3);
    				depth = grabbed_player.depth - 1;
    				break;
    			case 9:
    				grabbed_player.x = lerp(floor(grabbed_player.x), x-10*spr_dir, .5);
    				grabbed_player.y = lerp(floor(grabbed_player.y), y-10, .3);
    				depth = grabbed_player.depth - 1;
    				break;
    			case 10:
    				grabbed_player.x = lerp(floor(grabbed_player.x), x+10*spr_dir, .5);
    				grabbed_player.y = lerp(floor(grabbed_player.y), y-10, .3);
    				depth = grabbed_player.depth - 1;
    				break;
    		}
    		if(throw_count < throw_max and window_timer == 11){
    			throw_count++;
    			window_timer = 0;
    		} else if (throw_count == throw_max and window_timer > 8){
	    		if(left_pressed or left_down){
	    			spr_dir = -1;
	    		} else if (right_pressed or right_down){
	    			spr_dir = 1;
	    		}
    		}
    	} else if (window == 6 and window_timer < 6){
    		vsp = 0;
    		hsp = 0;
    	}
    	break;
    case AT_NAIR:
    	hud_offset = 8;
    	if(dragon_install and window == 1){
    		soft_armor = install_armor;
    		add_install_trail(10, 30);
    		
    	}else {
    		soft_armor = 0;
    		add_install_trail(10, 20);
    	}
    	break;
    case AT_BAIR:
    	if(dragon_install and window == 1){
    		soft_armor = install_armor;
    		add_install_trail(10, 30);
    	}else {
    		soft_armor = 0;
    		add_install_trail(10, 20);
    	}
    	break;
	case AT_UAIR:
		if(window < 3 or window_timer<4){
			hud_offset = 40
		}
    	if(dragon_install and window == 1){
    		soft_armor = install_armor;
    		add_install_trail(10, 30);
    	}else {
    		soft_armor = 0;
    		add_install_trail(10, 20);
    	}
    	break;
}

#define counter(teleport_target){
	    if(window == 2 or window == 3){
    		counter_target = noone;
    		invincible = true;
    		var counter = false;
    		var countered = noone;
    		var dmg = 0;
    		var kb = 0;
    		with(pHitBox){
    			if(place_meeting(x,y, other)){
    				if (player_id != other and type != 2){
    					counter = true;
    					countered = player_id;
    					dmg = damage;
    					kb = kb_value;
    				} else if (can_hit_self) {
    					counter = true;
    					if(teleport_target != noone and teleport_target.state_cat == SC_HITSTUN){
    						countered = teleport_target;
    					} else {
    						countered = player_id;
    					}
    					dmg = damage;
    					kb = 9;
    				}
    			}
    		}
    		if(counter){
    			tenshi_grazebox.counter_graze = true;
    			tenshi_grazebox.force_graze = true;
    			set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, max(floor(dmg*1.2), 6));
    			set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, max(floor(kb*1.2), 6));
    			//spawn_hit_fx(x, y-30, 108);
    			sound_play(sound_get("nuthinpersonal"));
    			countered.hitpause = true;
    			countered.hitstop = 24;
    			counter_target = countered;
    			set_attack(AT_EXTRA_2);
    		}
    	}
}

#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}

#define end_install()
{
    //this passes on ownership of install assets to the tenshi with the most
    //time left in dragon install
    var other_DI = false;
    var other_tenko = noone;
    var other_tenko_di_time = 9999999999999;
	with(oPlayer){
	    if("dragon_install" in self){
	        if(dragon_install and other != self){
	            other_DI = true;
	            if(other_tenko_di_time > install_time){
	                other_tenko_di_time = install_time;
	                other_tenko = self;
	            }
	        }
	    }
	}
	if(other_tenko != noone and other_DI){
	    if(other_tenko_di_time > install_time){
	        other_tenko.play_theme = true;
	    }
	    with(obj_article2){
	        if ("tenshi" in self){
	            if(tenshi == other and fx_type == FX.install_cloud or fx_type == FX.install_bg){
	                tenshi = other_tenko;
	            }
	        }
	    }
    }
    //reset dragon install values
    dragon_install = false;
	sound_stop(sound_get("install" + string(install_theme)));
    initial_dash_speed = base_initial_dash_speed;
    dash_speed = base_dash_speed;
    moonwalk_accel = base_moonwalk_accel;
    max_djumps = base_max_djumps;
    fast_fall = base_fast_fall;
    wave_land_adj = base_wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = base_wave_friction;
	air_max_speed = base_air_max_speed;
	max_jump_hsp = base_max_jump_hsp;
	
	end_dragon_install = true;
}

#define spawn_base_dust
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define activate_install()
install_timer = 0;
//fair
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 4);
//dair
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);
//uair
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 4);
//bair
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 99);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
//nair
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 99);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 3);
//utilt
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 99);

set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);

set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 2);

set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 11, HG_WINDOW, 2);

//ftilt
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);

//dtilt
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 6, HG_WINDOW, 2);
//fspecial grab
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 1.1);

#define add_install_trail(frequency, durration)
		var cur_time = get_gameplay_time();
		var current_trail = install_trail[floor(cur_time/frequency)%8];
		if(current_trail.life <= 0){
			current_trail.x = x;
			current_trail.y = y;
			current_trail.sprite_index = sprite_index;
			current_trail.image_index = image_index;
			current_trail.color = rainbow_dark;
			current_trail.spr_dir = spr_dir;
			
			//if we walk we make the trail last longer so it looks cooler
				current_trail.life = durration;
		}