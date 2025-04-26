//Dspecial cooldown/Ledge Forgiveness
if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_DSPECIAL] = 0;
}

if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
	switch (attack) {
		case AT_EXTRA_1:
		case AT_NSPECIAL:
			if window == 2 and window_timer == 0 and !hitpause {
				var center;
				print("SCREAM")
				if attack == AT_NSPECIAL {
					center = {
						x: x + (5 * spr_dir),
						y: y - 80
					}
				} else {
					center = {
						x: x + (5 * spr_dir),
						y: y -16
					}
				}				
				var angle_offset = random_func(9, 360, false)
				var subdivisions = 7 + round(random_func(4, 3, false))
				var radius = 50;
				for (var i = 0; i < 360; i+=360 / subdivisions) {
					var xx = center.x + lengthdir_x(radius, i)
					var yy = center.y + lengthdir_y(radius, i)
					var trail = spawn_hit_fx(xx, yy, scream_trail)
					trail.hsp = lengthdir_x(7, i)
					trail.vsp = lengthdir_y(7, i)
					trail.draw_angle = point_direction(0,0,trail.hsp,trail.vsp)
				}
			}
		break;
		case AT_TAUNT:
			if window == 1 and window_timer == 4 and !hitpause {
				fstrong_sfx = sound_play(sound_get("sfx_deracine_energy_appear"))
			}
			if window == 3 and window_timer == 2 and !hitpause {
				sound_stop(fstrong_sfx)
			}
		break;
		case AT_FSTRONG:
			if window == 2 and window_timer == 0 and !hitpause {
				sound_play(sound_get("sfx_deracine_uair_stab"), false, noone, 0.7, 1.1)
				sound_play(asset_get("sfx_swipe_heavy1"), false, noone, 0.8, 1.1)
				sound_play(sound_get("sfx_deracine_swing2"))
			}
		break;
		case AT_USPECIAL:
			if window == 2 and window_timer == 0 and !hitpause {
				var offset = 0;
				var threshold = 16;
				var found = false;
				while threshold != offset {
					offset += 1;
					
					if place_meeting(x, y+offset, asset_get("par_block")) {
						found = true;
						break;
					}
				}
				
				if free and !found {
					create_hitbox(attack, 3, x,y-10)
				} else {
					var off = found ? offset : 0
					spawn_hit_fx(x,y + off,tombstone_landfx);
					create_hitbox(attack, 4, x,y-20)
				}
			}
		
			if window == 8 && window_timer == 0 and !hitpause {
				sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.7, 1.1)
				sound_play(sound_get("sfx_deracine_ground_rustle"), false, noone, 0.9, 1.1)
				sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.6, 1.15);
	        	with pHitBox {
	                if player_id == other and attack == AT_USPECIAL and type == 1 {
	                    destroyed = true;
	                    instance_destroy();
	                }
	            }
	    	}
			break;
	}
} else {
	sound_stop(fstrong_sfx)
}

#macro MINION_AT_BACKWARD 0
#macro MINION_AT_FORWARD 1
#macro MINION_AT_UPWARD 2
#macro MINION_AT_DOWNWARD 3

if state == PS_DASH_START or state == PS_DASH_TURN{
	if state_timer == 0 {
		sound_stop(dash_sound_instance)
		dash_sound_instance = sound_play(sound_get("sfx_deracine_dash_loop"), true, noone, 0.8, 1.15)
	}
} else if state != PS_DASH {
	sound_stop(dash_sound_instance)
}

if instance_exists(minion_obj) {
	if (minion_control_timer != -1) {
	    minion_control_timer+=1;
	    
	    if (!special_down and (state_cat != SC_HITSTUN and state != PS_TUMBLE) and (minion_obj.state == PS_IDLE_AIR or minion_obj.state == PS_ROLL_BACKWARD or minion_obj.state == PS_ROLL_FORWARD) ) {
	        minion_control_timer = -1;
	        
	        if minion_obj.state != PS_HITSTUN and minion_obj.state != PS_HITSTUN_LAND {
		        minion_attack_forgiveness_timer = minion_attack_forgiveness_max;
		        
		        with (minion_obj) {
		            state = PS_WRAPPED
		            minion_sprite_index = player_id.minion_state_info[? state].sprite;
		            
		            state_timer = 0;
		            lock_state = true;
		            
		            minion_image_index = 0;
		        }
	        }
	    }
	}
	
	if minion_attack_forgiveness_timer > 0 and (state_cat != SC_HITSTUN and state != PS_TUMBLE)
	{
	    minion_attack_forgiveness_timer-=1;
	    print(`ATTACKING ${minion_attack_forgiveness_timer}`)
	        
	    var _attack = -1;
	    if right_down-left_down == minion_obj.spr_dir {
	        _attack = MINION_AT_FORWARD;
	    } else if right_down-left_down == -minion_obj.spr_dir {
	        _attack = MINION_AT_BACKWARD;
	    }
	    else if up_down {
	        _attack = MINION_AT_UPWARD;
	    } else if down_down {
	        _attack = MINION_AT_DOWNWARD;
	    }
	    
	    if _attack != -1 and minion_obj.state != PS_ATTACK_GROUND and minion_obj.state != PS_IDLE {
	        with minion_obj {
	        	was_parried = false;
	            attack = _attack;
	            state = PS_ATTACK_GROUND;
	            window = 0;
	            window_timer = 0;
	            has_hit = false;
	            minion_sprite_index = minion_attacks[ attack ].sprite
	            
	            state_timer = 0;
	            lock_state = true;
	            
	            minion_image_index = 0;
	            
	            if "cost" in minion_attacks[ attack ] {
	            	incubation = max(0, incubation - minion_attacks[ attack ].cost)
	            	
	            	if incubation == 0 {
	            		print("DYING SOUND")
	            		spawn_hit_fx(x,y + death_vfx_offset, player_id.minion_death_vfx).depth = depth+1
	            		sound_play(sound_get("sfx_deracine_minion_death_shing"))
	            	}
	            }
	        }
	        minion_attack_forgiveness_timer = 0;
	    }
	}	
}




with (oPlayer) {
    if (self == other || "decay_info" not in self || decay_info.player != other.player) continue;
    outline_color = other.decay_color;
    if decay_info.timer == 1 or state == PS_DEAD or state == PS_RESPAWN {
        decay_info.player = -1;
        decay_info.timer = 0;
        outline_color = [0, 0, 0]
        init_shader();
        break;
    }
    init_shader();
    
    decay_info.timer = max(0, decay_info.timer-(!hitpause));
    
    if decay_info.timer mod 3 == 0 and visible {
    	
    	with other {
    		var i = random_func(10, 10, true)
    		var dir = random_func(12, 360, true)
	    	with spawn_hit_fx(other.x + lengthdir_x(i, dir), floor(other.y-(other.char_height/2) + lengthdir_y(i, dir)), decay_particles) {
	    		spr_dir = (random_func(3, 2, true)* 2) - 1
	    		
	    		if instance_exists(other.minion_obj) and (other.minion_obj.state == PS_BURIED or other.minion_obj.state == PS_SPAWN) {
	    			var offset_y = random_func(10, 70, true);
	    			var gravestone_dir = point_direction(x,y, other.minion_obj.x, other.minion_obj.y - 20 - offset_y)
	    			var spd = random_func(10, floor(point_distance(x,y, other.minion_obj.x, other.minion_obj.y - 20 - offset_y) / 35), true) 
	    			hsp = lengthdir_x(spd,gravestone_dir)
		    		vsp = lengthdir_y(spd,gravestone_dir)
	    		}
	    		else {
		    		hsp = random_func(4, 5, true) * spr_dir
		    		vsp = 3 - random_func(7, 6, true)
	    		}
	    		draw_angle = point_direction(0,0,hsp,vsp)
	    	}
    	}
    }
    
    if !hitpause and decay_info.timer mod 44 == 0 {
        take_damage(player, other.player, 1)
    }
    
    
}

if (minion_spawn_position.active) {
    move_cooldown[AT_NSPECIAL] = 20;
    move_cooldown[AT_EXTRA_1] = 20;
    //print("active")
    minion_spawn_position.timer += 1;
    
    var ratio = 1- (minion_spawn_position.timer / minion_spawn_position.max_time)
    
    var tombstone_ratio = 0.3+(ratio*0.7)
    
    var tp_state = minion_spawn_position.target_player.state;
    if !(tp_state == PS_ROLL_BACKWARD or tp_state == PS_ROLL_FORWARD or tp_state == PS_TECH_FORWARD or tp_state == PS_TECH_BACKWARD or tp_state == PS_TECH_GROUND or tp_state == PS_AIR_DODGE) {
    	minion_spawn_position.stop_distance = round(lerp(minion_spawn_position.stop_distance, minion_spawn_position.target_player.x, tombstone_ratio));
    }
    var old_dist = minion_spawn_position.current_distance;
    var new_dist = ease_cubeIn(minion_spawn_position.start_distance, minion_spawn_position.stop_distance, minion_spawn_position.timer, minion_spawn_position.max_time)
    
    var width = 46;
    var vel = sign(new_dist-old_dist)
    var should_stop_early = false;
    if !collision_line(old_dist + width*sign(vel), minion_spawn_position.y_pos, old_dist + width*sign(vel), minion_spawn_position.y_pos+20, asset_get("par_block"), true, true) and !collision_line(old_dist + width*sign(vel), minion_spawn_position.y_pos, old_dist + width*sign(vel), minion_spawn_position.y_pos+20, asset_get("par_jumpthrough"), true, true) {
        should_stop_early = true;
    }
    else {
        minion_spawn_position.current_distance = new_dist;
    }
    
    if is_special_pressed(DIR_ANY) || is_special_pressed(DIR_NONE) {
    	should_stop_early = true;
    	sound_play(asset_get("mfx_star"))
    }
        
    if minion_spawn_position.timer == minion_spawn_position.max_time or should_stop_early {
        minion_spawn_position.active = false;
        minion_obj = instance_create(floor(minion_spawn_position.current_distance), floor(minion_spawn_position.y_pos), "obj_article1")
        minion_obj.spr_dir = minion_spawn_position.x_scale;
    }
}

//print(move_cooldown[AT_NSPECIAL])

if state == PS_SPAWN
{
    if (introTimer2 < introAnimFrameLength)
    {
        introTimer2++;
    }
    else
    {
        introTimer2 = 0;
        introTimer++;
        if(introTimer == 1)
        sound_play(sound_get("sfx_deracine_ground_rustle"), false, noone, 1, 0.9)
        if(introTimer == 8)
        sound_play(sound_get("sfx_deracine_scream"), false, noone, 0.8, 1.0)
        if(introTimer == 9)
        sound_play(asset_get("sfx_clairen_dspecial_counter_active"),false,noone,1.0,1.0);
        if(introTimer == 10) {
			var center;
			center = {
				x: x + (5 * spr_dir),
				y: y - 80
			}
			
			var angle_offset = random_func(9, 360, false)
			var subdivisions = 7 + round(random_func( (4+player), 3, false))
			var radius = 50;
			for (var i = 0; i < 360; i+=360 / subdivisions) {
				var xx = center.x + lengthdir_x(radius, i)
				var yy = center.y + lengthdir_y(radius, i)
				var trail = spawn_hit_fx(xx, yy, scream_trail)
				trail.hsp = lengthdir_x(7, i)
				trail.vsp = lengthdir_y(7, i)
				trail.draw_angle = point_direction(0,0,trail.hsp,trail.vsp)
			}
			sound_play(asset_get("sfx_hod_fspecial"), false, noone, 0.8, 1.2)
        }
        
        if(introTimer == 10)
        sound_play(asset_get("sfx_kragg_rock_shatter"), false, noone, 1.0, 1.0)
        if (introTimer == 12)
        sound_play(sound_get("sfx_deracine_ground_stop"), false, noone, 0.85, 0.8)
    }
}

#region // cringe ass hfx stuff
with hit_fx_obj {
	if player_id != other continue;
	
	if hit_fx == other.blood_hfx_horizontal or hit_fx == other.blood_hfx_vertical or hit_fx == other.ghost_hfx_weak or hit_fx == other.ghost_hfx_strong or hit_fx == other.dirt_hfx_weak or hit_fx == other.dirt_hfx_strong{
		depth = player_id.depth+1;
	}
	
}
#endregion