//hitbox update, FOR PROJECTILES ONLY

switch (attack){
    case AT_FSPECIAL:
        if (hbox_num == 1){
        	if (was_parried){
        		if (has_hit) {
        			hitbox_timer = length-1;
        		}
        	}
        	if (y > room_height + 16){
		    	destroyed_next = true;
	    	}
            player_id.move_cooldown[AT_FSPECIAL] = 2;
            if (has_hit && !flashbang_bounced_hit){
                hsp *= -0.2;
                vsp = vsp * -0.5;
                flashbang_bounced_hit = true;
            }
            if (flashbang_bounced_hit){
            	hit_priority = 0;
            	proj_break = true;
            }
            if (!free){
                if (!flashbang_bounced_ground){
                    vsp = vsp*-0.5
                    hsp *= 0.5;
                    sound_play(asset_get("sfx_mol_flash_bounce2"));
                    sound_play(drop_sfx, false, noone, 0.8, 1.1);
                    hit_priority = 0;
                    proj_break = true;
                    flashbang_bounced_ground = true;
                    grounds = 0;
                    collision_sprite = flashbang_ground_mask;
                } else {
                    image_index = 1;
                }
            }
        }
    break;
    case AT_USPECIAL:
    //can_hit_self = true;
    break;
    case AT_DSPECIAL:
	if (has_hit) && (hbox_num == 2 || hbox_num == 3){
    	if (instance_exists(player_id.jeb_obj)){
            with (player_id.jeb_obj){
                hitstop = floor(get_hitstop_formula(get_player_damage(other.player_id.hit_player_obj.player), other.damage, other.hitpause, other.hitpause_growth, other.extra_hitpause));
                jeb_has_hit = true;
                if (hitstop >= 20){ 
                    hitstop = 20;
                }
                //print(hitstop);
                }
            }
        }
    break;
    case AT_DSPECIAL_2:
      if (player_id.object_index != oTestPlayer) && ((x > get_stage_data(SD_RIGHT_BLASTZONE_X)) || (x < get_stage_data(SD_LEFT_BLASTZONE_X)) || (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y))){
            destroyed_next = true;
           }
    	if (hbox_num == 1){ //small scrap
    		if (proj_scrap_id.name != "Laser pointer"){
    			if (hitbox_timer % 4 == 0 && free){
    				proj_angle += -90*spr_dir;
    			}
    		} else {
    			if (hitbox_timer % 2 == 0 && free){
    				proj_angle += -45*spr_dir;
    			}
    		}
    		
    		switch (proj_scrap_id.name){
    			case "Airhorn":
    			case "Hairdryer":
    			if (has_hit && !made_hit_sfx){
    				sound_play(hit_sfx, false, noone, 0.75, 1);
    				made_hit_sfx = true;
    			}
    			break;
    			case "Toy robot":
    			if (curr_sfx == noone && !destroyed_effect){
					curr_sfx = sound_play(sound_get("scrap_robot"), true, noone, 0.75, 1);
    			}
    			break;
    			case "Teeth":
    			if (curr_sfx == noone && !destroyed_effect){
					curr_sfx = sound_play(sound_get("scrap_teeth"), true, noone, 0.75, 1);
    			}
    			sprite_index = teeth_sprite;
    			image_index += 0.5;
    			break;
    			case "Laser pointer":
    			if (!destroyed_effect){
    				sprite_index = laser_sprite;
    			} else {
    				sprite_index = laser_off_sprite;
    			}
    			break;
    			case "Whoopee cushion":
    			grounds = 0;
    			collision_sprite = whoopee_ground_mask;
    			if (!free && !destroyed_effect){
    				hsp = 0;
    				proj_angle = 0;
    				hit_priority = 0;
    				proj_break = 1;
    				transcendent = true;
    				sprite_index = whoopee_sprite;
    				grounded_timer++;
    				if (is_animating){
    					anim_timer++;
    				}
    				if (grounded_timer == 1){
    					hitbox_timer = 0;
    					length = 480;
    					is_animating = true;
    					sound_play(proj_scrap_id.sfx, false, noone, 0.7, 1);
    				}
    				if (anim_timer % 3 == 0 && is_animating){
    					image_index += 1;
    				}
    				if (image_index >= 3){
    					image_index = 0;
    					is_animating = false;
    					anim_timer = 0;
    				}
    				if (hitbox_timer == length){
    					spawn_hit_fx(x, y, 302);
    				}
    					with (oPlayer){
    						if (place_meeting(x, y, other) && !hurtboxID.dodging && state != PS_RESPAWN && state != PS_DEAD && !free && !stepped_on_whoopee){
    						stepped_on_whoopee = true;
    						whoopee_id = other;
    						with (other) {
    							sound_play(hit_sfx, false, noone, 0.75, 1);
    							is_animating = true;
    						}
    					}
    						if (!place_meeting(x, y, whoopee_id) && state != PS_WAVELAND && state != PS_DASH_START){
    							stepped_on_whoopee = false;
    						}
    				}
    			}
    			if (has_hit && !made_hit_sfx){
    				sound_play(hit_sfx, false, noone, 0.75, 1);
    				made_hit_sfx = true;
    			}
    			if (destroyed){
    				sound_play(hit_sfx, false, noone, 0.75, 1);
    			}
    			break;
    			case "Soccer ball":
    			grounds = 0;
    			frict = 0.5;
    			transcendent = true;
    			length = 999999;
    			if (free){
    				grounded_timer = 0;
    				soccer_vsp = vsp;
    			}
    			if (!free && !soccer_bounced){
    				vsp = soccer_vsp*-0.7;
    				soccer_bounced = true;
    				scrap_unsellable = true;
    				soccer_destroyed_fake = true;
    			}
    			if (!free && !destroyed_effect){
    				proj_angle = 0;
    				hit_priority = 0;
    				proj_break = 1;
    				transcendent = true;
    				grounded_timer++;
    				hsp *= 0.5;
    			}
    			if (grounded_timer == 1){
    				sound_play(soccer_land_sfx);
    			}
    			soccer_ball_code();
    			break;
    			case "Homemade flashbang":
    				if (hitbox_timer == 4){
    					sound_play(hit_sfx);
                		spawn_hit_fx(x, y, 262);
	            		var flash = create_hitbox(AT_FSPECIAL, 2, x, y);
	            		flash.is_homemade = true;
	            		destroyed_next = true;
    				}
    			break;
    			case "Easter egg":
    			if (will_explode){
    				if (has_hit || destroyed) && !place_meeting(x, y, pHitBox){
    					hit_effect = 1;
    					destroy_fx = 1;
    					sound_play(hit_sfx);
    					var yippee = spawn_hit_fx(x, y, player_id.easter_egg);
    					var yayyyy = create_hitbox(AT_DSPECIAL_2, 5, x, y);
    					yayyyy.can_hit_self = true;
    					yayyyy.player = player;
    					yippee.depth = depth-1;
    					destroyed_next = true;
    				}
    			}
    			break;
    			}
    	}
    	if (hbox_num == 2){
    		 if (hitbox_timer % 8 == 0){
    			proj_angle += -90*spr_dir;
    		}
    		 switch (proj_scrap_id.name){
    			case "Cash register":
    			   if (has_hit && !made_hit_sfx){
    					sound_play(hit_sfx, false, noone, 0.75, 1);
    					made_hit_sfx = true;
    			}
    			break;
    		 }
    	}
    	if (hbox_num == 3){
    		if (hitbox_timer == 1){
    			bees_sfx = sound_play(sound_get("scrap_bees_angry"), true, noone, 0, 1);
    			sound_volume(bees_sfx, 0.5, 60);
    		}
    		if (hitbox_timer == length){
    			sound_stop(bees_sfx);
    			spawn_hit_fx(x, y, destroy_fx);
    		}
    		 if (image_index >= 11 && !bees_attacking){
    			 image_index = 3;
    		}
    		if (hitbox_timer > 90){
    			var kill_this_fucking_guy = point_direction(x, y, player_id.x, player_id.y - 44)
    			if (player_id.state != PS_RESPAWN && player_id.respawn_taunt <= 0 && player_id.state != PS_DEAD){
    				hsp = lengthdir_x(3, kill_this_fucking_guy);
    				vsp = lengthdir_y(3, kill_this_fucking_guy);
    			} else {
    				hsp = 0;
    				vsp = 0;
    			}
    			if (hitbox_timer % 5 == 0){
    				if (random_func(0, 8, true) == 7 && !bees_attacking){
    					bees_attacking = true;
    				}
    			}
    			if (bees_attacking){
    				if (image_index == 11 || image_index == 13 || image_index == 16){
    					create_hitbox(AT_DSPECIAL_2, 4, x, y);
    					sound_play(sound_get("scrap_bees_zap" + string(random_func(0, 2, true) + 1) ), false, noone, 0.7, 1);
    				}
    				if (image_index >= 18){
    					bees_attacking = false;
    				}
    			}
    		}
    	}
    	if (hbox_num == 4){
    		can_hit_self = true;
    	}
    break;
    case 2:
    	if (hbox_num == 3 || hbox_num == 4){
          if (player_id.object_index != oTestPlayer) && ((x > get_stage_data(SD_RIGHT_BLASTZONE_X)) || (x < get_stage_data(SD_LEFT_BLASTZONE_X)) || (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y))){
            destroyed_next = true;
           }
    	}
    	if (hbox_num == 3){ //small scrap
    		if (hitbox_timer % 4 == 0 && free){
    			proj_angle += -90*spr_dir;
    		}
    	}
    	if (hbox_num == 4){ //large scrap
    		 if (hitbox_timer % 8 == 0){
    			proj_angle += -90*spr_dir;
    		}
    	}
    break;
}

#define soccer_ball_code()

if (!h_lockout){
	with (pHitBox) if place_meeting(x, y, other){
		var soccer_hb_id = self;
	}
	if (place_meeting(x,y, asset_get("pHitBox"))){
		if (soccer_hb_id.hit_priority != 0 && soccer_hb_id.hitpause != 0 && !soccer_hb_id.player_id.hitpause && soccer_hb_id.kb_value != 0 && soccer_hb_id.player_id.player != player) ||
		(soccer_hb_id.hit_priority != 0 && soccer_hb_id.hitpause != 0 && !soccer_hb_id.player_id.hitpause && soccer_hb_id.kb_value != 0 && soccer_destroyed_fake){
		sound_play(hit_sfx);
		soccer_bounced = false;
		soccer_destroyed_fake = true;
		scrap_unsellable = true;
		hit_priority = 0;
		proj_break = true;
		transcendent = true;
		soccer_angle = round(get_hitbox_angle(soccer_hb_id));
		soccer_force = soccer_hb_id.kb_value + (soccer_hb_id.kb_scale) * 5;
		h_lockout = true;
		if (soccer_hb_id.type == 1){
			h_lockout_time = soccer_hb_id.length;
		} else {
			h_lockout_time = 30;
		}
		if (soccer_hb_id.destroyed || soccer_hb_id.hitbox_timer = length - 1){
			h_lockout_time = 0;
			h_lockout = false;
		}
		
		hsp = lengthdir_x(soccer_force, soccer_angle);
		vsp = lengthdir_y(soccer_force, soccer_angle);
		//print("angle: " + string(soccer_angle));
		//print("kb recieved: " + string(soccer_force));
		}
	}
}
 if (h_lockout){
 	h_lockout_time--;
			if (h_lockout_time == 0){
				h_lockout = false;
				h_lockout_time = 0;
			}
		}
