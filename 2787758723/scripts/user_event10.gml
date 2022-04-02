//Custom Item behavior

enum EVT {
    GRAB,
    IDLE,
    USE,
    ALTUSE,
    DESTROY,
    DROP,
    DROPPED
}

//Item Global Default behaviors - feel free to customize :)
switch event_flag {
	case EVT.DROPPED:
		heavy_timer = 0;
	break;
    case EVT.GRAB:
        break;
    case EVT.IDLE:
    	visible = follow_player.visible;
        if (item_id != 0) {
        	if (follow_player.am_mario_state == 0) {
	        	pickup_cooldown --;
	            if follow_player.attack_down && pickup_cooldown <= 0 {
	            	set_state(EVT.USE); //Switch to the use state
	            }
        	}
        } 
        break;
    case EVT.DESTROY:
    	follow_player.small_sprites = follow_player.small_sprites_old;
        break;
}


//Item Template

switch item_id {
    case 0: //Mushroom
        switch event_flag {
            case EVT.DROPPED:
                if ("out_of_block" in self) && out_of_block {
                    if (state_timer == 1) {
						mask_index = asset_get("empty_sprite");
                        grav = 0;
                        y_st = y + 30;
                        y_end = y;
                        y += 32;
                    }
                    if (state_timer >= 1 && state_timer < 30) {
                        y = ease_linear(y_st, y_end, state_timer, 30);
                    }
                    if (state_timer == 30) {
                        grav = 0.5;
						mask_index = sprite_index;
						var ai_target = instance_nearest(x, y, oPlayer);
						dir = ai_target.x < x ? -1 : 1;
						out_of_block = false;
                    }
                }
                else { 
					mask_index = sprite_index;
					standard_collision(true);
                    if (("landed" not in self)) {
                    	landed = false;
                    }
                    
                    if (!landed && !free && vsp >= 0) {
                    	landed = true;
                    }
                    if (landed)
                    	hsp = dir * 2;
                    	
				    can_be_grounded = true;
				    ignores_walls = false;
                }
            break;
            case EVT.GRAB:
                if (follow_player.am_mario_health <= 1) {
	                follow_player.am_mario_state = 2; //0 = normal; 1 = death; 2 = grow; 3 = shrink; 4 = fire
	                follow_player.am_mario_state_timer = 0; //0 = normal; 1 = death; 2 = grow; 3 = shrink; 4 = fire
                }
                else {
                	sound_stop(sound_get("sfx_powerup"));
                	sound_play(sound_get("sfx_powerup"))
					set_state(EVT.DESTROY);
                }
                follow_player.am_mario_health += 1;
                follow_player.am_mario_health = clamp(follow_player.am_mario_health, 0, 2);
                break;
            case EVT.IDLE:
        //Syobon mode makes the player heavy and die lol
		    	if (obj_stage_main.am_mario_syobon) {
		    		heavy_timer++;
		    		with (follow_player) {
		    			if (other.heavy_timer < 300)
			    		small_sprites = small_sprites_old + 1;
			    		if (am_mario_state == 0) {
				    		hsp *= 0.95;
				    		if (free) vsp += 0.5;
				    		am_mario_invincible = 58;
				    		attack_invince = true;
							var terrain = terrain_detection();
							if (instance_exists(terrain)) {
								with (terrain) {
									if (num != 15 && num != 17) break;
									with (obj_stage_main) sound_stop(sound_get("sfx_break"));
							        with (obj_stage_main) sound_play(sound_get("sfx_break"));
							        var brick1 = instance_create(round(x), round(y), "obj_stage_article", 18)
							        brick1.sprite_index = sprite_get("brickblock_break");
							        brick1.image_index = 0;
							        brick1.hsp = -2;
							        brick1.vsp = -4;
							        var brick2 = instance_create(round(x+16), round(y), "obj_stage_article", 18)
							        brick2.sprite_index = sprite_get("brickblock_break");
							        brick2.image_index = 1;
							        brick2.hsp = 2;
							        brick2.vsp = -4;
							        var brick3 = instance_create(round(x), round(y+16), "obj_stage_article", 18)
							        brick3.sprite_index = sprite_get("brickblock_break");
							        brick3.image_index = 2;
							        brick3.hsp = -4;
							        brick3.vsp = -2;
							        var brick4 = instance_create(round(x+16), round(y+16), "obj_stage_article", 18)
							        brick4.sprite_index = sprite_get("brickblock_break");
							        brick4.image_index = 3;
							        brick4.hsp = 4;
							        brick4.vsp = -2;
							        instance_destroy(id);
							        break;
								}
							}
							if (other.heavy_timer >= 300) {
								small_sprites += 0.005;
					    		hsp *= 1 / ease_linear(1, 100, other.heavy_timer - 300, 180);
					    		if (other.heavy_timer >= 300 + 60) {
					    			if (other.heavy_timer < 300 + 90 && other.heavy_timer % 16 == 0) 
					    			|| (other.heavy_timer < 300 + 150 && other.heavy_timer % 8 == 0)
					    			|| (other.heavy_timer < 300 + 210 && other.heavy_timer % 4 == 0)   {
					    				sound_play(asset_get("sfx_ell_steam_hit"));
					    				var rand_x = -24 + random_func(0, 48, true)
					    				var rand_y = -16 - random_func(1, 64, true)
					                    var fx = spawn_hit_fx(floor(x + rand_x*2), floor(y + rand_y*2), 144);
					                    fx.pause = 8;
					    			}
					    		}
					    		if other.heavy_timer == 300 + 210 {
									sound_play(asset_get("sfx_mol_bat_ready"));
					    		}
					    		if other.heavy_timer >= 300 + 240 {
					    			am_mario_health = 0;
				    				attack_invince = 0;
				    				small_sprites = small_sprites_old;
									spawn_hit_fx(floor(x), floor(y), 143);
									sound_play(asset_get("sfx_ell_big_missile_ground"))
					    		}
							}
			    		}
			    		else {
		    				attack_invince = 0;
			    			if (am_mario_state == 1)
		    					small_sprites = small_sprites_old;
			    		}
		    		}
		    	}
                if (follow_player.am_mario_health != 2) {
                    set_state(EVT.DESTROY);
                }
                break;
        }
        break;
    
    case 1: //Flower
    	image_index += 0.12;
        switch event_flag {
            case EVT.DROPPED:
                if ("out_of_block" in self) && out_of_block {
                    if (state_timer == 1) {
						mask_index = asset_get("empty_sprite");
                        grav = 0;
                        y_st = y + 30;
                        y_end = y;
                        y += 32;
                    }
                    if (state_timer >= 1 && state_timer < 30) {
                        y = ease_linear(y_st, y_end, state_timer, 30);
                    }
                    if (state_timer == 30) {
                        grav = 0.5;
						mask_index = sprite_index;
						out_of_block = false;
                    }
                }
                else { 
					mask_index = sprite_index;
				    can_be_grounded = true;
				    ignores_walls = false;
                    if (("landed" not in self)) {
                    	landed = false;
                    }
                    
                    if (!landed && !free && vsp >= 0) {
                    	landed = true;
                    }
                    if (landed && !free)
				    	hsp *= 0.5
                }
            break;
            case EVT.GRAB:
	    		if (obj_stage_main.am_mario_syobon) {
			    	if ("fx_fireconsume" not in self)
						fx_fireconsume = hit_fx_create(asset_get("fire_consume_top_spr"), 32);
	    			follow_player.am_mario_health = 0;
    				follow_player.attack_invince = 0;
    				follow_player.small_sprites = follow_player.small_sprites_old;
					var fx = spawn_hit_fx(floor(x), floor(y), fx_fireconsume);
					fx.pause = 8;
					fx.depth = -10;
					sound_play(asset_get("sfx_burnconsume"))
	    		}
	    		else {
			    	if ("fx_fire" not in self)
						fx_fire = hit_fx_create(sprite_get("fx_fire"), 24);
	                if (follow_player.am_mario_health <= 2) {
		                follow_player.am_mario_state = 2; //0 = normal; 1 = death; 2 = grow; 3 = shrink; 4 = fire
		                follow_player.am_mario_state_timer = 0; //0 = normal; 1 = death; 2 = grow; 3 = shrink; 4 = fire
	                }
	                else {
                		sound_stop(sound_get("sfx_powerup"));
	                	sound_play(sound_get("sfx_powerup"));
	                    set_state(EVT.DESTROY);
	                }
	                follow_player.am_mario_health = 3;
	                follow_player.am_mario_health = clamp(follow_player.am_mario_health, 0, 3);
		        }
                break;
            case EVT.IDLE:
                if (follow_player.am_mario_health != 3) {
                    set_state(EVT.DESTROY);
                }
                break;
    		case EVT.USE: 
            	pickup_cooldown = 8;
    			set_state(EVT.IDLE);
    			var fireballs = 0;
    			with (pHitBox) {
    				if ("am_mario_fire" in self) {
    					if (am_mario_fire_player = other.follow_player.player)
    						fireballs++;
    				}
    			}
    			if (fireballs < 2) {
    				spawn_fireball(follow_player.x + 32 * spr_dir, follow_player.y - 32, follow_player);
    				sound_play(sound_get("sfx_fireball"));
    			}
    		break;
        }
        break;
        case 2: //Star
	    	image_index += 0.12;
	        switch event_flag {
	            case EVT.DROPPED:
	                if ("out_of_block" in self) && out_of_block {
	                    if (state_timer == 1) {
							mask_index = asset_get("empty_sprite");
	                        grav = 0;
	                        dir = 1;
	                        y_st = y + 30;
	                        y_end = y;
	                        y += 32;
	                    }
	                    if (state_timer >= 1 && state_timer < 30) {
	                        y = ease_linear(y_st, y_end, state_timer, 30);
	                    }
	                    if (state_timer == 30) {
	                        state_timer = 0;
						    out_of_block = false;
	                    }
	                }
	                else {  
	                	if (state_timer == 1) {
	                        grav = 0.5;
	                        mask_index = sprite_index;
							var ai_target = instance_nearest(x, y, oPlayer);
							dir = ai_target.x < x ? -1 : 1;
	                		hsp = dir * 2;
	                		vsp = -4;
						    can_be_grounded = true;
						    ignores_walls = false;
						    out_of_block = false;
	                    }
						mask_index = sprite_index;
						standard_collision(true);
	                    if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 2, asset_get("par_block"), 1, 1) && vsp >= 0) {
	                    	vsp = -8;
	                    }
	                    if (collision_rectangle(bbox_left, bbox_top - 2, bbox_right, bbox_top, asset_get("par_block"), 1, 1) && vsp < 0) {
	                    	vsp = 0;
	                    }
	                    hsp = dir * 2;
					    can_be_grounded = true;
					    ignores_walls = false;
	                }
	            break;
	            case EVT.GRAB:
		    		if (obj_stage_main.am_mario_syobon) {
		    			follow_player.am_mario_health = 0;
	    				follow_player.attack_invince = 0;
	    				follow_player.small_sprites = follow_player.small_sprites_old;
						spawn_hit_fx(floor(x), floor(y), 254);
						sound_play(asset_get("sfx_pom_note_hit"))
		    		}
		    		else {
		            	sound_play(sound_get("sfx_powerup"))
		                follow_player.am_mario_invincible = follow_player.am_mario_invincible_max;
		    		}
	                set_state(EVT.DESTROY);
	                break;
	   
	        }
        break;
        case 3: //Coin
	        switch event_flag {
	            case EVT.DROPPED:
                    if (("img" not in self)) {
                    	img = 0;	
                    	num_sprite_sets = 3;
                    }
                    current_sprite_set = find_room_type();
	    			img = get_gameplay_time() * 0.05;
					var num_frames = image_number / num_sprite_sets;
					var offset = num_frames * current_sprite_set;
					image_index = img % num_frames + offset;
					mask_index = sprite_index;
					depth = 5
					og_depth = 5
					hsp = 0;
					vsp = 0;
					grav = 0;
				    can_be_grounded = false;
				    ignores_walls = true;
	            break;
	            case EVT.GRAB:
				    sound_stop(sound_get("sfx_coin"));
				    sound_play(sound_get("sfx_coin"));
				    add_coin(1);
	                //follow_player.am_mario_invincible = follow_player.am_mario_invincible_max;
	                set_state(EVT.DESTROY);
	                break;
	   
	        }
        break; 
        case 4: //Life Mushroom
	        switch event_flag {
	            case EVT.DROPPED:
	                if ("out_of_block" in self) && out_of_block {
	                    if (state_timer == 1) {
							mask_index = asset_get("empty_sprite");
	                        grav = 0;
	                        y_st = y + 30;
	                        y_end = y;
	                        y += 32;
	                    }
	                    if (state_timer >= 1 && state_timer < 30) {
	                        y = ease_linear(y_st, y_end, state_timer, 30);
	                    }
	                    if (state_timer == 30) {
	                        grav = 0.5;
							mask_index = sprite_index;
							var ai_target = instance_nearest(x, y, oPlayer);
							dir = ai_target.x < x ? -1 : 1;
							out_of_block = false;
	                    }
	                }
	                else { 
						mask_index = sprite_index;
						standard_collision(true);
	                    if (("landed" not in self)) {
	                    	landed = false;
	                    }
	                    
	                    if (!landed && !free && vsp >= 0) {
	                    	landed = true;
	                    }
	                    if (landed)
	                    	hsp = dir * 2;
	                    else {
	                    	if (hsp != 0)
	                    		dir = sign(hsp);
	                    }
	                    	
					    can_be_grounded = true;
					    ignores_walls = false;
	                }
	            break;
	            case EVT.GRAB:
		    		if (obj_stage_main.am_mario_syobon) {
		    			follow_player.am_mario_health = 0;
	    				follow_player.attack_invince = 0;
	    				follow_player.small_sprites = follow_player.small_sprites_old;
		    		}
		    		else {
	                	sound_stop(sound_get("sfx_1up"));
	                	sound_play(sound_get("sfx_1up"));
		                follow_player.am_mario_lives += 1;
		    		}
	                set_state(EVT.DESTROY);
	                break;
	        }
	        break;
		case 5: //P-Switch
    		image_index += 0.12;
        	switch event_flag {
	            case EVT.DROPPED:
                    if (("pressed_timer" not in self)) {
                    	pressed_timer = -1;
                    }
	                if ("out_of_block" in self) && out_of_block {
	                    if (state_timer == 1) {
							mask_index = asset_get("empty_sprite");
	                        grav = 0;
	                        y_st = y + 30;
	                        y_end = y;
	                        y += 32;
	                    }
	                    if (state_timer >= 1 && state_timer < 30) {
	                        y = ease_linear(y_st, y_end, state_timer, 30);
	                    }
	                    if (state_timer == 30) {
	                        grav = 0.5;
							mask_index = sprite_get("enemy_goomba_mask");
							out_of_block = false;
	                    }
				    	if (image_index >= 2)
				    		image_index = 0;
	                }
	                else { 
						mask_index = sprite_get("enemy_goomba_mask");
					    can_be_grounded = true;
					    ignores_walls = false;
	                    if (("landed" not in self)) {
	                    	landed = false;
	                    }
	                    
	                    if (is_array(custom_args)) {
	                    	action_id = custom_args;
	                    }
	                    else {
	                    	action_id = [0, 0];
	                    }
	                    if (pressed_timer <= -1) {
					    	if (player_on_top()) {
					    		pressed_timer = 0;
						        sound_stop(sound_get("sfx_thwomp"));
						        sound_play(sound_get("sfx_thwomp"));
					    	}
					    	if (image_index >= 2)
					    		image_index = 0;
	                    }
	                    else {
					    	image_index = 2;
	                    	pressed_timer++;
			            	if (pressed_timer == 1) {
		        				if (action_id[1] > 0)
		            				array_push(obj_stage_main.action_manager.action_queue, [obj_stage_main.action_manager.room_id, action_id[1], action_id[0]]);
			            	}
			            	if (pressed_timer >= 60)
			                	set_state(EVT.DESTROY);
	                    }
	                    if (!landed && !free && vsp >= 0) {
	                    	landed = true;
	                    }
	                    if (landed && !free)
					    	hsp *= 0.5
	                }
	            break;
	        }
	        break;
		case 6: //Spring
		case 7: //Spring that kills
        	switch event_flag {
	            case EVT.DROPPED:
                    if (("pressed_timer" not in self)) {
                    	pressed_timer = -1;
                    	player_last_hit = noone;
                    }
	                if ("out_of_block" in self) && out_of_block {
	                    if (state_timer == 1) {
							mask_index = asset_get("empty_sprite");
	                        grav = 0;
	                        y_st = y + 30;
	                        y_end = y;
	                        y += 32;
	                    }
	                    if (state_timer >= 1 && state_timer < 30) {
	                        y = ease_linear(y_st, y_end, state_timer, 30);
	                    }
	                    if (state_timer == 30) {
	                        grav = 0.5;
							mask_index = sprite_get("enemy_goomba_mask");
							out_of_block = false;
	                    }
				    	if (image_index >= 2)
				    		image_index = 0;
	                }
	                else { 
						mask_index = sprite_get("enemy_goomba_mask");
					    can_be_grounded = true;
					    ignores_walls = false;
	                    if (("landed" not in self)) {
	                    	landed = false;
	                    }
	                    if (pressed_timer <= -1) {
					    	if (player_on_top()) {
					    		pressed_timer = 0;
					    	}
					    	image_index = 0;
	                    }
	                    else {
					    	image_index = 2;
	                    	pressed_timer++;
			            	if (pressed_timer >= 1 && pressed_timer < 9) {
			            		image_index = 1;
			            		player_last_hit.x = x;
			            		player_last_hit.y = y - 50;
			            	}
			            	if (pressed_timer >= 9 && pressed_timer < 17) {
			            		image_index = 2;
			            		player_last_hit.x = x;
			            		player_last_hit.y = y - 34;
			            	}
			            	if (pressed_timer >= 17 && pressed_timer < 25) {
			            		image_index = 3;
			            		player_last_hit.x = x;
			            		player_last_hit.y = y - 50;
			            	}
			            	if (pressed_timer == 25) {
						        sound_stop(sound_get("sfx_spring"));
						        sound_play(sound_get("sfx_spring"));
						        pressed_timer = -1;
					    		image_index = 0;
			            		player_last_hit.vsp = -24
			            		if (item_id == 7) {
			            			with player_last_hit {
										if ("am_mario_state" in self) && am_mario_state == 0 {
											am_mario_warp_vars = -1;
										    am_mario_warp_pos_s = [x, y]
										    am_mario_warp_pos_e = [x, -272]
											am_mario_state = 4;
											am_mario_state_timer = 0;
										}
			            			}
			            		}
			            		else {
			            			player_last_hit.vsp = -12;
			            		}
			            	}
	                    }
	                    if (!landed && !free && vsp >= 0) {
	                    	landed = true;
	                    }
	                    if (landed && !free)
					    	hsp *= 0.5
	                }
	            break;
	        }
	        break;
    
}


//#region exclusive to mario	
#define standard_collision(_hit_enemies)
if (collision_rectangle(bbox_left + hsp, bbox_top + 2, bbox_right + hsp, bbox_bottom - 2, asset_get("par_block"), 1, 1)) {
	dir = -dir;
}

if (_hit_enemies && get_gameplay_time() % 2 == 0) {
	var enemy = collision_nearest_enemy(x, y, 64);
	if (instance_exists(enemy) && place_meeting(x, y, enemy)) {
		dir = -dir;
	}
}

#define add_coin(_inc)
obj_stage_main.am_mario_coins += _inc;
if (obj_stage_main.am_mario_coins >= 100) {
	sound_stop(sound_get("sfx_1up"));
	sound_play(sound_get("sfx_1up"));
	with (oPlayer) {
		am_mario_lives ++;
	}
	obj_stage_main.am_mario_coins = 0;
}

#define spawn_fireball(_x, _y, _player)
var _hbox = create_hitbox(AT_JAB,1,round(_x),round(_y));
_hbox.type = 2;
_hbox.length = 120;
_hbox.hit_priority = 1;
_hbox.image_xscale = 8 / 200;
_hbox.image_yscale = 8 / 200;
var spr = 0;
switch (spr) {
    case 0:  _hbox.sprite_index = asset_get("hitbox_circle_spr"); break;
    case 1:  _hbox.sprite_index = asset_get("hitbox_square_spr"); break;
    case 2:  _hbox.sprite_index = asset_get("hitbox_rounded_rectangle"); break;
}
_hbox.damage = 6;
_hbox.kb_angle = 45;
_hbox.kb_value = 6;
_hbox.kb_scale = 0.7;
_hbox.effect = 0;
_hbox.hitpause = 4;
_hbox.hitpause_growth = 0.7;
_hbox.hit_effect = fx_fire;
_hbox.hit_effect_x = 0;
_hbox.hit_effect_y = 0;
_hbox.fx_particles = 0;
_hbox.sound_effect = sound_get("sfx_kick");
_hbox.hit_flipper = 3;
_hbox.no_other_hit = 3;
_hbox.hitstun_factor = 1.2;
_hbox.dumb_di_mult = 1;
_hbox.sdi_mult = 1;
_hbox.force_flinch = 0;
_hbox.throws_rock = 2;
_hbox.draw_angle = _hbox.kb_angle
if (_player.spr_dir == -1)
    _hbox.draw_angle = (180 - _hbox.draw_angle)
if (_hbox.hit_flipper == 5)
    _hbox.draw_angle = (180 - _hbox.draw_angle)
_hbox.can_hit[_player.player] = false;
//_hbox.player = _player.player;
//_hbox.orig_player = _player.player;
_hbox.am_mario_fire = true;
_hbox.am_mario_fire_player = _player.player;

if (_hbox.type == 2) {
	_hbox.image_alpha = 1;
    _hbox.hbox_group = -1;
	_hbox.mask_index = _hbox.sprite_index
	_hbox.uses_sprite_collision = 0;
	_hbox.draw_xscale = _hbox.spr_dir;
	_hbox.draw_yscale = 1;
    _hbox.sprite_index = sprite_get("fireball");
    _hbox.img_spd = 0.25;
    if (_hbox.hsp == 0)
        _hbox.hsp = 8 * _player.spr_dir;
    if (_hbox.vsp == 0)
        _hbox.vsp = 0;
    _hbox.grav = 0.4;
    _hbox.frict = 0;
    _hbox.air_friction = 0;
    _hbox.walls = 0;
    _hbox.grounds = 0;
    _hbox.enemies = 0;
    _hbox.unbashable = 0;
    _hbox.projectile_parry_stun = 0;
    _hbox.does_not_reflect = 0;
    _hbox.transcendent = 0;
    _hbox.destroy_fx = fx_fire;
    _hbox.plasma_safe = 0;
    _hbox.spr_dir = _hbox.hsp == 0 ? 1 : sign(_hbox.hsp);
}

//#endregion


#define collision_nearest_enemy(_x,_y, max_dist)
if (distance_to_object(obj_stage_article) > max_dist) return noone;

with (obj_stage_article) {
    if (num != 6 && num != 10) continue;
	if distance_to_point(_x,_y) <= max_dist {
    	return id;
	}
}

return noone;

#define set_state(_state)
state_timer = 0;
state = _state;

#define start_action(_room_id, _scene_id, _action_id, _starting_id)
with action_manager array_push(action_queue,[_room_id,_scene_id,_action_id,_starting_id]);


#define find_room_type() 
for (var i = 0; i < array_length(obj_stage_main.am_mario_ug_rooms); i++) {
	if (obj_stage_main.action_manager.room_id == obj_stage_main.am_mario_ug_rooms[i])
		return 1;
}
for (var i = 0; i < array_length(obj_stage_main.am_mario_ca_rooms); i++) {
	if (obj_stage_main.action_manager.room_id  == obj_stage_main.am_mario_ca_rooms[i])
		return 2;
}
return 0;

#define terrain_detection()
var block_dist = distance_to_object(obj_stage_article_solid);
if (block_dist > 64) return;

with (obj_stage_article_solid) {
	if (num == 15 || num == 17) {
		if (collision_rectangle(bbox_left-4, bbox_top-4, bbox_right+4, bbox_bottom + 4, other, 0, 1))
			return id;
	}
}
return noone;


#define player_on_top()
var result = false
if (distance_to_object(oPlayer) > 64) return false;
var player_under = collision_rectangle(bbox_left, bbox_top-4, bbox_right, bbox_top+4, oPlayer, 0, 0);

if (instance_exists(player_under)) {
    with (player_under) {
		if ("am_mario_health" in self) && am_mario_state == 0
	        if (state != PS_DEAD && state != PS_RESPAWN) {
	            other.player_last_hit = id;
	            result = true;
	        }
    }
}
return result;

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;