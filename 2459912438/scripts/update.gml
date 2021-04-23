timer++;
phase_timer++;
state_timer++;
/*
if timer < 180 {
	sound_stop(asset_get("mfx_timertick"))
	sound_stop(asset_get("mfx_timertick2"))
	sound_stop(asset_get("sfx_go"))
	sound_stop(asset_get("sfx_321"))
	sound_stop(asset_get(""))
}
*/

//player/cpu stuff
var player_attack_pressed = false;
with oPlayer {
	if !custom_clone && !clone {
	    if (variable_instance_exists(id, "temp_level")) { //if has temp_level mean is cpu
	    	if get_player_damage(player) == 0 {
	    		take_damage(player, -1, 1);
	    	}
	    	is_cpu = true;
	    	is_dead = true;
	    	state = PS_DEAD;
	    	visible = false;
	    	x = 0;
	    	y = 0;
	    }
	    
	    if hp_current <= 0 {
	    	if !is_dead {
	    		with other {
	    			var inst = instance_create(other.x, other.y - (other.char_height/2), "obj_stage_article", 2);
	    				inst.type = "soul_broken";
	    				inst.image_blend = get_player_hud_color(other.player);
	    		}
	    		is_dead = true;
	    	}
	    	state = PS_DEAD;
	    	visible = false;
	    	x = 0;
	    	y = 0;
	    }
	    
	    if !is_dead && attack_pressed {
	        player_attack_pressed = true;
	    }
	    
	    if round(joy_dir/45) != joy_dir/45 {
	    	using_keyboard = false;
	    }
	}
}

if timer == 2 {
	with oPlayer {
		orig_hurtbox_spr = hurtbox_spr;
	}
}

var alive_players = 0;
with oPlayer {
	if !custom_clone && !clone && !is_cpu && !is_dead {
		alive_players++;
		timealive++;
	}
}

if alive_players == 0 && phase != 3 {
	phase = 3;
	state = 0;
	phase_timer = 0;
	state_timer = 0;
}

with obj_stage_article {
	if other.phase > 0 {
		if x < room_width/2 - 480 || y < room_height/2 - 240 || x > room_width/2 + 480 || y > room_height/2 + 300 {
			visible = false;
		} else {
			visible = true;
		}
	}
}

//camera
set_view_position(room_width/2 + roomXmod, room_height/2 + roomYmod + 32);
roomXmod = 0;
roomYmod = 0;

if mtt_take_damage {
	mtt_damage_timer++;
}

if mtt_dead {
	dead_timer++;
}

if mtt_damage_timer == 90 {
	mtt_take_damage = false;
	mtt_damage_timer = 0;
}

//logic code
switch phase {
	case 0: //intro
	switch state {
		case 0: //oh yes
		music_stop();
		if state_timer == 120 { sound_play(sound_get("oh_yes"), false, 0) }
		if state_timer == 300 {
            state++;
            state_timer = 0;
        }
		break;
		
		case 1: //floodlights + smoke + shadow
        if state_timer == 1 {
            var inst1 = instance_create(room_width/2 - 400, 0, "obj_stage_article", 2);
                inst1.type = "floodlight";
            var inst2 = instance_create(room_width/2 + 400, 0, "obj_stage_article", 2);
                inst2.type = "floodlight";
                inst2.spr_dir = -1;
        }
        
        if state_timer >= 140 {
            create_smoke();
        }
        
        if state_timer == 250 {
            spawn_mettaton();
            music_play_file("oh_my");
        }
        
    	with obj_stage_article {
        	if get_article_script(id) == 3 {
        		if other.state_timer == 250 {
	        		draw_shadow = true;
	        		image_alpha = 0;
	        	}
	        	
	        	if other.state_timer > 250 && shadow_alpha < 1 {
	        		shadow_alpha += 0.02;
	        	}
        	}
        }
        
        if state_timer == 350 {
            state++;
            state_timer = 0;
        }
        break;
        
        case 2: //oh my speech
        create_smoke();
        
        if state_timer == 1 {
        	spawn_textbox(1);
        	active_textbox.text_arr = intro_text;
        }
        
        if textbox_finished {
        	textbox_finished = false;
        	state++;
        	state_timer = 0;
        }
        break;
        
        case 3: //jojo reveal
        if state_timer == 20 {
            with (obj_stage_article) {
                if (get_article_script(id) == 1 || get_article_script(id) == 2) {
                    instance_destroy(id);
                }
            }
            spawn_mettaton();
        }
        
        if state_timer == 30 {
            music_stop();
            sound_play(sound_get("reveal"), false, 0);
        }
        
        if state_timer == 90 {
        	spawn_textbox(2);
        	active_textbox.text_arr = reveal_text;
        }
        
        if textbox_finished {
        	textbox_finished = false;
        	state = 0;
        	state_timer = 0;
        	phase++;
        	phase_timer = 0;
        	ratings_id = instance_create(room_width/2 - 440, 350, "obj_stage_article", 13);
        	current_randomise_rate = 59;
        	gotomenu();
        }
        break;
	}
	break;
	
	case 1: //menu
	switch state {
		case 0: //spawn state
		if state_timer == 1 {
			with oPlayer {
				attacksSurvived += 1;
			}
			select_timer = 0;
			battle_init();
			spawn_textbox(3);
			
			if hp_current/hp_total < 0.2 {
				flavour_index = 4;
				active_textbox.text_arr = flavour_text[flavour_index];
			} else if flavour_index == 1 {
				var _flavour_index = 1 + (timer mod 2)*2;
				active_textbox.text_arr = flavour_text[_flavour_index];
			} else {
				active_textbox.text_arr = flavour_text[flavour_index];
			}
			
			active_textbox.can_attack_skip = false;
			
			with obj_stage_article {
	        	if get_article_script(id) == 3 {
		        	//image_alpha = 0.5;
		        	image_blend = c_gray;
	        	}
	        }
		}
		
		if button_selected != undefined && state_timer > 20 {
			select_timer++;
			if select_timer == 1 {
            	active_textbox.text_type = 100;
            	mtt_damage = 0;
			}
            switch button_selected {
                case "Fight":
                with obj_stage_article {
		        	if get_article_script(id) == 3 {
			        	//image_alpha = clamp(image_alpha + 0.1, 0.5, 1);
			        	image_blend = c_white;
		        	}
		        }
		        
		        var has_arms = false;
                with obj_stage_article {
                	if get_article_script(id) == 3 && arms_on {
                		has_arms = true;
                	} 
                }
		        
		        var _num_markers = 0;
                if attack_marker_exists {
                	with obj_stage_article {
                		if get_article_script(id) == 19 {
                			_num_markers++;
                		}
                	}
                }
                
		        if select_timer >= 330 && _num_markers < 4 {
                	with obj_stage_article {
			        	if get_article_script(id) == 19 {
				        	instance_destroy(id);
			        	}
			        }
			        attack_marker_exists = false;
                }
                
                if select_timer > 5 && !attack_marker_exists && !mtt_hit {
                	var vfx = instance_create(room_width/2, 420, "obj_stage_article", 2);
                		vfx.type = "pan_hit_large"
                	mtt_hit = true;
                	with obj_stage_article {
			        	if get_article_script(id) == 2 && type == "attack_bar" {
				        	mtt_hit = true;
			        	}
			        }
                }
                
                attack_marker_exists = false;
                
                //subtract health
                if mtt_take_damage && !mtt_has_took_damage {
                	hp_old = hp_current;
                	hp_current -= mtt_damage;
                	if hp_current < 0 {
                		hp_current = 0;
                	}
                	mtt_has_took_damage = true;
                }
                
                if mtt_take_damage {
                	if mtt_damage_timer == 1 {
                		sound_play(sound_get("damage"), false, 0);
                		ratings_id.rating_level += action_boost;
						ratings_id.display_text = ["Action", action_boost];
						if action_boost > 50 {
							action_boost -= 50;
						}
                	}
                }
                
                if mtt_damage_timer == 10 && has_arms && hp_current > hp_total/3 {
                	sound_play(sound_get("yeah"), false, 0)
                }
                
                if mtt_damage_timer == 70 {
                	state = 0;
		        	state_timer = 0;
		        	phase++;
		        	phase_timer = 0;
                }
                
                if select_timer == 1 {
                	mtt_hit = false;
                	if instance_exists(active_textbox) {
                		instance_destroy(active_textbox);
                	}
                	remove_buttons();
                	draw_attack_bar = true;
                	var attack_bar = instance_create(room_width/2, 564, "obj_stage_article", 2);
                		attack_bar.type = "attack_bar";
                } else if select_timer == 340 && !mtt_hit {
                	gotomenu();
                	with obj_stage_article {
                		if (get_article_script(id) == 2 && type == "attack_bar") || get_article_script(id) == 19 {
                			instance_destroy(id);
                		}
                	}
                }
                break;
                
                case "Act":
                menu_index = 0;
                active_textbox.text_arr = menu_text[menu_index];
                var has_acted = false;
                with oPlayer {
                	if !is_dead && !custom_clone && !clone && !has_acted {
	                    if state == PS_PARRY {
	                        other.act_index = 0;
	                        other.state++;
	                        other.state_timer = 0;
	                        has_acted = true;
	                    } else if state == PS_ATTACK_GROUND && (up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed) && !is_aether_stage() {
	                        other.act_index = 1;
	                        other.state++;
	                        other.state_timer = 0;
	                        has_acted = true;
	                    } else if state == PS_ATTACK_GROUND && taunt_pressed { //pose
	                        other.act_index = 2;
	                        other.state++;
	                        other.state_timer = 0;
	                        var percent_hp = 100*hp_current/hp_max;
	                        for (var i = 0; i < array_length(other.pose_text[1]); i++) {
	                        	if percent_hp < other.pose_text[1,i] {
	                        		other.act_text[2,0] = other.pose_text[0,i];
	                        	}
	                        }
	                        with other {
	                        	pose_boost = 600 - (percent_hp*5);
	                        	ratings_id.rating_level += pose_boost;
								ratings_id.display_text = ["Dramatic", pose_boost];
	                        }
	                        has_acted = true;
	                    } else if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && special_pressed && !is_aether_stage() {
	                        other.act_index = 3;
	                        other.state++;
	                        other.state_timer = 0;
	                        has_acted = true;
	                    }
                	}
                }
                break;
                
                case "Item":
                //print_debug(string(menu_index))
                //print_debug(string(active_textbox.text_arr))
                if select_timer == 1 {
                	menu_index = 1;
                	active_textbox.text_arr = array_create(4, "");
                	var nyeh = array_copy(active_textbox.text_arr, 0, menu_text[1], 0, 4);
                	
                }
                with oPlayer {
                	if !is_dead && !custom_clone && !clone {
                		if (state == PS_ROLL_FORWARD && spr_dir == -1) || (state == PS_ROLL_BACKWARD && spr_dir == 1) {
                			other.menu_index = 2;
                			array_copy(other.active_textbox.text_arr, 0, other.menu_text[1], 4, 4);
                		} else if (state == PS_ROLL_FORWARD && spr_dir == 1) || (state == PS_ROLL_BACKWARD && spr_dir == -1) {
                			other.menu_index = 1;
                			array_copy(other.active_textbox.text_arr, 0, other.menu_text[1], 0, 4);
                		} else if state == PS_PARRY && other.menu_text[1, 0 + (other.menu_index-1)*4] != "" {
	                        other.item_index = 0;
	                        other.state = 2;
	                        other.state_timer = 0;
	                    } else if state == PS_ATTACK_GROUND && (up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed) && other.menu_text[1, 1 + (other.menu_index-1)*4] != "" {
	                        other.item_index = 1;
	                        other.state = 2;
	                        other.state_timer = 0;
	                    } else if state == PS_ATTACK_GROUND && taunt_pressed && other.menu_text[1, 2 + (other.menu_index-1)*4] != "" {
	                        other.item_index = 2;
	                        other.state = 2;
	                        other.state_timer = 0;
	                    } else if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && special_pressed && other.menu_text[1, 3 + (other.menu_index-1)*4] != "" {
	                        other.item_index = 3;
	                        other.state = 2;
	                        other.state_timer = 0;
	                    }
                	}
                }
                break;
                
                case "Mercy":
                if instance_exists(active_textbox) {
            		instance_destroy(active_textbox);
            	}
            	gotomenu();
            	remove_buttons();
            	button_selected = undefined;
            	state_timer = 2;
            	select_timer = 0;
				battle_init();
				spawn_textbox(3);
				active_textbox.text_arr = flavour_text[flavour_index];
				active_textbox.can_attack_skip = false;
				
				with obj_stage_article {
		        	if get_article_script(id) == 3 {
			        	//image_alpha = 0.5;
			        	image_blend = c_gray;
		        	}
		        }
                break;
            }
        }
        
        if timer mod 15 == 0 && ratings_id != undefined && button_selected != "Fight" {
	    	ratings_id.rating_level--;
	    }
		break;
		
		case 1: //after-selection text (act)
		if state_timer == 1 {
            remove_buttons();
            active_textbox.can_attack_skip = true;
            active_textbox.text_type = 4;
            active_textbox.text_current = "";
            active_textbox.finished = false;
            active_textbox.text_arr = act_text[act_index];
            
            with obj_stage_article {
                if get_article_script(id) == 3 {
                    randomise_rate = 0;
                }
            }
        }
        
        with obj_stage_article {
        	if get_article_script(id) == 3 {
	        	//image_alpha = 0.5;
	        	image_blend = c_gray;
        	}
        }
        
        if textbox_finished {
        	textbox_finished = false;
        	state = 0;
        	state_timer = 0;
        	phase++;
        	phase_timer = 0;
        }
		break;
		
		case 2: //after-selection text (item)
		//print_debug(string(item_text))
		if state_timer == 1 {
            remove_buttons();
            active_textbox.can_attack_skip = true;
            active_textbox.text_type = 4;
            active_textbox.text_current = "";
            active_textbox.finished = false;
            var _index = item_index + (menu_index - 1)*4;
            print_debug(string(_index))
            active_textbox.text_arr = [item_text[_index]];
            menu_text[1, _index] = "";
            
            var fully_recovered = false;
            with oPlayer {
            	if !is_dead && !custom_clone && !clone {
            		var heal = other.item_stats[0, _index];
	            	take_damage(player, -1, -heal);
					hp_current += heal;
					healthRecovered += heal;
					if hp_current > hp_max {
						healthRecovered -= hp_current - hp_max;
						hp_current = hp_max;
						fully_recovered = true;
					}
            	}
            }
            if fully_recovered {
            	var addontext = "
Your HP was maxed out."
            } else {
            	var addontext = "
You recovered " + string(item_stats[0,_index]) + " HP!"
            }
            active_textbox.text_arr = [item_text[_index] + addontext];
            
            var _ratings = item_stats[1, _index];
            ratings_id.rating_level += _ratings;
            if _ratings < 0 {
				ratings_id.display_text = ["Disgust", _ratings];
            } else if _ratings > 0 {
            	ratings_id.display_text = ["OnBrandFood", _ratings];
            }
            
            with obj_stage_article {
                if get_article_script(id) == 3 {
                    randomise_rate = 0;
                }
            }
        }
        
        with obj_stage_article {
        	if get_article_script(id) == 3 {
	        	//image_alpha = 0.5;
	        	image_blend = c_gray;
        	}
        }
        
        for (var i = 0; i < array_length(menu_text[1]); i++) {
        	if menu_text[1,i] == "" {
        		if i < 7 {
        			menu_text[1,i] = menu_text[1,i+1];
        			menu_text[1,i+1] = "";
        			
        			item_text[i] = item_text[i+1];
        			item_text[i+1] = "";
        			
        			item_stats[0,i] = item_stats[0,i+1];
        			item_stats[0,i+1] = 0;
        			item_stats[1,i] = item_stats[1,i+1];
        			item_stats[1,i+1] = 0;
        		}
        	}
        }
        
        if textbox_finished {
        	textbox_finished = false;
        	state = 0;
        	state_timer = 0;
        	phase++;
        	phase_timer = 0;
        }
		break;
	}
	break;
	
	case 2: //attack
	switch state {
		case 0: //pre-attack speech
		if hp_current > 0 {
			with obj_stage_article {
	        	if get_article_script(id) == 3 {
		        	//image_alpha = clamp(image_alpha - 0.05, 0.5, 1);
		        	image_blend = c_gray;
	        	}
	        }
		}
		if state_timer == 1 {
			with obj_stage_article {
	        	if get_article_script(id) == 3 {
	        		if type == "head" && old_image_index != undefined {
		        		image_index = old_image_index;
		        		old_image_index = undefined;
	        		}
	        	}
	        }
	        var textbox_type = 5;
	        if attack_index >= 19 {
	        	freeplay = true;
				var rand_indexes = [6,8,14,16,10];
				attack_index = rand_indexes[timer mod 5];
			}
	        if ratings_id.rating_level > ratings_id.rating_level_max {
	        	spawn_textbox(5);
				active_textbox.text_arr = pacifist_text;
	        } else if hp_current <= 0 {
	        	spawn_textbox(5);
				active_textbox.text_arr = neutral_text;
	        } else {
				switch attack_index {
					case 0:
					make_box(300, 300);
					flavour_index++;
					textbox_type = 7;
					break;
					
					case 1:
					make_box(400, 400);
					textbox_type = 7;
					break;
					
					case 2:
			        make_box(300, 300);
			        textbox_type = 7;
			        break;
			        
			        case 3:
			        make_box(300, 300);
			        textbox_type = 7;
			        break;
			        
			        case 5:
			        make_box(400, 400);
			        with obj_stage_article {
			    		if get_article_script(id) == 3 {
			    			randomise_rate = 0;
			    			pose_index = 0;
			    			leg_anim_mode = 0;
			    			yoffset = 0;
			    			image_index = 0;
			    			heart2heart = true;
			    		}
			    	}
			        break;
			        
			        case 6:
			        make_box(300, 300);
			        textbox_type = 7;
			        break;
			        
			        case 7:
			        make_box(360, 300);
			        break;
			        
			        case 8:
			        make_box(360, 300);
			        textbox_type = 7;
			        break;
			        
			        case 9:
			        make_box(160, 400);
			        textbox_type = 7;
			        break;
			        
			        case 10:
			        make_box(160, 400);
			        textbox_type = 7;
			        break;
			        
			        case 11:
			        make_box(380, 300);
			        break;
			        
			        case 12:
			        make_box(400, 400);
			        with obj_stage_article {
			    		if get_article_script(id) == 3 {
			    			randomise_rate = 0;
			    			pose_index = 0;
			    			leg_anim_mode = 0;
			    			yoffset = 0;
			    			image_index = 0;
			    			heart2heart = true;
			    		}
			    	}
			        break;
			        
			        case 13:
			        make_box(290, 430);
			        with obj_stage_article {
			    		if get_article_script(id) == 3 && type == "head" {
			    			image_index = 14;
			    			change_face = false;
			    		}
			    	}
			        break;
			        
			        case 14:
			        make_box(290, 430);
			        textbox_type = 7;
			        break;
			        
			        case 15:
			        make_box(300, 300);
			        textbox_type = 7;
			        break;
			        
			        case 16:
			        make_box(300, 300);
			        textbox_type = 7;
			        break;
			        
			        case 17:
			        make_box(160, 400);
			        with obj_stage_article {
			    		if get_article_script(id) == 3 && type == "head" {
			    			image_index = 6;
			    		}
			    	}
			        break;
			        
			        case 18:
			        make_box(420, 340);
			        with obj_stage_article {
			    		if get_article_script(id) == 3 {
			    			randomise_rate = 0;
			    			pose_index = 0;
			    			leg_anim_mode = 0;
			    			yoffset = 0;
			    			image_index = 0;
			    			heart2heart = true;
			    			
			    			if type == "head" {
			    				image_index = 6;
			    			}
			    		}
			    	}
			        break;
			        /*
			        case 19:
			        make_box(420, 340);
			        break;
			        */
				}
				
				if freeplay {
					textbox_type = 5;
				}
				
				spawn_textbox(textbox_type);
				active_textbox.text_arr = speech_text[speech_index];
				if speech_index < 20 {
					speech_index++;
				}
	        }
		}
		
		if ratings_id.rating_level > ratings_id.rating_level_max && instance_exists(active_textbox) {
			if active_textbox.text_index <= 1 music_stop();
			if active_textbox.text_index == 3 music_play_file("for_the_fans")
			var face_index = pacifist_face[active_textbox.text_index];
			with obj_stage_article {
	    		if get_article_script(id) == 3 && type == "head" {
	    			image_index = face_index;
	    		}
	    	}
		} else if hp_current <= 0 && instance_exists(active_textbox) {
			music_stop();
			var face_index = neutral_face[active_textbox.text_index];
			with obj_stage_article {
	    		if get_article_script(id) == 3 && type == "head" {
	    			image_index = face_index;
	    		}
	    	}
		} else if attack_index == 17 && instance_exists(active_textbox) {
			if active_textbox.text_index == 2 {
				with obj_stage_article {
		    		if get_article_script(id) == 3 && type == "head" {
		    			image_index = 15;
		    		}
		    	}
			}
		} else if attack_index == 18 && instance_exists(active_textbox) {
			if active_textbox.text_index == 2 {
				with obj_stage_article {
		    		if get_article_script(id) == 3 && type == "head" {
		    			image_index = 13;
		    		}
		    	}
			}
			if active_textbox.text_index == 3 {
				with obj_stage_article {
		    		if get_article_script(id) == 3 && type == "head" {
		    			image_index = 14;
		    		}
		    	}
			}
		}
		
		if textbox_finished {
			if hp_current <= 0 {
        		mtt_dead = true;
        	}
        	textbox_finished = false;
        	if !mtt_dead {
        		if rating_level > rating_level_max {
        			phase = 5;
	        		phase_timer = 0;
	        		state = 0;
	        		state_timer = 0;
	        		mtt_dead = true;
        		} else {
	        		state++;
	        		state_timer = 0;
        		}
        	} else {
        		phase = 4;
        		phase_timer = 0;
        		state = 0;
        		state_timer = 0;
        	}
        }
        
        boast_boost = true;
		break;
		
		case 1: //mettaton attack sequence
		//spawn player shadows
		if state_timer == 1 && attack_index != 4 {
			heart_ids = [undefined,undefined,undefined,undefined]
			with oPlayer {
				if !is_dead && !is_cpu && !custom_clone && !clone {
					with other {
						var heart = instance_create(other.x, other.y, "obj_stage_article", 20);
							heart.target_id = other.id;
							heart.depth = -10;
						heart_ids[other.player-1] = heart;
					}
					attack_invince = true;
					invince_time = 10;
				}
			}
		}
		
		switch attack_index {
			case 0: //legs
			if state_timer == 2 {
	    		spawn_leg_proj(room_width/2 + 140, 200, 1, "white", 8, 3);
	    		spawn_leg_proj(room_width/2 - 140, -30, -1, "white", 8, 3);
			} else if state_timer == 80 {
    			spawn_leg_proj(room_width/2 - 120, 0, 1, "yellow", 8, 4.5);
    			spawn_leg_proj(room_width/2 + 50, 0, -1, "yellow", 8, 4.5);
			} else if state_timer == 180 {
    			spawn_leg_proj(room_width/2 - 50, 0, 1, "yellow", 8, 4.5);
    			spawn_leg_proj(room_width/2 + 120, 0, -1, "yellow", 8, 4.5);
			} else if state_timer == 420 {
	    		remove_box();
	    		destroy_attacks();
			} else if state_timer == 440 {
	    		gotomenu();
	    		attack_index++
			}
			break;
			
			case 1: //bombs/mini-mtts
	    	if state_timer == 1 {
	    		spawn_bomb_proj(room_width/2, 200, 2);
	    		spawn_bomb_proj(room_width/2 + 50, 100, 2);
	    		spawn_bomb_proj(room_width/2 - 100, 0, 2);
	    		spawn_bomb_proj(room_width/2 - 25, -100, 2);
	    		
	    		spawn_mini_mtt(room_width/2 + 160, 0, 0, 3);
	    		spawn_mini_mtt(room_width/2 + 160, -100, 0, 3);
	    		spawn_mini_mtt(room_width/2 + 160, -200, 0, 3);
	    		spawn_mini_mtt(room_width/2 + 160, -300, 0, 3);
	    		spawn_mini_mtt(room_width/2 - 160, 0, 0, 3);
	    		spawn_mini_mtt(room_width/2 - 160, -100, 0, 3);
	    		spawn_mini_mtt(room_width/2 - 160, -200, 0, 3);
	    		spawn_mini_mtt(room_width/2 - 160, -300, 0, 3);
	    	} else if state_timer == 400 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 420 {
	    		gotomenu();
	    		attack_index++
	    	}
	    	
	    	with obj_stage_article {
	    		if get_article_script(id) == 8 && !was_hit {
					if y >= 450 { vsp = clamp(vsp - 0.08, 0.5, 3) }
					if y >= 500 { throw_hearts = true }
					if throw_timer >= 20 { hsp = x > room_width/2 ? hsp + 0.1 : hsp - 0.1 }
	    		}
	    	}
	    	break;
	    	
	    	case 2: //legs + blocks
	    	if state_timer == 1 {
	    		spawn_leg_proj(room_width/2 + 150, 200, 1, "white", 8, 3);
	    		spawn_leg_proj(room_width/2 + 150, 120, 1, "white", 8, 3);
	    		spawn_leg_proj(room_width/2 + 150, 40, 1, "white", 8, 3);
	    		spawn_block_proj(room_width/2, 0, 0, 3, true);
	    		spawn_block_proj(room_width/2, -40, 0, 3, true);
	    		spawn_block_proj(room_width/2, -160, 0, 3, true);
	    		spawn_block_proj(room_width/2, -200, 0, 3, true);
	    	} else if state_timer == 160 {
	    		spawn_leg_proj(room_width/2 - 150, 200, -1, "white", 8, 3);
	    		spawn_leg_proj(room_width/2 - 150, 120, -1, "white", 8, 3);
	    		spawn_leg_proj(room_width/2 - 150, 40, -1, "white", 8, 3);
	    	} else if state_timer == 400 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 420 {
	    		gotomenu();
	    		attack_index++
	    	}
	    	
	    	with obj_stage_article {
	    		if get_article_script(id) == 10 && !was_hit {
	    			hsp = dcos(timer*2)*1.5;
	    		}
	    	}
	    	break;
	    	
	    	case 3: //arms + mini-mtts
	    	if state_timer == 1 {
	    		spawn_arm_proj(room_width/2, 100, 1, 3, 300, room_width/2 - 100, 1.4, 20);
	    	} else if state_timer == 30 {
				spawn_mini_mtt(room_width/2 + 80, 100, 0, 2.5);
				spawn_mini_mtt(room_width/2 + 40, 100, 0, 2.5);
				spawn_mini_mtt(room_width/2, 100, 0, 2.5);
				spawn_mini_mtt(room_width/2 - 40, 100, 0, 2.5);
				spawn_mini_mtt(room_width/2 - 80, 100, 0, 2.5);
	    	} else if state_timer == 180 {
	    		spawn_arm_proj(room_width/2, 100, -1, 3, 300, room_width/2 + 100, 1.4, 20);
	    	} else if state_timer == 400 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer ==  420 {
	    		gotomenu();
	    		attack_index++;
	    	}
	    	
	    	with obj_stage_article {
				if get_article_script(id) == 8 && !was_hit {
					if y >= 450 { vsp = clamp(vsp - 0.08, 0.5, 3) }
					if y >= 500 { throw_hearts = true }
					if throw_timer >= 20 { hsp = x > room_width/2 ? hsp + 0.1 : hsp - 0.1 }
				}
	    	}
	    	break;
	    	
	    	case 4: //essay
	    	if state_timer == 1 {
	            essay_textbox = instance_create(room_width/2, room_height/2 - 80, "obj_stage_article", 1);
	            essay_textbox.text_type = 6;
	            essay_textbox.text_arr = ["lol"];
	    	} else if state_timer == 300 {
	    		spawn_textbox(5);
	    		active_textbox.text_arr = ["Nice. You get a
gold star."];
				essay_textbox.timer = 300;
				ratings_id.rating_level += 100;
				ratings_id.display_text = ["Writing", 100];
	    	}
	    	
	    	if state_timer < 300 && state_timer > 10 {
		    	var essay_word = "";
				with oPlayer {
					if !is_dead && !custom_clone && !clone {
						if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer == 1 {
							switch attack {
								case 1: essay_word = "Jab" break;
								case 4: essay_word = "Ftilt" break;
								case 5: essay_word = "Dtilt" break;
								case 6: essay_word = "Utilt" break;
								case 7: essay_word = "Fstrong" break;
								case 8: essay_word = "Dstrong" break;
								case 9: essay_word = "Ustrong" break;
								case 10: essay_word = "Dattack" break;
								case 11: essay_word = "Fair" break;
								case 12: essay_word = "Bair" break;
								case 13: essay_word = "Dair" break;
								case 14: essay_word = "Uair" break;
								case 15: essay_word = "Nair" break;
								case 16: essay_word = "Fspecial" break;
								case 17: essay_word = "Dspecial" break;
								case 18: essay_word = "Uspecial" break;
								case 19: essay_word = "Nspecial" break;
								case 35:
								other.state_timer = 299;
								other.essay_textbox.timer = 299;
								break;
							}
							with other {
								if string_width(essay_textbox.text_current) < 240 {
									essay_textbox.text_current += essay_word;
								}
							}
						}
					}
				}
	    	}
	    	
	    	if textbox_finished {
		        textbox_finished = false;
				instance_destroy(essay_textbox);
		        attack_index++;
		        flavour_index = 2;
		        current_randomise_rate = 41;
		        gotomenu();
		    }
	    	break;
	    	
	    	case 5: //heart to heart
	    	if state_timer == 1 {
		    	spawn_heart2heart(room_width/2, 420, 0);
		    	heart_exploded = false;
	    	}
	    	
	    	if state_timer mod 300 == 150 {
	    		spawn_mini_mtt(room_width/2 + 130, 100, 0, 2.5);
				spawn_mini_mtt(room_width/2 - 130, 100, 0, 2.5);
	    	}
	    	
	    	
	    	with obj_stage_article {
	    		if get_article_script(id) == 8 && !was_hit {
					if y >= 380 { vsp = clamp(vsp - 0.08, 0.5, 3) }
					if y >= 400 { throw_hearts = true }
					if throw_timer >= 40 { hsp = x > room_width/2 ? hsp + 0.1 : hsp - 0.1 }
				} else if get_article_script(id) == 14 {
	    			if explode_timer == 40 {
	    				with other {
		    				remove_box();
		    				destroy_attacks();
	    				}
	    			}
	    			if explode_timer == 60 {
						with obj_stage_article {
				    		if get_article_script(id) == 3 {
				    			heart2heart = false;
				    			shocked_face = false;
				    			can_draw_heart = true;
				    			if type == "head" {
				    				image_index = 0;
				    			}
				    		}
						}
						other.heart_exploded = true;
						instance_destroy(id);
	    			}
	    		}
	    	}
	    	
	    	if heart_exploded {
	    		gotomenu();
	    		destroy_attacks();
	    		attack_index++;
	    		flavour_index = 1;
	    	}
	    	break;
	    	
	    	case 6: //mini-mtt storm
	    	if state_timer == 1 {
	    		for (var i = 0; i < 9; i++) {
	    			spawn_mini_mtt(room_width/2 + random_func_2(i, 200, true) - 100, 150 - (i*40), 0, 3);
	    		}
	    	} else if state_timer == 360 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer ==  380 {
	    		current_randomise_rate = 35;
	    		attack_index++;
	    		gotomenu();
	    	}
	    	
	    	var mini_mtt_exists = false;
	    	with obj_stage_article {
	    		if get_article_script(id) == 8 || get_article_script(id) == 9 {
	    			mini_mtt_exists = true;
	    		}
	    	}
	    	
	    	if !mini_mtt_exists && state_timer > 60 && state_timer < 340 {
	    		state_timer = 340;
	    	}
	    	
	    	with obj_stage_article {
				if get_article_script(id) == 8 && !was_hit {
					if y >= 450 { vsp = clamp(vsp - 0.08, 0.5, 3) }
					if y >= 500 { throw_hearts = true }
					if throw_timer >= 20 { hsp = x > room_width/2 ? hsp + 0.1 : hsp - 0.1 }
				}
	    	}
	    	break;
	    	
	    	case 7: //disco ball
	    	if state_timer == 1 {
	    		spawn_disco_ball(room_width/2 - 20, 300, 60, 1.2, 100);
	    	} else if state_timer == 660 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 680 {
	    		attack_index++;
	    		current_randomise_rate = 31;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 8: //disco ball 2
	    	if state_timer == 1 {
	    		spawn_disco_ball(room_width/2 - 20, 300, 0, 1.8, 80);
	    	} else if state_timer == 480 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 500 {
	    		attack_index++;
	    		current_randomise_rate = 21;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 9: //narrow bombs
	    	if state_timer mod 200 == 1 && state_timer < 320 {
	    		spawn_bomb_proj(room_width/2 + 35, 100, 3);
	    		spawn_block_proj(room_width/2 - 35, 100, 0, 3, false);
	    	}
	    	
	    	if state_timer mod 200 == 101 && state_timer < 320 {
	    		spawn_bomb_proj(room_width/2 - 35, 100, 3);
	    		spawn_block_proj(room_width/2 + 35, 100, 0, 3, false);
	    	}
	    	
	    	var all_destroyed = true;
	    	with obj_stage_article {
	    		if get_article_script(id) == 7 {
	    			all_destroyed = false;
	    		}
	    	}
	    	
	    	if state_timer > 320 && state_timer < 500 && all_destroyed {
	    		state_timer = 500;
	    	}
	    	
	    	if state_timer == 520 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 540 {
	    		attack_index++;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 10: //narrow bombs 2
	    	if state_timer mod 150 == 1 && state_timer < 380 {
	    		spawn_bomb_proj(room_width/2 + 30, 100, 4);
	    		spawn_block_proj(room_width/2 - 30, 100, 0, 4, false);
	    	}
	    	
	    	if state_timer mod 150 == 76 && state_timer < 380 {
	    		spawn_bomb_proj(room_width/2 - 30, 100, 4);
	    		spawn_block_proj(room_width/2 + 30, 100, 0, 4, false);
	    	}
	    	
	    	var all_destroyed = true;
	    	with obj_stage_article {
	    		if get_article_script(id) == 7 {
	    			all_destroyed = false;
	    		}
	    	}
	    	
	    	if state_timer > 310 && state_timer < 520 && all_destroyed {
	    		state_timer = 520;
	    	}
	    	
	    	if state_timer == 540 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 560 {
	    		attack_index++;
	    		current_randomise_rate = 14;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 11: //break time
	    	if state_timer == 1 {
	    		var breaktime = instance_create(room_width/2, room_height/2 - 80, "obj_stage_article", 2);
	    			breaktime.type = "breaktime";
	    	} else if state_timer == 260 {
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 280 {
	    		attack_index++;
	    		current_randomise_rate = 7;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 12: //heart to heart 2
	    	if state_timer == 1 {
		    	spawn_heart2heart(room_width/2, 420, 1);
		    	heart_exploded = false;
	    	}
	    	
	    	if state_timer mod 300 == 150 {
	    		spawn_mini_mtt(room_width/2 + 130, 100, 0, 2.5);
				spawn_mini_mtt(room_width/2 - 130, 100, 0, 2.5);
	    	}
	    	
	    	with obj_stage_article {
	    		if get_article_script(id) == 8 && !was_hit {
					if y >= 380 { vsp = clamp(vsp - 0.08, 0.5, 3) }
					if y >= 400 { throw_hearts = true }
					if throw_timer >= 40 { hsp = x > room_width/2 ? hsp + 0.1 : hsp - 0.1 }
				}
	    		if get_article_script(id) == 14 {
	    			if explode_timer == 1 {
	    				with obj_stage_article {
				    		if get_article_script(id) == 3 {
				    			arms_on = false;
				    			change_face = false;
				    		}
						}
	    			}
	    			if explode_timer == 40 {
	    				with other {
		    				remove_box();
		    				destroy_attacks();
	    				}
	    			}
	    			if explode_timer == 60 {
						with obj_stage_article {
				    		if get_article_script(id) == 3 {
				    			heart2heart = false;
				    			can_draw_heart = true;
				    			shocked_face = false;
				    			if type == "head" {
				    				image_index = 0;
				    			}
				    		}
						}
						other.heart_exploded = true;
						instance_destroy(id);
	    			}
	    		}
	    	}
	    	
	    	if heart_exploded {
	    		gotomenu();
	    		destroy_attacks();
	    		attack_index++;
	    		current_randomise_rate = 120;
	    	}
	    	break;
	    	
	    	case 13: //rewind
	    	if state_timer < 400 {
	    		if state_timer mod 80 == 1 {
			    	for (var i = 0; i < 4; i++) {
			    		var spawn_type = random_func_2(i, 2, true);
			    		if spawn_type == 0 {
			    			spawn_bomb_proj(room_width/2 - 110 + (70*i), 100, 3.5);
			    		} else {
			    			spawn_block_proj(room_width/2 - 110 + (70*i), 100, 0, 3.5, true);
			    		}
			    	}
	    		}
	    	} else {
	    		with obj_stage_article {
	    			if get_article_script(id) == 7 || get_article_script(id) == 10 {
	    				vsp = clamp(vsp - 0.1, -3.5, 3.5);
	    			}
	    		}
	    	}
	    	
	    	if state_timer == 740 {
	    		with obj_stage_article {
		    		if get_article_script(id) == 3 {
		    			arms_on = false;
		    		}
				}
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 760 {
	    		attack_index++;
	    		current_randomise_rate = 120;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 14: //rewind 2
	    	if state_timer < 400 {
	    		if state_timer mod 60 == 1 {
			    	for (var i = 0; i < 4; i++) {
			    		var spawn_type = random_func_2(i, 2, true);
			    		if spawn_type == 0 {
			    			spawn_bomb_proj(room_width/2 - 110 + (70*i), 100, 4);
			    		} else {
			    			spawn_block_proj(room_width/2 - 110 + (70*i), 100, 0, 4, true);
			    		}
			    	}
	    		}
	    	} else {
	    		with obj_stage_article {
	    			if get_article_script(id) == 7 || get_article_script(id) == 10 {
	    				vsp = clamp(vsp - 0.1, -4, 4);
	    			}
	    		}
	    	}
	    	
	    	if state_timer == 740 {
	    		with obj_stage_article {
		    		if get_article_script(id) == 3 {
		    			arms_on = false;
		    			change_face = false;
		    		}
				}
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 760 {
	    		attack_index++;
	    		current_randomise_rate = 120;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 15: //bomb/block storm
	    	if state_timer < 200 {
	    		if state_timer mod 10 == 1 {
		    		var spawn_type = random_func_2(0, 2, true);
		    		var rand_x = random_func_2(1, 300, true) - 150;
		    		var rand_spd = (random_func_2(2, 2, false) - 1)/4;
		    		if spawn_type == 0 {
		    			spawn_bomb_proj(room_width/2 + rand_x, 100, 4 + rand_spd);
		    		} else {
		    			spawn_block_proj(room_width/2 + rand_x, 100, 0, 4 + rand_spd, true);
		    		}
	    		}
	    	}
	    	
	    	if state_timer == 320 {
	    		with obj_stage_article {
		    		if get_article_script(id) == 3 {
		    			arms_on = false;
		    			change_face = false;
		    		}
				}
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 340 {
	    		attack_index++;
	    		current_randomise_rate = 120;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 16: //bomb/block storm 2
	    	if state_timer < 200 {
	    		if state_timer mod 8 == 1 {
		    		var spawn_type = random_func_2(0, 2, true);
		    		var rand_x = random_func_2(1, 300, true) - 150;
		    		var rand_spd = (random_func_2(2, 2, false) - 1)/4;
		    		if spawn_type == 0 {
		    			spawn_bomb_proj(room_width/2 + rand_x, 100, 5 + rand_spd);
		    		} else {
		    			spawn_block_proj(room_width/2 + rand_x, 100, 0, 5 + rand_spd, true);
		    		}
	    		}
	    	}
	    	
	    	if state_timer == 320 {
	    		with obj_stage_article {
		    		if get_article_script(id) == 3 {
		    			arms_on = false;
		    		}
				}
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 340 {
	    		attack_index++;
	    		current_randomise_rate = 120;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 17: //narrow bombs 3
	    	if state_timer mod 150 == 1 && state_timer < 380 {
	    		spawn_bomb_proj(room_width/2 + 35, 100, 4);
	    		spawn_block_proj(room_width/2 - 35, 100, 0, 4, false);
	    	}
	    	
	    	if state_timer mod 150 == 76 && state_timer < 380 {
	    		spawn_bomb_proj(room_width/2 - 35, 100, 4);
	    		spawn_block_proj(room_width/2 + 35, 100, 0, 4, false);
	    	}
	    	
	    	var all_destroyed = true;
	    	with obj_stage_article {
	    		if get_article_script(id) == 7 {
	    			all_destroyed = false;
	    		}
	    	}
	    	
	    	if state_timer > 310 && state_timer < 520 && all_destroyed {
	    		state_timer = 520;
	    	}
	    	
	    	if state_timer == 540 {
	    		with obj_stage_article {
		    		if get_article_script(id) == 3 {
		    			arms_on = false;
		    			change_face = false;
		    		}
				}
	    		remove_box();
	    		destroy_attacks();
	    	} else if state_timer == 560 {
	    		attack_index++;
	    		gotomenu();
	    	}
	    	break;
	    	
	    	case 18: //heart to heart 3
	    	if state_timer == 1 {
		    	spawn_heart2heart(room_width/2, 420, 2);
		    	heart_exploded = false;
	    	} else if state_timer mod 400 == 100 {
	    		spawn_leg_stab(room_width/2 - 200, 300, 1);
	    	} else if state_timer mod 400 == 180 {
	    		spawn_leg_stab(room_width/2 + 200, 300, -1);
	    	}
	    	
	    	with obj_stage_article {
	    		if get_article_script(id) == 14 {
	    			if explode_timer == 1 {
	    				with obj_stage_article {
				    		if get_article_script(id) == 3 {
				    			legs_on = false;
				    		}
						}
	    			}
	    			if explode_timer == 40 {
	    				with other {
		    				remove_box();
		    				destroy_attacks();
	    				}
	    			}
	    			if explode_timer == 60 {
						with obj_stage_article {
				    		if get_article_script(id) == 3 {
				    			heart2heart = false;
				    			can_draw_heart = true;
				    			shocked_face = false;
				    			if type == "head" {
				    				image_index = 11;
				    			}
				    		}
						}
						other.heart_exploded = true;
						instance_destroy(id);
	    			}
	    		}
	    	}
	    	
	    	if heart_exploded {
	    		with obj_stage_article {
		    		if get_article_script(id) == 3 {
		    			arms_on = false;
		    			legs_on = false;
		    		}
				}
				current_randomise_rate = 0;
	    		gotomenu();
	    		destroy_attacks();
	    		attack_index++;
	    	}
	    	break;
	    	/*
	    	case 19: //freeplay heart lasers
	    	if state_timer == 1 {
		    	spawn_heart2heart(room_width/2, 420, 3);
		    	heart_exploded = false;
	    	}
	    	break;
	    	*/
		}
		break;
	}
	break;
	
	case 3: //everyone dead
	switch state {
		case 0: //remove everything
		music_stop();
		if state_timer == 1 {
			remove_box();
			remove_everything();
			
			//end stats
			with oPlayer {
				if !is_cpu && !custom_clone && !clone {
					damageTaken = 0;
					attacksSurvived = 0;
					healthRecovered = 0;
					perfectAttacks = 0;
					timesActed = 0;
				}
			}
			
		}
		if state_timer == 160 {
			state++;
			state_timer = 0;
		}
		break;
		
		case 1: //game over screen
		if state_timer == 1 {
			var GO instance_create(room_width/2 - 310, room_height/2 - 200, "obj_stage_article", 2);
				GO.type = "game_over";
				GO.image_alpha = 0;
			displayStats = true;
		}
		music_play_file("game_over");
		break;
	}
	break;
	
	case 4: //kill mettaton
	if phase_timer == 1 {
		sound_play(sound_get("heart_explode"), false, 0);
	}
	if phase_timer == 20 {
		var winner = undefined;
		with oPlayer {
			if !custom_clone && !clone && !is_cpu {
				winner = player;
			}
		}
		end_match(winner);
	}
	if phase_timer = 50 {
		remove_box();
		remove_everything();
		sound_play(sound_get("vaporized"), false, 0);
	}
	break;
	
	case 5: //pacifist ending
	if phase_timer == 20 {
		sound_play(sound_get("reveal"), false, 0, 1, 0.8);
		var winner = undefined;
		with oPlayer {
			if !custom_clone && !clone && !is_cpu {
				winner = player;
			}
		}
		end_match(winner);
	}
	if phase_timer = 50 {
		remove_box();
		remove_everything();
	}
	break;
}

//print_debug(keyboard_string)

//leg height stuff
var max_leg_height_var = 0;
with obj_stage_article {
	if get_article_script(id) == 3 && (type == "leg_left" || type == "leg_right") {
	    switch pose_index {
	        case 0: leg_height = 2 break;
	        case 1: leg_height = 4 break;
	        case 2: leg_height = 3 break;
	        case 3: leg_height = 1 break;
	        case 4: leg_height = 0 break;
	    }
	    if leg_height > max_leg_height_var {
	    	max_leg_height_var = leg_height;
	    }
	}
}

with obj_stage_article {
	if get_article_script(id) == 3 {
		max_leg_height = max_leg_height_var;
	}
}

//handles player damage stuff
var deadly_articles = [];
var article_count = 0;
var blue_articles = [];
var blue_count = 0;
with obj_stage_article {
	if can_deal_damage == true {
		if get_article_script(id) == 17 && colour == 1 {
			blue_articles[blue_count] = id;
			blue_count++;
		} else {
			deadly_articles[article_count] = id;
			article_count++;
		}
	}
}

with obj_stage_article {
	if get_article_script(id) == 20 {
		var is_colliding = false;
		for (var i = 0; i < array_length(deadly_articles); i++) {
			if place_meeting(x, y, deadly_articles[i]) {
				is_colliding = true;
			}
		}
		
		if target_id.vsp != 0 || target_id.hsp != 0 {
			for (var i = 0; i < array_length(blue_articles); i++) {
				if place_meeting(x, y, blue_articles[i]) {
					is_colliding = true;
				}
			}
		}
		
		if is_colliding {
			if !target_id.is_dead {
		        target_id.got_hit = true;
		    }
		}
	}
}
user_event(0);

//end of game stats
if (displayStats) {
	var playerArr = array_create(4);
		playerArr[0] = 0;
		playerArr[1] = 0;
		playerArr[2] = 0;
		playerArr[3] = 0;
	with oPlayer {
		if !is_cpu && !custom_clone && !clone {
			var dataArr = array_create(5);
				dataArr[0] = player;
				dataArr[1] = floor(timealive/60);
				dataArr[2] = damageTaken;
				dataArr[3] = attacksSurvived;
				dataArr[4] = healthRecovered;
			playerArr[player - 1] = dataArr;
		}
	}
	
	if (dataIndex < array_length(playerArr)) {
		if (playerArr[dataIndex] == 0) {
			dataIndex++;
			exit;
		}
		var arrLength = array_length(playerArr[dataIndex]);
		if (lineIndex < arrLength) {
			var prefix = "";
			var suffix = "";
			if (lineIndex == 0) {
				prefix = "Player ";
				suffix = "";
			} else if (lineIndex == 1) {
				prefix = "Time alive: ";
				suffix = "s";
			} else if (lineIndex == 2) {
				prefix = "Damage taken: ";
				suffix = "";
			} else if (lineIndex == 3) {
				prefix = "Attacks survived: ";
				suffix = "";
			} else if (lineIndex == 4) {
				prefix = "HP recovered: ";
				suffix = "";
			}
			
			var arr = playerArr[dataIndex];
			var str = prefix + string(arr[lineIndex]) + suffix + ""; //string to print on line
			
	    	textboxTime++;
	    	lineTime++;
	    	
	    	var textSpd = 2;
	    	
	    	if (lineTime mod textSpd == 0) { //advance text every n frames
	    		lineTextNum++;
	    		
	    		if (lineIndex < arrLength) {
	    			endText[dataIndex,lineIndex] = string_copy(str, 1, lineTextNum);
	    		}
		    	
		    	if (lineIndex < arrLength) && (lineTextNum > string_length(str)) { //end of string, move to next line if not last line
		    		lineTextNum = 0;
		    		lineTime = 0;
		    		lineIndex++;
		    	}
		    	
		    	if (lineIndex == arrLength) {
		    		dataIndex++;
		    		lineIndex = 0;
		    		lineTextNum = 0;
		    		lineTime = 0;
		    	}
	    	}
	    	
	    	if (lineIndex < arrLength) && (lineTime mod 3 == 0) && (string_char_at(str, lineTextNum) != " ") && (lineTextNum != 0) {
	    		sound_play(sound_get("textbox_sfx"), false, 0);
	    	}
		}
	} else {
		endTimer++;
	}
	//print_debug(string(endText))
}

if (endTimer > 40) {
	with oPlayer {
    	if (attack_pressed || special_pressed) && !is_cpu && !custom_clone && !clone {
    		with other {
    			end_match();
    			//displayStats = false;
    		}
    	}
    }
}

with oPlayer {
	//anti cheese code
	if (y > 800) { //out of bounds
		y = 600;
	}
	if y < 200 {
		y = 220
	}
	if x > 1200 {
		x = 1100
	}
	if x < 200 {
		x = 220
	}
}

#define create_smoke
if timer mod 15 == 0 {
	var xoffset = timer mod 30 == 0 ? 50 : -50;
    var inst = instance_create(room_width/2 - xoffset, 190, "obj_stage_article", 2);
        inst.type = "smoke";
        inst.image_alpha = 0;
}

#define spawn_mettaton
with obj_stage_article {
    if get_article_script(id) == 3 { instance_destroy(id) }
}
var inst1 = instance_create(room_width/2, 190, "obj_stage_article", 3);
    inst1.type = "head";
var inst2 = instance_create(room_width/2, 190, "obj_stage_article", 3);
    inst2.type = "body";
var inst3 = instance_create(room_width/2, 190, "obj_stage_article", 3);
    inst3.type = "arm_left";
var inst4 = instance_create(room_width/2, 190, "obj_stage_article", 3);
    inst4.type = "arm_right";
var inst5 = instance_create(room_width/2, 190, "obj_stage_article", 3);
    inst5.type = "leg_left";
var inst6 = instance_create(room_width/2, 190, "obj_stage_article", 3);
    inst6.type = "leg_right";

#define spawn_textbox(text_type)
active_textbox = instance_create(room_width/2, room_height/2 - 80, "obj_stage_article", 1);
active_textbox.text_type = text_type;

#define spawn_buttons
var ylevel = 500;
var sep = 240;

var button1 = instance_create(room_width/2 - sep*1.5, ylevel, "obj_stage_article", 4);
var button2 = instance_create(room_width/2 - sep/2, ylevel, "obj_stage_article", 4);
var button3 = instance_create(room_width/2 + sep/2, ylevel, "obj_stage_article", 4);
var button4 = instance_create(room_width/2 + sep*1.5, ylevel, "obj_stage_article", 4);

button1.buttonIndex = 0;
button1.image_index = 0;
button2.buttonIndex = 2;
button2.image_index = 2;
button3.buttonIndex = 4;
button3.image_index = 4;
button4.buttonIndex = 6;
button4.image_index = 6;

#define remove_buttons
with obj_stage_article {
	if (get_article_script(id) == 4) { instance_destroy(id) }
}

#define battle_init
music_play_file("death_by_glamour");
spawn_buttons();

#define make_box(boxwidth, boxheight)
var solidleft = instance_create(-400, room_height/2, "obj_stage_article_solid", 5);
	solidleft.location = 0;
var solidright = instance_create(room_width + 400, room_height/2, "obj_stage_article_solid", 5);
	solidright.location = 1;
var solidtop = instance_create(room_width/2, -520, "obj_stage_article_solid", 5);
	solidtop.location = 2;
with obj_stage_article_solid {
	if get_article_script(id) == 5 {
		end_width = boxwidth;
		end_height = boxheight;
	}
}

#define remove_box
with obj_stage_article_solid {
	if get_article_script(id) == 5 { remove = true }
}

with obj_stage_article {
	if get_article_script(id) == 20 { fade = true }
}

#define gotomenu
phase = 1;
phase_timer = 0;
state = 0;
state_timer = 0;
button_selected = undefined;
select_timer = 0;
with obj_stage_article {
    if get_article_script(id) == 3 {
    	randomise_rate = other.current_randomise_rate
    	if type == "head" {
			shocked_face = false;
		}
    }
}
#define destroy_attacks
var article_nums = [2, 6, 7, 8, 9, 10, 11, 12, 15, 16, 17, 18];
with obj_stage_article {
	var script_num = get_article_script(id);
	for (var i = 0; i < array_length(article_nums); i++) {
		if script_num == article_nums[i] {
			instance_destroy(id);
		}
	}
}
with pHitBox {
	if player_id == other.id {
		instance_destroy(id);
	}
}

#define remove_everything
var article_nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
with obj_stage_article {
	var script_num = get_article_script(id);
	for (var i = 0; i < array_length(article_nums); i++) {
		if script_num == article_nums[i] {
			if !(script_num == 2 && type == "soul_broken") {
				instance_destroy(id);
			}
		}
	}
}

with obj_stage_article_solid {
	instance_destroy(id);
}
with pHitBox {
	if player_id == other.id {
		instance_destroy(id);
	}
}

#define spawn_leg_proj(spawnx, spawny, dir, colour, legspeed, legtime)
var leg = instance_create(spawnx, spawny, "obj_stage_article", 6);
	leg.spawnx = spawnx;
	leg.spawny = spawny;
	leg.image_xscale = dir;
	leg.colour = colour;
	leg.legspeed = legspeed;
	leg.legtime = legtime;
	
#define spawn_bomb_proj(spawnx, spawny, bombspeed)
var bomb = instance_create(spawnx, spawny, "obj_stage_article", 7);
	bomb.spawnx = spawnx;
	bomb.spawny = spawny;
	bomb.bombspeed = bombspeed;

#define spawn_mini_mtt(spawnx, spawny, minihsp, minivsp)
var mtt = instance_create(spawnx, spawny, "obj_stage_article", 8);
	mtt.spawnx = spawnx;
	mtt.spawny = spawny;
	mtt.minihsp = minihsp;
	mtt.minivsp = minivsp;

#define spawn_block_proj(spawnx, spawny, blockhsp, blockvsp, destructable)
var block = instance_create(spawnx, spawny, "obj_stage_article", 10);
	block.spawnx = spawnx;
	block.spawny = spawny;
	block.blockhsp = blockhsp;
	block.blockvsp = blockvsp;
	block.destructable = destructable;

#define spawn_arm_proj(spawnx, spawny, dir, armvsp, box_width, sliderx, slider_period, slider_speed)
var arm = instance_create(spawnx, spawny, "obj_stage_article", 11);
	arm.armvsp = armvsp;
	arm.spawnx = spawnx;
	arm.spawny = spawny;
	arm.dir = dir;
	arm.box_width = box_width;
var slider = instance_create(sliderx, spawny, "obj_stage_article", 12);
	slider.arm_id = arm.id;
	slider.sliderx = sliderx;
	slider.slider_period = slider_period;
	slider.slider_speed = slider_speed;
	
#define spawn_heart2heart(spawnx, spawny, type)
var heart = instance_create(spawnx, spawny, "obj_stage_article", 14);
	heart.spawnx = spawnx
	heart.spawny = spawny
	heart.type = type
	
#define spawn_disco_ball(spawnx, spawny, delay, spd, rate)
var ball = instance_create(spawnx, spawny, "obj_stage_article", 16);
	ball.spawnx = spawnx
	ball.spawny = spawny
	ball.delay = delay
	ball.spd = spd
	ball.rate = rate

#define spawn_leg_stab(spawnx, spawny, dir)
var leg = instance_create(spawnx, spawny, "obj_stage_article", 18);
	leg.spawnx = spawnx;
	leg.spawny = spawny;
	leg.spr_dir = -dir;