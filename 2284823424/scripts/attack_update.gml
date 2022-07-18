//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_USPECIAL:
	case AT_DSPECIAL:
		trigger_b_reverse();
		break;
}

window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));



// dust

switch(attack){
	case AT_JAB:
	case AT_FTILT:
	case AT_UTILT:
	case AT_DTILT:
		if (window == 1 || (attack == AT_JAB) && (window == 4)) && window_timer == phone_window_end{
			array_push(phone_dust_query, [x - 16 * spr_dir + sin(state_timer) * 10, y, "dash", spr_dir]);
		}
		break;
	case AT_DATTACK:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x + 64 * spr_dir, y, "dash_start", spr_dir]);
		}
		break;
	case AT_USTRONG:
		if window == 1 && (window_timer == 1 || strong_charge % 10 == 1){
			array_push(phone_dust_query, [x + 16 * spr_dir + sin(strong_charge + 5) * 10, y, "dash", -spr_dir]);
		}
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x - 0 * spr_dir, y, "dash_start", -spr_dir]);
		}
	case AT_FSTRONG:
	case AT_DSTRONG:
		if window == 1 && (window_timer == 1 || strong_charge % 10 == 1){
			array_push(phone_dust_query, [x - 16 * spr_dir + sin(strong_charge) * 10, y, "dash", spr_dir]);
		}
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x - 0 * spr_dir, y, "dash_start", spr_dir]);
		}
		break;
}



// cape swipe

switch(attack){
	
	// case AT_JAB:
	case AT_UTILT:
	case AT_FSTRONG:
	case AT_USTRONG:
	case AT_DSTRONG:
	case AT_FAIR:
	case AT_BAIR:
	case AT_UAIR:
		if (window == 1 && window_timer == 1 && !hitpause){
			sound_play(asset_get("sfx_forsburn_cape_swipe"));
		}
		break;
		
}



switch(attack){
    
    case AT_USTRONG:
    case AT_DSTRONG:
    
    	switch(window){
    		
    		case 1:
    			explode = 0;
    			break;
    		default:
    			if explode && !hitpause{
    				if explode > 1 explode--;
    				
    				else{
    					var explode_x = explode_id.x;
    					var explode_y = explode_id.y;
    					
						create_hitbox(AT_USPECIAL, 3, explode_x, explode_y);
						spawn_hit_fx(explode_x, explode_y, vfx_tnt_blast);
						sound_play(sfx_minecraft_explode);
						explode = 0;
						
						explode_id.burned = 0;
    				}
    			}
    			break;
    		
    	}
    	
    	break;
    
    
    
    case AT_FAIR:
    	
    	if window == 1 && window_timer == 1 rune_crit_fair = 0;
    	
    	if has_rune("E"){
    	
	    	if (window == 1){
	    		if (window_timer == 1){
		    		
		    		reset_hitbox_value(attack, 1, HG_DAMAGE);
		    		reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
		    		reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
		    		reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
		    		reset_hitbox_value(attack, 1, HG_HITPAUSE_SCALING);
		    		reset_hitbox_value(attack, 1, HG_EFFECT);
	    		}
	    		
	    		if vsp >= 0 && !rune_crit_fair{
	    			
		    		rune_crit_fair = 1;
		    		
		    		sound_play(asset_get("mfx_star"));
		    		spawn_hit_fx(x - 20 * spr_dir * size_mult, y - 48 * size_mult, 66)
		    		
		    		set_hitbox_value(attack, 1, HG_DAMAGE,
		    			get_hitbox_value(attack, 1, HG_DAMAGE)
		    			* 3
		    			);
		    		
		    		set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK,
		    			round(get_hitbox_value(attack, 1, HG_BASE_KNOCKBACK)
		    			* 1.1)
		    			);
		    		
		    		set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING,
		    			get_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING)
		    			* 1.5
		    			);
		    		
		    		set_hitbox_value(attack, 1, HG_BASE_HITPAUSE,
		    			round(get_hitbox_value(attack, 1, HG_BASE_HITPAUSE)
		    			* 1.3)
		    			);
		    		
		    		set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING,
		    			get_hitbox_value(attack, 1, HG_HITPAUSE_SCALING)
		    			* 1.3
		    			);
		    		
		    		set_hitbox_value(attack, 1, HG_EFFECT, 11);
	    		}
	    		
	    		if (window_timer == phone_window_end && rune_crit_fair){
	    			
	    			sound_play(sfx_minecraft_whirlpool);
	    			sound_play(asset_get("sfx_ori_charged_flame_release"));
	    			
	    		}
	    		
	    	}
	    	
    	}
    	
    	break;
    
    
    
    case AT_DTILT: // OLD DTILT
    	
    	break;
        
        var slide_off = (window > 1);
        var slide_spd = on_block ? 13 : 13;
        
        set_attack_value(AT_DTILT, AG_OFF_LEDGE, slide_off);
        //set_attack_value(AT_DTILT, AG_CATEGORY, 2 * slide_off);
        
        switch(window){
            case 1:
                if (window_timer == window_end){
                    hsp = slide_spd * spr_dir;
                }
                break;
            case 2:
                if (hsp == 0 && !hitpause && !was_parried){
                    hsp = slide_spd * spr_dir;
                }
                break;
            case 4:
                hsp *= 0.8;
                break;
        }
        
        if was_parried hsp = 0;
        
        break;
        
        
        
    case AT_DATTACK:
    
        switch(window){
            
            case 1:
                if (window_timer == window_end){
                    hsp = 9 * spr_dir;
                }
                else can_ustrong = false; //can't DACUS until actually getting momentum
                break;
            case 3:
            case 4:
                hsp *= 0.9;
                break;
        }
        
        break;
        
        
        
    case AT_NAIR:
    	
    	phone_invul_override = 1;
            
        if !hitpause soft_armor = 0;
        
        switch(window){
            
            case 1:
                shield_time = 0;
                blocked_hit = false;
                blocked_special = 0;
                break;
            case 2:
            	if !hitpause blocked_special--;
                if blocked_hit iasa_script();
                soft_armor = blocked_special ? 9999 : nair_armor;
                if (window_timer == window_end && attack_down){
                    if shield_time < shield_time_max{
                        window_timer--;
                        shield_time++;
                        if has_rune("F"){
                        	vsp = 0;
                        	hsp = clamp(hsp + (right_down - left_down) * 0.5, -8, 8);
                        	// can_fast_fall = 0;
                        }
                    }
                    else{
                        setWindow(8);
                    }
                }
                break;
            case 7:
                break;
            default:
                if blocked_hit invincible = true;
            
            
        }
        
        break;
    
    
    
    case AT_FSTRONG:
    
    	if has_rune("K") strong_charge = 60;
    	
        switch(window){
            
            case 1:
                if (window_timer == 8){
                	fstrong_sound = sound_play(sfx_ssbu_bow_charge);
                	array_push(stopped_sounds, fstrong_sound);
                }
                // if (strong_charge == 60) sound_play(sfx_ssbu_fludd_ding);
                break;
            case 2:
                if (window_timer == window_end) sound_stop(fstrong_sound);
                break;
            case 3:
                if (window_timer == window_end && !has_hit){
                    var spd = ease_sineOut(5, 25, strong_charge, 60) * spr_dir
                    
                    var arrow = create_hitbox(AT_FSTRONG, 2 + (strong_charge == 60), x + 40 * spr_dir * size_mult + round(spd), y - 32 * size_mult);
                    arrow.spr_dir = spr_dir;
                    arrow.hsp = spd;
                    arrow.vsp = ease_sineOut(1, -1, strong_charge, 60);
                    arrow.crit = (strong_charge == 60);
                }
                break;
        }
        
        break;
    
    
    
    case AT_FSTRONG_2: //crossbow
    
    	strong_charge = 60;
    
        switch(window){
            
            case 1:
                if (window_timer == 1){
                	fstrong_sound = sound_play(sfx_ssbu_bow_charge);
                	array_push(stopped_sounds, fstrong_sound);
                }
                if (window_timer == window_end){
                	sound_stop(fstrong_sound);
                	sound_play(sfx_minecraft_crossbow);
                	loseItem(true);
                }
                break;
            case 2:
                if (window_timer == window_end){
                    var spd = ease_sineOut(5, 25, strong_charge, 60) * spr_dir;
                    
                    var arrow = create_hitbox(AT_FSTRONG, 2 + (strong_charge == 60), x + 40 * spr_dir * size_mult + round(spd), y - 38 * size_mult);
                    arrow.spr_dir = spr_dir;
                    arrow.hsp = spd;
                    arrow.vsp = ease_sineOut(1, -1, strong_charge, 60);
                    arrow.crit = (strong_charge == 60);
                    arrow.enemies = 1;
                    if has_hit arrow.players_crossbowed++;
                    
                    if has_rune("O"){
	                    var arrow = create_hitbox(AT_FSTRONG, 2 + (strong_charge == 60), x + 40 * spr_dir * size_mult + round(spd), y - 38 * size_mult);
	                    arrow.spr_dir = spr_dir;
	                    arrow.hsp = spd;
	                    arrow.vsp = ease_sineOut(1, -1, strong_charge, 60) - 4;
	                    arrow.crit = (strong_charge == 60);
	                    arrow.enemies = 1;
	                    if has_hit arrow.players_crossbowed++;
	                    
	                    var arrow = create_hitbox(AT_FSTRONG, 2 + (strong_charge == 60), x + 40 * spr_dir * size_mult + round(spd), y - 38 * size_mult);
	                    arrow.spr_dir = spr_dir;
	                    arrow.hsp = spd;
	                    arrow.vsp = ease_sineOut(1, -1, strong_charge, 60) + 4;
	                    arrow.crit = (strong_charge == 60);
	                    arrow.enemies = 1;
	                    if has_hit arrow.players_crossbowed++;
                    }
                }
                break;
        }
        
        break;
    
    
    
    case AT_DAIR:
    
    	if has_rune("K") strong_charge = 60;
        	
        switch(window){
            case 1:
                if (window_timer == 6){
                	dair_sound = sound_play(sfx_ssbu_bow_charge);
                	array_push(stopped_sounds, dair_sound);
                }
                if (window_timer == window_end){
                    sound_stop(dair_sound);
                    sound_play(sfx_minecraft_bow_loose);
                    original_hsp = hsp;
                    
                    var ratio = 1 + (strong_charge == 60)
                    
                    vsp = -6 * ratio;
                    hsp = -4 * ratio * spr_dir;
                }
                break;
            case 2:
                if (window_timer == window_end && !has_hit){
                    var spd = 15 + 10 * (strong_charge == 60);
                    var ang = 315;
                    
                    var arrow = create_hitbox(AT_FSTRONG, 2 + (strong_charge == 60), x + 40 * spr_dir, y);
                    arrow.spr_dir = spr_dir;
                    arrow.hsp = lengthdir_x(spd, ang) * spr_dir;
                    arrow.vsp = lengthdir_y(spd, ang);
                    arrow.crit = (strong_charge == 60);
                }
                if hitpause && old_vsp == fast_fall{
                    old_hsp = original_hsp;
                }
                break;
            case 3:
                break;
        }
        
        break;
    
    
    
    case AT_USPECIAL:
    
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, uspecial_type ? 0 : 7);
        
        switch(window){
                
            case 1: //Jumpsquat
                vsp = min(vsp, 1)
                has_placed = false;
                hsp *= 0.9;
                if (window_timer == window_end){
                    vsp = -7.5;
                }
                break;
            case 2: //Leap
                var border_x = 50;
                var border_y = 80;
                var clamped_x = clamp(x, border_x, room_width - border_x);
                var clamped_y = clamp(y, border_y, room_height - border_y + 40);
                var amt = (window_timer == window_end) ? 1 : 0.25;
                if x != clamped_x{
                    hsp = 0;
                    x = lerp(x, clamped_x, amt);
                }
                if y != clamped_y{
                	vsp = 0;
                    y = lerp(y, clamped_y, amt);
                }
                
                if window_timer == phone_window_end{
                	x = clamped_x;
                	y = clamped_y;
                }
                // if (window_timer == window_end && !uspecial_type) sound_play(sfx_splatoon_click);
                break;
            case 3: //Active
                if !has_placed && uspecial_type && !was_parried{
                    
                    has_properly_landed = false;
                    
                    place_x = x;
                    
                    var place_y = 6;
                    var threshold = 41;
                    var width = 24;
                    
                    if position_meeting(x + width, y + place_y - 1, asset_get("par_jumpthrough")) || position_meeting(x - width, y + place_y - 1, asset_get("par_jumpthrough")) for (i = 0; i < 50 && (position_meeting(x + width, y + place_y - 1, asset_get("par_jumpthrough")) || position_meeting(x - width, y + place_y - 1, asset_get("par_jumpthrough"))); i++){
                    	y--;
                    }
                    
                    
                    
                    if uspecial_type == 1 && !phone_playtest{
                        sound_play(block_datas[primary_block].sfx);
                        var new_b = instance_create(x, y + place_y, "obj_article_platform");
                        new_b.spr_dir = 1;
                        
                        // new_b.break_stage = max_blocks - blocks;
                        
                        blocks--;
                    }
                    
                    else if uspecial_type == 2{
                    	if (held_item == IT_ANVIL){
                    		var proj = create_hitbox(AT_USPECIAL, 2, x, y + place_y);
                    		proj.spr_dir = 1;
                    	}
                    	else if (held_item == IT_TNT){
                    		instance_create(x, y + place_y + 22, "obj_article3");
                    	}
                    	else if !phone_playtest{
	                        var used_block = 0;
	                        if (held_item == IT_DISPENSER) used_block = BL_DISPENSER;
	                        if (held_item == IT_SLIME_BLOCK) used_block = BL_SLIME;
	                        
	                        sound_play(block_datas[used_block].sfx);
	                        var new_b = instance_create(x, y + place_y, "obj_article_platform");
	                        new_b.spr_dir = (used_block == BL_DISPENSER ? spr_dir : 1);
	                        new_b.type = used_block;
	                        new_b.image_index = used_block;
	                        
	                        if used_block == BL_SLIME && !phone_cheats[CHEAT_TMI]{
								sound_play(sfx_minecraft_ding1);
								var hfx = spawn_hit_fx(x, y + place_y + 16, vfx_exp);
								hfx.steve_manip_id = self;
								hfx.type = 5;
								hfx.depth = depth - 10;
								hfx.num = 1;
	                        }
                    	}
                        
                        loseItem(false);
                    }
                    
                    hsp = clamp(hsp, -air_max_speed, air_max_speed);
                    if hitpause old_hsp = clamp(old_hsp, -air_max_speed, air_max_speed);
                    
                    has_placed = true;
                }
                if hitpause && uspecial_type && !was_parried x = place_x;
                break;
            case 4: //Endlag
                if uspecial_type && !was_parried{
                    can_shield = true;
                    if shield_pressed && has_airdodge y += 16;
                }
                break;
            
        }
        
        if (!free && window > 3 && !was_parried){
            attack_end();
            set_state(PS_LAND);
            hsp = 0;
        }
        
        break;
    
    
    
    case AT_DSPECIAL:
    	
    	can_fast_fall = 0;
    	
    	switch(window){
    		case 1:
    			vsp = min(vsp, max_fall);
    			break;
    		case 2:
				if (dspecial_type && window_timer == 1){
					var bucket_place_x = x + 70 * spr_dir;
					var bucket_place_y = y - 50;
					
					if has_rune("O") && dspecial_type == 2{
						var nearest = noone;
						var record = 10000;
						
						with oPlayer if self != other && distance_to_object(other) < record{
							nearest = self;
							record = distance_to_object(other);
						}
						
						if nearest != noone{
							bucket_place_x = nearest.x;
							bucket_place_y = nearest.y - 64;
						}
					}
					
					var liquid = instance_create(bucket_place_x, bucket_place_y, "obj_article2");
					switch(dspecial_type){
						case 1: //Water
							sound_play(sfx_minecraft_bucket_water);
							break;
						case 2: //Lava
							sound_play(sfx_minecraft_bucket_lava);
							liquid.type = 1;
							liquid.sprite_index = spr_flowing_lava;
							loseItem(false);
							break;
					}
				}
				break;
    	}
    	
		break;
		
		
		
    case AT_NSPECIAL: //Inventories
        
        move_cooldown[AT_NSPECIAL] = 60;
        can_fast_fall = false;
        
        if has_rune("M") containers[CT_TESTIFICATE].spent_items = [0, 0, 1];
        
        switch(window){
            
            case 1:
                dont_stall = false;
                nspecial_cursor = 1;
                nspecial_cursor_timer = 0;
                
                if (window_timer == window_end){
                	sound_play(sfx_minecraft_ding1);
                	if (sprite_index == spr_nspecial_cont_ender_chest){
                		spawnCloudVfx(10, 20, vfx_ender);
                		sound_play(sfx_minecraft_teleport2);
                	}
					else if (sprite_index == spr_nspecial_cont_brewing_stand){
                		spawnCloudVfx(10, 20, vfx_smoke);
                	}
					else if (sprite_index == spr_nspecial_cont_villager){
                		sound_play(sfx_minecraft_villager_idle);
                		sound_play(sfx_minecraft_chest_open);
                	}
                	else if (sprite_index == spr_nspecial_cont_chest){
                		sound_play(sfx_minecraft_chest_open);
                	}
                	else if sprite_index == spr_nspecial_cont_mario{
                		sound_play(sfx_mario_coin);
                	}
                }
                
                if phone_cheats[CHEAT_TMI]{
                	containers[next_container].spent_items = [0,0,0];
                }
                break;
            case 2:
                hsp = 0;
                vsp = 0;
                break;
            case 3: //Looping
                can_move = false;
                // vsp = min(vsp, max_fall / 2);
                if free vsp -= gravity_speed * 2 / 3;
                hsp = 0;
                if window_timer == window_end / 3 dont_stall = true;
                if !dont_stall vsp = 0;
                
                if ((jump_pressed || (tap_jump_pressed && can_tap_jump())) || shield_pressed){
                    setWindow(5);
                    sound_play(sfx_minecraft_click);
                }
                
                if ((window_timer == window_end || window_timer == window_end / 2) && sprite_index == spr_nspecial_cont_brewing_stand){
                	var hfx = spawn_hit_fx(x + 24 * spr_dir * size_mult, y - 30 * size_mult, vfx_smoke);
					hfx.vsp = -2;
					hfx.hsp = clamp(random_func(0, 4, true), 0, 3) - 1;
					hfx.hsp *= 0.2;
					
					hfx.steve_manip_id = self;
					hfx.type = 0;
					hfx.depth = depth + 1;
					hfx.num = 0;
					hfx.hit_length = 100;
					
					hfx.ignore_gravity = true;
                }
                
                if special_pressed || attack_pressed{
                    if containers[current_container].spent_items[nspecial_cursor]{
                        sound_play(sound_get("this_file_dont_exist_so_just_play_cancel_noise"))
                    }
                    else{
                    	has_container = 0;
                        sound_play(sfx_minecraft_click);
                        setWindow(4);
                        held_item = containers[current_container].items[nspecial_cursor];
                        containers[current_container].spent_items[nspecial_cursor] = 1;
                        held_item_timer = held_item_timer_max;
                        
                        for (i = 0; i <= nspecial_cursor; i++){ //Loop 1, 2, or 3 times based on item selected
                            
                            containerIncrement();
                            
                        }
                        
                        if do_the_mario{
                        	next_container = CT_MARIO;
                        }
                        
                        if array_equals(containers[next_container].spent_items, [1,1,1]){
                            if do_the_mario{
                            	for (i = 0; i < array_length_1d(containers); i++){
                                    containers[i].spent_items = [0,0,0];
                                }
                                restock_alpha = 10;
                                if !advancement_made_items{
                                	advancement_made_items = 1;
									with chat_owner{
										ds_list_add(chat_txt, "Steve has completed the challenge [A Complete Catalogue]");
										ds_list_add(chat_tmr, chat_tmr_max);
										ds_list_add(chat_col, c_white);
									}
                                }
                                next_container = nspecial_cursor;
                                do_the_mario = 0;
                            }
                            else{
                            	var found = false;
	                            for (i = 0; i < array_length_1d(containers) - 1 && !found; i++){
	                                containerIncrement();
	                                if !array_equals(containers[next_container].spent_items, [1,1,1]){
	                                    found = true;
	                                }
	                            }
	                            if !found || phone_cheats[CHEAT_TMI]{
	                            	do_the_mario = 1;
	                            	next_container = CT_MARIO;
	                            }
                            }
                        }
                    }
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                    clear_button_buffer(PC_ATTACK_PRESSED);
                }
                
                if nspecial_cursor_timer nspecial_cursor_timer--;
                
                if (left_pressed || right_pressed){
                    nspecial_cursor += (right_pressed - left_pressed);
                    nspecial_cursor_timer = nspecial_cursor_timer_max;
                    if (nspecial_cursor < 0) nspecial_cursor = 2;
                    if (nspecial_cursor > 2) nspecial_cursor = 0;
                    // sound_play(asset_get("mfx_hover"));
                    sound_play(sfx_minecraft_pop);
                }
                
                if (phone_cheats[CHEAT_CONT_PICK] || has_rune("L")) && (down_pressed || up_pressed){
                	current_container += down_pressed - up_pressed;
                	var last = array_length(containers) - 1;
                    if (current_container < 0) current_container = last;
                    if (current_container > last) current_container = 0;
                	sound_play(sfx_minecraft_pop);
                	next_container = current_container;
	                if phone_cheats[CHEAT_TMI]{
	                	containers[next_container].spent_items = [0,0,0];
	                }
                }
                
                break;
            case 4: //get item
                if (window_timer == 19) sound_play(sfx_minecraft_ding2);
            case 5: //cancel
                hsp = 0;
                vsp = 0;
                can_move = false;
                if (window_timer == window_end && free) vsp = -short_hop_speed;
                if (window_timer == 1){
                	if (sprite_index == spr_nspecial_cont_chest){
                		sound_play(sfx_minecraft_chest_close);
                	}
                }
                if (window_timer == 12){
                	if (sprite_index == spr_nspecial_cont_villager){
                		sound_play(sfx_minecraft_villager_death);
                		sound_play(sfx_minecraft_chest_close);
                	}
                }
                if (window_timer == 18){
                    if (sprite_index == spr_nspecial_cont_craft || sprite_index == spr_nspecial_cont_chest){
                        sound_play(sfx_minecraft_place_plank);
                        spawnVfx(6, vfx_blocks_break_plank, 30 * spr_dir, -30, 1);
                    }
                    if (sprite_index == spr_nspecial_cont_furnace){
                        sound_play(sfx_minecraft_place_stone);
                        spawnVfx(6, vfx_blocks_break_stone, 30 * spr_dir, -30, 1);
                    }
                    if (sprite_index == spr_nspecial_cont_ender_chest || sprite_index == spr_nspecial_cont_enchanting_table){
                		spawnCloudVfx(10, 20, vfx_ender);
                		sound_play(sfx_minecraft_teleport1);
                    }
					else if (sprite_index == spr_nspecial_cont_brewing_stand){
                		spawnCloudVfx(10, 20, vfx_smoke);
                        sound_play(sfx_minecraft_place_stone);
                        spawnVfx(6, vfx_blocks_break_iron, 30 * spr_dir, -30, 1);
                	}
                	else if sprite_index == spr_nspecial_cont_mario{
                		sound_play(window == 4 ? sfx_mario_item_store : sfx_mario_poof_1);
                	}
                }
            
        }
        
        if has_rune("M") containers[CT_TESTIFICATE].spent_items = [0, 0, 1];
        
        break;
	
	
	
	case AT_NTHROW: //Thrown items
		
		if held_item == IT_BELL move_cooldown[attack] = 45;
		
		switch(window){
			case 1:
				// if (window_timer == 1){
				// 	held_time = 0;
				// }
				// if (window_timer == 4 && special_down && held_time < 30){
				// 	held_time++;
				// 	window_timer--;
				// }
				break;
			case 2:
				if (window_timer == 1){
					if (held_item == IT_FIRE_CHARGE){
						create_hitbox(AT_NTHROW, 1, x + 32 * spr_dir * size_mult, y - 32 * size_mult);
						sound_play(sfx_minecraft_fireball);
					}
					else if (held_item == IT_ENDER_PEARL){
						create_hitbox(AT_NTHROW, 2, x + 32 * spr_dir * size_mult, y - 32 * size_mult);
						sound_play(sfx_minecraft_teleport1);
					}
					else if (held_item == IT_EYE_OF_ENDER){
						create_hitbox(AT_NTHROW, 3, x + 32 * spr_dir * size_mult, y - 32 * size_mult);
						sound_play(sfx_minecraft_teleport1);
					}
					else if (held_item == IT_SPLASH_POTION){
						create_hitbox(AT_NTHROW, 4, x + 32 * spr_dir * size_mult, y - 32 * size_mult);
					}
					else if (held_item == IT_LINGERING_POTION){
						create_hitbox(AT_NTHROW, 6, x + 32 * spr_dir * size_mult, y - 32 * size_mult);
					}
					else if (held_item == IT_BELL){
						create_hitbox(AT_NTHROW, 9, x + 32 * spr_dir * size_mult, y - 32 * size_mult);
						sound_play(sfx_ssbu_bell);
					}
					else if (held_item == IT_SHELL){
						create_hitbox(AT_NTHROW, 10, x + 32 * spr_dir * size_mult, y - 32 * size_mult);
						sound_play(sfx_mario_shell_kick);
					}
					
					loseItem(false);
				}
				break;
		}
		
		break;
	
	
	
	case AT_EXTRA_1: //Sticky Piston
    
        hsp = 0;
        vsp = 0;
        can_move = false;
        can_fast_fall = false;
        
        switch(window){
            
            case 1: //Startup
                if (window_timer == 1){
                    held_time = 0;
                }
                // if (window_timer == window_end - 1 && special_down && held_time < 30){
                //     window_timer--;
                //     held_time++;
                // }
                if (window_timer == window_end){
                    piston_target = noone; //Players to be dragged toward Steve
                    pist_dist = 0;
                    pist_orig_x = x + 20 * spr_dir;
                    pist_last_x = x;
                    pist_x = x;
                    
                    var pist_dist_max = 320;
                    
                    if has_rune("O") pist_dist_max = phone_blastzone_r - phone_blastzone_l;
                    
                    var foe_dist = 0;
                    var wall_dist = 0;
                    var piston_mid_height = -32;
                    var piston_top_bottom_height = 20; //Distance between center and either top or bottom
                    
                    for (i = 1; i < pist_dist_max && !foe_dist; i += 16 * (has_rune("O") ? 3 : 1)){
                        with pHurtBox if (self != other.hurtboxID){
                            with other if (position_meeting(x + i * spr_dir, y + piston_mid_height + piston_top_bottom_height, other) || position_meeting(x + i * spr_dir, y + piston_mid_height - piston_top_bottom_height, other)){
                                foe_dist = i - 8;
                            }
                        }
                        
                        var checked = asset_get("par_block");
                        
                        repeat(2){
                            if (i > 32 && !wall_dist && (position_meeting(x + i * spr_dir, y + piston_mid_height, checked) || position_meeting(x + i * spr_dir, y + piston_mid_height - piston_top_bottom_height, checked) || position_meeting(x + i * spr_dir, y + piston_mid_height + piston_top_bottom_height, checked))){
                                wall_dist = i - 8;
                            }
                            checked = asset_get("par_jumpthrough");
                        }
                    }
                    
                    reset_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT);
                    
                    if foe_dist{
                        pist_dist = foe_dist;
                        pist_type = 1; //Hit a foe
                        set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 60);
                    }
                    else if wall_dist{
                        pist_dist = wall_dist;
                        pist_type = 2; //Hit a wall
                    }
                    else{
                        pist_dist = pist_dist_max;
                        pist_type = 0; //Hit nothing, you lose, good day sir etc
                    }
                    
                    pist_dist = max(40, pist_dist);
                    
                    pist_last_x = x + pist_dist * spr_dir;
                    
                    pist_x = pist_last_x;
                    
                    set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, pist_dist + 20 + (pist_type == 1) * 20);
                    set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, pist_dist / 2 + 10 + (pist_type == 1) * 10);
                }
                
                piston_out = false;
                break;
            case 2: //Active
                piston_out = true;
                if was_parried pist_type = 2;
                
                with oPlayer if hitpause && state_cat == SC_HITSTUN && other.piston_target == self{
                    hitpause = max(hitpause, 3);
                }
                break;
            case 3: //Extended
                if (window_timer == window_end && pist_type == 2) setWindow(7);
                djumps = 0;
                
                piston_out = true;
                
                with oPlayer if hitpause && state_cat == SC_HITSTUN && other.piston_target == self{
                    hitpause = max(hitpause, 3);
                }
                break;
            case 4: //Retracting foe or whiff
                var current_pos = ease_quartIn(pist_last_x, pist_orig_x, window_timer, window_end);
                pist_x = current_pos;
                
                with oPlayer if hitpause && state_cat == SC_HITSTUN && other.piston_target == self{
                    x = current_pos;
                    y = lerp(y, other.y, 0.3);
                    hitpause = max(hitpause, 3);
                }
                
                piston_out = true;
                break;
            case 5: //Final hit
                piston_out = false;
                break;
            case 6: //Endlag
                if (window_timer == 1) loseItem(true);
            
                if (free && window_timer == window_end && !down_down && !was_parried){
                    attack_end();
                    set_state(PS_JUMPSQUAT);
                }
                
                piston_out = false;
                break;
            case 7: //Retracting surface
                if !was_parried{
                    can_jump = true;
                    can_attack = true;
                    can_shield = true;
                }
                
                if piston_target != noone{
                	piston_target.hitpause = 0;
                	piston_target = noone;
                }
                
                var next_pos = ease_quartIn(pist_orig_x, pist_last_x, window_timer, window_end);
                
                if ((jump_pressed || (tap_jump_pressed && can_tap_jump())) || attack_pressed || shield_pressed || up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed){
                    hsp = clamp(next_pos - x, -14, 14);
                    loseItem(true);
                }
                
                x = next_pos;
                pist_x = pist_last_x;
                
                if (window_timer == window_end) setWindow(5);
                
                piston_out = true;
                break;
            
        }
        
        break;
     
       
	
	case AT_EXTRA_2: //Porkchop
		
		if window == 1 && window_timer == 1 && (held_item == IT_MUSHROOM || held_item == IT_STAR){
			sound_play(sfx_mario_item_appear);
		}
		
		if (window == 2 && window_timer == 1){
			if (held_item == IT_PORKCHOP){
				set_player_damage(player, max(get_player_damage(player) - porkchop_heal_amt, 0));
				spawnVfx(4, vfx_food, -20 * spr_dir, -40, 0);
				sound_play(sfx_minecraft_eat);
			}
			else if held_item == IT_POTION{
				strength_pot = strength_pot_max;
				spawnVfx(4, vfx_potion_glass, -20 * spr_dir, -40, 0);
				sound_play(sfx_minecraft_drink);
				sound_play(sfx_minecraft_glass);
			}
			else if held_item == IT_MUSHROOM{
				mushroom = mushroom_max;
				sound_play(sfx_mario_power_up);
			}
			else if held_item == IT_STAR{
				starman = starman_max;
				sound_play(sfx_mario_power_up);
				sound_stop(starman_sound);
				starman_sound = sound_play(sfx_mario_starman);
			}
			loseItem(false);
		}
		
		if window == 3 iasa_script();
		
		break;
		
	
	
	case AT_EXTRA_3: //Minecart
	
		switch(window){
			case 1:
				hsp = clamp(hsp, -3, 3);
				if (window_timer == 1) vsp = -4;
				if (window_timer == window_end){
					hsp = (has_rune("O") ? 22 : 16) * spr_dir;
					if free vsp = -6;
					has_ended = false;
					has_jumped = false;
					minecart_sfx = sound_play(sfx_minecraft_minecart);
					has_stopped = false;
				}
				break;
			case 3:
				hsp = clamp(hsp, -10, 10);
				hsp -= sign(hsp) * 0.05;
			case 2:
				can_move = false;
				can_fast_fall = false;
				
				if shield_pressed || (abs(hsp) < 3 && !hitpause) has_ended = true;
				if has_ended && !hitpause setWindow(4);
				
				if (jump_pressed || (tap_jump_pressed && can_tap_jump())) has_jumped = true;
				if has_jumped && !hitpause && !was_parried{
					attack_end();
					destroy_hitboxes();
					set_state(PS_JUMPSQUAT);
					if hsp == 0 hsp = old_hsp;
				}
				
				if has_rune("O") vsp = min(vsp, 0);
				break;
			case 4:
				if (window_timer == 1) destroy_hitboxes();
				break;
		}
		
		if "minecart_sfx" in self && ((jump_pressed || (tap_jump_pressed && can_tap_jump())) && can_jump || has_jumped || window == 4) && !has_stopped{
			sound_stop(minecart_sfx);
			has_stopped = true;
			loseItem(true);
		}
		
		break;
		
		
		
	case AT_UTHROW: //Elytra equip
		
		switch(window){
			case 1:
				vsp = min(vsp, 0);
				vsp -= 2;
				vsp = max(vsp, -10);
				if elytra && window_timer == window_end loseItem(true);
				break;
			case 2:
				if held_item{
					if !elytra{
						elytra = elytra_max;
						elytra_sound = sound_play(sfx_minecraft_elytra, true);
					}
				}
				else if elytra{
					elytra = false;
					sound_stop(elytra_sound);
				}
				break;
			case 3:
				break;
		}
		
		break;
    
    
    
    case AT_DTHROW: //Frost Walker
        
        switch(window){
        	
            case 1:
            	has_placed = false;
            	
                var border_x = 50;
                var border_y = 80;
                var clamped_x = clamp(x, border_x, room_width - border_x);
                var clamped_y = clamp(y, border_y, room_height - border_y + 40);
                var amt = (window_timer == window_end) ? 1 : 0.25;
                if x != clamped_x{
                    hsp = 0;
                    x = lerp(x, clamped_x, amt);
                }
                if y != clamped_y{
                	vsp = 0;
                    y = lerp(y, clamped_y, amt);
                }
                
                if window_timer == phone_window_end{
                	x = clamped_x;
                	y = clamped_y;
                }
            	break;
            case 2: //Active
                if !has_placed && !was_parried && !phone_playtest{
                    
                    place_x = x;
                    
                    var place_y = 0;
                    var threshold = 41;
                    var width = 24;
                    
                    if position_meeting(x + width, y + place_y - 1, asset_get("par_jumpthrough")) || position_meeting(x - width, y + place_y - 1, asset_get("par_jumpthrough")) for (i = 0; i < 50 && (position_meeting(x + width, y + place_y - 1, asset_get("par_jumpthrough")) || position_meeting(x - width, y + place_y - 1, asset_get("par_jumpthrough"))); i++){
                    	y--;
                    }
                    
                    sound_play(block_datas[BL_ICE].sfx);
                    var new_b = instance_create(x + 64 * spr_dir, y + place_y, "obj_article_platform");
                    new_b.spr_dir = 1;
                    new_b.type = BL_ICE;
                    new_b.mask_index = spr_blocks_mask_wide;
                    new_b.image_index = BL_ICE;
                    new_b.ignores_walls = true;
                    
                    hsp = clamp(hsp, -air_max_speed, air_max_speed);
                    if hitpause old_hsp = clamp(old_hsp, -air_max_speed, air_max_speed);
                    
                    has_placed = true;
                    
                    vsp = 0;
                    
                    loseItem(true);
                }
                if hitpause && !was_parried x = place_x;
                break;
            
        }
        
        if (!free && window > 3 && !was_parried){
            attack_end();
            set_state(PS_LAND);
            hsp = 0;
        }
        
        break;
	
	
	
	case AT_FTHROW: //Riptide
		
		switch(window){
			
			case 1:
				if (window_timer == 1){
					riptide_strong = 0;
					if has_rune("O"){
						sound_play(sfx_minecraft_bucket_water);
						instance_create(x, y - 32, "obj_article2");
					}
				}
				
				hsp = clamp(hsp, -3, 3);
				vsp = min(vsp, 3);
				
				if !riptide_strong{
					if place_meeting(x, y, asset_get("puddle_obj"))
					|| ("soaked" in self && soaked)
					|| ("steve_water_last_frame" in self && steve_water_last_frame == get_gameplay_time()
					){
						riptide_strong = 1;
					}
					else{
						var threshold = 0;
						switch(get_stage_data(SD_ID)){
							case 5: //merchant port
								threshold = 64;
								break;
							case 10: //frozen fortress
								threshold = 64;
								break;
							case 21: //troupple pond
								threshold = 64;
								break;
						}
						
						if steve_riptide_stage_y threshold = steve_riptide_stage_y; // mollusk dock = 64
						
						if threshold && y >= get_stage_data(SD_Y_POS) + threshold{ 
							riptide_strong = true;
						}
					}
					
					if riptide_strong sound_play(asset_get("sfx_orca_absorb"));
				}
				
				if (window_timer == window_end){
					vsp = riptide_strong ? -22 : -18;
					hsp = 0;
					spawn_hit_fx(x, y, riptide_strong ? 199 : 27);
					sound_play(asset_get("sfx_ell_arc_taunt_end"));
				}
				break;
			case 3:
				if (window_timer == 1) loseItem(true);
				break;
			
		}
		
		break;
	
	
	
	case AT_NSPECIAL_AIR: //Thorns
		
		hsp = clamp(hsp, -3, 3);
		vsp = min(vsp, 3);
		
		switch(window){
			
			case 1:
				if (window_timer == 1) sound_play(sfx_minecraft_armor_equip);
				if (window_timer == window_end){
					sound_play(asset_get("sfx_ice_shieldup"));
					sound_play(asset_get("sfx_metal_hit_strong"));
					thorns_flag = false;
					set_window_value(attack, 2, AG_MUNO_WINDOW_INVUL, -2);
					set_window_value(attack, 3, AG_MUNO_WINDOW_INVUL, 0);
				}
				break;
			
			case 2:
				if hitpause{
					if !thorns_flag sound_play(sfx_minecraft_ding1);
					thorns_flag = true;
					old_hsp = 0;
					old_vsp = 0;
					window_timer = 0;
					set_window_value(attack, 2, AG_MUNO_WINDOW_INVUL, -1);
					set_window_value(attack, 3, AG_MUNO_WINDOW_INVUL, -1);
				}
				if (window_timer == window_end && thorns_flag && abs(right_down - left_down)) spr_dir = right_down - left_down;
				break;
				
			case 3:
				if (window_timer == 1) && !hitpause loseItem(true);
				if thorns_flag{
					create_hitbox(attack, 1, x, y);
					sound_play(asset_get("sfx_war_horn"));
					spawn_hit_fx(x, y - 32 * size_mult, vfx_tnt_blast);
					thorns_flag = false;
				}
				break;
			
		}
		
		break;
		
	
	
	case AT_TAUNT:
	
		can_fast_fall = false;
		
		switch(window){
			case 1: //start
				if (window_timer == 1){
					taunt_dash = false;
					clear_button_buffer(PC_TAUNT_PRESSED);
				}
				break;
			case 4: //run
				if (window_timer - 1) % 10 == 0{
					var i = 20;
					var hfx_x = x + random_func(00 + i, 20, true) - 10;
					var hfx_y = y - random_func(10 + i, 8, true) - 8;
					var hfx_v = random_func(20 + i, 1, true) - 4;
					var hfx_h = (2 + random_func(30 + i, 4, true)) * -spr_dir;
					var hfx_d = depth - 1;
					var hfx_a = random_func(40 + i, 40, true) - 20;
					
					var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_blocks_break_grass);
					hfx.hsp = hfx_h;
					hfx.vsp = hfx_v;
					hfx.depth = hfx_d;
					hfx.parent_y = y - 32;
					hfx.asp = hfx_a;
					
					hfx.steve_manip_id = self;
					hfx.type = 3;
					hfx.num = 1;
				}
			case 2: //idle
			case 3: //walk
			case 5: //crouch
			case 6: //crouch walk
				var new_window = 2;
				
				if right_hard_pressed || left_hard_pressed{
					if !free taunt_dash = true;
				}
				
				if abs(right_down - left_down){
					if !free{
						if window != 6 && window != 5 spr_dir = right_down - left_down;
						
						var max_speed = taunt_dash ? dash_speed : walk_speed;
						var acc_speed = taunt_dash ? walk_accel * 2 : walk_accel;
						hsp = clamp(hsp + acc_speed * (right_down - left_down), -max_speed, max_speed);
					}
					new_window = taunt_dash ? 4 : 3;
				}
				else{
					taunt_dash = false;
				}
				
				if free taunt_dash = false;
				
				
				
				if down_down{
					if abs(right_down - left_down){
						var max_speed = walk_speed * 2 / 3;
						hsp = clamp(hsp, -max_speed, max_speed);
						new_window = 6;
					}
					else{
						new_window = 5;
					}
				}
				
				
				
				tauntFly();
				
				
				
				if attack_down new_window = 7;
				if special_down new_window = blocks ? 9 : 7;
				
				
				
				if taunt_pressed || shield_pressed new_window = 8;
				
				if (new_window != window) setWindow(new_window);
				
				else if (window_timer == window_end){
					window_timer = 0;
				}
				
				break;
			case 9: //build
				if (window_timer == 5){
					
					var place_y = 6;
                    var threshold = 41;
                    var width = 24;
                    
                    if place_meeting(x , y + place_y - 1 + threshold, asset_get("par_jumpthrough")) || place_meeting(x , y + place_y - 1 + threshold, asset_get("par_jumpthrough")) || place_meeting(x , y + place_y - 1 + threshold, asset_get("par_block")) || place_meeting(x , y + place_y - 1 + threshold, asset_get("par_block")) for (i = 0; i < 50 && place_meeting(x , y + place_y - 1 + threshold, asset_get("par_jumpthrough")) || place_meeting(x , y + place_y - 1 + threshold, asset_get("par_jumpthrough")) || place_meeting(x , y + place_y - 1 + threshold, asset_get("par_block")) || place_meeting(x , y + place_y - 1 + threshold, asset_get("par_block")); i++){
                    	y--;
                    }
                    
					sound_play(block_datas[primary_block].sfx);
                    var new_b = instance_create(x, y + place_y, "obj_article_platform");
                    new_b.spr_dir = 1;
                    blocks--;
				}
			case 7: //punch
				if (window_timer == window_end){
					setWindow(down_down ? 5 : 2);
					attack_end();
					was_parried = false;
				}
				
				
				
				tauntFly();
				break;
				
		}
		
		if (window == clamp(window, 2, 7) && !free && (jump_pressed || (tap_jump_pressed && can_tap_jump()))){
			vsp = -7;
			if (window == 4) hsp *= 1.25;
		}
		
		break;
	
	
	
	case AT_TAUNT_2:
		
		hsp = 0;
		vsp = 0;
		can_move = 0;
		
		switch(window){
			case 1:
				bed_time = 0;
				if (window_timer == 24){
					sound_play(sfx_minecraft_pop);
					bed_x = x;
					bed_y = y;
					bed_spawn = true;
					with chat_owner{
						ds_list_add(chat_txt, "Respawn point set");
						ds_list_add(chat_tmr, chat_tmr_max);
						ds_list_add(chat_col, c_white);
					}
				}
				if has_rune("D") super_armor = 1;
				if window_timer == window_end super_armor = 0;
				break;
			case 2:
				if ((window_timer == window_end) && taunt_down) || has_rune("D"){
					if bed_time == bed_time_max || has_rune("D"){
						var spawn_y = y - 56;
						var hbox = create_hitbox(AT_USPECIAL, 3, x, spawn_y);
						hbox.can_hit_self = true;
						hbox.blast_blocks = true;
						spawn_hit_fx(x, spawn_y, vfx_tnt_blast);
						sound_play(sfx_minecraft_explode);
						set_state(PS_HITSTUN);
					}
					else{
						window_timer--;
						bed_time++;
					}
					
					if (bed_time == bed_time_max - bed_time_mid) sound_play(sfx_minecraft_fuse);
				}
				break;
			case 3:
				break;
		}
		
		break;
}



#define containerIncrement

var len = array_length_1d(containers) - 1;
next_container++;
if (next_container >= len) next_container -= len;



#define spawnVfx(count, vfx_type, x_off, y_off, behind)

for (i = 0; i < count; i++){
	var hfx_x = x + x_off + random_func(00 + i, 20, true) - 10;
	var hfx_y = y + y_off + random_func(10 + i, 20, true);
	var hfx_v = random_func(20 + i, 1, true) - 4;
	var hfx_h = random_func(30 + i, 4, true);
	hfx_h *= (i % 2) ? -1 : 1;
	var hfx_d = depth + (behind ? 1 : -1);
	var hfx_a = random_func(40 + i, 40, true) - 20;
	
	var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_type);
	hfx.hsp = hfx_h;
	hfx.vsp = hfx_v;
	hfx.depth = hfx_d;
	hfx.parent_y = y + y_off;
	hfx.asp = hfx_a;
	
	hfx.steve_manip_id = self;
	hfx.type = 3;
	hfx.num = i;
}



#define spawnCloudVfx(count, x_off, vfx)

for (i = 0; i < count; i++){
	var hfx_x = x + random_func(00 + i, 20, true) - 10 + x_off * spr_dir;
	var hfx_y = y - random_func(10 + i, 20, true);
	var hfx_v = random_func(20 + i, 8, true) - 6;
	var hfx_h = random_func(30 + i, 4, true);
	hfx_h *= (i % 2) ? -1 : 1;
	
	hfx_v *= 1;
	hfx_h *= 3;
	
	var hfx_d = depth + 1;
	var hfx_a = random_func(40 + i, 40, true) - 20;

	var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx);
	hfx.hsp = hfx_h;
	hfx.vsp = hfx_v;
	hfx.depth = hfx_d;
	hfx.parent_y = y;
	hfx.asp = hfx_a;
	
	hfx.steve_manip_id = self;
	hfx.type = 0;
	hfx.num = i - 2;
	
	hfx.go_up = 0.25;
	hfx.ignore_gravity = true;
}



#define loseItem(break_sound)

if phone_cheats[CHEAT_TMI] return;

switch(items[held_item]).count_type{
    case 0: //One-time use
    case 1: //Three uses, item count
    case 2: //Three uses, item durability
        items[held_item].count++;
        break;
    case 3: //One-time use, mercy whiff
        if has_hit items[held_item].count++;
        items[held_item].count++;
        break;
}

if items[held_item].count < items[held_item].count_max return;

if break_sound sound_play(sfx_minecraft_break_tool);
with items[held_item]{
    count = 0;
}
held_item = IT_NOTHING;

if break_sound spawnVfx(4, vfx_blocks_break_iron, 0, -32, 0);



#define setWindow(new_window)

window = new_window;
window_timer = 0;



#define tauntFly

if has_rune("J") && (free || up_down) && state_timer < 300{
	
	vsp = min(vsp, 0);
	
	if jump_down || up_down vsp = -3;
	
	if down_down vsp = 3;
	
	
	
	if abs(right_down - left_down) spr_dir = right_down - left_down;
	
	else{
		hsp -= 0.5 * sign(hsp);
		if abs(hsp) < 0.5 hsp = 0;
	}
	
}



if has_rune("J") && !free state_timer = 0;