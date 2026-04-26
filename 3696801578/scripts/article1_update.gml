lock_state = false
// Data
var data = player_id.detached_jake_data[? state];

if hitstop == 0 {
    var on_ground = instance_position(x,y-1, asset_get("par_block")) or instance_position(x,y-1, asset_get("par_jumpthrough"))
	can_be_grounded = (vsp >= 0 && (!free or on_ground));
	
	if state != PS_HITSTUN and state != PS_RESPAWN {
		vsp = !free ? 0 : min(vsp + grav,max_fall_speed);
	}
} else if instance_exists(hitbox) {
	hitbox.hitbox_timer--;
}

invinc_timer = max(invinc_timer-1, 0)

go_through_walls_timer = max(go_through_walls_timer-1, 0)
if go_through_walls_timer > 0 {
	can_be_grounded = false
	ignores_walls = true
} else {
	ignores_walls = false
}
// STATE MACHINE

switch (state) {
    case PS_IDLE: // IDLE
        hsp *= 0.9
        vsp *= 0.9
        
        if primed and instance_exists(hit_player_obj) and hit_player_obj.state == PS_RESPAWN {
        	primed = false
        }
        
        check_can_attack(PS_FIRST_JUMP, first_distance_min_threshold, first_distance_max_threshold)
    break;
    case PS_DOUBLE_JUMP: //JUMP (NON-ATTACK)
		if window == 0 and window_timer == 2 {
			sound_play(asset_get("sfx_jumpground"), false, noone, 1, 1.2)
			sound_play(asset_get("sfx_jumpwall"), false, noone, 1, 1)
		}
        if ((window == 1 and window_timer > 2) or window == 2) and !free {
            window = 3
            window_timer = 0
            hsp = 0
        }
	break;
    
    case PS_FIRST_JUMP: // JUMP (ATTACK)
        if window == 0 and window_timer == 2 {
        	sound_play(asset_get("sfx_jumpground"), false, noone, 1, 1.2)
        	sound_play(asset_get("sfx_jumpwall"), false, noone, 1, 1)
        }
        if (window == 1 and window_timer > 2) or window == 2 {
        	
        	if vertical_attack {
	            var overlap = amount_of_rectangle_overlap(x-20, (y-35)-vsp, x+20, (y)-vsp, 
	            hit_player_obj.bbox_left, hit_player_obj.bbox_top, hit_player_obj.bbox_right, hit_player_obj.bbox_bottom)   
	            if overlap > 85 {
	                var dir = sign(hit_player_obj.x-x)
	                if dir == 0 dir = player_id.spr_dir
	                
	                //figure out which attack to do
	                var player_dir = sign(player_id.x-x)
	                
	                state = PS_DASH
	                window = 0;
	                window_timer = 0;
	                lock_state = 1
	                spr_dir = dir
	                
	                var max_hsp = 3
	                var max_vsp = 3
	                
	                hsp = clamp(hsp*0.4, -max_hsp, max_hsp)
	                vsp = clamp(vsp*0.4, -max_vsp, max_vsp)
	                grav = 0.3     
	            }	            
        	} else {
	            var overlap = amount_of_rectangle_overlap(x-50, (y-40)-vsp, x+50, (y-35)-vsp, 
	            hit_player_obj.bbox_left, hit_player_obj.bbox_top, hit_player_obj.bbox_right, hit_player_obj.bbox_bottom)
	            
	            var dist = point_distance(x+hsp, y-14+vsp, hit_player_obj.x+hit_player_obj.hsp, hit_player_obj.y-(hit_player_obj.char_height/2)+hit_player_obj.vsp)
	            
	            if overlap > 85 or dist < 40 {

	                var dir = sign(hit_player_obj.x-x)
	                if dir == 0 dir = player_id.spr_dir
	                
	                //figure out which attack to do
	                var player_dir = sign(player_id.x-x)
	                
	                state = dir != player_dir ? PS_WALL_TECH : PS_ATTACK_AIR
	                window = 0;
	                window_timer = 0;
	                lock_state = 1
	                spr_dir = dir
	                
	                var max_hsp = 3
	                var max_vsp = 3
	                
	                hsp = clamp(hsp*0.4, -max_hsp, max_hsp)
	                vsp = clamp(vsp*0.4, -max_vsp, max_vsp)
	                grav = 0.4     
	            }
            }
        }
        
        switch window {
            case 1:
                if window_timer == 0 {
                    // calculate shit
                    // just to make sure we are not free lol lmao
                    var f = 20

					// jump 
					
					var fsqr = sqr(f)
					calculate_target(f, fsqr)
					
					// Is the target in the ground?
					var bl = asset_get("par_block")
					var times = 0;
					while instance_position(target_position.x, target_position.y, bl) or instance_position( lerp(x,target_position.x,0.5) , lerp(y,target_position.y,0.5), bl) {
						target_position.y -= 4;
						times++;
					}
                    print(`JAKE ${player_id.player} - TIMESTAMP=${get_gameplay_time()} - POSITION UPDATED ${times} TIMES`)
                    
                    var delta_x = (target_position.x-x)
                    var delta_y = (target_position.y- (y+30) )                    
                	
                    // If HSP is too small do something else
                    hsp = ((target_position.x-initial_position.x) / (f) )
                	vsp = (target_position.y - initial_position.y + (0.5*-normal_grav*fsqr))  / (f)
                	
                	if !instance_position(x,y+4, asset_get("par_block")) go_through_walls_timer = 20
                	
                	if !free and instance_position(x,y+4, asset_get("par_jumpthrough")) and vsp > 0 {
                		//print("grounded but need to go down")
                		y += 12
                	}

                	
                    // if abs(delta_x) < 1 or (abs(hsp) < 1) {
                    	
                    // } else {
	                   // var first_term = (hsp * delta_y) / delta_x
	                   // var second_term = (normal_grav*delta_x) / (2*hsp)
	                    
	                   // vsp = (first_term + second_term)
	                    
	                   // print(`hsp not small: ${vsp}`)
                    // }
                }
            break
            
        }
        
        if ((window == 1 and window_timer > 2) or window == 2) and !free {
            window = 3
            window_timer = 0
            hsp = 0
        }

        
    break;
    
    case PS_PARRY: // FSPECIAL
    	player_id.move_cooldown[AT_DSPECIAL_2] = 3
    	
    	if window > 0 {
    		hsp *= 0.96
    	} else {
    		var xx, yy;
    		with player_id {
	    		xx = get_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X)*other.spr_dir
	    		yy = get_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y)
    		}
    		
    		if window_timer == 0 {
    			hitbox=create_hitbox(AT_EXTRA_1, 4, floor(x+xx),floor(y+yy))
    			hitbox.owner = self	
    			vsp = -1
    		}
    	
    		if instance_exists(hitbox) {
    			hitbox.x = x + xx
    			hitbox.y = y + yy
    		}
    		
    		hsp -= sign(hsp)*0.1
    	}	
    break;
    
    case PS_PRATFALL: // TAUNT
    	
    break;
    
    case PS_HITSTUN: // HURT STATE
    	hsp *= 0.95
    	vsp *= 0.95
    	target_cooldown = cooldown_amounts.hurt
    break;
    case PS_DASH: // BIG FUCK YOU CLAP (NSPECIAL2)
    	player_id.move_cooldown[AT_DSPECIAL_2] = 3
    	if window == 0 {
    		x = lerp(x, hit_player_obj.x + hit_player_obj.hsp, 0.3)
            y = lerp(y, hit_player_obj.y + hit_player_obj.vsp, 0.3)   
			if window_timer == 1 {
				sound_play(asset_get("sfx_swipe_heavy2"))
				target_cooldown = cooldown_amounts.attacked
			}
			
			if window_timer == 5 {
				sound_play(asset_get("sfx_birdclap"))
			}
    	}
    
    	if window == 1 {
    		var xx, yy;
    		with player_id {
	    		xx = get_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_X)*other.spr_dir
	    		yy = get_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_Y)
    		}
    		
    		if window_timer == 0 {
    			hitbox=create_hitbox(AT_EXTRA_1, 6, floor(x+xx),floor(y+yy))
    			hitbox.owner = self	
    			vsp = -4
    			hsp = 0
    			grav = 0.2
    		}
    	
    		if instance_exists(hitbox) {
    			hitbox.x = x + xx
    			hitbox.y = y + yy
    		}
    	}
    	
    	if window == 2 {
    		grav = 0.3
    	}    	
    break;
    case PS_IDLE_AIR: // BIG FUCK YOU PUNCH (NSPECIAL)
    player_id.move_cooldown[AT_DSPECIAL_2] = 3
    	if window == 0 {
    		if window_timer == 1 {
    			target_cooldown = cooldown_amounts.attacked
    		}
    		
			if window_timer == 15 {
				sound_play(sound_get("sfx_fj_boing2"), false, noone, 0.6, 1.2)
			}
			if window_timer == 13 {
				sound_play(sound_get("sfx_fj_boing_whip"), false, noone, 0.8, 0.2)
				sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 1, 1)
			}
    	}
    
    	if window == 1 {
    		var xx, yy;
    		with player_id {
	    		xx = get_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_X)*other.spr_dir
	    		yy = get_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_Y)
    		}
    		
    		if window_timer == 0 {
    			hitbox=create_hitbox(AT_EXTRA_1, 5, floor(x+xx),floor(y+yy))
    			hitbox.owner = self	
    			vsp = -4
    			hsp = -spr_dir*2
    			grav = 0.2
    		}
    	
    		if instance_exists(hitbox) {
    			hitbox.x = x + xx
    			hitbox.y = y + yy
    		}
    	}
    	
    	if window == 2 {
    		grav = 0.3
    	}
    break;
    case PS_ATTACK_AIR: // HORIZONTAL ATTACK
    player_id.move_cooldown[AT_DSPECIAL_2] = 3
    	if window == 0 {
            x = lerp(x, hit_player_obj.x + hit_player_obj.hsp - (spr_dir*30), 0.3)
            y = lerp(y, hit_player_obj.y - (hit_player_obj.char_height/2) + hit_player_obj.vsp, 0.3)    		
    		
    		if window_timer == 2 {
    			sound_play(asset_get("sfx_swipe_heavy1"), false, noone, 1, 1)
    			target_cooldown = cooldown_amounts.attacked
    		}
    	}
    	if window == 1 {
    		var xx, yy;
    		with player_id {
	    		xx = get_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X)*other.spr_dir
	    		yy = get_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y)
    		}
    		
    		if window_timer == 0 {
    			hitbox=create_hitbox(AT_EXTRA_1, 1, floor(x+xx),floor(y+yy))
    			hitbox.owner = self	
    			vsp = -1
    		}
    	
    		if instance_exists(hitbox) {
    			hitbox.x = x + xx
    			hitbox.y = y + yy
    		}
    	}
    
    break;
    case PS_WALL_TECH: // HORIZONTAL THROW
    player_id.move_cooldown[AT_DSPECIAL_2] = 3
    	if window == 0 and window_timer == 2 {
    		grab_opps = []
    		sound_play(asset_get("sfx_swipe_heavy1"), false, noone, 1, 1)
    		target_cooldown = cooldown_amounts.attacked
    	}
    	if window == 1 {
    		var xx, yy;
    		with player_id {
	    		xx = get_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X)*other.spr_dir
	    		yy = get_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y)
    		}
    		
    		if window_timer == 0 {
    			hitbox=create_hitbox(AT_EXTRA_1, 2, floor(x+xx),floor(y+yy))
    			hitbox.owner = self	
    			vsp = -1
    		}
    	
    		if instance_exists(hitbox) {
    			hitbox.x = x + xx
    			hitbox.y = y + yy
    		}
	    	if (window_timer == data.state_data[1].length and array_length(grab_opps) != 0) {
	    		window_timer = 0
	    		window = 3
	    	}
    		
    	}
    	
    	if window == 3 {
    		if window_timer == 5 {
    			sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 1, 1)
    		}
    		
    		grav = 0.1
    		var len = window_timer / data.state_data[3].length
    		for (var i = 0; i < array_length(grab_opps); i++) {
    			var opp = grab_opps[i]
    			if !instance_exists(opp) continue
    			
    			opp.x = lerp(stretch_position.x, x-spr_dir*90, len)
    			opp.y = lerp(stretch_position.y, y-20, len)
    		}
    		

    	}
    
    break;
    
    case PS_ATTACK_GROUND: // NEUTRAL ATTACK
    player_id.move_cooldown[AT_DSPECIAL_2] = 3
    	if window == 0 and window_timer == 2 {
    		sound_play(asset_get("sfx_swipe_heavy1"), false, noone, 1, 1)
    		target_cooldown = cooldown_amounts.attacked
    	}
    	if window == 1 {
    		var xx, yy;
    		with player_id {
	    		xx = get_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X)*other.spr_dir
	    		yy = get_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y)
    		}
    		
    		if window_timer == 0 {
    			hitbox=create_hitbox(AT_EXTRA_1, 3, floor(x+xx),floor(y+yy))
    			hitbox.owner = self	
    		}
    	
    		if instance_exists(hitbox) {
    			hitbox.x = x + xx
    			hitbox.y = y + yy
    		}
    	}
    break;
    
    case PS_RESPAWN: // STRETCH BACK TO FINN
    player_id.move_cooldown[AT_DSPECIAL_2] = 3
    spr_dir = 1
    hsp = 0;
    vsp = 0;
    mask_index = asset_get("empty_sprite")
    visible = false
    target_position = {x: player_id.x+player_id.hsp, y: player_id.y-(player_id.char_height/2)+player_id.vsp}
    
    switch window {
	    case 0:
	    	// if window_timer == 0 {
	    	// 	y -= 10
	    	// }
		    if window_timer == 3 {
				var r = 0.05 - ( random_func(5, 100, false) / 1000 )
				sound_play(sound_get("sfx_fj_boing"), false, noone, 0.7, 1.4 + r)
			}
	    	sprite_index = data.sprite
	    	stretch_position = {x: x, y: y-20}
	    	break;
	    case 1:
	    	if window_timer == 0 {
	    		array_push(stretch_positions, {x: floor(x), y: floor(y-20)})
	    		image_angle = point_direction(x, y-20, target_position.x, target_position.y)
	    	}
	    case 2:
	    case 3:
	    	// if window_timer mod 1 == 0 {
	    	var max_range = 200
	    	var modifier = max(max_range-point_distance(x,y-20, target_position.x, target_position.y), 0)/max_range
	    	
	    	//print(modifier)
	    	
	    	var stretch = {x: floor(lerp(stretch_position.x, target_position.x, 0.2+ modifier)), y: floor(lerp(stretch_position.y, target_position.y, 0.2 + (modifier*0.8) ))}
	    	array_push(stretch_positions, stretch)
	    	stretch_position = stretch
	    	
	    	
	    	if window == 3 {
	    		current_stretch_position = floor(lerp(current_stretch_position, array_length(stretch_positions)-1, 0.3 + (modifier * 0.7)))
	    		
	    		if current_stretch_position != array_length(stretch_positions)-1 {
	    			image_angle = point_direction(stretch_positions[current_stretch_position].x, stretch_positions[current_stretch_position].y, stretch_positions[current_stretch_position+1].x, stretch_positions[current_stretch_position+1].y)
	    		}
	    		x = stretch_positions[current_stretch_position].x
	    		y = stretch_positions[current_stretch_position].y
	    		
	    		if window_timer == 0 {
        			sound_play(sound_get("sfx_fj_boing_whip"))
        		}
	    		if point_distance(x,y-20, target_position.x, target_position.y) < 60 {
	    			player_id.jake_cooldown = target_cooldown
	    			change_finn_sprites()
            	    with spawn_hit_fx(player_id.x,player_id.y-15,player_id.vfx_thing) {
        				depth = other.player_id.depth+1
        			}
        			sound_play(sound_get("sfx_fj_jake_collect"))
        			player_id.white_flash_timer = 10
            		instance_destroy()
            		exit
	    		}
	    	}
	    	break;
	    
    }
    
    // 	hsp = 0
    // 	vsp = 0
    // 	mask_index = asset_get("empty_sprite")
    	
    // 	target_position = {x: player_id.x, y: player_id.y-(player_id.char_height/2)}
    // 	image_angle = point_direction(x,y-10,target_position.x, target_position.y)
    // 	image_alpha = 0;
    //     switch window {
    //     	case 0:
    //     		sprite_index = data.sprite
				// stretch_position = {x: x, y: y}
				
				// if window_timer == 3 {
				// 	var r = 0.05 - ( random_func(5, 100, false) / 1000 )
				// 	sound_play(sound_get("sfx_fj_boing"), false, noone, 0.7, 1.4 + r)
				// }
    //     	break;
    //     	case 1:
    //     	case 2:
    //     		stretch_timer += 1;
    //     		stretch_position.x = ease_quintOut(floor(initial_position.x), floor(target_position.x), stretch_timer, stretch_max_timer)
    //     		stretch_position.y = ease_quintOut(floor(initial_position.y), floor(target_position.y), stretch_timer, stretch_max_timer)
    //     		break;
    //     	case 3:
    //     		if window_timer == 0 {
    //     			stretch_timer = 0
    //     			stretch_max_timer = player_id.detached_jake_data[? PS_RESPAWN].state_data[3].length
    //     			sound_play(sound_get("sfx_fj_boing_whip"))
    //     		}
        		
    //     		if window_timer == 5 {
    //     			with spawn_hit_fx(player_id.x,player_id.y-15,player_id.vfx_thing) {
    //     				depth = other.player_id.depth+1
    //     			}
    //     			sound_play(sound_get("sfx_fj_jake_collect"))
    //     			player_id.white_flash_timer = 10
    //     		}
        		
    //     		stretch_timer += 1;
    //     		x = ease_quintOut(floor(initial_position.x), floor(target_position.x), stretch_timer, stretch_max_timer)
    //     		y = ease_quintOut(floor(initial_position.y), floor(target_position.y), stretch_timer, stretch_max_timer)
    //     		break;	
    //     }
    break;
    
    case PS_PRATFALL: // GOT PARRIED
    break;
    

    case PS_DEAD: // For when Finn dies while jake is out
		change_finn_sprites()
		
		instance_destroy()
		exit
    break;
}

if (x < 0 or y > room_height or x > room_width) and state != PS_RESPAWN {
	state = PS_RESPAWN
	window = 0;
	window_timer = 0
	lock_state = true
	initial_position = {x: x, y: y}
	sprite_index = data.sprite
	target_position = {x: player_id.x, y: player_id.y-(player_id.char_height/2)}
	visible = false
}


sprite_index = data.sprite

// Window data
var window_data = data.state_data[window];

// Update image_index
image_index = window_data.frame_start + ((window_timer / window_data.length) * window_data.frames)


if window_timer >= window_data.length {
    if !window_data.loop {
        
        var end_attack = "end_attack" in window_data ? !window_data.end_attack : true
        
        if (window != array_length(data.state_data)-1) and (end_attack) {
            window++;
        }
        else {
        	if state == PS_IDLE_AIR and was_parried {
        		state = PS_RESPAWN
        	} else {
        		state = data.next
        	}
        	
            
            // PS_LAND KILLS JAKE INSTANTLY
            if state == PS_LAND {
            	change_finn_sprites()
            	
            	instance_destroy()
            	exit
            }
            var data = player_id.detached_jake_data[? state];

			sprite_index = data.sprite
            window = 0;
            primed = false
            grav = normal_grav
            
            if state == PS_RESPAWN {
            	// initial_position = {x: x, y: y}
            	// sprite_index = data.sprite
            	// target_position = {x: player_id.x, y: player_id.y-(player_id.char_height/2)}
            	image_angle = point_direction(x,y-20,player_id.x, player_id.y-(player_id.char_height/2))
            	visible = false
            	spr_dir = 1
            	y -= 10
            	mask_index = asset_get("empty_sprite")
            	// var dist_tune = 100
            	// var len_to_player = min( point_distance(x,y,player_id.x,player_id.y)/dist_tune, 1) * 14
            	// player_id.detached_jake_data[? state].state_data[2].length = floor(len_to_player) == 0 ? 1 : floor(len_to_player) 
            }
            
            if state == PS_DOUBLE_JUMP {
            	window = 2
            }
            

        }
        
        
        lock_state = true
    }
    window_timer = 0
	// Update image_index
	var window_data = data.state_data[window];
	image_index = window_data.frame_start + ((window_timer / window_data.length) * window_data.frames)
}

with hurtbox {
	image_index = other.image_index
	x = other.x + other.hsp
	y= other.y + other.vsp
	hsp = 0 
	vsp = 0
}

// Update window_timer
window_timer += (!lock_state and (hitstop == 0))

#define calculate_target(f, fsqr)
// frames in advance to look ahead

var sign_h = sign(hit_player_obj.hsp)
var sign_v = sign(hit_player_obj.vsp)

// // calculate position of opponent
var spdx, spdy;
spdx = hit_player_obj.hsp
spdy = hit_player_obj.vsp                    	


var x_offset = ((spdx * f))
var y_offset = ((spdy * f) + (-sign_v*0.5*hit_player_obj.hitstun_grav*fsqr))

var position_prime = {
    x: hit_player_obj.x + x_offset,
    y: (hit_player_obj.y - (hit_player_obj.char_height / 2)  ) + y_offset
}

initial_position = {x: x, y: y}
target_position = position_prime

#define change_finn_sprites()

with player_id {
	var attack_sprites = jake_sprites[? PS_ATTACK_AIR]
	var keys = ds_map_keys(attack_sprites)
	var values = ds_map_values(attack_sprites)
	for (var i = 0; i < ds_map_size(attack_sprites); i++) {
		set_attack_value(keys[i], AG_HURTBOX_SPRITE, values[i].hurtbox)
	}
	
	// JAB
	reset_attack_value(AT_JAB, AG_NUM_WINDOWS);

	// NAIR
	reset_attack_value(AT_NAIR, AG_LANDING_LAG)
	reset_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_NAIR, 2, HG_LIFETIME)
	
	// FSTRONG
	reset_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME)
	reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE)
	reset_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING)
	reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX)
	reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT);
	reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
	reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING)
	reset_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME)
	
	// USTRONG
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME)
	reset_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
	reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
	reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT)
	reset_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT);
	reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP);
	reset_hitbox_value(AT_USTRONG, 3, HG_LIFETIME);
	
	// DSTRONG
	reset_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH)
	reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER);
	reset_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH);
	reset_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE);
	reset_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME);
	reset_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME);
}

#define check_can_attack(target, threshold_min, threshold_max)
if instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect primed = false

if primed and !hit_player_obj.hitpause {
   	proc_attack(target, threshold_min, threshold_max)
} else {
	
}


#define are_components_out_of_range(threshold)
return abs(target_position.x-x) > threshold

#define proc_attack(target, threshold_min, threshold_max)
var target_action = PS_IDLE
//calculate everything.
var frame_overshoot = 6
calculate_target(frame_overshoot, sqr(frame_overshoot))
var distance = point_distance(x, y, target_position.x, target_position.y)
if distance > threshold_max or are_components_out_of_range(275) {
	primed = false
	return;
}

if distance <= threshold_min 
{
	target_action = PS_ATTACK_GROUND //// TOO CLOSE. perform neutral attack. designate this as neutral attack
}
else {
    target_action = target //jump towards player
}

if target_action != PS_IDLE {
    state = target_action
    window = 0
    window_timer = 0
    lock_state = true
    attacking = true
    primed = false
}     

#define amount_of_rectangle_overlap(left1, top1, right1, bottom1, left2, top2, right2, bottom2)
// #define rectangle_in_rectangle(left1, top1, right1, bottom1, left2, top2, right2, bottom2)
    var intersect_left = max(left1, left2)
    var intersect_right = min(right1, right2)

    var intersect_top = max(top1, top2)
    var intersect_bottom = min(bottom1, bottom2)
    if intersect_right < intersect_left or intersect_bottom < intersect_top {
        return 0
    }

    var overlap = (intersect_left-intersect_right) * (intersect_top-intersect_bottom)
    return  overlap